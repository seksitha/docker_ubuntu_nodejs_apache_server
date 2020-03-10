<?php
function sql_inventory($param1,$param2){
  $sqlInv = "
  SELECT 
  id, 
  `name`, 
  if(category is null,'Null',category) as category,
  if(source is null,'Null',source) as source,
  if(q_sale_oms is null,0,q_sale_oms) as OS, 
  if(q_gift_oms is null,0,q_gift_oms) as OG ,
  if(oms_b is null,0,oms_b) as OL,
  if(oms_restart is null,0,oms_restart) as OST, 
  if(to_oms is null,0,to_oms) as OIN, 
  (if(oms_restart is null,0,oms_restart) +if(to_oms is null,0,to_oms)-if(q_sale_oms is null,0,q_sale_oms)-if(oms_b is null,0,oms_b)-if(q_gift_oms is null,0,q_gift_oms)) as OA,


  if (q_sale_krung is null,0,q_sale_krung) as KS, 
  if(q_gift_krung is null,0,q_gift_krung) as KG, 
  if (krung_b is null,0,krung_b) as KL,
  if (krung_restart is null,0,krung_restart) as KST, 
  if (to_krung is null,0,to_krung) as KIN, 
  (if (krung_restart is null,0,krung_restart)+if (to_krung is null,0,to_krung) -if (q_sale_krung is null,0,q_sale_krung) - if(q_gift_krung is null,0,q_gift_krung) - if (krung_b is null,0,krung_b)) as KA,

  (if(q_sale_oms is null,0,q_sale_oms) +   if (q_sale_krung is null,0,q_sale_krung)) as TS,

  if(q_restart is null,0,q_restart) as SST, 
  if(q_in is null,0,q_in) as SIN, 
  if(q_4set is null,0,q_4set) as `Set`,
  if(q_spa is null, 0,q_spa) as Spa,
  if(q_wholesale is null, 0,q_wholesale) as WS,
  if(q_lost is null,0,q_lost) as SDL,
  (if(q_restart is null,0,q_restart) + if(q_in is null,0,q_in)-if(to_oms is null,0,to_oms) - if (to_krung is null,0,to_krung)-if(q_4set is null,0,q_4set)-if(q_lost is null,0,q_lost) - if(q_spa is null, 0,q_spa) - if(q_wholesale is null, 0,q_wholesale)) as SA,
  
  ((if(oms_restart is null,0,oms_restart) +if(to_oms is null,0,to_oms)-if(q_sale_oms is null,0,q_sale_oms)-if(oms_b is null,0,oms_b)-if(q_gift_oms is null,0,q_gift_oms)) + 
    (if (krung_restart is null,0,krung_restart)+if (to_krung is null,0,to_krung) -if (q_sale_krung is null,0,q_sale_krung) - if(q_gift_krung is null,0,q_gift_krung) - if (krung_b is null,0,krung_b)) + 
    (if(q_restart is null,0,q_restart) + if(q_in is null,0,q_in)-if(to_oms is null,0,to_oms) - if (to_krung is null,0,to_krung)-if(q_4set is null,0,q_4set)-if(q_lost is null,0,q_lost)- if(q_spa is null, 0,q_spa) - if(q_wholesale is null, 0,q_wholesale))) as TA


  from `info_product` as stock

  left join 
  (select `product id`, sum(quantity) as q_sale_oms from `oms-data`.sales left join `oms-data`.`sale detial` on `oms-data`.sales.`sale id` = `oms-data`.`sale detial`.`sale id` where date between " + $param1 + " and " + $param2 + " group by `product id`) as oms_sale 
  on `stock`.id = oms_sale.`product id` 

  left Join 
  (select `product id`, sum(qty_gift) as q_gift_oms from `oms-data`.sales left join `oms-data`.`extra gifts` on`oms-data`.sales.`sale id` = `oms-data`.`extra gifts`.`sale id` where date between " + $param1 + " and " + $param2 + " group by `product id`) as oms_gift 
  on`stock`.id = oms_gift.`product id`

  left Join
  (SELECT product, sum(qty) as to_oms from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'to_oms' group by product) as to_oms
  on stock.id = to_oms.product

  left join
  (SELECT product, sum(qty) as oms_b from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'oms_broken' group by product) as oms_broken
  on stock.id = oms_broken.product

  left join
  (SELECT product, sum(qty) as oms_restart from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'oms_restart' group by product) as oms_restart
  on stock.id = oms_restart.product

  left join 
  (select `product id`, sum(quantity) as q_sale_krung from `krung-data`.sales left join  `krung-data`.`sale detial` on `krung-data`.sales.`sale id` = `krung-data`.`sale detial`.`sale id` where date between " + $param1 + " and " + $param2 + " group by `product id`) as krung_sale 
  on `stock`.id = krung_sale.`product id` 

  left Join 
  (select `product id`, sum(qty_gift) as q_gift_krung from `krung-data`.sales left join `krung-data`.`extra gifts` on`krung-data`.sales.`sale id` = `krung-data`.`extra gifts`.`sale id` where date between " + $param1 + " and " + $param2 + " group by `product id`) as krung_gift 
  on`stock`.id = krung_gift.`product id`

  left Join
  (SELECT product, sum(qty) as to_krung from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'to_krung' group by product) as to_krung
  on stock.id = to_krung.product

  left join
  (SELECT product, sum(qty) as krung_b from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'krung_broken' group by product) as krung_broken
  on stock.id = krung_broken.product

  left join
  (SELECT product, sum(qty) as krung_restart from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'krung_restart' group by product) as krung_restart
  on stock.id = krung_restart.product
  left join

  (SELECT product, sum(qty) as q_restart from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'SD_restart' group by product) as restart
  on stock.id = restart.product

  left join
  (SELECT product, sum(qty) as q_4set from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'SD_2set' group by product) as 4set
  on stock.id = 4set.product

  left join
  (SELECT product, sum(qty) as q_in from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'SD_in' group by product) as qin
  on stock.id = qin.product
  left join
  (SELECT product, sum(qty) as q_lost from product_out left join product_out_detail on product_out.id = product_out_detail.main_id where date between " + $param1 + " and " + $param2 + " and status = 'SD_lost' group by product) as sdlost
  on stock.id = sdlost.product
  left join 
  (SELECT productid as product, sum(qty) as q_spa from krukhmer.orders left join krukhmer.`delivery detial` on krukhmer.orders.`sale id` = krukhmer.`delivery detial`.`sale id` where dateInv between " + $param1 + " and " + $param2 + " and krukhmer.orders.`customer id` = 2 group by product) as toSpa
  on stock.id = toSpa.product
  left join 
 (SELECT productid as product, sum(qty) as q_wholesale from krukhmer.orders left join krukhmer.`delivery detial` on krukhmer.orders.`sale id` = krukhmer.`delivery detial`.`sale id` left join krukhmer.customerid on krukhmer.orders.`customer id` = krukhmer.customerid.`cust id` where dateInv between " + $param1 + " and " + $param2 + " and krukhmer.customerid.`category` = 'wholesale' group by product) as toWholeSale
  on stock.id = toWholeSale.product

  where `category` <> 'Special Set' and `source` <> 'stop' or `source` is null";

  return $sqlInv;
}
?>