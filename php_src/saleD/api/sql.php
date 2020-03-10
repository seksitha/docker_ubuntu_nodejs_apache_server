<?php
function sql_inventory($param1,$param2){
  $sqlInv = "
  SELECT 
  id, 
  `name`, 
  if(category is null,'Null',category) as category,
  if(source is null,'Null',source) as source,

  (if(to_oms is null,0,to_oms) + if(oms_restart is null,0,oms_restart)) as OIN, 
  if(q_sale_oms is null,0,q_sale_oms) as OS, 
  if(q_gift_oms is null,0,q_gift_oms) as OG,
  if(oms_b is null,0,oms_b) as OL,
  (if(oms_restart is null,0,oms_restart) +if(to_oms is null,0,to_oms)-if(q_sale_oms is null,0,q_sale_oms)-if(oms_b is null,0,oms_b)-if(q_gift_oms is null,0,q_gift_oms)) as OA,
  if(oms_count is null,0,oms_count) as OC, 
  if(oms_count is null,0,oms_count) - (if(oms_restart is null,0,oms_restart) +if(to_oms is null,0,to_oms)-if(q_sale_oms is null,0,q_sale_oms)-if(oms_b is null,0,oms_b)-if(q_gift_oms is null,0,q_gift_oms)) as OCom,

  (if (to_krung is null,0,to_krung) + if (krung_restart is null,0,krung_restart)) as KIN, 
  if (q_sale_krung is null,0,q_sale_krung) as KS, 
  if(q_gift_krung is null,0,q_gift_krung) as KG, 
  if (krung_b is null,0,krung_b) as KL,
  (if (krung_restart is null,0,krung_restart)+if (to_krung is null,0,to_krung) -if (q_sale_krung is null,0,q_sale_krung) - if(q_gift_krung is null,0,q_gift_krung) - if (krung_b is null,0,krung_b)) as KA,
  if (krung_count is null,0,krung_count) as KC, 
  if (krung_count is null,0,krung_count) -   (if (krung_restart is null,0,krung_restart)+if (to_krung is null,0,to_krung) -if (q_sale_krung is null,0,q_sale_krung) - if(q_gift_krung is null,0,q_gift_krung) - if (krung_b is null,0,krung_b)) as KCom,

  (if(q_sale_oms is null,0,q_sale_oms) +   if (q_sale_krung is null,0,q_sale_krung)) as TS,

  (if(q_in is null,0,q_in) + if(q_restart is null,0,q_restart))as SIN, 
  if(q_4set is null,0,q_4set) as `Set`,
  if(q_spa is null, 0,q_spa) as Spa,
  if(q_wholesale is null, 0,q_wholesale) as WS,
  if(q_lost is null,0,q_lost) as SDL,
  (if(q_restart is null,0,q_restart) + if(q_in is null,0,q_in)-if(to_oms is null,0,to_oms) - if (to_krung is null,0,to_krung)-if(q_4set is null,0,q_4set)-if(q_lost is null,0,q_lost) - if(q_spa is null, 0,q_spa) - if(q_wholesale is null, 0,q_wholesale)) as SA,
  if(sd_count is null,0,sd_count) as SDC,
  if(sd_count is null,0,sd_count) -   (if(q_restart is null,0,q_restart) + if(q_in is null,0,q_in)-if(to_oms is null,0,to_oms) - if (to_krung is null,0,to_krung)-if(q_4set is null,0,q_4set)-if(q_lost is null,0,q_lost) - if(q_spa is null, 0,q_spa) - if(q_wholesale is null, 0,q_wholesale)) as SDCom,

  ((if(oms_restart is null,0,oms_restart) +if(to_oms is null,0,to_oms)-if(q_sale_oms is null,0,q_sale_oms)-if(oms_b is null,0,oms_b)-if(q_gift_oms is null,0,q_gift_oms)) + 
    (if (krung_restart is null,0,krung_restart)+if (to_krung is null,0,to_krung) -if (q_sale_krung is null,0,q_sale_krung) - if(q_gift_krung is null,0,q_gift_krung) - if (krung_b is null,0,krung_b)) + 
    (if(q_restart is null,0,q_restart) + if(q_in is null,0,q_in)-if(to_oms is null,0,to_oms) - if (to_krung is null,0,to_krung)-if(q_4set is null,0,q_4set)-if(q_lost is null,0,q_lost)- if(q_spa is null, 0,q_spa) - if(q_wholesale is null, 0,q_wholesale))) as TA


  from `info_product` as stock

  left join 
  (select `product`, sum(qty) as q_sale_oms from oms_sale left join `oms_sale_detail` on oms_sale.`id` = oms_sale_detail.`main_id` where date_bill between '$param1' and '$param2' group by `product`) as oms_sale 
  on `stock`.id = oms_sale.`product` 

  left Join 
  (select `product`, sum(qty) as q_gift_oms from oms_sale left join `oms_sale_gift` on oms_sale.`id` = oms_sale_gift.`main_id` where date_bill between '$param1' and '$param2' group by `product`) as oms_gift 
  on`stock`.id = oms_gift.`product`

  left Join
  (SELECT product, sum(qty) as to_oms from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'to_oms' group by product) as to_oms
  on stock.id = to_oms.product

  left join
  (SELECT product, sum(qty) as oms_b from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'oms_broken' group by product) as oms_broken
  on stock.id = oms_broken.product

  left join
  (SELECT product, sum(qty) as oms_restart from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'oms_restart' group by product) as oms_restart
  on stock.id = oms_restart.product

  left join
  (SELECT product, sum(qty) as oms_count from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'oms_count' group by product) as oms_count
  on stock.id = oms_count.product

  left join 
  (select `product`, sum(qty) as q_sale_krung from krung_sale left join  krung_sale_detail on  krung_sale.`id` = krung_sale_detail.`main_id` where date_bill between '$param1' and '$param2' group by `product`) as krung_sale 
  on `stock`.id = krung_sale.`product` 

  left Join 
  (select `product`, sum(qty) as q_gift_krung from krung_sale left join krung_sale_gift on krung_sale.`id` = krung_sale_gift.`main_id` where date_bill between '$param1' and '$param2' group by `product`) as krung_gift 
  on`stock`.id = krung_gift.`product`

  left Join
  (SELECT product, sum(qty) as to_krung from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'to_krung' group by product) as to_krung
  on stock.id = to_krung.product

  left join
  (SELECT product, sum(qty) as krung_b from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'krung_broken' group by product) as krung_broken
  on stock.id = krung_broken.product

  left join
  (SELECT product, sum(qty) as krung_restart from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'krung_restart' group by product) as krung_restart
  on stock.id = krung_restart.product

  left join
  (SELECT product, sum(qty) as krung_count from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'krung_count' group by product) as krung_count
  on stock.id = krung_count.product
  
  left join
  (SELECT product, sum(qty) as q_restart from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'SD_restart' group by product) as restart
  on stock.id = restart.product
  
  left join
  (SELECT product, sum(qty) as sd_count from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'SD_count' group by product) as sd_count
  on stock.id = sd_count.product

  left join
  (SELECT product, sum(qty) as q_4set from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'SD_2set' group by product) as 4set
  on stock.id = 4set.product

  left join
  (SELECT product, sum(qty) as q_in from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'SD_in' group by product) as qin
  on stock.id = qin.product

  left join
  (SELECT product, sum(qty) as q_lost from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'SD_lost' group by product) as sdlost
  on stock.id = sdlost.product

  left join 
  (SELECT product, sum(qty) as q_spa from inventory_product_out left join inventory_product_out_detail on inventory_product_out.id = inventory_product_out_detail.main_id where date between '$param1' and '$param2' and status = 'SD_2spa' group by product) as toSpa
  on stock.id = toSpa.product

  left join 
 (SELECT productid as product, sum(qty) as q_wholesale from ws_sale left join ws_sale_detail on ws_sale.`sale id` = ws_sale_detail.`sale id` left join ws_info_customer on ws_sale.`customer id` = ws_info_customer.`cust id` where dateInv between '$param1' and '$param2' and ws_info_customer.`category` = 'wholesale' group by product) as toWholeSale
  on stock.id = toWholeSale.product

  where `category` <> 'Special Set' and `source` <> 'stop' or `source` is null";

  return $sqlInv;
}
?>