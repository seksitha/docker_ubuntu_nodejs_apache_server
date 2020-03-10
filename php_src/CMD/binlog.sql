/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!40019 SET @@session.max_insert_delayed_threads=0*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#170429  8:23:17 server id 111  end_log_pos 120 CRC32 0x0fa0e11f 	Start: binlog v 4, server v 5.6.16-log created 170429  8:23:17 at startup
# Warning: this binlog is either in use or was not closed properly.
ROLLBACK/*!*/;
BINLOG '
BesDWQ9vAAAAdAAAAHgAAAABAAQANS42LjE2LWxvZwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAF6wNZEzgNAAgAEgAEBAQEEgAAXAAEGggAAAAICAgCAAAACgoKGRkAAR/h
oA8=
'/*!*/;
# at 120
#170428 18:09:04 server id 21  end_log_pos 215 CRC32 0xa337efe4 	Query	thread_id=16	exec_time=52748	error_code=0
SET TIMESTAMP=1493377744/*!*/;
SET @@session.pseudo_thread_id=16/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1073741824/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=8/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
BEGIN
/*!*/;
# at 215
# at 247
#170428 18:09:04 server id 21  end_log_pos 247 CRC32 0xaf218f69 	Intvar
SET INSERT_ID=34498/*!*/;
#170428 18:09:04 server id 21  end_log_pos 481 CRC32 0xc375dae8 	Query	thread_id=16	exec_time=52748	error_code=0
use `krukhmerdata`/*!*/;
SET TIMESTAMP=1493377744/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('551','201704-00551','2017-04-28 00:00:00','25','Cash')
/*!*/;
# at 481
#170428 18:09:04 server id 21  end_log_pos 577 CRC32 0x83d650b7 	Query	thread_id=16	exec_time=52748	error_code=0
SET TIMESTAMP=1493377744/*!*/;
COMMIT
/*!*/;
# at 577
#170428 18:11:28 server id 21  end_log_pos 672 CRC32 0xe474cf68 	Query	thread_id=16	exec_time=52604	error_code=0
SET TIMESTAMP=1493377888/*!*/;
BEGIN
/*!*/;
# at 672
# at 704
#170428 18:11:28 server id 21  end_log_pos 704 CRC32 0x5b2d8e14 	Intvar
SET INSERT_ID=82028/*!*/;
#170428 18:11:28 server id 21  end_log_pos 951 CRC32 0x34174b68 	Query	thread_id=16	exec_time=52604	error_code=0
SET TIMESTAMP=1493377888/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','256','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 951
#170428 18:11:28 server id 21  end_log_pos 1047 CRC32 0xa56a3ef7 	Query	thread_id=16	exec_time=52604	error_code=0
SET TIMESTAMP=1493377888/*!*/;
COMMIT
/*!*/;
# at 1047
#170428 18:11:31 server id 21  end_log_pos 1142 CRC32 0x144738fa 	Query	thread_id=16	exec_time=52602	error_code=0
SET TIMESTAMP=1493377891/*!*/;
BEGIN
/*!*/;
# at 1142
# at 1174
#170428 18:11:31 server id 21  end_log_pos 1174 CRC32 0xc1f8f2db 	Intvar
SET INSERT_ID=82029/*!*/;
#170428 18:11:31 server id 21  end_log_pos 1420 CRC32 0x2ac5cbf5 	Query	thread_id=16	exec_time=52602	error_code=0
SET TIMESTAMP=1493377891/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','79','1.00000000000000000e+000','1.50000000000000000e+000','2')
/*!*/;
# at 1420
#170428 18:11:31 server id 21  end_log_pos 1516 CRC32 0x62364a63 	Query	thread_id=16	exec_time=52602	error_code=0
SET TIMESTAMP=1493377891/*!*/;
COMMIT
/*!*/;
# at 1516
#170428 18:11:34 server id 21  end_log_pos 1611 CRC32 0x07ba6cf3 	Query	thread_id=16	exec_time=52599	error_code=0
SET TIMESTAMP=1493377894/*!*/;
BEGIN
/*!*/;
# at 1611
# at 1643
#170428 18:11:34 server id 21  end_log_pos 1643 CRC32 0x1dae60e7 	Intvar
SET INSERT_ID=82030/*!*/;
#170428 18:11:34 server id 21  end_log_pos 1890 CRC32 0x5d65ce04 	Query	thread_id=16	exec_time=52599	error_code=0
SET TIMESTAMP=1493377894/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','434','1.00000000000000000e+000','3.00000000000000000e+000','3')
/*!*/;
# at 1890
#170428 18:11:34 server id 21  end_log_pos 1986 CRC32 0xa343f6f6 	Query	thread_id=16	exec_time=52599	error_code=0
SET TIMESTAMP=1493377894/*!*/;
COMMIT
/*!*/;
# at 1986
#170428 18:11:38 server id 21  end_log_pos 2081 CRC32 0x0832b8fd 	Query	thread_id=16	exec_time=52595	error_code=0
SET TIMESTAMP=1493377898/*!*/;
BEGIN
/*!*/;
# at 2081
# at 2113
#170428 18:11:38 server id 21  end_log_pos 2113 CRC32 0xfe2d6aed 	Intvar
SET INSERT_ID=82031/*!*/;
#170428 18:11:38 server id 21  end_log_pos 2359 CRC32 0xaa3b8d6a 	Query	thread_id=16	exec_time=52595	error_code=0
SET TIMESTAMP=1493377898/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','39','1.00000000000000000e+000','5.00000000000000000e+000','4')
/*!*/;
# at 2359
#170428 18:11:38 server id 21  end_log_pos 2455 CRC32 0xf3e00022 	Query	thread_id=16	exec_time=52595	error_code=0
SET TIMESTAMP=1493377898/*!*/;
COMMIT
/*!*/;
# at 2455
#170428 18:11:38 server id 21  end_log_pos 2550 CRC32 0x33db22ad 	Query	thread_id=16	exec_time=52595	error_code=0
SET TIMESTAMP=1493377898/*!*/;
BEGIN
/*!*/;
# at 2550
#170428 18:11:38 server id 21  end_log_pos 2722 CRC32 0x70956812 	Query	thread_id=16	exec_time=52595	error_code=0
SET TIMESTAMP=1493377898/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82031'
/*!*/;
# at 2722
#170428 18:11:38 server id 21  end_log_pos 2818 CRC32 0x9b62eed9 	Query	thread_id=16	exec_time=52595	error_code=0
SET TIMESTAMP=1493377898/*!*/;
COMMIT
/*!*/;
# at 2818
#170428 18:11:42 server id 21  end_log_pos 2913 CRC32 0xced39fa0 	Query	thread_id=16	exec_time=52591	error_code=0
SET TIMESTAMP=1493377902/*!*/;
BEGIN
/*!*/;
# at 2913
#170428 18:11:42 server id 21  end_log_pos 3085 CRC32 0x7f5d1d6b 	Query	thread_id=16	exec_time=52591	error_code=0
SET TIMESTAMP=1493377902/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82031'
/*!*/;
# at 3085
#170428 18:11:42 server id 21  end_log_pos 3181 CRC32 0x1db54530 	Query	thread_id=16	exec_time=52591	error_code=0
SET TIMESTAMP=1493377902/*!*/;
COMMIT
/*!*/;
# at 3181
#170428 18:11:45 server id 21  end_log_pos 3276 CRC32 0x51639559 	Query	thread_id=16	exec_time=52588	error_code=0
SET TIMESTAMP=1493377905/*!*/;
BEGIN
/*!*/;
# at 3276
# at 3308
#170428 18:11:45 server id 21  end_log_pos 3308 CRC32 0x6c784447 	Intvar
SET INSERT_ID=82032/*!*/;
#170428 18:11:45 server id 21  end_log_pos 3553 CRC32 0xd06a5613 	Query	thread_id=16	exec_time=52588	error_code=0
SET TIMESTAMP=1493377905/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','5','1.00000000000000000e+000','3.00000000000000000e+000','5')
/*!*/;
# at 3553
#170428 18:11:45 server id 21  end_log_pos 3649 CRC32 0xbc1682d2 	Query	thread_id=16	exec_time=52588	error_code=0
SET TIMESTAMP=1493377905/*!*/;
COMMIT
/*!*/;
# at 3649
#170428 18:11:47 server id 21  end_log_pos 3744 CRC32 0xc15e3059 	Query	thread_id=16	exec_time=52587	error_code=0
SET TIMESTAMP=1493377907/*!*/;
BEGIN
/*!*/;
# at 3744
# at 3776
#170428 18:11:47 server id 21  end_log_pos 3776 CRC32 0x8fe7ed34 	Intvar
SET INSERT_ID=82033/*!*/;
#170428 18:11:47 server id 21  end_log_pos 4021 CRC32 0xe68bb47b 	Query	thread_id=16	exec_time=52587	error_code=0
SET TIMESTAMP=1493377907/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','4','1.00000000000000000e+000','3.00000000000000000e+000','6')
/*!*/;
# at 4021
#170428 18:11:47 server id 21  end_log_pos 4117 CRC32 0x397704a5 	Query	thread_id=16	exec_time=52587	error_code=0
SET TIMESTAMP=1493377907/*!*/;
COMMIT
/*!*/;
# at 4117
#170428 18:11:49 server id 21  end_log_pos 4212 CRC32 0x38226c87 	Query	thread_id=16	exec_time=52585	error_code=0
SET TIMESTAMP=1493377909/*!*/;
BEGIN
/*!*/;
# at 4212
# at 4244
#170428 18:11:49 server id 21  end_log_pos 4244 CRC32 0xad180c24 	Intvar
SET INSERT_ID=82034/*!*/;
#170428 18:11:49 server id 21  end_log_pos 4489 CRC32 0x66ce6e28 	Query	thread_id=16	exec_time=52585	error_code=0
SET TIMESTAMP=1493377909/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','1','1.00000000000000000e+000','3.00000000000000000e+000','7')
/*!*/;
# at 4489
#170428 18:11:49 server id 21  end_log_pos 4585 CRC32 0x64316040 	Query	thread_id=16	exec_time=52585	error_code=0
SET TIMESTAMP=1493377909/*!*/;
COMMIT
/*!*/;
# at 4585
#170428 18:11:50 server id 21  end_log_pos 4680 CRC32 0xeab1f66f 	Query	thread_id=16	exec_time=52584	error_code=0
SET TIMESTAMP=1493377910/*!*/;
BEGIN
/*!*/;
# at 4680
# at 4712
#170428 18:11:50 server id 21  end_log_pos 4712 CRC32 0x8f2c4cc3 	Intvar
SET INSERT_ID=82035/*!*/;
#170428 18:11:50 server id 21  end_log_pos 4957 CRC32 0x6bbb96c2 	Query	thread_id=16	exec_time=52584	error_code=0
SET TIMESTAMP=1493377910/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','3','1.00000000000000000e+000','3.00000000000000000e+000','8')
/*!*/;
# at 4957
#170428 18:11:50 server id 21  end_log_pos 5053 CRC32 0x78bc6cee 	Query	thread_id=16	exec_time=52584	error_code=0
SET TIMESTAMP=1493377910/*!*/;
COMMIT
/*!*/;
# at 5053
#170428 18:11:55 server id 21  end_log_pos 5148 CRC32 0xb7cc8708 	Query	thread_id=16	exec_time=52579	error_code=0
SET TIMESTAMP=1493377915/*!*/;
BEGIN
/*!*/;
# at 5148
#170428 18:11:55 server id 21  end_log_pos 5320 CRC32 0x73ab64f7 	Query	thread_id=16	exec_time=52579	error_code=0
SET TIMESTAMP=1493377915/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82032'
/*!*/;
# at 5320
#170428 18:11:55 server id 21  end_log_pos 5416 CRC32 0x3a131e1e 	Query	thread_id=16	exec_time=52579	error_code=0
SET TIMESTAMP=1493377915/*!*/;
COMMIT
/*!*/;
# at 5416
#170428 18:11:55 server id 21  end_log_pos 5511 CRC32 0x9154b584 	Query	thread_id=16	exec_time=52579	error_code=0
SET TIMESTAMP=1493377915/*!*/;
BEGIN
/*!*/;
# at 5511
#170428 18:11:55 server id 21  end_log_pos 5683 CRC32 0x585ed822 	Query	thread_id=16	exec_time=52579	error_code=0
SET TIMESTAMP=1493377915/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82032'
/*!*/;
# at 5683
#170428 18:11:55 server id 21  end_log_pos 5779 CRC32 0x376ea200 	Query	thread_id=16	exec_time=52579	error_code=0
SET TIMESTAMP=1493377915/*!*/;
COMMIT
/*!*/;
# at 5779
#170428 18:11:58 server id 21  end_log_pos 5874 CRC32 0x04abd942 	Query	thread_id=16	exec_time=52576	error_code=0
SET TIMESTAMP=1493377918/*!*/;
BEGIN
/*!*/;
# at 5874
#170428 18:11:58 server id 21  end_log_pos 6497 CRC32 0xa0217b2d 	Query	thread_id=16	exec_time=52576	error_code=0
SET TIMESTAMP=1493377918/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 18:11:28',`total`='4.55000000000000000e+001'  WHERE `id` = '34498' AND `inv_num` = '551' AND `inv_refer` = '201704-00551' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 6497
#170428 18:11:58 server id 21  end_log_pos 6593 CRC32 0x64b34509 	Query	thread_id=16	exec_time=52576	error_code=0
SET TIMESTAMP=1493377918/*!*/;
COMMIT
/*!*/;
# at 6593
#170428 18:11:59 server id 21  end_log_pos 6688 CRC32 0x00a2000d 	Query	thread_id=16	exec_time=52575	error_code=0
SET TIMESTAMP=1493377919/*!*/;
BEGIN
/*!*/;
# at 6688
# at 6720
#170428 18:11:59 server id 21  end_log_pos 6720 CRC32 0x25194304 	Intvar
SET INSERT_ID=13097/*!*/;
#170428 18:11:59 server id 21  end_log_pos 6892 CRC32 0x9e34ab84 	Query	thread_id=16	exec_time=52575	error_code=0
SET TIMESTAMP=1493377919/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34498','5','1')
/*!*/;
# at 6892
#170428 18:11:59 server id 21  end_log_pos 6988 CRC32 0x5593d0d2 	Query	thread_id=16	exec_time=52575	error_code=0
SET TIMESTAMP=1493377919/*!*/;
COMMIT
/*!*/;
# at 6988
#170428 18:13:30 server id 21  end_log_pos 7083 CRC32 0x5d093067 	Query	thread_id=16	exec_time=52484	error_code=0
SET TIMESTAMP=1493378010/*!*/;
BEGIN
/*!*/;
# at 7083
# at 7115
#170428 18:13:30 server id 21  end_log_pos 7115 CRC32 0x1bb92f7a 	Intvar
SET INSERT_ID=82036/*!*/;
#170428 18:13:30 server id 21  end_log_pos 7362 CRC32 0xb48e0c25 	Query	thread_id=16	exec_time=52484	error_code=0
SET TIMESTAMP=1493378010/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34498','588','1.00000000000000000e+000','1.00000000000000000e+000','9')
/*!*/;
# at 7362
#170428 18:13:30 server id 21  end_log_pos 7458 CRC32 0xc9817acf 	Query	thread_id=16	exec_time=52484	error_code=0
SET TIMESTAMP=1493378010/*!*/;
COMMIT
/*!*/;
# at 7458
#170428 18:13:32 server id 21  end_log_pos 7553 CRC32 0x76766d9c 	Query	thread_id=16	exec_time=52483	error_code=0
SET TIMESTAMP=1493378012/*!*/;
BEGIN
/*!*/;
# at 7553
#170428 18:13:32 server id 21  end_log_pos 8184 CRC32 0x5ee5ab65 	Query	thread_id=16	exec_time=52483	error_code=0
SET TIMESTAMP=1493378012/*!*/;
UPDATE `oms_sale` SET `total`='4.65000000000000000e+001'  WHERE `id` = '34498' AND `inv_num` = '551' AND `inv_refer` = '201704-00551' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 18:11:28' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.55000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 8184
#170428 18:13:32 server id 21  end_log_pos 8280 CRC32 0x27a1a2e1 	Query	thread_id=16	exec_time=52483	error_code=0
SET TIMESTAMP=1493378012/*!*/;
COMMIT
/*!*/;
# at 8280
#170428 18:14:37 server id 21  end_log_pos 8375 CRC32 0xfff67fe6 	Query	thread_id=16	exec_time=52418	error_code=0
SET TIMESTAMP=1493378077/*!*/;
BEGIN
/*!*/;
# at 8375
#170428 18:14:37 server id 21  end_log_pos 9005 CRC32 0xd55b1df0 	Query	thread_id=16	exec_time=52418	error_code=0
SET TIMESTAMP=1493378077/*!*/;
UPDATE `oms_sale` SET `bill`='4.65000000000000000e+001'  WHERE `id` = '34498' AND `inv_num` = '551' AND `inv_refer` = '201704-00551' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 18:11:28' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.65000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 9005
#170428 18:14:37 server id 21  end_log_pos 9101 CRC32 0x0ce0447e 	Query	thread_id=16	exec_time=52418	error_code=0
SET TIMESTAMP=1493378077/*!*/;
COMMIT
/*!*/;
# at 9101
#170428 18:17:44 server id 21  end_log_pos 9196 CRC32 0x3bffa525 	Query	thread_id=16	exec_time=52231	error_code=0
SET TIMESTAMP=1493378264/*!*/;
BEGIN
/*!*/;
# at 9196
#170428 18:17:44 server id 21  end_log_pos 9891 CRC32 0xd29754d2 	Query	thread_id=16	exec_time=52231	error_code=0
SET TIMESTAMP=1493378264/*!*/;
UPDATE `oms_sale` SET `nationality`='Euoropean',`age`='40',`gender`='Female',`pay_by`='Credit Card'  WHERE `id` = '34498' AND `inv_num` = '551' AND `inv_refer` = '201704-00551' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 18:11:28' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '4.65000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.65000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 9891
#170428 18:17:44 server id 21  end_log_pos 9987 CRC32 0x92b2f67f 	Query	thread_id=16	exec_time=52231	error_code=0
SET TIMESTAMP=1493378264/*!*/;
COMMIT
/*!*/;
# at 9987
#170428 18:18:01 server id 21  end_log_pos 10082 CRC32 0x254241e9 	Query	thread_id=16	exec_time=52214	error_code=0
SET TIMESTAMP=1493378281/*!*/;
BEGIN
/*!*/;
# at 10082
# at 10114
#170428 18:18:01 server id 21  end_log_pos 10114 CRC32 0x635a038a 	Intvar
SET INSERT_ID=34499/*!*/;
#170428 18:18:01 server id 21  end_log_pos 10348 CRC32 0xdfd62009 	Query	thread_id=16	exec_time=52214	error_code=0
SET TIMESTAMP=1493378281/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('552','201704-00552','2017-04-28 00:00:00','25','Cash')
/*!*/;
# at 10348
#170428 18:18:01 server id 21  end_log_pos 10444 CRC32 0x5f7ba24a 	Query	thread_id=16	exec_time=52214	error_code=0
SET TIMESTAMP=1493378281/*!*/;
COMMIT
/*!*/;
# at 10444
#170428 18:20:25 server id 21  end_log_pos 10539 CRC32 0xbabc45ce 	Query	thread_id=16	exec_time=52070	error_code=0
SET TIMESTAMP=1493378425/*!*/;
BEGIN
/*!*/;
# at 10539
# at 10571
#170428 18:20:25 server id 21  end_log_pos 10571 CRC32 0x81ea2886 	Intvar
SET INSERT_ID=82037/*!*/;
#170428 18:20:25 server id 21  end_log_pos 10817 CRC32 0x52175b2e 	Query	thread_id=16	exec_time=52070	error_code=0
SET TIMESTAMP=1493378425/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34499','14','1.00000000000000000e+000','2.50000000000000000e+000','1')
/*!*/;
# at 10817
#170428 18:20:25 server id 21  end_log_pos 10913 CRC32 0x07aa0f36 	Query	thread_id=16	exec_time=52070	error_code=0
SET TIMESTAMP=1493378425/*!*/;
COMMIT
/*!*/;
# at 10913
#170428 18:20:27 server id 21  end_log_pos 11008 CRC32 0x400222fb 	Query	thread_id=16	exec_time=52068	error_code=0
SET TIMESTAMP=1493378427/*!*/;
BEGIN
/*!*/;
# at 11008
# at 11040
#170428 18:20:27 server id 21  end_log_pos 11040 CRC32 0x71aaf2ef 	Intvar
SET INSERT_ID=82038/*!*/;
#170428 18:20:27 server id 21  end_log_pos 11286 CRC32 0x61b83afb 	Query	thread_id=16	exec_time=52068	error_code=0
SET TIMESTAMP=1493378427/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34499','71','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 11286
#170428 18:20:27 server id 21  end_log_pos 11382 CRC32 0xa04f67bb 	Query	thread_id=16	exec_time=52068	error_code=0
SET TIMESTAMP=1493378427/*!*/;
COMMIT
/*!*/;
# at 11382
#170428 18:20:28 server id 21  end_log_pos 11477 CRC32 0x7ef08c95 	Query	thread_id=16	exec_time=52067	error_code=0
SET TIMESTAMP=1493378428/*!*/;
BEGIN
/*!*/;
# at 11477
#170428 18:20:28 server id 21  end_log_pos 11649 CRC32 0x06198e8c 	Query	thread_id=16	exec_time=52067	error_code=0
SET TIMESTAMP=1493378428/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82038'
/*!*/;
# at 11649
#170428 18:20:28 server id 21  end_log_pos 11745 CRC32 0xb464cdec 	Query	thread_id=16	exec_time=52067	error_code=0
SET TIMESTAMP=1493378428/*!*/;
COMMIT
/*!*/;
# at 11745
#170428 18:20:31 server id 21  end_log_pos 11840 CRC32 0x15719dce 	Query	thread_id=16	exec_time=52064	error_code=0
SET TIMESTAMP=1493378431/*!*/;
BEGIN
/*!*/;
# at 11840
#170428 18:20:31 server id 21  end_log_pos 12463 CRC32 0x4ac9d1ac 	Query	thread_id=16	exec_time=52064	error_code=0
SET TIMESTAMP=1493378431/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 18:20:25',`total`='1.25000000000000000e+001'  WHERE `id` = '34499' AND `inv_num` = '552' AND `inv_refer` = '201704-00552' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 12463
#170428 18:20:31 server id 21  end_log_pos 12559 CRC32 0x78cf48b2 	Query	thread_id=16	exec_time=52064	error_code=0
SET TIMESTAMP=1493378431/*!*/;
COMMIT
/*!*/;
# at 12559
#170428 18:21:27 server id 21  end_log_pos 12654 CRC32 0x9595b816 	Query	thread_id=16	exec_time=52008	error_code=0
SET TIMESTAMP=1493378487/*!*/;
BEGIN
/*!*/;
# at 12654
#170428 18:21:27 server id 21  end_log_pos 13284 CRC32 0x81961abb 	Query	thread_id=16	exec_time=52008	error_code=0
SET TIMESTAMP=1493378487/*!*/;
UPDATE `oms_sale` SET `bill`='1.50000000000000000e+001'  WHERE `id` = '34499' AND `inv_num` = '552' AND `inv_refer` = '201704-00552' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 18:20:25' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.25000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 13284
#170428 18:21:27 server id 21  end_log_pos 13380 CRC32 0xb5dfcb2e 	Query	thread_id=16	exec_time=52008	error_code=0
SET TIMESTAMP=1493378487/*!*/;
COMMIT
/*!*/;
# at 13380
#170428 18:22:57 server id 21  end_log_pos 13475 CRC32 0x2b88b3a1 	Query	thread_id=16	exec_time=51918	error_code=0
SET TIMESTAMP=1493378577/*!*/;
BEGIN
/*!*/;
# at 13475
#170428 18:22:57 server id 21  end_log_pos 14146 CRC32 0xe06af63e 	Query	thread_id=16	exec_time=51918	error_code=0
SET TIMESTAMP=1493378577/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='20',`gender`='Female'  WHERE `id` = '34499' AND `inv_num` = '552' AND `inv_refer` = '201704-00552' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 18:20:25' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.50000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.25000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 14146
#170428 18:22:57 server id 21  end_log_pos 14242 CRC32 0xa70c6683 	Query	thread_id=16	exec_time=51918	error_code=0
SET TIMESTAMP=1493378577/*!*/;
COMMIT
/*!*/;
# at 14242
#170428 18:23:12 server id 21  end_log_pos 14337 CRC32 0x702ea597 	Query	thread_id=16	exec_time=51903	error_code=0
SET TIMESTAMP=1493378592/*!*/;
BEGIN
/*!*/;
# at 14337
# at 14369
#170428 18:23:12 server id 21  end_log_pos 14369 CRC32 0xe805cce2 	Intvar
SET INSERT_ID=34500/*!*/;
#170428 18:23:12 server id 21  end_log_pos 14603 CRC32 0x2ab0f31a 	Query	thread_id=16	exec_time=51903	error_code=0
SET TIMESTAMP=1493378592/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('553','201704-00553','2017-04-28 00:00:00','25','Cash')
/*!*/;
# at 14603
#170428 18:23:12 server id 21  end_log_pos 14699 CRC32 0x265f138a 	Query	thread_id=16	exec_time=51903	error_code=0
SET TIMESTAMP=1493378592/*!*/;
COMMIT
/*!*/;
# at 14699
#170428 18:58:57 server id 21  end_log_pos 14794 CRC32 0x4d68aaa2 	Query	thread_id=19	exec_time=49758	error_code=0
SET TIMESTAMP=1493380737/*!*/;
BEGIN
/*!*/;
# at 14794
# at 14826
#170428 18:58:57 server id 21  end_log_pos 14826 CRC32 0x3c1cae4b 	Intvar
SET INSERT_ID=82039/*!*/;
#170428 18:58:57 server id 21  end_log_pos 14991 CRC32 0x8cebaf21 	Query	thread_id=19	exec_time=49758	error_code=0
SET TIMESTAMP=1493380737/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`) VALUES ('34500',NULL)
/*!*/;
# at 14991
#170428 18:58:57 server id 21  end_log_pos 15087 CRC32 0x0395cd09 	Query	thread_id=19	exec_time=49758	error_code=0
SET TIMESTAMP=1493380737/*!*/;
COMMIT
/*!*/;
# at 15087
#170428 19:10:51 server id 21  end_log_pos 15182 CRC32 0x728e2d56 	Query	thread_id=19	exec_time=49044	error_code=0
SET TIMESTAMP=1493381451/*!*/;
BEGIN
/*!*/;
# at 15182
# at 15214
#170428 19:10:51 server id 21  end_log_pos 15214 CRC32 0x1eadb7bb 	Intvar
SET INSERT_ID=34501/*!*/;
#170428 19:10:51 server id 21  end_log_pos 15448 CRC32 0x36a92241 	Query	thread_id=19	exec_time=49044	error_code=0
SET TIMESTAMP=1493381451/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('554','201704-00554','2017-04-28 00:00:00','25','Cash')
/*!*/;
# at 15448
#170428 19:10:51 server id 21  end_log_pos 15544 CRC32 0x9b733cd3 	Query	thread_id=19	exec_time=49044	error_code=0
SET TIMESTAMP=1493381451/*!*/;
COMMIT
/*!*/;
# at 15544
#170428 19:11:11 server id 21  end_log_pos 15639 CRC32 0x4feb8112 	Query	thread_id=19	exec_time=49024	error_code=0
SET TIMESTAMP=1493381471/*!*/;
BEGIN
/*!*/;
# at 15639
#170428 19:11:11 server id 21  end_log_pos 16214 CRC32 0x46cae522 	Query	thread_id=19	exec_time=49024	error_code=0
SET TIMESTAMP=1493381471/*!*/;
UPDATE `oms_sale` SET `employee`=NULL  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 16214
#170428 19:11:11 server id 21  end_log_pos 16310 CRC32 0x52a838bc 	Query	thread_id=19	exec_time=49024	error_code=0
SET TIMESTAMP=1493381471/*!*/;
COMMIT
/*!*/;
# at 16310
#170428 19:11:24 server id 21  end_log_pos 16405 CRC32 0xe0c6ac4e 	Query	thread_id=19	exec_time=49011	error_code=0
SET TIMESTAMP=1493381484/*!*/;
BEGIN
/*!*/;
# at 16405
#170428 19:11:24 server id 21  end_log_pos 16981 CRC32 0xd05fe87d 	Query	thread_id=19	exec_time=49011	error_code=0
SET TIMESTAMP=1493381484/*!*/;
UPDATE `oms_sale` SET `employee`='25'  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` IS NULL AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 16981
#170428 19:11:24 server id 21  end_log_pos 17077 CRC32 0x7b237f1f 	Query	thread_id=19	exec_time=49011	error_code=0
SET TIMESTAMP=1493381484/*!*/;
COMMIT
/*!*/;
# at 17077
#170428 19:15:10 server id 21  end_log_pos 17172 CRC32 0xae96b48b 	Query	thread_id=19	exec_time=48785	error_code=0
SET TIMESTAMP=1493381710/*!*/;
BEGIN
/*!*/;
# at 17172
#170428 19:15:10 server id 21  end_log_pos 17624 CRC32 0x72ff7cef 	Query	thread_id=19	exec_time=48785	error_code=0
SET TIMESTAMP=1493381710/*!*/;
UPDATE `oms_sale_detail` SET `product`='46',`qty`='1.00000000000000000e+000',`price`='5.00000000000000000e+000',`number`=NULL  WHERE `id` = '82039' AND `main_id` = '34500' AND `product` IS NULL AND `qty` = '0.00000000000000000e+000' AND `price` = '0.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` IS NULL
/*!*/;
# at 17624
#170428 19:15:10 server id 21  end_log_pos 17720 CRC32 0x85a82e52 	Query	thread_id=19	exec_time=48785	error_code=0
SET TIMESTAMP=1493381710/*!*/;
COMMIT
/*!*/;
# at 17720
#170428 19:15:12 server id 21  end_log_pos 17815 CRC32 0xee2c58ac 	Query	thread_id=19	exec_time=48783	error_code=0
SET TIMESTAMP=1493381712/*!*/;
BEGIN
/*!*/;
# at 17815
# at 17847
#170428 19:15:12 server id 21  end_log_pos 17847 CRC32 0x07edfb26 	Intvar
SET INSERT_ID=82040/*!*/;
#170428 19:15:12 server id 21  end_log_pos 18094 CRC32 0x505a0ea8 	Query	thread_id=19	exec_time=48783	error_code=0
SET TIMESTAMP=1493381712/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34500','44','1.00000000000000000e+000','5.00000000000000000e+000',NULL)
/*!*/;
# at 18094
#170428 19:15:12 server id 21  end_log_pos 18190 CRC32 0xe15b701f 	Query	thread_id=19	exec_time=48783	error_code=0
SET TIMESTAMP=1493381712/*!*/;
COMMIT
/*!*/;
# at 18190
#170428 19:15:13 server id 21  end_log_pos 18285 CRC32 0xba119647 	Query	thread_id=19	exec_time=48782	error_code=0
SET TIMESTAMP=1493381713/*!*/;
BEGIN
/*!*/;
# at 18285
#170428 19:15:13 server id 21  end_log_pos 18457 CRC32 0xc8742d6e 	Query	thread_id=19	exec_time=48782	error_code=0
SET TIMESTAMP=1493381713/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82040'
/*!*/;
# at 18457
#170428 19:15:13 server id 21  end_log_pos 18553 CRC32 0xf59a8813 	Query	thread_id=19	exec_time=48782	error_code=0
SET TIMESTAMP=1493381713/*!*/;
COMMIT
/*!*/;
# at 18553
#170428 19:15:16 server id 21  end_log_pos 18648 CRC32 0x1fb6c018 	Query	thread_id=19	exec_time=48779	error_code=0
SET TIMESTAMP=1493381716/*!*/;
BEGIN
/*!*/;
# at 18648
# at 18680
#170428 19:15:16 server id 21  end_log_pos 18680 CRC32 0xe419c777 	Intvar
SET INSERT_ID=82041/*!*/;
#170428 19:15:16 server id 21  end_log_pos 18927 CRC32 0xa719f444 	Query	thread_id=19	exec_time=48779	error_code=0
SET TIMESTAMP=1493381716/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34500','41','1.00000000000000000e+000','5.00000000000000000e+000',NULL)
/*!*/;
# at 18927
#170428 19:15:16 server id 21  end_log_pos 19023 CRC32 0x7c9818fe 	Query	thread_id=19	exec_time=48779	error_code=0
SET TIMESTAMP=1493381716/*!*/;
COMMIT
/*!*/;
# at 19023
#170428 19:15:26 server id 21  end_log_pos 19118 CRC32 0xf462c1ca 	Query	thread_id=19	exec_time=48769	error_code=0
SET TIMESTAMP=1493381726/*!*/;
BEGIN
/*!*/;
# at 19118
# at 19150
#170428 19:15:26 server id 21  end_log_pos 19150 CRC32 0x6b6163c8 	Intvar
SET INSERT_ID=82042/*!*/;
#170428 19:15:26 server id 21  end_log_pos 19397 CRC32 0xd2da8bcd 	Query	thread_id=19	exec_time=48769	error_code=0
SET TIMESTAMP=1493381726/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34500','49','1.00000000000000000e+000','5.00000000000000000e+000',NULL)
/*!*/;
# at 19397
#170428 19:15:26 server id 21  end_log_pos 19493 CRC32 0xf6bd20c9 	Query	thread_id=19	exec_time=48769	error_code=0
SET TIMESTAMP=1493381726/*!*/;
COMMIT
/*!*/;
# at 19493
#170428 19:15:30 server id 21  end_log_pos 19588 CRC32 0x9e3bc40d 	Query	thread_id=19	exec_time=48765	error_code=0
SET TIMESTAMP=1493381730/*!*/;
BEGIN
/*!*/;
# at 19588
#170428 19:15:30 server id 21  end_log_pos 20211 CRC32 0x1f6dca24 	Query	thread_id=19	exec_time=48765	error_code=0
SET TIMESTAMP=1493381730/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 19:15:10',`total`='2.50000000000000000e+001'  WHERE `id` = '34500' AND `inv_num` = '553' AND `inv_refer` = '201704-00553' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 20211
#170428 19:15:30 server id 21  end_log_pos 20307 CRC32 0xa5d3e32d 	Query	thread_id=19	exec_time=48765	error_code=0
SET TIMESTAMP=1493381730/*!*/;
COMMIT
/*!*/;
# at 20307
#170428 19:15:34 server id 21  end_log_pos 20402 CRC32 0x2b0b6536 	Query	thread_id=19	exec_time=48761	error_code=0
SET TIMESTAMP=1493381734/*!*/;
BEGIN
/*!*/;
# at 20402
# at 20434
#170428 19:15:34 server id 21  end_log_pos 20434 CRC32 0x8de04b43 	Intvar
SET INSERT_ID=13098/*!*/;
#170428 19:15:34 server id 21  end_log_pos 20608 CRC32 0xbaf7f6ac 	Query	thread_id=19	exec_time=48761	error_code=0
SET TIMESTAMP=1493381734/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34500','613','1')
/*!*/;
# at 20608
#170428 19:15:34 server id 21  end_log_pos 20704 CRC32 0x221334ed 	Query	thread_id=19	exec_time=48761	error_code=0
SET TIMESTAMP=1493381734/*!*/;
COMMIT
/*!*/;
# at 20704
#170428 19:15:52 server id 21  end_log_pos 20799 CRC32 0x9a1571de 	Query	thread_id=19	exec_time=48743	error_code=0
SET TIMESTAMP=1493381752/*!*/;
BEGIN
/*!*/;
# at 20799
# at 20831
#170428 19:15:52 server id 21  end_log_pos 20831 CRC32 0x0e5c7d25 	Intvar
SET INSERT_ID=82043/*!*/;
#170428 19:15:52 server id 21  end_log_pos 21077 CRC32 0x6c6682fd 	Query	thread_id=19	exec_time=48743	error_code=0
SET TIMESTAMP=1493381752/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34501','44','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 21077
#170428 19:15:52 server id 21  end_log_pos 21173 CRC32 0x1a3db666 	Query	thread_id=19	exec_time=48743	error_code=0
SET TIMESTAMP=1493381752/*!*/;
COMMIT
/*!*/;
# at 21173
#170428 19:15:52 server id 21  end_log_pos 21268 CRC32 0xf113f7da 	Query	thread_id=19	exec_time=48743	error_code=0
SET TIMESTAMP=1493381752/*!*/;
BEGIN
/*!*/;
# at 21268
#170428 19:15:52 server id 21  end_log_pos 21440 CRC32 0x1fcb5428 	Query	thread_id=19	exec_time=48743	error_code=0
SET TIMESTAMP=1493381752/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82043'
/*!*/;
# at 21440
#170428 19:15:52 server id 21  end_log_pos 21536 CRC32 0x32d10c8b 	Query	thread_id=19	exec_time=48743	error_code=0
SET TIMESTAMP=1493381752/*!*/;
COMMIT
/*!*/;
# at 21536
#170428 19:15:55 server id 21  end_log_pos 21631 CRC32 0x03ba1841 	Query	thread_id=19	exec_time=48740	error_code=0
SET TIMESTAMP=1493381755/*!*/;
BEGIN
/*!*/;
# at 21631
# at 21663
#170428 19:15:55 server id 21  end_log_pos 21663 CRC32 0x069896b0 	Intvar
SET INSERT_ID=82044/*!*/;
#170428 19:15:55 server id 21  end_log_pos 21909 CRC32 0xb72ef014 	Query	thread_id=19	exec_time=48740	error_code=0
SET TIMESTAMP=1493381755/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34501','41','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 21909
#170428 19:15:55 server id 21  end_log_pos 22005 CRC32 0x5a23bdd1 	Query	thread_id=19	exec_time=48740	error_code=0
SET TIMESTAMP=1493381755/*!*/;
COMMIT
/*!*/;
# at 22005
#170428 19:15:58 server id 21  end_log_pos 22100 CRC32 0x35d8a9de 	Query	thread_id=19	exec_time=48737	error_code=0
SET TIMESTAMP=1493381758/*!*/;
BEGIN
/*!*/;
# at 22100
# at 22132
#170428 19:15:58 server id 21  end_log_pos 22132 CRC32 0xfe73484c 	Intvar
SET INSERT_ID=82045/*!*/;
#170428 19:15:58 server id 21  end_log_pos 22378 CRC32 0x26590c81 	Query	thread_id=19	exec_time=48737	error_code=0
SET TIMESTAMP=1493381758/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34501','46','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 22378
#170428 19:15:58 server id 21  end_log_pos 22474 CRC32 0xaa80ea26 	Query	thread_id=19	exec_time=48737	error_code=0
SET TIMESTAMP=1493381758/*!*/;
COMMIT
/*!*/;
# at 22474
#170428 19:16:00 server id 21  end_log_pos 22569 CRC32 0xb7695cb0 	Query	thread_id=19	exec_time=48735	error_code=0
SET TIMESTAMP=1493381760/*!*/;
BEGIN
/*!*/;
# at 22569
# at 22601
#170428 19:16:00 server id 21  end_log_pos 22601 CRC32 0x19bc94e4 	Intvar
SET INSERT_ID=82046/*!*/;
#170428 19:16:00 server id 21  end_log_pos 22847 CRC32 0x529c0f98 	Query	thread_id=19	exec_time=48735	error_code=0
SET TIMESTAMP=1493381760/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34501','49','1.00000000000000000e+000','5.00000000000000000e+000','4')
/*!*/;
# at 22847
#170428 19:16:00 server id 21  end_log_pos 22943 CRC32 0xfb3266eb 	Query	thread_id=19	exec_time=48735	error_code=0
SET TIMESTAMP=1493381760/*!*/;
COMMIT
/*!*/;
# at 22943
#170428 19:16:03 server id 21  end_log_pos 23038 CRC32 0xb85cd469 	Query	thread_id=19	exec_time=48732	error_code=0
SET TIMESTAMP=1493381763/*!*/;
BEGIN
/*!*/;
# at 23038
#170428 19:16:03 server id 21  end_log_pos 23661 CRC32 0x75f28dc9 	Query	thread_id=19	exec_time=48732	error_code=0
SET TIMESTAMP=1493381763/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 19:15:52',`total`='2.50000000000000000e+001'  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 23661
#170428 19:16:03 server id 21  end_log_pos 23757 CRC32 0x6858c963 	Query	thread_id=19	exec_time=48732	error_code=0
SET TIMESTAMP=1493381763/*!*/;
COMMIT
/*!*/;
# at 23757
#170428 19:16:12 server id 21  end_log_pos 23852 CRC32 0x49a5b5f8 	Query	thread_id=19	exec_time=48724	error_code=0
SET TIMESTAMP=1493381772/*!*/;
BEGIN
/*!*/;
# at 23852
# at 23884
#170428 19:16:12 server id 21  end_log_pos 23884 CRC32 0xaefabc2f 	Intvar
SET INSERT_ID=13099/*!*/;
#170428 19:16:12 server id 21  end_log_pos 24058 CRC32 0x1d54b534 	Query	thread_id=19	exec_time=48724	error_code=0
SET TIMESTAMP=1493381772/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34501','613','1')
/*!*/;
# at 24058
#170428 19:16:12 server id 21  end_log_pos 24154 CRC32 0x7921c580 	Query	thread_id=19	exec_time=48724	error_code=0
SET TIMESTAMP=1493381772/*!*/;
COMMIT
/*!*/;
# at 24154
#170428 19:16:43 server id 21  end_log_pos 24249 CRC32 0x10a5281d 	Query	thread_id=19	exec_time=48693	error_code=0
SET TIMESTAMP=1493381803/*!*/;
BEGIN
/*!*/;
# at 24249
#170428 19:16:43 server id 21  end_log_pos 24879 CRC32 0x7ad090d3 	Query	thread_id=19	exec_time=48693	error_code=0
SET TIMESTAMP=1493381803/*!*/;
UPDATE `oms_sale` SET `bill`='1.00000000000000000e+002'  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:15:52' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 24879
#170428 19:16:43 server id 21  end_log_pos 24975 CRC32 0x943757a3 	Query	thread_id=19	exec_time=48693	error_code=0
SET TIMESTAMP=1493381803/*!*/;
COMMIT
/*!*/;
# at 24975
#170428 19:17:02 server id 21  end_log_pos 25070 CRC32 0xf83874e7 	Query	thread_id=19	exec_time=48674	error_code=0
SET TIMESTAMP=1493381822/*!*/;
BEGIN
/*!*/;
# at 25070
#170428 19:17:02 server id 21  end_log_pos 25721 CRC32 0xb3431821 	Query	thread_id=19	exec_time=48674	error_code=0
SET TIMESTAMP=1493381822/*!*/;
UPDATE `oms_sale` SET `bill`='1.05000000000000000e+002'  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:15:52' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.00000000000000000e+002' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 25721
#170428 19:17:02 server id 21  end_log_pos 25817 CRC32 0x968cd8e1 	Query	thread_id=19	exec_time=48674	error_code=0
SET TIMESTAMP=1493381822/*!*/;
COMMIT
/*!*/;
# at 25817
#170428 19:20:31 server id 21  end_log_pos 25912 CRC32 0x561a544c 	Query	thread_id=19	exec_time=48465	error_code=0
SET TIMESTAMP=1493382031/*!*/;
BEGIN
/*!*/;
# at 25912
# at 25944
#170428 19:20:31 server id 21  end_log_pos 25944 CRC32 0xfea15050 	Intvar
SET INSERT_ID=34502/*!*/;
#170428 19:20:31 server id 21  end_log_pos 26178 CRC32 0x9799172e 	Query	thread_id=19	exec_time=48465	error_code=0
SET TIMESTAMP=1493382031/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('555','201704-00555','2017-04-28 00:00:00','25','Cash')
/*!*/;
# at 26178
#170428 19:20:31 server id 21  end_log_pos 26274 CRC32 0x60412bbd 	Query	thread_id=19	exec_time=48465	error_code=0
SET TIMESTAMP=1493382031/*!*/;
COMMIT
/*!*/;
# at 26274
#170428 19:20:39 server id 21  end_log_pos 26369 CRC32 0xba723c53 	Query	thread_id=19	exec_time=48457	error_code=0
SET TIMESTAMP=1493382039/*!*/;
BEGIN
/*!*/;
# at 26369
# at 26401
#170428 19:20:39 server id 21  end_log_pos 26401 CRC32 0xd439d49e 	Intvar
SET INSERT_ID=82047/*!*/;
#170428 19:20:39 server id 21  end_log_pos 26647 CRC32 0x1c35505b 	Query	thread_id=19	exec_time=48457	error_code=0
SET TIMESTAMP=1493382039/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34502','46','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 26647
#170428 19:20:39 server id 21  end_log_pos 26743 CRC32 0xf8649453 	Query	thread_id=19	exec_time=48457	error_code=0
SET TIMESTAMP=1493382039/*!*/;
COMMIT
/*!*/;
# at 26743
#170428 19:20:39 server id 21  end_log_pos 26838 CRC32 0xd1a48909 	Query	thread_id=19	exec_time=48457	error_code=0
SET TIMESTAMP=1493382039/*!*/;
BEGIN
/*!*/;
# at 26838
#170428 19:20:39 server id 21  end_log_pos 27010 CRC32 0xe9cd4069 	Query	thread_id=19	exec_time=48457	error_code=0
SET TIMESTAMP=1493382039/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82047'
/*!*/;
# at 27010
#170428 19:20:39 server id 21  end_log_pos 27106 CRC32 0x4d724686 	Query	thread_id=19	exec_time=48457	error_code=0
SET TIMESTAMP=1493382039/*!*/;
COMMIT
/*!*/;
# at 27106
#170428 19:20:42 server id 21  end_log_pos 27201 CRC32 0x12a12908 	Query	thread_id=19	exec_time=48454	error_code=0
SET TIMESTAMP=1493382042/*!*/;
BEGIN
/*!*/;
# at 27201
# at 27233
#170428 19:20:42 server id 21  end_log_pos 27233 CRC32 0x85be38df 	Intvar
SET INSERT_ID=82048/*!*/;
#170428 19:20:42 server id 21  end_log_pos 27479 CRC32 0x052662e5 	Query	thread_id=19	exec_time=48454	error_code=0
SET TIMESTAMP=1493382042/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34502','44','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 27479
#170428 19:20:42 server id 21  end_log_pos 27575 CRC32 0x77991139 	Query	thread_id=19	exec_time=48454	error_code=0
SET TIMESTAMP=1493382042/*!*/;
COMMIT
/*!*/;
# at 27575
#170428 19:20:46 server id 21  end_log_pos 27670 CRC32 0x99a04f73 	Query	thread_id=19	exec_time=48450	error_code=0
SET TIMESTAMP=1493382046/*!*/;
BEGIN
/*!*/;
# at 27670
# at 27702
#170428 19:20:46 server id 21  end_log_pos 27702 CRC32 0xa2996cab 	Intvar
SET INSERT_ID=82049/*!*/;
#170428 19:20:46 server id 21  end_log_pos 27949 CRC32 0xf7796118 	Query	thread_id=19	exec_time=48450	error_code=0
SET TIMESTAMP=1493382046/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34502','613','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 27949
#170428 19:20:46 server id 21  end_log_pos 28045 CRC32 0xbd26e1c1 	Query	thread_id=19	exec_time=48450	error_code=0
SET TIMESTAMP=1493382046/*!*/;
COMMIT
/*!*/;
# at 28045
#170428 19:20:49 server id 21  end_log_pos 28140 CRC32 0x041da0a2 	Query	thread_id=19	exec_time=48447	error_code=0
SET TIMESTAMP=1493382049/*!*/;
BEGIN
/*!*/;
# at 28140
# at 28172
#170428 19:20:49 server id 21  end_log_pos 28172 CRC32 0x42961ae9 	Intvar
SET INSERT_ID=82050/*!*/;
#170428 19:20:49 server id 21  end_log_pos 28419 CRC32 0x3ea339d0 	Query	thread_id=19	exec_time=48447	error_code=0
SET TIMESTAMP=1493382049/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34502','614','1.00000000000000000e+000','5.00000000000000000e+000','4')
/*!*/;
# at 28419
#170428 19:20:49 server id 21  end_log_pos 28515 CRC32 0x01de39d1 	Query	thread_id=19	exec_time=48447	error_code=0
SET TIMESTAMP=1493382049/*!*/;
COMMIT
/*!*/;
# at 28515
#170428 19:20:49 server id 21  end_log_pos 28610 CRC32 0xd2d66495 	Query	thread_id=19	exec_time=48447	error_code=0
SET TIMESTAMP=1493382049/*!*/;
BEGIN
/*!*/;
# at 28610
#170428 19:20:49 server id 21  end_log_pos 28782 CRC32 0xb794477f 	Query	thread_id=19	exec_time=48447	error_code=0
SET TIMESTAMP=1493382049/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82050'
/*!*/;
# at 28782
#170428 19:20:49 server id 21  end_log_pos 28878 CRC32 0x110e7add 	Query	thread_id=19	exec_time=48447	error_code=0
SET TIMESTAMP=1493382049/*!*/;
COMMIT
/*!*/;
# at 28878
#170428 19:20:52 server id 21  end_log_pos 28973 CRC32 0x3c6c72ee 	Query	thread_id=19	exec_time=48444	error_code=0
SET TIMESTAMP=1493382052/*!*/;
BEGIN
/*!*/;
# at 28973
# at 29005
#170428 19:20:52 server id 21  end_log_pos 29005 CRC32 0xca783b11 	Intvar
SET INSERT_ID=82051/*!*/;
#170428 19:20:52 server id 21  end_log_pos 29250 CRC32 0xaf310625 	Query	thread_id=19	exec_time=48444	error_code=0
SET TIMESTAMP=1493382052/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34502','2','1.00000000000000000e+000','3.00000000000000000e+000','5')
/*!*/;
# at 29250
#170428 19:20:52 server id 21  end_log_pos 29346 CRC32 0x832f539d 	Query	thread_id=19	exec_time=48444	error_code=0
SET TIMESTAMP=1493382052/*!*/;
COMMIT
/*!*/;
# at 29346
#170428 19:20:52 server id 21  end_log_pos 29441 CRC32 0xca909cd2 	Query	thread_id=19	exec_time=48444	error_code=0
SET TIMESTAMP=1493382052/*!*/;
BEGIN
/*!*/;
# at 29441
#170428 19:20:52 server id 21  end_log_pos 30064 CRC32 0x4c188dc0 	Query	thread_id=19	exec_time=48444	error_code=0
SET TIMESTAMP=1493382052/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 19:20:39',`total`='3.30000000000000000e+001'  WHERE `id` = '34502' AND `inv_num` = '555' AND `inv_refer` = '201704-00555' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 30064
#170428 19:20:52 server id 21  end_log_pos 30160 CRC32 0x6d40f0a4 	Query	thread_id=19	exec_time=48444	error_code=0
SET TIMESTAMP=1493382052/*!*/;
COMMIT
/*!*/;
# at 30160
#170428 19:21:00 server id 21  end_log_pos 30255 CRC32 0x1f344167 	Query	thread_id=19	exec_time=48436	error_code=0
SET TIMESTAMP=1493382060/*!*/;
BEGIN
/*!*/;
# at 30255
#170428 19:21:00 server id 21  end_log_pos 30867 CRC32 0x795dd678 	Query	thread_id=19	exec_time=48436	error_code=0
SET TIMESTAMP=1493382060/*!*/;
UPDATE `oms_sale` SET `employee`='25'  WHERE `id` = '34502' AND `inv_num` = '555' AND `inv_refer` = '201704-00555' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:20:39' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 30867
#170428 19:21:00 server id 21  end_log_pos 30963 CRC32 0xdb77a749 	Query	thread_id=19	exec_time=48436	error_code=0
SET TIMESTAMP=1493382060/*!*/;
COMMIT
/*!*/;
# at 30963
#170428 19:21:25 server id 21  end_log_pos 31058 CRC32 0xdf906fa5 	Query	thread_id=19	exec_time=48411	error_code=0
SET TIMESTAMP=1493382085/*!*/;
BEGIN
/*!*/;
# at 31058
# at 31090
#170428 19:21:25 server id 21  end_log_pos 31090 CRC32 0xf23deb95 	Intvar
SET INSERT_ID=34503/*!*/;
#170428 19:21:25 server id 21  end_log_pos 31324 CRC32 0x01f45d58 	Query	thread_id=19	exec_time=48411	error_code=0
SET TIMESTAMP=1493382085/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('556','201704-00556','2017-04-28 00:00:00','25','Cash')
/*!*/;
# at 31324
#170428 19:21:25 server id 21  end_log_pos 31420 CRC32 0xa9ed05fc 	Query	thread_id=19	exec_time=48411	error_code=0
SET TIMESTAMP=1493382085/*!*/;
COMMIT
/*!*/;
# at 31420
#170428 19:21:26 server id 21  end_log_pos 31515 CRC32 0xd9241ff2 	Query	thread_id=19	exec_time=48410	error_code=0
SET TIMESTAMP=1493382086/*!*/;
BEGIN
/*!*/;
# at 31515
# at 31547
#170428 19:21:26 server id 21  end_log_pos 31547 CRC32 0x6e87f817 	Intvar
SET INSERT_ID=82052/*!*/;
#170428 19:21:26 server id 21  end_log_pos 31794 CRC32 0x4b32c392 	Query	thread_id=19	exec_time=48410	error_code=0
SET TIMESTAMP=1493382086/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34503','613','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 31794
#170428 19:21:26 server id 21  end_log_pos 31890 CRC32 0xb4c3260e 	Query	thread_id=19	exec_time=48410	error_code=0
SET TIMESTAMP=1493382086/*!*/;
COMMIT
/*!*/;
# at 31890
#170428 19:21:28 server id 21  end_log_pos 31985 CRC32 0x10445b06 	Query	thread_id=19	exec_time=48408	error_code=0
SET TIMESTAMP=1493382088/*!*/;
BEGIN
/*!*/;
# at 31985
# at 32017
#170428 19:21:28 server id 21  end_log_pos 32017 CRC32 0xbd361611 	Intvar
SET INSERT_ID=82053/*!*/;
#170428 19:21:28 server id 21  end_log_pos 32264 CRC32 0x2378abce 	Query	thread_id=19	exec_time=48408	error_code=0
SET TIMESTAMP=1493382088/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34503','614','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 32264
#170428 19:21:28 server id 21  end_log_pos 32360 CRC32 0xd7a652ea 	Query	thread_id=19	exec_time=48408	error_code=0
SET TIMESTAMP=1493382088/*!*/;
COMMIT
/*!*/;
# at 32360
#170428 19:21:32 server id 21  end_log_pos 32455 CRC32 0xfb9568b5 	Query	thread_id=19	exec_time=48404	error_code=0
SET TIMESTAMP=1493382092/*!*/;
BEGIN
/*!*/;
# at 32455
# at 32487
#170428 19:21:32 server id 21  end_log_pos 32487 CRC32 0x232e3eb8 	Intvar
SET INSERT_ID=82054/*!*/;
#170428 19:21:32 server id 21  end_log_pos 32733 CRC32 0x36b89477 	Query	thread_id=19	exec_time=48404	error_code=0
SET TIMESTAMP=1493382092/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34503','46','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 32733
#170428 19:21:32 server id 21  end_log_pos 32829 CRC32 0x10574612 	Query	thread_id=19	exec_time=48404	error_code=0
SET TIMESTAMP=1493382092/*!*/;
COMMIT
/*!*/;
# at 32829
#170428 19:21:33 server id 21  end_log_pos 32924 CRC32 0x7a3a5e7b 	Query	thread_id=19	exec_time=48403	error_code=0
SET TIMESTAMP=1493382093/*!*/;
BEGIN
/*!*/;
# at 32924
#170428 19:21:33 server id 21  end_log_pos 33096 CRC32 0xd73dc386 	Query	thread_id=19	exec_time=48403	error_code=0
SET TIMESTAMP=1493382093/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82054'
/*!*/;
# at 33096
#170428 19:21:33 server id 21  end_log_pos 33192 CRC32 0xf3d2c841 	Query	thread_id=19	exec_time=48403	error_code=0
SET TIMESTAMP=1493382093/*!*/;
COMMIT
/*!*/;
# at 33192
#170428 19:21:40 server id 21  end_log_pos 33287 CRC32 0x98ebbca4 	Query	thread_id=19	exec_time=48396	error_code=0
SET TIMESTAMP=1493382100/*!*/;
BEGIN
/*!*/;
# at 33287
# at 33319
#170428 19:21:40 server id 21  end_log_pos 33319 CRC32 0x3ee14152 	Intvar
SET INSERT_ID=82055/*!*/;
#170428 19:21:40 server id 21  end_log_pos 33565 CRC32 0xf80435dd 	Query	thread_id=19	exec_time=48396	error_code=0
SET TIMESTAMP=1493382100/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34503','44','1.00000000000000000e+000','5.00000000000000000e+000','4')
/*!*/;
# at 33565
#170428 19:21:40 server id 21  end_log_pos 33661 CRC32 0xfdd6d713 	Query	thread_id=19	exec_time=48396	error_code=0
SET TIMESTAMP=1493382100/*!*/;
COMMIT
/*!*/;
# at 33661
#170428 19:21:43 server id 21  end_log_pos 33756 CRC32 0xd2909eca 	Query	thread_id=19	exec_time=48393	error_code=0
SET TIMESTAMP=1493382103/*!*/;
BEGIN
/*!*/;
# at 33756
#170428 19:21:43 server id 21  end_log_pos 34379 CRC32 0x10634eae 	Query	thread_id=19	exec_time=48393	error_code=0
SET TIMESTAMP=1493382103/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 19:21:26',`total`='2.50000000000000000e+001'  WHERE `id` = '34503' AND `inv_num` = '556' AND `inv_refer` = '201704-00556' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 34379
#170428 19:21:43 server id 21  end_log_pos 34475 CRC32 0x9acda867 	Query	thread_id=19	exec_time=48393	error_code=0
SET TIMESTAMP=1493382103/*!*/;
COMMIT
/*!*/;
# at 34475
#170428 19:21:46 server id 21  end_log_pos 34570 CRC32 0xd805b497 	Query	thread_id=19	exec_time=48390	error_code=0
SET TIMESTAMP=1493382106/*!*/;
BEGIN
/*!*/;
# at 34570
# at 34602
#170428 19:21:46 server id 21  end_log_pos 34602 CRC32 0xafa4595c 	Intvar
SET INSERT_ID=13100/*!*/;
#170428 19:21:46 server id 21  end_log_pos 34775 CRC32 0x6a044ebf 	Query	thread_id=19	exec_time=48390	error_code=0
SET TIMESTAMP=1493382106/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34503','44','1')
/*!*/;
# at 34775
#170428 19:21:46 server id 21  end_log_pos 34871 CRC32 0xc3e848d3 	Query	thread_id=19	exec_time=48390	error_code=0
SET TIMESTAMP=1493382106/*!*/;
COMMIT
/*!*/;
# at 34871
#170428 19:21:59 server id 21  end_log_pos 34966 CRC32 0x9ca50381 	Query	thread_id=19	exec_time=48377	error_code=0
SET TIMESTAMP=1493382119/*!*/;
BEGIN
/*!*/;
# at 34966
# at 34998
#170428 19:21:59 server id 21  end_log_pos 34998 CRC32 0x5da7b8d5 	Intvar
SET INSERT_ID=13101/*!*/;
#170428 19:21:59 server id 21  end_log_pos 35161 CRC32 0xdaa487ba 	Query	thread_id=19	exec_time=48377	error_code=0
SET TIMESTAMP=1493382119/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`) VALUES ('34503',NULL)
/*!*/;
# at 35161
#170428 19:21:59 server id 21  end_log_pos 35257 CRC32 0x24be0530 	Query	thread_id=19	exec_time=48377	error_code=0
SET TIMESTAMP=1493382119/*!*/;
COMMIT
/*!*/;
# at 35257
#170428 19:22:02 server id 21  end_log_pos 35352 CRC32 0xf8174b90 	Query	thread_id=19	exec_time=48374	error_code=0
SET TIMESTAMP=1493382122/*!*/;
BEGIN
/*!*/;
# at 35352
# at 35384
#170428 19:22:02 server id 21  end_log_pos 35384 CRC32 0xe18185cc 	Intvar
SET INSERT_ID=82056/*!*/;
#170428 19:22:02 server id 21  end_log_pos 35631 CRC32 0xfa5f824a 	Query	thread_id=19	exec_time=48374	error_code=0
SET TIMESTAMP=1493382122/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34503','139','1.00000000000000000e+000','8.00000000000000000e+000','5')
/*!*/;
# at 35631
#170428 19:22:02 server id 21  end_log_pos 35727 CRC32 0x42888e49 	Query	thread_id=19	exec_time=48374	error_code=0
SET TIMESTAMP=1493382122/*!*/;
COMMIT
/*!*/;
# at 35727
#170428 19:22:10 server id 21  end_log_pos 35822 CRC32 0x2d2dff9f 	Query	thread_id=19	exec_time=48366	error_code=0
SET TIMESTAMP=1493382130/*!*/;
BEGIN
/*!*/;
# at 35822
#170428 19:22:10 server id 21  end_log_pos 36453 CRC32 0xcd165bbc 	Query	thread_id=19	exec_time=48366	error_code=0
SET TIMESTAMP=1493382130/*!*/;
UPDATE `oms_sale` SET `total`='3.30000000000000000e+001'  WHERE `id` = '34503' AND `inv_num` = '556' AND `inv_refer` = '201704-00556' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:21:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 36453
#170428 19:22:10 server id 21  end_log_pos 36549 CRC32 0x6afa3fbc 	Query	thread_id=19	exec_time=48366	error_code=0
SET TIMESTAMP=1493382130/*!*/;
COMMIT
/*!*/;
# at 36549
#170428 19:22:30 server id 21  end_log_pos 36644 CRC32 0x79968f46 	Query	thread_id=19	exec_time=48346	error_code=0
SET TIMESTAMP=1493382150/*!*/;
BEGIN
/*!*/;
# at 36644
#170428 19:22:30 server id 21  end_log_pos 36997 CRC32 0x39e0e996 	Query	thread_id=19	exec_time=48346	error_code=0
SET TIMESTAMP=1493382150/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82052' AND `main_id` = '34503' AND `product` = '613' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '1'
/*!*/;
# at 36997
#170428 19:22:30 server id 21  end_log_pos 37093 CRC32 0x5997296c 	Query	thread_id=19	exec_time=48346	error_code=0
SET TIMESTAMP=1493382150/*!*/;
COMMIT
/*!*/;
# at 37093
#170428 19:22:34 server id 21  end_log_pos 37188 CRC32 0xe115dd96 	Query	thread_id=19	exec_time=48342	error_code=0
SET TIMESTAMP=1493382154/*!*/;
BEGIN
/*!*/;
# at 37188
#170428 19:22:34 server id 21  end_log_pos 37541 CRC32 0xf6a11d1c 	Query	thread_id=19	exec_time=48342	error_code=0
SET TIMESTAMP=1493382154/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82053' AND `main_id` = '34503' AND `product` = '614' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '2'
/*!*/;
# at 37541
#170428 19:22:34 server id 21  end_log_pos 37637 CRC32 0xab6cccde 	Query	thread_id=19	exec_time=48342	error_code=0
SET TIMESTAMP=1493382154/*!*/;
COMMIT
/*!*/;
# at 37637
#170428 19:22:36 server id 21  end_log_pos 37732 CRC32 0xf1648c4b 	Query	thread_id=19	exec_time=48340	error_code=0
SET TIMESTAMP=1493382156/*!*/;
BEGIN
/*!*/;
# at 37732
#170428 19:22:36 server id 21  end_log_pos 38084 CRC32 0xcf4e0206 	Query	thread_id=19	exec_time=48340	error_code=0
SET TIMESTAMP=1493382156/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82054' AND `main_id` = '34503' AND `product` = '46' AND `qty` = '2.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '3'
/*!*/;
# at 38084
#170428 19:22:36 server id 21  end_log_pos 38180 CRC32 0x588930a1 	Query	thread_id=19	exec_time=48340	error_code=0
SET TIMESTAMP=1493382156/*!*/;
COMMIT
/*!*/;
# at 38180
#170428 19:22:38 server id 21  end_log_pos 38275 CRC32 0x8884fa0c 	Query	thread_id=19	exec_time=48338	error_code=0
SET TIMESTAMP=1493382158/*!*/;
BEGIN
/*!*/;
# at 38275
#170428 19:22:38 server id 21  end_log_pos 38627 CRC32 0xc73a494e 	Query	thread_id=19	exec_time=48338	error_code=0
SET TIMESTAMP=1493382158/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82055' AND `main_id` = '34503' AND `product` = '44' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '4'
/*!*/;
# at 38627
#170428 19:22:38 server id 21  end_log_pos 38723 CRC32 0x634f58c0 	Query	thread_id=19	exec_time=48338	error_code=0
SET TIMESTAMP=1493382158/*!*/;
COMMIT
/*!*/;
# at 38723
#170428 19:22:40 server id 21  end_log_pos 38818 CRC32 0x62a57f0a 	Query	thread_id=19	exec_time=48336	error_code=0
SET TIMESTAMP=1493382160/*!*/;
BEGIN
/*!*/;
# at 38818
#170428 19:22:40 server id 21  end_log_pos 39171 CRC32 0xf3d58554 	Query	thread_id=19	exec_time=48336	error_code=0
SET TIMESTAMP=1493382160/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82056' AND `main_id` = '34503' AND `product` = '139' AND `qty` = '1.00000000000000000e+000' AND `price` = '8.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '5'
/*!*/;
# at 39171
#170428 19:22:40 server id 21  end_log_pos 39267 CRC32 0x018d571b 	Query	thread_id=19	exec_time=48336	error_code=0
SET TIMESTAMP=1493382160/*!*/;
COMMIT
/*!*/;
# at 39267
#170428 19:22:46 server id 21  end_log_pos 39362 CRC32 0xdde5bdb9 	Query	thread_id=19	exec_time=48330	error_code=0
SET TIMESTAMP=1493382166/*!*/;
BEGIN
/*!*/;
# at 39362
# at 39394
#170428 19:22:46 server id 21  end_log_pos 39394 CRC32 0xd32514d0 	Intvar
SET INSERT_ID=82057/*!*/;
#170428 19:22:46 server id 21  end_log_pos 39641 CRC32 0xe5ab9093 	Query	thread_id=19	exec_time=48330	error_code=0
SET TIMESTAMP=1493382166/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34503','588','1.00000000000000000e+000','1.00000000000000000e+000','1')
/*!*/;
# at 39641
#170428 19:22:46 server id 21  end_log_pos 39737 CRC32 0x9b91f686 	Query	thread_id=19	exec_time=48330	error_code=0
SET TIMESTAMP=1493382166/*!*/;
COMMIT
/*!*/;
# at 39737
#170428 19:22:49 server id 21  end_log_pos 39832 CRC32 0x0f7dedfd 	Query	thread_id=19	exec_time=48327	error_code=0
SET TIMESTAMP=1493382169/*!*/;
BEGIN
/*!*/;
# at 39832
#170428 19:22:49 server id 21  end_log_pos 40218 CRC32 0xc3499bf6 	Query	thread_id=19	exec_time=48327	error_code=0
SET TIMESTAMP=1493382169/*!*/;
UPDATE `oms_sale_detail` SET `qty`='0.00000000000000000e+000'  WHERE `id` = '82057' AND `main_id` = '34503' AND `product` = '588' AND `qty` = '1.00000000000000000e+000' AND `price` = '1.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '1'
/*!*/;
# at 40218
#170428 19:22:49 server id 21  end_log_pos 40314 CRC32 0xb78c18c5 	Query	thread_id=19	exec_time=48327	error_code=0
SET TIMESTAMP=1493382169/*!*/;
COMMIT
/*!*/;
# at 40314
#170428 19:22:52 server id 21  end_log_pos 40409 CRC32 0x1e7506b7 	Query	thread_id=19	exec_time=48324	error_code=0
SET TIMESTAMP=1493382172/*!*/;
BEGIN
/*!*/;
# at 40409
#170428 19:22:52 server id 21  end_log_pos 40762 CRC32 0xd0c3333d 	Query	thread_id=19	exec_time=48324	error_code=0
SET TIMESTAMP=1493382172/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82057' AND `main_id` = '34503' AND `product` = '588' AND `qty` = '0.00000000000000000e+000' AND `price` = '1.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '1'
/*!*/;
# at 40762
#170428 19:22:52 server id 21  end_log_pos 40858 CRC32 0x700852f9 	Query	thread_id=19	exec_time=48324	error_code=0
SET TIMESTAMP=1493382172/*!*/;
COMMIT
/*!*/;
# at 40858
#170428 19:22:55 server id 21  end_log_pos 40953 CRC32 0x991b50b5 	Query	thread_id=19	exec_time=48321	error_code=0
SET TIMESTAMP=1493382175/*!*/;
BEGIN
/*!*/;
# at 40953
#170428 19:22:55 server id 21  end_log_pos 41584 CRC32 0x1766a330 	Query	thread_id=19	exec_time=48321	error_code=0
SET TIMESTAMP=1493382175/*!*/;
UPDATE `oms_sale` SET `total`='0.00000000000000000e+000'  WHERE `id` = '34503' AND `inv_num` = '556' AND `inv_refer` = '201704-00556' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:21:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 41584
#170428 19:22:55 server id 21  end_log_pos 41680 CRC32 0x12f27a21 	Query	thread_id=19	exec_time=48321	error_code=0
SET TIMESTAMP=1493382175/*!*/;
COMMIT
/*!*/;
# at 41680
#170428 19:23:00 server id 21  end_log_pos 41775 CRC32 0xf64fde5e 	Query	thread_id=19	exec_time=48316	error_code=0
SET TIMESTAMP=1493382180/*!*/;
BEGIN
/*!*/;
# at 41775
#170428 19:23:00 server id 21  end_log_pos 42405 CRC32 0x965acd03 	Query	thread_id=19	exec_time=48316	error_code=0
SET TIMESTAMP=1493382180/*!*/;
UPDATE `oms_sale` SET `bill`='3.50000000000000000e+001'  WHERE `id` = '34502' AND `inv_num` = '555' AND `inv_refer` = '201704-00555' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:20:39' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 42405
#170428 19:23:00 server id 21  end_log_pos 42501 CRC32 0xcdbbd8ea 	Query	thread_id=19	exec_time=48316	error_code=0
SET TIMESTAMP=1493382180/*!*/;
COMMIT
/*!*/;
# at 42501
#170428 19:24:13 server id 21  end_log_pos 42596 CRC32 0xcbc99e2d 	Query	thread_id=19	exec_time=48243	error_code=0
SET TIMESTAMP=1493382253/*!*/;
BEGIN
/*!*/;
# at 42596
#170428 19:24:13 server id 21  end_log_pos 43266 CRC32 0x0f727308 	Query	thread_id=19	exec_time=48243	error_code=0
SET TIMESTAMP=1493382253/*!*/;
UPDATE `oms_sale` SET `nationality`='Chinese',`age`='30',`gender`='Female'  WHERE `id` = '34502' AND `inv_num` = '555' AND `inv_refer` = '201704-00555' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:20:39' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '3.50000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 43266
#170428 19:24:13 server id 21  end_log_pos 43362 CRC32 0xabcf5669 	Query	thread_id=19	exec_time=48243	error_code=0
SET TIMESTAMP=1493382253/*!*/;
COMMIT
/*!*/;
# at 43362
#170428 19:24:18 server id 21  end_log_pos 43457 CRC32 0x92f4dd17 	Query	thread_id=19	exec_time=48238	error_code=0
SET TIMESTAMP=1493382258/*!*/;
BEGIN
/*!*/;
# at 43457
#170428 19:24:18 server id 21  end_log_pos 44098 CRC32 0x3cde0c96 	Query	thread_id=19	exec_time=48238	error_code=0
SET TIMESTAMP=1493382258/*!*/;
UPDATE `oms_sale` SET `nationality`='Chinese'  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:15:52' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.05000000000000000e+002' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 44098
#170428 19:24:18 server id 21  end_log_pos 44194 CRC32 0xf2cad9de 	Query	thread_id=19	exec_time=48238	error_code=0
SET TIMESTAMP=1493382258/*!*/;
COMMIT
/*!*/;
# at 44194
#170428 19:24:28 server id 21  end_log_pos 44289 CRC32 0x93d09b4a 	Query	thread_id=19	exec_time=48228	error_code=0
SET TIMESTAMP=1493382268/*!*/;
BEGIN
/*!*/;
# at 44289
#170428 19:24:28 server id 21  end_log_pos 44939 CRC32 0x6e59cc8e 	Query	thread_id=19	exec_time=48228	error_code=0
SET TIMESTAMP=1493382268/*!*/;
UPDATE `oms_sale` SET `age`='30',`gender`='Female'  WHERE `id` = '34501' AND `inv_num` = '554' AND `inv_refer` = '201704-00554' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` = 'Chinese' AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:15:52' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.05000000000000000e+002' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 44939
#170428 19:24:28 server id 21  end_log_pos 45035 CRC32 0x902377c1 	Query	thread_id=19	exec_time=48228	error_code=0
SET TIMESTAMP=1493382268/*!*/;
COMMIT
/*!*/;
# at 45035
#170428 19:25:04 server id 21  end_log_pos 45130 CRC32 0xa30f7706 	Query	thread_id=19	exec_time=48192	error_code=0
SET TIMESTAMP=1493382304/*!*/;
BEGIN
/*!*/;
# at 45130
#170428 19:25:04 server id 21  end_log_pos 45484 CRC32 0x76d36a3e 	Query	thread_id=19	exec_time=48192	error_code=0
SET TIMESTAMP=1493382304/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82040' AND `main_id` = '34500' AND `product` = '44' AND `qty` = '2.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` IS NULL
/*!*/;
# at 45484
#170428 19:25:04 server id 21  end_log_pos 45580 CRC32 0x73be07c6 	Query	thread_id=19	exec_time=48192	error_code=0
SET TIMESTAMP=1493382304/*!*/;
COMMIT
/*!*/;
# at 45580
#170428 19:25:07 server id 21  end_log_pos 45675 CRC32 0x9158224b 	Query	thread_id=19	exec_time=48189	error_code=0
SET TIMESTAMP=1493382307/*!*/;
BEGIN
/*!*/;
# at 45675
#170428 19:25:07 server id 21  end_log_pos 46029 CRC32 0x9d6e0726 	Query	thread_id=19	exec_time=48189	error_code=0
SET TIMESTAMP=1493382307/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82039' AND `main_id` = '34500' AND `product` = '46' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` IS NULL
/*!*/;
# at 46029
#170428 19:25:07 server id 21  end_log_pos 46125 CRC32 0x3b8f39a8 	Query	thread_id=19	exec_time=48189	error_code=0
SET TIMESTAMP=1493382307/*!*/;
COMMIT
/*!*/;
# at 46125
#170428 19:25:10 server id 21  end_log_pos 46220 CRC32 0xa198d42b 	Query	thread_id=19	exec_time=48186	error_code=0
SET TIMESTAMP=1493382310/*!*/;
BEGIN
/*!*/;
# at 46220
#170428 19:25:10 server id 21  end_log_pos 46574 CRC32 0x9195c014 	Query	thread_id=19	exec_time=48186	error_code=0
SET TIMESTAMP=1493382310/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82041' AND `main_id` = '34500' AND `product` = '41' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` IS NULL
/*!*/;
# at 46574
#170428 19:25:10 server id 21  end_log_pos 46670 CRC32 0x519e1f27 	Query	thread_id=19	exec_time=48186	error_code=0
SET TIMESTAMP=1493382310/*!*/;
COMMIT
/*!*/;
# at 46670
#170428 19:25:12 server id 21  end_log_pos 46765 CRC32 0xf834d046 	Query	thread_id=19	exec_time=48184	error_code=0
SET TIMESTAMP=1493382312/*!*/;
BEGIN
/*!*/;
# at 46765
#170428 19:25:12 server id 21  end_log_pos 47119 CRC32 0x9a8bf6ee 	Query	thread_id=19	exec_time=48184	error_code=0
SET TIMESTAMP=1493382312/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82042' AND `main_id` = '34500' AND `product` = '49' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` IS NULL
/*!*/;
# at 47119
#170428 19:25:12 server id 21  end_log_pos 47215 CRC32 0xa27652fc 	Query	thread_id=19	exec_time=48184	error_code=0
SET TIMESTAMP=1493382312/*!*/;
COMMIT
/*!*/;
# at 47215
#170428 19:25:18 server id 21  end_log_pos 47310 CRC32 0x7f8cb3be 	Query	thread_id=19	exec_time=48178	error_code=0
SET TIMESTAMP=1493382318/*!*/;
BEGIN
/*!*/;
# at 47310
# at 47342
#170428 19:25:18 server id 21  end_log_pos 47342 CRC32 0xb2853761 	Intvar
SET INSERT_ID=82058/*!*/;
#170428 19:25:18 server id 21  end_log_pos 47589 CRC32 0xe865b91b 	Query	thread_id=19	exec_time=48178	error_code=0
SET TIMESTAMP=1493382318/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34500','588','1.00000000000000000e+000','1.00000000000000000e+000','1')
/*!*/;
# at 47589
#170428 19:25:18 server id 21  end_log_pos 47685 CRC32 0xe1302f88 	Query	thread_id=19	exec_time=48178	error_code=0
SET TIMESTAMP=1493382318/*!*/;
COMMIT
/*!*/;
# at 47685
#170428 19:25:21 server id 21  end_log_pos 47780 CRC32 0xd57f9dc6 	Query	thread_id=19	exec_time=48176	error_code=0
SET TIMESTAMP=1493382321/*!*/;
BEGIN
/*!*/;
# at 47780
#170428 19:25:21 server id 21  end_log_pos 48166 CRC32 0xa2bd16d9 	Query	thread_id=19	exec_time=48176	error_code=0
SET TIMESTAMP=1493382321/*!*/;
UPDATE `oms_sale_detail` SET `qty`='0.00000000000000000e+000'  WHERE `id` = '82058' AND `main_id` = '34500' AND `product` = '588' AND `qty` = '1.00000000000000000e+000' AND `price` = '1.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '1'
/*!*/;
# at 48166
#170428 19:25:21 server id 21  end_log_pos 48262 CRC32 0xdc807fba 	Query	thread_id=19	exec_time=48176	error_code=0
SET TIMESTAMP=1493382321/*!*/;
COMMIT
/*!*/;
# at 48262
#170428 19:25:25 server id 21  end_log_pos 48357 CRC32 0x9e8d834e 	Query	thread_id=19	exec_time=48172	error_code=0
SET TIMESTAMP=1493382325/*!*/;
BEGIN
/*!*/;
# at 48357
#170428 19:25:25 server id 21  end_log_pos 48710 CRC32 0x99607fae 	Query	thread_id=19	exec_time=48172	error_code=0
SET TIMESTAMP=1493382325/*!*/;
DELETE FROM `oms_sale_detail` WHERE `id` = '82058' AND `main_id` = '34500' AND `product` = '588' AND `qty` = '0.00000000000000000e+000' AND `price` = '1.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '1'
/*!*/;
# at 48710
#170428 19:25:25 server id 21  end_log_pos 48806 CRC32 0xb4e9e0c4 	Query	thread_id=19	exec_time=48172	error_code=0
SET TIMESTAMP=1493382325/*!*/;
COMMIT
/*!*/;
# at 48806
#170428 19:25:27 server id 21  end_log_pos 48901 CRC32 0x0a27b2c1 	Query	thread_id=19	exec_time=48170	error_code=0
SET TIMESTAMP=1493382327/*!*/;
BEGIN
/*!*/;
# at 48901
#170428 19:25:27 server id 21  end_log_pos 49532 CRC32 0x38ef7ea9 	Query	thread_id=19	exec_time=48170	error_code=0
SET TIMESTAMP=1493382327/*!*/;
UPDATE `oms_sale` SET `total`='0.00000000000000000e+000'  WHERE `id` = '34500' AND `inv_num` = '553' AND `inv_refer` = '201704-00553' AND `date_bill` = '2017-04-28 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '25' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 19:15:10' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 49532
#170428 19:25:27 server id 21  end_log_pos 49628 CRC32 0x3250b6bf 	Query	thread_id=19	exec_time=48170	error_code=0
SET TIMESTAMP=1493382327/*!*/;
COMMIT
/*!*/;
# at 49628
#170429  9:13:28 server id 21  end_log_pos 49723 CRC32 0x50035b11 	Query	thread_id=5	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493432008/*!*/;
BEGIN
/*!*/;
# at 49723
# at 49755
#170429  9:13:28 server id 21  end_log_pos 49755 CRC32 0x8ba22a88 	Intvar
SET INSERT_ID=34504/*!*/;
#170429  9:13:28 server id 21  end_log_pos 49989 CRC32 0x68e16043 	Query	thread_id=5	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493432008/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('557','201704-00557','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 49989
#170429  9:13:28 server id 21  end_log_pos 50085 CRC32 0xa13eeef5 	Query	thread_id=5	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493432008/*!*/;
COMMIT
/*!*/;
# at 50085
#170429  9:13:28 server id 21  end_log_pos 50180 CRC32 0x10fcaff0 	Query	thread_id=5	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493432008/*!*/;
BEGIN
/*!*/;
# at 50180
# at 50212
#170429  9:13:28 server id 21  end_log_pos 50212 CRC32 0xe237c415 	Intvar
SET INSERT_ID=82059/*!*/;
#170429  9:13:28 server id 21  end_log_pos 50457 CRC32 0x6ccc50ef 	Query	thread_id=5	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493432008/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','3','1.00000000000000000e+000','3.00000000000000000e+000','1')
/*!*/;
# at 50457
#170429  9:13:28 server id 21  end_log_pos 50553 CRC32 0xb9c7171b 	Query	thread_id=5	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493432008/*!*/;
COMMIT
/*!*/;
# at 50553
#170429  9:13:29 server id 21  end_log_pos 50648 CRC32 0xd339521a 	Query	thread_id=5	exec_time=4294967294	error_code=0
SET TIMESTAMP=1493432009/*!*/;
BEGIN
/*!*/;
# at 50648
#170429  9:13:29 server id 21  end_log_pos 50820 CRC32 0xa3070e7d 	Query	thread_id=5	exec_time=4294967294	error_code=0
SET TIMESTAMP=1493432009/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82059'
/*!*/;
# at 50820
#170429  9:13:29 server id 21  end_log_pos 50916 CRC32 0xdba100c3 	Query	thread_id=5	exec_time=4294967294	error_code=0
SET TIMESTAMP=1493432009/*!*/;
COMMIT
/*!*/;
# at 50916
#170429  9:13:31 server id 21  end_log_pos 51011 CRC32 0xfd5966c8 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432011/*!*/;
BEGIN
/*!*/;
# at 51011
# at 51043
#170429  9:13:31 server id 21  end_log_pos 51043 CRC32 0xc7b79b97 	Intvar
SET INSERT_ID=82060/*!*/;
#170429  9:13:31 server id 21  end_log_pos 51288 CRC32 0x5314af90 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432011/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','4','1.00000000000000000e+000','3.00000000000000000e+000','2')
/*!*/;
# at 51288
#170429  9:13:31 server id 21  end_log_pos 51384 CRC32 0x81a2e1e8 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432011/*!*/;
COMMIT
/*!*/;
# at 51384
#170429  9:13:31 server id 21  end_log_pos 51479 CRC32 0x8f3e8709 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432011/*!*/;
BEGIN
/*!*/;
# at 51479
#170429  9:13:31 server id 21  end_log_pos 51651 CRC32 0x70c3f62b 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432011/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82060'
/*!*/;
# at 51651
#170429  9:13:31 server id 21  end_log_pos 51747 CRC32 0x6d1bf683 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432011/*!*/;
COMMIT
/*!*/;
# at 51747
#170429  9:13:37 server id 21  end_log_pos 51842 CRC32 0x28815068 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432017/*!*/;
BEGIN
/*!*/;
# at 51842
# at 51874
#170429  9:13:37 server id 21  end_log_pos 51874 CRC32 0x94fb787e 	Intvar
SET INSERT_ID=82061/*!*/;
#170429  9:13:37 server id 21  end_log_pos 52119 CRC32 0x3351c015 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432017/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','2','1.00000000000000000e+000','3.00000000000000000e+000','3')
/*!*/;
# at 52119
#170429  9:13:37 server id 21  end_log_pos 52215 CRC32 0x7573c1d9 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432017/*!*/;
COMMIT
/*!*/;
# at 52215
#170429  9:13:37 server id 21  end_log_pos 52310 CRC32 0xe6e36193 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432017/*!*/;
BEGIN
/*!*/;
# at 52310
#170429  9:13:37 server id 21  end_log_pos 52482 CRC32 0xc1a5ae5c 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432017/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82061'
/*!*/;
# at 52482
#170429  9:13:37 server id 21  end_log_pos 52578 CRC32 0x5d9f7b34 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432017/*!*/;
COMMIT
/*!*/;
# at 52578
#170429  9:13:43 server id 21  end_log_pos 52673 CRC32 0xec8ddcba 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432023/*!*/;
BEGIN
/*!*/;
# at 52673
# at 52705
#170429  9:13:43 server id 21  end_log_pos 52705 CRC32 0xa183ca17 	Intvar
SET INSERT_ID=82062/*!*/;
#170429  9:13:43 server id 21  end_log_pos 52951 CRC32 0x230de253 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432023/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','13','1.00000000000000000e+000','3.00000000000000000e+000','4')
/*!*/;
# at 52951
#170429  9:13:43 server id 21  end_log_pos 53047 CRC32 0x8f9cd342 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432023/*!*/;
COMMIT
/*!*/;
# at 53047
#170429  9:13:46 server id 21  end_log_pos 53142 CRC32 0xed7384ed 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432026/*!*/;
BEGIN
/*!*/;
# at 53142
#170429  9:13:46 server id 21  end_log_pos 53765 CRC32 0x0a93ac6e 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432026/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 09:13:29',`total`='2.10000000000000000e+001'  WHERE `id` = '34504' AND `inv_num` = '557' AND `inv_refer` = '201704-00557' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 53765
#170429  9:13:46 server id 21  end_log_pos 53861 CRC32 0x0211d314 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432026/*!*/;
COMMIT
/*!*/;
# at 53861
#170429  9:13:47 server id 21  end_log_pos 53956 CRC32 0x6b87c68d 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432027/*!*/;
BEGIN
/*!*/;
# at 53956
# at 53988
#170429  9:13:47 server id 21  end_log_pos 53988 CRC32 0x15cb1e05 	Intvar
SET INSERT_ID=13102/*!*/;
#170429  9:13:47 server id 21  end_log_pos 54161 CRC32 0xa9c2a268 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432027/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34504','13','1')
/*!*/;
# at 54161
#170429  9:13:47 server id 21  end_log_pos 54257 CRC32 0xece455a1 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432027/*!*/;
COMMIT
/*!*/;
# at 54257
#170429  9:13:56 server id 21  end_log_pos 54352 CRC32 0xefa27dfc 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432036/*!*/;
BEGIN
/*!*/;
# at 54352
# at 54384
#170429  9:13:56 server id 21  end_log_pos 54384 CRC32 0x39edc8ee 	Intvar
SET INSERT_ID=82063/*!*/;
#170429  9:13:56 server id 21  end_log_pos 54630 CRC32 0xfb04954d 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432036/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','38','1.00000000000000000e+000','5.00000000000000000e+000','5')
/*!*/;
# at 54630
#170429  9:13:56 server id 21  end_log_pos 54726 CRC32 0x4d62615d 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432036/*!*/;
COMMIT
/*!*/;
# at 54726
#170429  9:13:58 server id 21  end_log_pos 54821 CRC32 0x38e9fe43 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432038/*!*/;
BEGIN
/*!*/;
# at 54821
# at 54853
#170429  9:13:58 server id 21  end_log_pos 54853 CRC32 0x8153caa4 	Intvar
SET INSERT_ID=82064/*!*/;
#170429  9:13:58 server id 21  end_log_pos 55098 CRC32 0x58ce0d4f 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432038/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','9','1.00000000000000000e+000','5.00000000000000000e+000','6')
/*!*/;
# at 55098
#170429  9:13:58 server id 21  end_log_pos 55194 CRC32 0xa6a882f5 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432038/*!*/;
COMMIT
/*!*/;
# at 55194
#170429  9:14:06 server id 21  end_log_pos 55289 CRC32 0xea36b384 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432046/*!*/;
BEGIN
/*!*/;
# at 55289
# at 55321
#170429  9:14:06 server id 21  end_log_pos 55321 CRC32 0x40a13a84 	Intvar
SET INSERT_ID=82065/*!*/;
#170429  9:14:06 server id 21  end_log_pos 55567 CRC32 0xc80e84a2 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432046/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34504','62','1.00000000000000000e+000','1.00000000000000000e+000','7')
/*!*/;
# at 55567
#170429  9:14:06 server id 21  end_log_pos 55663 CRC32 0x0e9fcc89 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432046/*!*/;
COMMIT
/*!*/;
# at 55663
#170429  9:14:08 server id 21  end_log_pos 55758 CRC32 0x786db9bd 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432048/*!*/;
BEGIN
/*!*/;
# at 55758
#170429  9:14:08 server id 21  end_log_pos 55930 CRC32 0xb03393aa 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432048/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82065'
/*!*/;
# at 55930
#170429  9:14:08 server id 21  end_log_pos 56026 CRC32 0x68821304 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432048/*!*/;
COMMIT
/*!*/;
# at 56026
#170429  9:14:41 server id 21  end_log_pos 56121 CRC32 0x148f2173 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432081/*!*/;
BEGIN
/*!*/;
# at 56121
#170429  9:14:41 server id 21  end_log_pos 56752 CRC32 0x502cc402 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432081/*!*/;
UPDATE `oms_sale` SET `total`='3.30000000000000000e+001'  WHERE `id` = '34504' AND `inv_num` = '557' AND `inv_refer` = '201704-00557' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 09:13:29' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 56752
#170429  9:14:41 server id 21  end_log_pos 56848 CRC32 0x548ddd93 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432081/*!*/;
COMMIT
/*!*/;
# at 56848
#170429  9:14:47 server id 21  end_log_pos 56943 CRC32 0xef2901fe 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432087/*!*/;
BEGIN
/*!*/;
# at 56943
#170429  9:14:47 server id 21  end_log_pos 57596 CRC32 0x7c667ca7 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432087/*!*/;
UPDATE `oms_sale` SET `bill`='3.30000000000000000e+001',`pay_by`='Credit Card'  WHERE `id` = '34504' AND `inv_num` = '557' AND `inv_refer` = '201704-00557' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 09:13:29' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 57596
#170429  9:14:47 server id 21  end_log_pos 57692 CRC32 0x12a6c41c 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432087/*!*/;
COMMIT
/*!*/;
# at 57692
#170429  9:14:55 server id 21  end_log_pos 57787 CRC32 0xcf5796e3 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432095/*!*/;
BEGIN
/*!*/;
# at 57787
#170429  9:14:55 server id 21  end_log_pos 58465 CRC32 0x285c2adc 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432095/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='28',`gender`='Female'  WHERE `id` = '34504' AND `inv_num` = '557' AND `inv_refer` = '201704-00557' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 09:13:29' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '3.30000000000000000e+001' AND `pay_by` = 'Credit Card' AND `guide_phone` IS NULL AND `total` = '3.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 58465
#170429  9:14:55 server id 21  end_log_pos 58561 CRC32 0x5557eb1c 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432095/*!*/;
COMMIT
/*!*/;
# at 58561
#170429  9:15:49 server id 21  end_log_pos 58656 CRC32 0xd5671610 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432149/*!*/;
BEGIN
/*!*/;
# at 58656
# at 58688
#170429  9:15:49 server id 21  end_log_pos 58688 CRC32 0xd0d7642f 	Intvar
SET INSERT_ID=34505/*!*/;
#170429  9:15:49 server id 21  end_log_pos 58922 CRC32 0xd0433a2c 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432149/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('558','201704-00558','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 58922
#170429  9:15:49 server id 21  end_log_pos 59018 CRC32 0xafccea9a 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432149/*!*/;
COMMIT
/*!*/;
# at 59018
#170429  9:16:27 server id 21  end_log_pos 59113 CRC32 0x683c8080 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432187/*!*/;
BEGIN
/*!*/;
# at 59113
# at 59145
#170429  9:16:27 server id 21  end_log_pos 59145 CRC32 0xdf411f12 	Intvar
SET INSERT_ID=82066/*!*/;
#170429  9:16:27 server id 21  end_log_pos 59391 CRC32 0xb9184528 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432187/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','77','1.00000000000000000e+000','3.00000000000000000e+000','1')
/*!*/;
# at 59391
#170429  9:16:27 server id 21  end_log_pos 59487 CRC32 0xc012c38f 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432187/*!*/;
COMMIT
/*!*/;
# at 59487
#170429  9:16:28 server id 21  end_log_pos 59582 CRC32 0x8eefdd48 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432188/*!*/;
BEGIN
/*!*/;
# at 59582
#170429  9:16:28 server id 21  end_log_pos 59754 CRC32 0x6e8f1cf9 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432188/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82066'
/*!*/;
# at 59754
#170429  9:16:28 server id 21  end_log_pos 59850 CRC32 0x0542f8cd 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432188/*!*/;
COMMIT
/*!*/;
# at 59850
#170429  9:16:28 server id 21  end_log_pos 59945 CRC32 0xf185f491 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432188/*!*/;
BEGIN
/*!*/;
# at 59945
#170429  9:16:28 server id 21  end_log_pos 60117 CRC32 0x515ecf0b 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432188/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82066'
/*!*/;
# at 60117
#170429  9:16:28 server id 21  end_log_pos 60213 CRC32 0x48bc0dea 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432188/*!*/;
COMMIT
/*!*/;
# at 60213
#170429  9:16:29 server id 21  end_log_pos 60308 CRC32 0x19fc79e9 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432189/*!*/;
BEGIN
/*!*/;
# at 60308
#170429  9:16:29 server id 21  end_log_pos 60480 CRC32 0x9b43d694 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432189/*!*/;
UPDATE `oms_sale_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '82066'
/*!*/;
# at 60480
#170429  9:16:29 server id 21  end_log_pos 60576 CRC32 0x8de98213 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432189/*!*/;
COMMIT
/*!*/;
# at 60576
#170429  9:16:29 server id 21  end_log_pos 60671 CRC32 0xdf8984fb 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432189/*!*/;
BEGIN
/*!*/;
# at 60671
#170429  9:16:29 server id 21  end_log_pos 60843 CRC32 0xdb7523c5 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432189/*!*/;
UPDATE `oms_sale_detail` SET `qty`='5.00000000000000000e+000' WHERE `id` = '82066'
/*!*/;
# at 60843
#170429  9:16:29 server id 21  end_log_pos 60939 CRC32 0x198648be 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432189/*!*/;
COMMIT
/*!*/;
# at 60939
#170429  9:16:36 server id 21  end_log_pos 61034 CRC32 0xc48a3d2a 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
BEGIN
/*!*/;
# at 61034
# at 61066
#170429  9:16:36 server id 21  end_log_pos 61066 CRC32 0x7180da05 	Intvar
SET INSERT_ID=82067/*!*/;
#170429  9:16:36 server id 21  end_log_pos 61311 CRC32 0x2fd83ca0 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','1','1.00000000000000000e+000','3.00000000000000000e+000','2')
/*!*/;
# at 61311
#170429  9:16:36 server id 21  end_log_pos 61407 CRC32 0x37906623 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
COMMIT
/*!*/;
# at 61407
#170429  9:16:36 server id 21  end_log_pos 61502 CRC32 0x7b3e8da2 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
BEGIN
/*!*/;
# at 61502
#170429  9:16:36 server id 21  end_log_pos 61674 CRC32 0x16dc0916 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82067'
/*!*/;
# at 61674
#170429  9:16:36 server id 21  end_log_pos 61770 CRC32 0x456822fb 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
COMMIT
/*!*/;
# at 61770
#170429  9:16:36 server id 21  end_log_pos 61865 CRC32 0x9d144314 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
BEGIN
/*!*/;
# at 61865
#170429  9:16:36 server id 21  end_log_pos 62037 CRC32 0x226af360 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82067'
/*!*/;
# at 62037
#170429  9:16:36 server id 21  end_log_pos 62133 CRC32 0xf535c1f9 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432196/*!*/;
COMMIT
/*!*/;
# at 62133
#170429  9:16:40 server id 21  end_log_pos 62228 CRC32 0x2f8da3e6 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432200/*!*/;
BEGIN
/*!*/;
# at 62228
# at 62260
#170429  9:16:40 server id 21  end_log_pos 62260 CRC32 0xce26caa8 	Intvar
SET INSERT_ID=82068/*!*/;
#170429  9:16:40 server id 21  end_log_pos 62505 CRC32 0x8c51bbb3 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432200/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','3','1.00000000000000000e+000','3.00000000000000000e+000','3')
/*!*/;
# at 62505
#170429  9:16:40 server id 21  end_log_pos 62601 CRC32 0x3ecae05c 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432200/*!*/;
COMMIT
/*!*/;
# at 62601
#170429  9:16:40 server id 21  end_log_pos 62696 CRC32 0xce3dcf58 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432200/*!*/;
BEGIN
/*!*/;
# at 62696
#170429  9:16:40 server id 21  end_log_pos 62868 CRC32 0xce685070 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432200/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82068'
/*!*/;
# at 62868
#170429  9:16:40 server id 21  end_log_pos 62964 CRC32 0xaa3bcfc5 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432200/*!*/;
COMMIT
/*!*/;
# at 62964
#170429  9:16:43 server id 21  end_log_pos 63059 CRC32 0x849e0a27 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432203/*!*/;
BEGIN
/*!*/;
# at 63059
# at 63091
#170429  9:16:43 server id 21  end_log_pos 63091 CRC32 0xd50bd71b 	Intvar
SET INSERT_ID=82069/*!*/;
#170429  9:16:43 server id 21  end_log_pos 63336 CRC32 0x102b873a 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432203/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','4','1.00000000000000000e+000','3.00000000000000000e+000','4')
/*!*/;
# at 63336
#170429  9:16:43 server id 21  end_log_pos 63432 CRC32 0xd13d4a69 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432203/*!*/;
COMMIT
/*!*/;
# at 63432
#170429  9:16:43 server id 21  end_log_pos 63527 CRC32 0xfd25d9b7 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432203/*!*/;
BEGIN
/*!*/;
# at 63527
#170429  9:16:43 server id 21  end_log_pos 63699 CRC32 0xf8f1e17f 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432203/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82069'
/*!*/;
# at 63699
#170429  9:16:43 server id 21  end_log_pos 63795 CRC32 0xa8e59871 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432203/*!*/;
COMMIT
/*!*/;
# at 63795
#170429  9:16:45 server id 21  end_log_pos 63890 CRC32 0xb99de4e6 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432205/*!*/;
BEGIN
/*!*/;
# at 63890
# at 63922
#170429  9:16:45 server id 21  end_log_pos 63922 CRC32 0x352b3a6e 	Intvar
SET INSERT_ID=82070/*!*/;
#170429  9:16:45 server id 21  end_log_pos 64167 CRC32 0x507adedc 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432205/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','2','1.00000000000000000e+000','3.00000000000000000e+000','5')
/*!*/;
# at 64167
#170429  9:16:45 server id 21  end_log_pos 64263 CRC32 0xb1c90263 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432205/*!*/;
COMMIT
/*!*/;
# at 64263
#170429  9:16:46 server id 21  end_log_pos 64358 CRC32 0x33dbb56b 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432206/*!*/;
BEGIN
/*!*/;
# at 64358
#170429  9:16:46 server id 21  end_log_pos 64530 CRC32 0xc8984b9b 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432206/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82070'
/*!*/;
# at 64530
#170429  9:16:46 server id 21  end_log_pos 64626 CRC32 0x471786ff 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432206/*!*/;
COMMIT
/*!*/;
# at 64626
#170429  9:16:46 server id 21  end_log_pos 64721 CRC32 0x52e01931 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432206/*!*/;
BEGIN
/*!*/;
# at 64721
#170429  9:16:46 server id 21  end_log_pos 64893 CRC32 0x9087a6ca 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432206/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82070'
/*!*/;
# at 64893
#170429  9:16:46 server id 21  end_log_pos 64989 CRC32 0xfa78ab79 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432206/*!*/;
COMMIT
/*!*/;
# at 64989
#170429  9:16:49 server id 21  end_log_pos 65084 CRC32 0xaa58589a 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432209/*!*/;
BEGIN
/*!*/;
# at 65084
# at 65116
#170429  9:16:49 server id 21  end_log_pos 65116 CRC32 0x6da1f051 	Intvar
SET INSERT_ID=82071/*!*/;
#170429  9:16:49 server id 21  end_log_pos 65362 CRC32 0x57e6934f 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432209/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','13','1.00000000000000000e+000','3.00000000000000000e+000','6')
/*!*/;
# at 65362
#170429  9:16:49 server id 21  end_log_pos 65458 CRC32 0xbf1f8fc8 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432209/*!*/;
COMMIT
/*!*/;
# at 65458
#170429  9:16:53 server id 21  end_log_pos 65553 CRC32 0x5e249606 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432213/*!*/;
BEGIN
/*!*/;
# at 65553
# at 65585
#170429  9:16:53 server id 21  end_log_pos 65585 CRC32 0x7377f1c4 	Intvar
SET INSERT_ID=82072/*!*/;
#170429  9:16:53 server id 21  end_log_pos 65831 CRC32 0x7fa704d8 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432213/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','48','1.00000000000000000e+000','5.00000000000000000e+000','7')
/*!*/;
# at 65831
#170429  9:16:53 server id 21  end_log_pos 65927 CRC32 0x10bbfcb4 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432213/*!*/;
COMMIT
/*!*/;
# at 65927
#170429  9:16:56 server id 21  end_log_pos 66022 CRC32 0xadb1b4e2 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432216/*!*/;
BEGIN
/*!*/;
# at 66022
# at 66054
#170429  9:16:56 server id 21  end_log_pos 66054 CRC32 0x03d87abd 	Intvar
SET INSERT_ID=82073/*!*/;
#170429  9:16:56 server id 21  end_log_pos 66299 CRC32 0xbd166493 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432216/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34505','9','1.00000000000000000e+000','5.00000000000000000e+000','8')
/*!*/;
# at 66299
#170429  9:16:56 server id 21  end_log_pos 66395 CRC32 0x4d8a9b4d 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432216/*!*/;
COMMIT
/*!*/;
# at 66395
#170429  9:16:59 server id 21  end_log_pos 66490 CRC32 0xa93d48bd 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432219/*!*/;
BEGIN
/*!*/;
# at 66490
#170429  9:16:59 server id 21  end_log_pos 67113 CRC32 0x8552f178 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432219/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 09:16:27',`total`='5.80000000000000000e+001'  WHERE `id` = '34505' AND `inv_num` = '558' AND `inv_refer` = '201704-00558' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 67113
#170429  9:16:59 server id 21  end_log_pos 67209 CRC32 0xe9f7be32 	Query	thread_id=5	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493432219/*!*/;
COMMIT
/*!*/;
# at 67209
#170429  9:17:02 server id 21  end_log_pos 67304 CRC32 0xec521eeb 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432222/*!*/;
BEGIN
/*!*/;
# at 67304
# at 67336
#170429  9:17:02 server id 21  end_log_pos 67336 CRC32 0x69f1c4d8 	Intvar
SET INSERT_ID=13103/*!*/;
#170429  9:17:02 server id 21  end_log_pos 67509 CRC32 0x1c5f3b0d 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432222/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34505','13','1')
/*!*/;
# at 67509
#170429  9:17:02 server id 21  end_log_pos 67605 CRC32 0xbd11b860 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432222/*!*/;
COMMIT
/*!*/;
# at 67605
#170429  9:17:03 server id 21  end_log_pos 67700 CRC32 0x06b95fd5 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432223/*!*/;
BEGIN
/*!*/;
# at 67700
# at 67732
#170429  9:17:03 server id 21  end_log_pos 67732 CRC32 0xd45b68a4 	Intvar
SET INSERT_ID=13104/*!*/;
#170429  9:17:03 server id 21  end_log_pos 67905 CRC32 0xb8bf057d 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432223/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34505','13','1')
/*!*/;
# at 67905
#170429  9:17:03 server id 21  end_log_pos 68001 CRC32 0x9a86fff9 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432223/*!*/;
COMMIT
/*!*/;
# at 68001
#170429  9:17:06 server id 21  end_log_pos 68096 CRC32 0xbbd51423 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432226/*!*/;
BEGIN
/*!*/;
# at 68096
# at 68128
#170429  9:17:06 server id 21  end_log_pos 68128 CRC32 0xd6ee0b6f 	Intvar
SET INSERT_ID=13105/*!*/;
#170429  9:17:06 server id 21  end_log_pos 68301 CRC32 0x12fa189e 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432226/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34505','77','1')
/*!*/;
# at 68301
#170429  9:17:06 server id 21  end_log_pos 68397 CRC32 0x8bb35941 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432226/*!*/;
COMMIT
/*!*/;
# at 68397
#170429  9:17:20 server id 21  end_log_pos 68492 CRC32 0x32314890 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432240/*!*/;
BEGIN
/*!*/;
# at 68492
# at 68524
#170429  9:17:20 server id 21  end_log_pos 68524 CRC32 0xd6289f4f 	Intvar
SET INSERT_ID=13106/*!*/;
#170429  9:17:20 server id 21  end_log_pos 68698 CRC32 0x0e5e9f3b 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432240/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34505','695','1')
/*!*/;
# at 68698
#170429  9:17:20 server id 21  end_log_pos 68794 CRC32 0x33e96818 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432240/*!*/;
COMMIT
/*!*/;
# at 68794
#170429  9:18:01 server id 21  end_log_pos 68889 CRC32 0xb7db185f 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432281/*!*/;
BEGIN
/*!*/;
# at 68889
#170429  9:18:01 server id 21  end_log_pos 69519 CRC32 0xd4fb111b 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432281/*!*/;
UPDATE `oms_sale` SET `bill`='5.80000000000000000e+001'  WHERE `id` = '34505' AND `inv_num` = '558' AND `inv_refer` = '201704-00558' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 09:16:27' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.80000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 69519
#170429  9:18:01 server id 21  end_log_pos 69615 CRC32 0x5fa79371 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432281/*!*/;
COMMIT
/*!*/;
# at 69615
#170429  9:18:28 server id 21  end_log_pos 69710 CRC32 0x3371fde4 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432308/*!*/;
BEGIN
/*!*/;
# at 69710
#170429  9:18:28 server id 21  end_log_pos 70404 CRC32 0xb0b542b3 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432308/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='28',`gender`='Female',`pay_by`='Credit Card'  WHERE `id` = '34505' AND `inv_num` = '558' AND `inv_refer` = '201704-00558' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 09:16:27' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.80000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.80000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 70404
#170429  9:18:28 server id 21  end_log_pos 70500 CRC32 0x8693c246 	Query	thread_id=5	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493432308/*!*/;
COMMIT
/*!*/;
# at 70500
#170429 10:02:57 server id 111  end_log_pos 70595 CRC32 0x6fd6ae0d 	Query	thread_id=79	exec_time=0	error_code=0
SET TIMESTAMP=1493434977/*!*/;
BEGIN
/*!*/;
# at 70595
#170429 10:02:57 server id 111  end_log_pos 71406 CRC32 0x630aef15 	Query	thread_id=79	exec_time=0	error_code=0
SET TIMESTAMP=1493434977/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 71406
#170429 10:02:57 server id 111  end_log_pos 71502 CRC32 0xb077dc19 	Query	thread_id=79	exec_time=0	error_code=0
SET TIMESTAMP=1493434977/*!*/;
COMMIT
/*!*/;
# at 71502
#170429 10:02:57 server id 111  end_log_pos 71597 CRC32 0xe1ead184 	Query	thread_id=80	exec_time=0	error_code=0
SET TIMESTAMP=1493434977/*!*/;
BEGIN
/*!*/;
# at 71597
#170429 10:02:57 server id 111  end_log_pos 72419 CRC32 0xf0a93694 	Query	thread_id=80	exec_time=0	error_code=0
SET TIMESTAMP=1493434977/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 72419
#170429 10:02:57 server id 111  end_log_pos 72515 CRC32 0xf89caf08 	Query	thread_id=80	exec_time=0	error_code=0
SET TIMESTAMP=1493434977/*!*/;
COMMIT
/*!*/;
# at 72515
#170429 10:03:01 server id 111  end_log_pos 72610 CRC32 0xc4bc856c 	Query	thread_id=82	exec_time=0	error_code=0
SET TIMESTAMP=1493434981/*!*/;
BEGIN
/*!*/;
# at 72610
#170429 10:03:01 server id 111  end_log_pos 72828 CRC32 0x4a00c366 	Query	thread_id=82	exec_time=0	error_code=0
SET TIMESTAMP=1493434981/*!*/;
UPDATE spa_sale_massage SET id='1599', inv_num='49', inv_refer='201704-0049', date_bill='2017-04-29', cashier='9' WHERE id =1599
/*!*/;
# at 72828
#170429 10:03:01 server id 111  end_log_pos 72924 CRC32 0xfcf86fb0 	Query	thread_id=82	exec_time=0	error_code=0
SET TIMESTAMP=1493434981/*!*/;
COMMIT
/*!*/;
# at 72924
#170429 10:03:08 server id 111  end_log_pos 73019 CRC32 0x302071f5 	Query	thread_id=83	exec_time=0	error_code=0
SET TIMESTAMP=1493434988/*!*/;
BEGIN
/*!*/;
# at 73019
#170429 10:03:08 server id 111  end_log_pos 73869 CRC32 0x20035442 	Query	thread_id=83	exec_time=0	error_code=0
SET TIMESTAMP=1493434988/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga', nationality=NULL, cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 73869
#170429 10:03:08 server id 111  end_log_pos 73965 CRC32 0x094edfbc 	Query	thread_id=83	exec_time=0	error_code=0
SET TIMESTAMP=1493434988/*!*/;
COMMIT
/*!*/;
# at 73965
#170429 10:03:10 server id 111  end_log_pos 74060 CRC32 0x49f31cd9 	Query	thread_id=84	exec_time=0	error_code=0
SET TIMESTAMP=1493434990/*!*/;
BEGIN
/*!*/;
# at 74060
#170429 10:03:10 server id 111  end_log_pos 74910 CRC32 0xbfc7182b 	Query	thread_id=84	exec_time=0	error_code=0
SET TIMESTAMP=1493434990/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga', nationality=NULL, cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 74910
#170429 10:03:10 server id 111  end_log_pos 75006 CRC32 0x7b58aa44 	Query	thread_id=84	exec_time=0	error_code=0
SET TIMESTAMP=1493434990/*!*/;
COMMIT
/*!*/;
# at 75006
#170429 10:03:17 server id 111  end_log_pos 75101 CRC32 0xeda5078a 	Query	thread_id=85	exec_time=0	error_code=0
SET TIMESTAMP=1493434997/*!*/;
BEGIN
/*!*/;
# at 75101
#170429 10:03:17 server id 111  end_log_pos 75958 CRC32 0x3ec2ab37 	Query	thread_id=85	exec_time=0	error_code=0
SET TIMESTAMP=1493434997/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality=NULL, cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 75958
#170429 10:03:17 server id 111  end_log_pos 76054 CRC32 0xfa4ea893 	Query	thread_id=85	exec_time=0	error_code=0
SET TIMESTAMP=1493434997/*!*/;
COMMIT
/*!*/;
# at 76054
#170429 10:03:19 server id 111  end_log_pos 76149 CRC32 0x79a7b122 	Query	thread_id=86	exec_time=0	error_code=0
SET TIMESTAMP=1493434999/*!*/;
BEGIN
/*!*/;
# at 76149
#170429 10:03:19 server id 111  end_log_pos 77005 CRC32 0xa7f05af3 	Query	thread_id=86	exec_time=0	error_code=0
SET TIMESTAMP=1493434999/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='j', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 77005
#170429 10:03:19 server id 111  end_log_pos 77101 CRC32 0x1ab1d0b6 	Query	thread_id=86	exec_time=0	error_code=0
SET TIMESTAMP=1493434999/*!*/;
COMMIT
/*!*/;
# at 77101
#170429 10:03:19 server id 111  end_log_pos 77196 CRC32 0x12912b54 	Query	thread_id=87	exec_time=0	error_code=0
SET TIMESTAMP=1493434999/*!*/;
BEGIN
/*!*/;
# at 77196
#170429 10:03:19 server id 111  end_log_pos 78059 CRC32 0x57813ca1 	Query	thread_id=87	exec_time=0	error_code=0
SET TIMESTAMP=1493434999/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 78059
#170429 10:03:19 server id 111  end_log_pos 78155 CRC32 0x14b75609 	Query	thread_id=87	exec_time=0	error_code=0
SET TIMESTAMP=1493434999/*!*/;
COMMIT
/*!*/;
# at 78155
#170429 10:03:22 server id 111  end_log_pos 78250 CRC32 0xf32812c2 	Query	thread_id=88	exec_time=0	error_code=0
SET TIMESTAMP=1493435002/*!*/;
BEGIN
/*!*/;
# at 78250
#170429 10:03:22 server id 111  end_log_pos 79112 CRC32 0x6439e28f 	Query	thread_id=88	exec_time=0	error_code=0
SET TIMESTAMP=1493435002/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='0', gender='f', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 79112
#170429 10:03:22 server id 111  end_log_pos 79208 CRC32 0xe8438b20 	Query	thread_id=88	exec_time=0	error_code=0
SET TIMESTAMP=1493435002/*!*/;
COMMIT
/*!*/;
# at 79208
#170429 10:03:22 server id 111  end_log_pos 79303 CRC32 0x624f2536 	Query	thread_id=89	exec_time=0	error_code=0
SET TIMESTAMP=1493435002/*!*/;
BEGIN
/*!*/;
# at 79303
#170429 10:03:22 server id 111  end_log_pos 80170 CRC32 0x38760b02 	Query	thread_id=89	exec_time=0	error_code=0
SET TIMESTAMP=1493435002/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='0', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 80170
#170429 10:03:22 server id 111  end_log_pos 80266 CRC32 0x5b7088b1 	Query	thread_id=89	exec_time=0	error_code=0
SET TIMESTAMP=1493435002/*!*/;
COMMIT
/*!*/;
# at 80266
#170429 10:03:24 server id 111  end_log_pos 80361 CRC32 0x21934f69 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1493435004/*!*/;
BEGIN
/*!*/;
# at 80361
#170429 10:03:24 server id 111  end_log_pos 81229 CRC32 0x6412ef91 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1493435004/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 81229
#170429 10:03:24 server id 111  end_log_pos 81325 CRC32 0x599a7788 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1493435004/*!*/;
COMMIT
/*!*/;
# at 81325
#170429 10:03:55 server id 111  end_log_pos 81420 CRC32 0x66769331 	Query	thread_id=91	exec_time=0	error_code=0
SET TIMESTAMP=1493435035/*!*/;
BEGIN
/*!*/;
# at 81420
#170429 10:03:55 server id 111  end_log_pos 82308 CRC32 0xad85b6ab 	Query	thread_id=91	exec_time=0	error_code=0
SET TIMESTAMP=1493435035/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 82308
#170429 10:03:55 server id 111  end_log_pos 82404 CRC32 0x9408d54c 	Query	thread_id=91	exec_time=0	error_code=0
SET TIMESTAMP=1493435035/*!*/;
COMMIT
/*!*/;
# at 82404
#170429 10:03:57 server id 111  end_log_pos 82499 CRC32 0x52ff27de 	Query	thread_id=92	exec_time=0	error_code=0
SET TIMESTAMP=1493435037/*!*/;
BEGIN
/*!*/;
# at 82499
#170429 10:03:57 server id 111  end_log_pos 83406 CRC32 0x10faf052 	Query	thread_id=92	exec_time=0	error_code=0
SET TIMESTAMP=1493435037/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 83406
#170429 10:03:57 server id 111  end_log_pos 83502 CRC32 0xbc2f3bf9 	Query	thread_id=92	exec_time=0	error_code=0
SET TIMESTAMP=1493435037/*!*/;
COMMIT
/*!*/;
# at 83502
#170429 10:03:59 server id 111  end_log_pos 83597 CRC32 0x4bd9f88f 	Query	thread_id=93	exec_time=0	error_code=0
SET TIMESTAMP=1493435039/*!*/;
BEGIN
/*!*/;
# at 83597
#170429 10:03:59 server id 111  end_log_pos 84513 CRC32 0x4bc2e65f 	Query	thread_id=93	exec_time=0	error_code=0
SET TIMESTAMP=1493435039/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 84513
#170429 10:03:59 server id 111  end_log_pos 84609 CRC32 0xeba9e60c 	Query	thread_id=93	exec_time=0	error_code=0
SET TIMESTAMP=1493435039/*!*/;
COMMIT
/*!*/;
# at 84609
#170429 10:04:05 server id 111  end_log_pos 84704 CRC32 0xaa47cd0f 	Query	thread_id=95	exec_time=0	error_code=0
SET TIMESTAMP=1493435045/*!*/;
BEGIN
/*!*/;
# at 84704
#170429 10:04:05 server id 111  end_log_pos 84949 CRC32 0xc1d4bca9 	Query	thread_id=95	exec_time=0	error_code=0
SET TIMESTAMP=1493435045/*!*/;
INSERT INTO spa_sale_massage_detail (id, main_id, product, price, qty, number, discount, therapist1) VALUES ('1762', '1599', '7', '69', '1', '1', '0', '1')
/*!*/;
# at 84949
#170429 10:04:05 server id 111  end_log_pos 85045 CRC32 0x61d65299 	Query	thread_id=95	exec_time=0	error_code=0
SET TIMESTAMP=1493435045/*!*/;
COMMIT
/*!*/;
# at 85045
#170429 10:04:05 server id 111  end_log_pos 85140 CRC32 0x1db0e510 	Query	thread_id=96	exec_time=0	error_code=0
SET TIMESTAMP=1493435045/*!*/;
BEGIN
/*!*/;
# at 85140
#170429 10:04:05 server id 111  end_log_pos 86057 CRC32 0xfc6c6c27 	Query	thread_id=96	exec_time=0	error_code=0
SET TIMESTAMP=1493435045/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='69', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 86057
#170429 10:04:05 server id 111  end_log_pos 86153 CRC32 0x7ecf401a 	Query	thread_id=96	exec_time=0	error_code=0
SET TIMESTAMP=1493435045/*!*/;
COMMIT
/*!*/;
# at 86153
#170429 10:04:10 server id 111  end_log_pos 86248 CRC32 0x22fee7b6 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1493435050/*!*/;
BEGIN
/*!*/;
# at 86248
#170429 10:04:10 server id 111  end_log_pos 87167 CRC32 0xb379d6eb 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1493435050/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 87167
#170429 10:04:10 server id 111  end_log_pos 87263 CRC32 0x77996935 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1493435050/*!*/;
COMMIT
/*!*/;
# at 87263
#170429 10:04:10 server id 111  end_log_pos 87358 CRC32 0x7c87e9d4 	Query	thread_id=98	exec_time=0	error_code=0
SET TIMESTAMP=1493435050/*!*/;
BEGIN
/*!*/;
# at 87358
#170429 10:04:10 server id 111  end_log_pos 88277 CRC32 0x7725f143 	Query	thread_id=98	exec_time=0	error_code=0
SET TIMESTAMP=1493435050/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 88277
#170429 10:04:10 server id 111  end_log_pos 88373 CRC32 0x3fb87297 	Query	thread_id=98	exec_time=0	error_code=0
SET TIMESTAMP=1493435050/*!*/;
COMMIT
/*!*/;
# at 88373
#170429 10:04:17 server id 111  end_log_pos 88468 CRC32 0xe888d2f7 	Query	thread_id=99	exec_time=0	error_code=0
SET TIMESTAMP=1493435057/*!*/;
BEGIN
/*!*/;
# at 88468
# at 88500
#170429 10:04:17 server id 111  end_log_pos 88500 CRC32 0x6c492c3a 	Intvar
SET INSERT_ID=1600/*!*/;
#170429 10:04:17 server id 111  end_log_pos 88641 CRC32 0x1d420da9 	Query	thread_id=99	exec_time=0	error_code=0
SET TIMESTAMP=1493435057/*!*/;
INSERT INTO spa_sale_massage (gender) VALUES (NULL)
/*!*/;
# at 88641
#170429 10:04:17 server id 111  end_log_pos 88737 CRC32 0x7c80e89c 	Query	thread_id=99	exec_time=0	error_code=0
SET TIMESTAMP=1493435057/*!*/;
COMMIT
/*!*/;
# at 88737
#170429 10:04:17 server id 111  end_log_pos 88832 CRC32 0x18af22fa 	Query	thread_id=101	exec_time=0	error_code=0
SET TIMESTAMP=1493435057/*!*/;
BEGIN
/*!*/;
# at 88832
#170429 10:04:17 server id 111  end_log_pos 89654 CRC32 0xadb9e93a 	Query	thread_id=101	exec_time=0	error_code=0
SET TIMESTAMP=1493435057/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 89654
#170429 10:04:17 server id 111  end_log_pos 89750 CRC32 0xe4989d21 	Query	thread_id=101	exec_time=0	error_code=0
SET TIMESTAMP=1493435057/*!*/;
COMMIT
/*!*/;
# at 89750
#170429 10:04:29 server id 111  end_log_pos 89845 CRC32 0x5851082e 	Query	thread_id=103	exec_time=0	error_code=0
SET TIMESTAMP=1493435069/*!*/;
BEGIN
/*!*/;
# at 89845
#170429 10:04:29 server id 111  end_log_pos 90063 CRC32 0x5d9eff66 	Query	thread_id=103	exec_time=0	error_code=0
SET TIMESTAMP=1493435069/*!*/;
UPDATE spa_sale_massage SET id='1600', inv_num='50', inv_refer='201704-0050', date_bill='2017-04-29', cashier='9' WHERE id =1600
/*!*/;
# at 90063
#170429 10:04:29 server id 111  end_log_pos 90159 CRC32 0x037ff2f9 	Query	thread_id=103	exec_time=0	error_code=0
SET TIMESTAMP=1493435069/*!*/;
COMMIT
/*!*/;
# at 90159
#170429 10:04:46 server id 111  end_log_pos 90254 CRC32 0xa5894f23 	Query	thread_id=104	exec_time=0	error_code=0
SET TIMESTAMP=1493435086/*!*/;
BEGIN
/*!*/;
# at 90254
#170429 10:04:46 server id 111  end_log_pos 91115 CRC32 0x74a26d2d 	Query	thread_id=104	exec_time=0	error_code=0
SET TIMESTAMP=1493435086/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality=NULL, cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 91115
#170429 10:04:46 server id 111  end_log_pos 91211 CRC32 0x1787ba65 	Query	thread_id=104	exec_time=0	error_code=0
SET TIMESTAMP=1493435086/*!*/;
COMMIT
/*!*/;
# at 91211
#170429 10:04:48 server id 111  end_log_pos 91306 CRC32 0x7fe52359 	Query	thread_id=105	exec_time=0	error_code=0
SET TIMESTAMP=1493435088/*!*/;
BEGIN
/*!*/;
# at 91306
#170429 10:04:48 server id 111  end_log_pos 92166 CRC32 0x1f30db77 	Query	thread_id=105	exec_time=0	error_code=0
SET TIMESTAMP=1493435088/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='j', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 92166
#170429 10:04:48 server id 111  end_log_pos 92262 CRC32 0x5ef0211d 	Query	thread_id=105	exec_time=0	error_code=0
SET TIMESTAMP=1493435088/*!*/;
COMMIT
/*!*/;
# at 92262
#170429 10:04:48 server id 111  end_log_pos 92357 CRC32 0xf01d785a 	Query	thread_id=106	exec_time=0	error_code=0
SET TIMESTAMP=1493435088/*!*/;
BEGIN
/*!*/;
# at 92357
#170429 10:04:48 server id 111  end_log_pos 93224 CRC32 0x9cd9a3ce 	Query	thread_id=106	exec_time=0	error_code=0
SET TIMESTAMP=1493435088/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 93224
#170429 10:04:48 server id 111  end_log_pos 93320 CRC32 0x9f3a5fb3 	Query	thread_id=106	exec_time=0	error_code=0
SET TIMESTAMP=1493435088/*!*/;
COMMIT
/*!*/;
# at 93320
#170429 10:04:50 server id 111  end_log_pos 93415 CRC32 0xfa5c0a29 	Query	thread_id=107	exec_time=0	error_code=0
SET TIMESTAMP=1493435090/*!*/;
BEGIN
/*!*/;
# at 93415
#170429 10:04:50 server id 111  end_log_pos 94281 CRC32 0x9108a1b7 	Query	thread_id=107	exec_time=0	error_code=0
SET TIMESTAMP=1493435090/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='0', gender='f', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 94281
#170429 10:04:50 server id 111  end_log_pos 94377 CRC32 0xd0235981 	Query	thread_id=107	exec_time=0	error_code=0
SET TIMESTAMP=1493435090/*!*/;
COMMIT
/*!*/;
# at 94377
#170429 10:04:51 server id 111  end_log_pos 94472 CRC32 0x69b547df 	Query	thread_id=108	exec_time=0	error_code=0
SET TIMESTAMP=1493435091/*!*/;
BEGIN
/*!*/;
# at 94472
#170429 10:04:51 server id 111  end_log_pos 95343 CRC32 0x27e5b25a 	Query	thread_id=108	exec_time=0	error_code=0
SET TIMESTAMP=1493435091/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='0', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 95343
#170429 10:04:51 server id 111  end_log_pos 95439 CRC32 0xc911c0dd 	Query	thread_id=108	exec_time=0	error_code=0
SET TIMESTAMP=1493435091/*!*/;
COMMIT
/*!*/;
# at 95439
#170429 10:04:52 server id 111  end_log_pos 95534 CRC32 0x5444a8ca 	Query	thread_id=109	exec_time=0	error_code=0
SET TIMESTAMP=1493435092/*!*/;
BEGIN
/*!*/;
# at 95534
#170429 10:04:52 server id 111  end_log_pos 96406 CRC32 0x9ba1bbc5 	Query	thread_id=109	exec_time=0	error_code=0
SET TIMESTAMP=1493435092/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 96406
#170429 10:04:52 server id 111  end_log_pos 96502 CRC32 0x5a5befde 	Query	thread_id=109	exec_time=0	error_code=0
SET TIMESTAMP=1493435092/*!*/;
COMMIT
/*!*/;
# at 96502
#170429 10:04:55 server id 111  end_log_pos 96597 CRC32 0xda804b29 	Query	thread_id=110	exec_time=0	error_code=0
SET TIMESTAMP=1493435095/*!*/;
BEGIN
/*!*/;
# at 96597
#170429 10:04:55 server id 111  end_log_pos 97469 CRC32 0x33bd1907 	Query	thread_id=110	exec_time=0	error_code=0
SET TIMESTAMP=1493435095/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 97469
#170429 10:04:55 server id 111  end_log_pos 97565 CRC32 0xe9714e52 	Query	thread_id=110	exec_time=0	error_code=0
SET TIMESTAMP=1493435095/*!*/;
COMMIT
/*!*/;
# at 97565
#170429 10:05:09 server id 111  end_log_pos 97660 CRC32 0x826e28a4 	Query	thread_id=111	exec_time=0	error_code=0
SET TIMESTAMP=1493435109/*!*/;
BEGIN
/*!*/;
# at 97660
#170429 10:05:09 server id 111  end_log_pos 98547 CRC32 0x5d93d042 	Query	thread_id=111	exec_time=0	error_code=0
SET TIMESTAMP=1493435109/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 98547
#170429 10:05:09 server id 111  end_log_pos 98643 CRC32 0x5ba8f742 	Query	thread_id=111	exec_time=0	error_code=0
SET TIMESTAMP=1493435109/*!*/;
COMMIT
/*!*/;
# at 98643
#170429 10:05:12 server id 111  end_log_pos 98738 CRC32 0xd36015af 	Query	thread_id=112	exec_time=0	error_code=0
SET TIMESTAMP=1493435112/*!*/;
BEGIN
/*!*/;
# at 98738
#170429 10:05:12 server id 111  end_log_pos 99644 CRC32 0x0ce537da 	Query	thread_id=112	exec_time=0	error_code=0
SET TIMESTAMP=1493435112/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 99644
#170429 10:05:12 server id 111  end_log_pos 99740 CRC32 0x0e13f88b 	Query	thread_id=112	exec_time=0	error_code=0
SET TIMESTAMP=1493435112/*!*/;
COMMIT
/*!*/;
# at 99740
#170429 10:05:14 server id 111  end_log_pos 99835 CRC32 0x374b0d4b 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1493435114/*!*/;
BEGIN
/*!*/;
# at 99835
#170429 10:05:14 server id 111  end_log_pos 100750 CRC32 0x06435765 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1493435114/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 100750
#170429 10:05:14 server id 111  end_log_pos 100846 CRC32 0x6accd5dc 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1493435114/*!*/;
COMMIT
/*!*/;
# at 100846
#170429 10:05:26 server id 111  end_log_pos 100941 CRC32 0x2eb709bc 	Query	thread_id=126	exec_time=0	error_code=0
SET TIMESTAMP=1493435126/*!*/;
BEGIN
/*!*/;
# at 100941
#170429 10:05:26 server id 111  end_log_pos 101854 CRC32 0x8439ebae 	Query	thread_id=126	exec_time=0	error_code=0
SET TIMESTAMP=1493435126/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 101854
#170429 10:05:26 server id 111  end_log_pos 101950 CRC32 0x2a6096d9 	Query	thread_id=126	exec_time=0	error_code=0
SET TIMESTAMP=1493435126/*!*/;
COMMIT
/*!*/;
# at 101950
#170429 10:05:26 server id 111  end_log_pos 102045 CRC32 0x561f87b0 	Query	thread_id=127	exec_time=0	error_code=0
SET TIMESTAMP=1493435126/*!*/;
BEGIN
/*!*/;
# at 102045
#170429 10:05:26 server id 111  end_log_pos 102969 CRC32 0xe882d10a 	Query	thread_id=127	exec_time=0	error_code=0
SET TIMESTAMP=1493435126/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 102969
#170429 10:05:26 server id 111  end_log_pos 103065 CRC32 0xb542eb1c 	Query	thread_id=127	exec_time=0	error_code=0
SET TIMESTAMP=1493435126/*!*/;
COMMIT
/*!*/;
# at 103065
#170429 10:05:32 server id 111  end_log_pos 103160 CRC32 0x952920a2 	Query	thread_id=129	exec_time=0	error_code=0
SET TIMESTAMP=1493435132/*!*/;
BEGIN
/*!*/;
# at 103160
#170429 10:05:32 server id 111  end_log_pos 103405 CRC32 0x9fa1b7e2 	Query	thread_id=129	exec_time=0	error_code=0
SET TIMESTAMP=1493435132/*!*/;
INSERT INTO spa_sale_massage_detail (id, main_id, product, price, qty, number, discount, therapist1) VALUES ('1763', '1600', '7', '69', '1', '1', '0', '1')
/*!*/;
# at 103405
#170429 10:05:32 server id 111  end_log_pos 103501 CRC32 0x4958a614 	Query	thread_id=129	exec_time=0	error_code=0
SET TIMESTAMP=1493435132/*!*/;
COMMIT
/*!*/;
# at 103501
#170429 10:05:32 server id 111  end_log_pos 103596 CRC32 0x12d04c29 	Query	thread_id=130	exec_time=0	error_code=0
SET TIMESTAMP=1493435132/*!*/;
BEGIN
/*!*/;
# at 103596
#170429 10:05:32 server id 111  end_log_pos 104521 CRC32 0xa2f878f1 	Query	thread_id=130	exec_time=0	error_code=0
SET TIMESTAMP=1493435132/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='69', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 104521
#170429 10:05:32 server id 111  end_log_pos 104617 CRC32 0xade42e7f 	Query	thread_id=130	exec_time=0	error_code=0
SET TIMESTAMP=1493435132/*!*/;
COMMIT
/*!*/;
# at 104617
#170429 10:05:34 server id 111  end_log_pos 104712 CRC32 0x601f5745 	Query	thread_id=131	exec_time=0	error_code=0
SET TIMESTAMP=1493435134/*!*/;
BEGIN
/*!*/;
# at 104712
#170429 10:05:34 server id 111  end_log_pos 105639 CRC32 0x8f69622f 	Query	thread_id=131	exec_time=0	error_code=0
SET TIMESTAMP=1493435134/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 105639
#170429 10:05:34 server id 111  end_log_pos 105735 CRC32 0xcce43ad2 	Query	thread_id=131	exec_time=0	error_code=0
SET TIMESTAMP=1493435134/*!*/;
COMMIT
/*!*/;
# at 105735
#170429 10:05:34 server id 111  end_log_pos 105830 CRC32 0x7e35b965 	Query	thread_id=132	exec_time=0	error_code=0
SET TIMESTAMP=1493435134/*!*/;
BEGIN
/*!*/;
# at 105830
#170429 10:05:34 server id 111  end_log_pos 106757 CRC32 0xa79e1030 	Query	thread_id=132	exec_time=0	error_code=0
SET TIMESTAMP=1493435134/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 106757
#170429 10:05:34 server id 111  end_log_pos 106853 CRC32 0x05ad0ffc 	Query	thread_id=132	exec_time=0	error_code=0
SET TIMESTAMP=1493435134/*!*/;
COMMIT
/*!*/;
# at 106853
#170429 10:16:06 server id 111  end_log_pos 106948 CRC32 0x380eda33 	Query	thread_id=133	exec_time=0	error_code=0
SET TIMESTAMP=1493435766/*!*/;
BEGIN
/*!*/;
# at 106948
#170429 10:16:06 server id 111  end_log_pos 107189 CRC32 0xf06ea4f5 	Query	thread_id=133	exec_time=0	error_code=0
SET TIMESTAMP=1493435766/*!*/;
UPDATE spa_sale_massage_detail SET id='1762', main_id='1599', number='1', product='7', qty='1', price='69', discount='0', therapist1='8' WHERE id =1762
/*!*/;
# at 107189
#170429 10:16:06 server id 111  end_log_pos 107285 CRC32 0xfad1e81a 	Query	thread_id=133	exec_time=0	error_code=0
SET TIMESTAMP=1493435766/*!*/;
COMMIT
/*!*/;
# at 107285
#170429 10:16:09 server id 111  end_log_pos 107380 CRC32 0x057098cc 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1493435769/*!*/;
BEGIN
/*!*/;
# at 107380
#170429 10:16:09 server id 111  end_log_pos 108202 CRC32 0x8d2fc3ad 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1493435769/*!*/;
UPDATE spa_sale_massage SET id='1598', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1598
/*!*/;
# at 108202
#170429 10:16:09 server id 111  end_log_pos 108298 CRC32 0xf77b3c6b 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1493435769/*!*/;
COMMIT
/*!*/;
# at 108298
#170429 10:16:11 server id 111  end_log_pos 108393 CRC32 0xa63ed6c1 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1493435771/*!*/;
BEGIN
/*!*/;
# at 108393
#170429 10:16:11 server id 111  end_log_pos 109321 CRC32 0xcc71a6a9 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1493435771/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 109321
#170429 10:16:11 server id 111  end_log_pos 109417 CRC32 0xbcec06fb 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1493435771/*!*/;
COMMIT
/*!*/;
# at 109417
#170429 10:16:19 server id 111  end_log_pos 109512 CRC32 0x55c3baf5 	Query	thread_id=136	exec_time=0	error_code=0
SET TIMESTAMP=1493435779/*!*/;
BEGIN
/*!*/;
# at 109512
#170429 10:16:19 server id 111  end_log_pos 109753 CRC32 0xddce982f 	Query	thread_id=136	exec_time=0	error_code=0
SET TIMESTAMP=1493435779/*!*/;
UPDATE spa_sale_massage_detail SET id='1763', main_id='1600', number='1', product='7', qty='1', price='69', discount='0', therapist1='5' WHERE id =1763
/*!*/;
# at 109753
#170429 10:16:19 server id 111  end_log_pos 109849 CRC32 0xc8d516e9 	Query	thread_id=136	exec_time=0	error_code=0
SET TIMESTAMP=1493435779/*!*/;
COMMIT
/*!*/;
# at 109849
#170429 10:19:44 server id 111  end_log_pos 109944 CRC32 0xa870a0c4 	Query	thread_id=139	exec_time=0	error_code=0
SET TIMESTAMP=1493435984/*!*/;
BEGIN
/*!*/;
# at 109944
#170429 10:19:44 server id 111  end_log_pos 110203 CRC32 0x76e4d1d2 	Query	thread_id=139	exec_time=0	error_code=0
SET TIMESTAMP=1493435984/*!*/;
INSERT INTO spa_info_product (id, code, name, description, cost, price, duration, category, photo) VALUES ('38', '', 'GW special', '', '55', '55', '80', 'Treatment', '')
/*!*/;
# at 110203
#170429 10:19:44 server id 111  end_log_pos 110299 CRC32 0x57ae2cfb 	Query	thread_id=139	exec_time=0	error_code=0
SET TIMESTAMP=1493435984/*!*/;
COMMIT
/*!*/;
# at 110299
#170429 10:19:47 server id 111  end_log_pos 110394 CRC32 0xc4683949 	Query	thread_id=141	exec_time=0	error_code=0
SET TIMESTAMP=1493435987/*!*/;
BEGIN
/*!*/;
# at 110394
#170429 10:19:47 server id 111  end_log_pos 111319 CRC32 0x59684fa7 	Query	thread_id=141	exec_time=0	error_code=0
SET TIMESTAMP=1493435987/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total=NULL, date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 111319
#170429 10:19:47 server id 111  end_log_pos 111415 CRC32 0x08101100 	Query	thread_id=141	exec_time=0	error_code=0
SET TIMESTAMP=1493435987/*!*/;
COMMIT
/*!*/;
# at 111415
#170429 10:19:47 server id 111  end_log_pos 111510 CRC32 0x83de6c64 	Query	thread_id=142	exec_time=0	error_code=0
SET TIMESTAMP=1493435987/*!*/;
BEGIN
/*!*/;
# at 111510
#170429 10:19:47 server id 111  end_log_pos 112437 CRC32 0xd9e51c9b 	Query	thread_id=142	exec_time=0	error_code=0
SET TIMESTAMP=1493435987/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 112437
#170429 10:19:47 server id 111  end_log_pos 112533 CRC32 0x46a280f9 	Query	thread_id=142	exec_time=0	error_code=0
SET TIMESTAMP=1493435987/*!*/;
COMMIT
/*!*/;
# at 112533
#170429 10:20:04 server id 111  end_log_pos 112628 CRC32 0x2c65067d 	Query	thread_id=143	exec_time=0	error_code=0
SET TIMESTAMP=1493436004/*!*/;
BEGIN
/*!*/;
# at 112628
# at 112660
#170429 10:20:04 server id 111  end_log_pos 112660 CRC32 0x3efd1900 	Intvar
SET INSERT_ID=1601/*!*/;
#170429 10:20:04 server id 111  end_log_pos 112801 CRC32 0x36b00158 	Query	thread_id=143	exec_time=0	error_code=0
SET TIMESTAMP=1493436004/*!*/;
INSERT INTO spa_sale_massage (gender) VALUES (NULL)
/*!*/;
# at 112801
#170429 10:20:04 server id 111  end_log_pos 112897 CRC32 0x96e50942 	Query	thread_id=143	exec_time=0	error_code=0
SET TIMESTAMP=1493436004/*!*/;
COMMIT
/*!*/;
# at 112897
#170429 10:20:04 server id 111  end_log_pos 112992 CRC32 0x44c4f0a6 	Query	thread_id=145	exec_time=0	error_code=0
SET TIMESTAMP=1493436004/*!*/;
BEGIN
/*!*/;
# at 112992
#170429 10:20:04 server id 111  end_log_pos 113814 CRC32 0x6b6e9d74 	Query	thread_id=145	exec_time=0	error_code=0
SET TIMESTAMP=1493436004/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 113814
#170429 10:20:04 server id 111  end_log_pos 113910 CRC32 0x8619eb2c 	Query	thread_id=145	exec_time=0	error_code=0
SET TIMESTAMP=1493436004/*!*/;
COMMIT
/*!*/;
# at 113910
#170429 10:20:12 server id 111  end_log_pos 114005 CRC32 0xcf66dce9 	Query	thread_id=147	exec_time=0	error_code=0
SET TIMESTAMP=1493436012/*!*/;
BEGIN
/*!*/;
# at 114005
#170429 10:20:12 server id 111  end_log_pos 114223 CRC32 0x931a4a28 	Query	thread_id=147	exec_time=0	error_code=0
SET TIMESTAMP=1493436012/*!*/;
UPDATE spa_sale_massage SET id='1601', inv_num='51', inv_refer='201704-0051', date_bill='2017-04-29', cashier='9' WHERE id =1601
/*!*/;
# at 114223
#170429 10:20:12 server id 111  end_log_pos 114319 CRC32 0x8fd0844b 	Query	thread_id=147	exec_time=0	error_code=0
SET TIMESTAMP=1493436012/*!*/;
COMMIT
/*!*/;
# at 114319
#170429 10:24:29 server id 111  end_log_pos 114414 CRC32 0x003c16e8 	Query	thread_id=148	exec_time=0	error_code=0
SET TIMESTAMP=1493436269/*!*/;
BEGIN
/*!*/;
# at 114414
#170429 10:24:29 server id 111  end_log_pos 115272 CRC32 0x4a6bc9ac 	Query	thread_id=148	exec_time=0	error_code=0
SET TIMESTAMP=1493436269/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality=NULL, cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 115272
#170429 10:24:29 server id 111  end_log_pos 115368 CRC32 0xbdc08565 	Query	thread_id=148	exec_time=0	error_code=0
SET TIMESTAMP=1493436269/*!*/;
COMMIT
/*!*/;
# at 115368
#170429 10:24:32 server id 111  end_log_pos 115463 CRC32 0x55a51b15 	Query	thread_id=149	exec_time=0	error_code=0
SET TIMESTAMP=1493436272/*!*/;
BEGIN
/*!*/;
# at 115463
#170429 10:24:32 server id 111  end_log_pos 116320 CRC32 0x6a4e9ccc 	Query	thread_id=149	exec_time=0	error_code=0
SET TIMESTAMP=1493436272/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='j', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 116320
#170429 10:24:32 server id 111  end_log_pos 116416 CRC32 0xb29cfb2f 	Query	thread_id=149	exec_time=0	error_code=0
SET TIMESTAMP=1493436272/*!*/;
COMMIT
/*!*/;
# at 116416
#170429 10:24:32 server id 111  end_log_pos 116511 CRC32 0x97826737 	Query	thread_id=150	exec_time=0	error_code=0
SET TIMESTAMP=1493436272/*!*/;
BEGIN
/*!*/;
# at 116511
#170429 10:24:32 server id 111  end_log_pos 117375 CRC32 0x3ce9870c 	Query	thread_id=150	exec_time=0	error_code=0
SET TIMESTAMP=1493436272/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 117375
#170429 10:24:32 server id 111  end_log_pos 117471 CRC32 0xcf7d776d 	Query	thread_id=150	exec_time=0	error_code=0
SET TIMESTAMP=1493436272/*!*/;
COMMIT
/*!*/;
# at 117471
#170429 10:24:35 server id 111  end_log_pos 117566 CRC32 0x39c1a565 	Query	thread_id=151	exec_time=0	error_code=0
SET TIMESTAMP=1493436275/*!*/;
BEGIN
/*!*/;
# at 117566
#170429 10:24:35 server id 111  end_log_pos 118429 CRC32 0x7a3b683d 	Query	thread_id=151	exec_time=0	error_code=0
SET TIMESTAMP=1493436275/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='0', gender='m', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 118429
#170429 10:24:35 server id 111  end_log_pos 118525 CRC32 0x166135a8 	Query	thread_id=151	exec_time=0	error_code=0
SET TIMESTAMP=1493436275/*!*/;
COMMIT
/*!*/;
# at 118525
#170429 10:24:36 server id 111  end_log_pos 118620 CRC32 0xbb49201d 	Query	thread_id=152	exec_time=0	error_code=0
SET TIMESTAMP=1493436276/*!*/;
BEGIN
/*!*/;
# at 118620
#170429 10:24:36 server id 111  end_log_pos 119486 CRC32 0xbdd4a235 	Query	thread_id=152	exec_time=0	error_code=0
SET TIMESTAMP=1493436276/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='0', gender='Male', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 119486
#170429 10:24:36 server id 111  end_log_pos 119582 CRC32 0x371ad350 	Query	thread_id=152	exec_time=0	error_code=0
SET TIMESTAMP=1493436276/*!*/;
COMMIT
/*!*/;
# at 119582
#170429 10:24:37 server id 111  end_log_pos 119677 CRC32 0xe627fa51 	Query	thread_id=153	exec_time=0	error_code=0
SET TIMESTAMP=1493436277/*!*/;
BEGIN
/*!*/;
# at 119677
#170429 10:24:37 server id 111  end_log_pos 120544 CRC32 0xe7670a5b 	Query	thread_id=153	exec_time=0	error_code=0
SET TIMESTAMP=1493436277/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 120544
#170429 10:24:37 server id 111  end_log_pos 120640 CRC32 0xec99991a 	Query	thread_id=153	exec_time=0	error_code=0
SET TIMESTAMP=1493436277/*!*/;
COMMIT
/*!*/;
# at 120640
#170429 10:24:41 server id 111  end_log_pos 120735 CRC32 0x8e0fe22a 	Query	thread_id=154	exec_time=0	error_code=0
SET TIMESTAMP=1493436281/*!*/;
BEGIN
/*!*/;
# at 120735
#170429 10:24:41 server id 111  end_log_pos 121602 CRC32 0x8cb65c4c 	Query	thread_id=154	exec_time=0	error_code=0
SET TIMESTAMP=1493436281/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 121602
#170429 10:24:41 server id 111  end_log_pos 121698 CRC32 0x71273db1 	Query	thread_id=154	exec_time=0	error_code=0
SET TIMESTAMP=1493436281/*!*/;
COMMIT
/*!*/;
# at 121698
#170429 10:25:03 server id 111  end_log_pos 121793 CRC32 0x1327139c 	Query	thread_id=155	exec_time=0	error_code=0
SET TIMESTAMP=1493436303/*!*/;
BEGIN
/*!*/;
# at 121793
#170429 10:25:03 server id 111  end_log_pos 122679 CRC32 0x50b031d6 	Query	thread_id=155	exec_time=0	error_code=0
SET TIMESTAMP=1493436303/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 122679
#170429 10:25:03 server id 111  end_log_pos 122775 CRC32 0x673c4b73 	Query	thread_id=155	exec_time=0	error_code=0
SET TIMESTAMP=1493436303/*!*/;
COMMIT
/*!*/;
# at 122775
#170429 10:25:07 server id 111  end_log_pos 122870 CRC32 0xc70d215e 	Query	thread_id=156	exec_time=0	error_code=0
SET TIMESTAMP=1493436307/*!*/;
BEGIN
/*!*/;
# at 122870
#170429 10:25:07 server id 111  end_log_pos 123775 CRC32 0x60f1672e 	Query	thread_id=156	exec_time=0	error_code=0
SET TIMESTAMP=1493436307/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 123775
#170429 10:25:07 server id 111  end_log_pos 123871 CRC32 0xd8d74185 	Query	thread_id=156	exec_time=0	error_code=0
SET TIMESTAMP=1493436307/*!*/;
COMMIT
/*!*/;
# at 123871
#170429 10:25:09 server id 111  end_log_pos 123966 CRC32 0xba670f14 	Query	thread_id=157	exec_time=0	error_code=0
SET TIMESTAMP=1493436309/*!*/;
BEGIN
/*!*/;
# at 123966
#170429 10:25:09 server id 111  end_log_pos 124880 CRC32 0x363d8521 	Query	thread_id=157	exec_time=0	error_code=0
SET TIMESTAMP=1493436309/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 124880
#170429 10:25:09 server id 111  end_log_pos 124976 CRC32 0x1b77fc95 	Query	thread_id=157	exec_time=0	error_code=0
SET TIMESTAMP=1493436309/*!*/;
COMMIT
/*!*/;
# at 124976
#170429 10:25:29 server id 111  end_log_pos 125071 CRC32 0x177d8b3e 	Query	thread_id=168	exec_time=0	error_code=0
SET TIMESTAMP=1493436329/*!*/;
BEGIN
/*!*/;
# at 125071
#170429 10:25:29 server id 111  end_log_pos 125983 CRC32 0xfd956698 	Query	thread_id=168	exec_time=0	error_code=0
SET TIMESTAMP=1493436329/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 125983
#170429 10:25:29 server id 111  end_log_pos 126079 CRC32 0x668d2f96 	Query	thread_id=168	exec_time=0	error_code=0
SET TIMESTAMP=1493436329/*!*/;
COMMIT
/*!*/;
# at 126079
#170429 10:25:29 server id 111  end_log_pos 126174 CRC32 0xf281bc9a 	Query	thread_id=169	exec_time=0	error_code=0
SET TIMESTAMP=1493436329/*!*/;
BEGIN
/*!*/;
# at 126174
#170429 10:25:29 server id 111  end_log_pos 127097 CRC32 0x44cb9ce6 	Query	thread_id=169	exec_time=0	error_code=0
SET TIMESTAMP=1493436329/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 127097
#170429 10:25:29 server id 111  end_log_pos 127193 CRC32 0xb2562502 	Query	thread_id=169	exec_time=0	error_code=0
SET TIMESTAMP=1493436329/*!*/;
COMMIT
/*!*/;
# at 127193
#170429 10:26:01 server id 111  end_log_pos 127288 CRC32 0xb8343800 	Query	thread_id=171	exec_time=0	error_code=0
SET TIMESTAMP=1493436361/*!*/;
BEGIN
/*!*/;
# at 127288
#170429 10:26:01 server id 111  end_log_pos 127545 CRC32 0xaaa9e69d 	Query	thread_id=171	exec_time=0	error_code=0
SET TIMESTAMP=1493436361/*!*/;
UPDATE spa_info_product SET id='38', code='38', name='GW special', description='', cost='50', price='50', duration='80.00', category='Treatment', photo='' WHERE id =38
/*!*/;
# at 127545
#170429 10:26:01 server id 111  end_log_pos 127641 CRC32 0x5c458068 	Query	thread_id=171	exec_time=0	error_code=0
SET TIMESTAMP=1493436361/*!*/;
COMMIT
/*!*/;
# at 127641
#170429 10:26:06 server id 111  end_log_pos 127736 CRC32 0xf5f5e93b 	Query	thread_id=183	exec_time=0	error_code=0
SET TIMESTAMP=1493436366/*!*/;
BEGIN
/*!*/;
# at 127736
#170429 10:26:06 server id 111  end_log_pos 128648 CRC32 0x73a9c542 	Query	thread_id=183	exec_time=0	error_code=0
SET TIMESTAMP=1493436366/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 128648
#170429 10:26:06 server id 111  end_log_pos 128744 CRC32 0x05ba1e7c 	Query	thread_id=183	exec_time=0	error_code=0
SET TIMESTAMP=1493436366/*!*/;
COMMIT
/*!*/;
# at 128744
#170429 10:26:06 server id 111  end_log_pos 128839 CRC32 0xc0626c31 	Query	thread_id=184	exec_time=0	error_code=0
SET TIMESTAMP=1493436366/*!*/;
BEGIN
/*!*/;
# at 128839
#170429 10:26:06 server id 111  end_log_pos 129762 CRC32 0xc884ab31 	Query	thread_id=184	exec_time=0	error_code=0
SET TIMESTAMP=1493436366/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 129762
#170429 10:26:06 server id 111  end_log_pos 129858 CRC32 0xbe5a0409 	Query	thread_id=184	exec_time=0	error_code=0
SET TIMESTAMP=1493436366/*!*/;
COMMIT
/*!*/;
# at 129858
#170429 10:26:14 server id 111  end_log_pos 129953 CRC32 0xfbeab7dc 	Query	thread_id=186	exec_time=0	error_code=0
SET TIMESTAMP=1493436374/*!*/;
BEGIN
/*!*/;
# at 129953
#170429 10:26:14 server id 111  end_log_pos 130199 CRC32 0x7946ff3d 	Query	thread_id=186	exec_time=0	error_code=0
SET TIMESTAMP=1493436374/*!*/;
INSERT INTO spa_sale_massage_detail (id, main_id, product, price, qty, number, discount, therapist1) VALUES ('1764', '1601', '38', '50', '1', '1', '0', '1')
/*!*/;
# at 130199
#170429 10:26:14 server id 111  end_log_pos 130295 CRC32 0xcc9cfb69 	Query	thread_id=186	exec_time=0	error_code=0
SET TIMESTAMP=1493436374/*!*/;
COMMIT
/*!*/;
# at 130295
#170429 10:26:14 server id 111  end_log_pos 130390 CRC32 0x28f643ee 	Query	thread_id=187	exec_time=0	error_code=0
SET TIMESTAMP=1493436374/*!*/;
BEGIN
/*!*/;
# at 130390
#170429 10:26:14 server id 111  end_log_pos 131314 CRC32 0xd28db438 	Query	thread_id=187	exec_time=0	error_code=0
SET TIMESTAMP=1493436374/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='50', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 131314
#170429 10:26:14 server id 111  end_log_pos 131410 CRC32 0x737ac85c 	Query	thread_id=187	exec_time=0	error_code=0
SET TIMESTAMP=1493436374/*!*/;
COMMIT
/*!*/;
# at 131410
#170429 10:26:20 server id 111  end_log_pos 131505 CRC32 0x9fdb3630 	Query	thread_id=188	exec_time=0	error_code=0
SET TIMESTAMP=1493436380/*!*/;
BEGIN
/*!*/;
# at 131505
#170429 10:26:20 server id 111  end_log_pos 132429 CRC32 0x6f89aa5a 	Query	thread_id=188	exec_time=0	error_code=0
SET TIMESTAMP=1493436380/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 132429
#170429 10:26:20 server id 111  end_log_pos 132525 CRC32 0x54ce8265 	Query	thread_id=188	exec_time=0	error_code=0
SET TIMESTAMP=1493436380/*!*/;
COMMIT
/*!*/;
# at 132525
#170429 10:26:20 server id 111  end_log_pos 132620 CRC32 0xf0004bd9 	Query	thread_id=189	exec_time=0	error_code=0
SET TIMESTAMP=1493436380/*!*/;
BEGIN
/*!*/;
# at 132620
#170429 10:26:20 server id 111  end_log_pos 133544 CRC32 0x063e7e68 	Query	thread_id=189	exec_time=0	error_code=0
SET TIMESTAMP=1493436380/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 133544
#170429 10:26:20 server id 111  end_log_pos 133640 CRC32 0x5b427b35 	Query	thread_id=189	exec_time=0	error_code=0
SET TIMESTAMP=1493436380/*!*/;
COMMIT
/*!*/;
# at 133640
#170429 10:27:10 server id 111  end_log_pos 133735 CRC32 0x593d2f60 	Query	thread_id=190	exec_time=0	error_code=0
SET TIMESTAMP=1493436430/*!*/;
BEGIN
/*!*/;
# at 133735
# at 133767
#170429 10:27:10 server id 111  end_log_pos 133767 CRC32 0xf4346524 	Intvar
SET INSERT_ID=1602/*!*/;
#170429 10:27:10 server id 111  end_log_pos 133908 CRC32 0xd200b1b5 	Query	thread_id=190	exec_time=0	error_code=0
SET TIMESTAMP=1493436430/*!*/;
INSERT INTO spa_sale_massage (gender) VALUES (NULL)
/*!*/;
# at 133908
#170429 10:27:10 server id 111  end_log_pos 134004 CRC32 0x98698506 	Query	thread_id=190	exec_time=0	error_code=0
SET TIMESTAMP=1493436430/*!*/;
COMMIT
/*!*/;
# at 134004
#170429 10:27:10 server id 111  end_log_pos 134099 CRC32 0xe3644fbf 	Query	thread_id=192	exec_time=0	error_code=0
SET TIMESTAMP=1493436430/*!*/;
BEGIN
/*!*/;
# at 134099
#170429 10:27:10 server id 111  end_log_pos 134921 CRC32 0x102f1807 	Query	thread_id=192	exec_time=0	error_code=0
SET TIMESTAMP=1493436430/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 134921
#170429 10:27:10 server id 111  end_log_pos 135017 CRC32 0x10d85f14 	Query	thread_id=192	exec_time=0	error_code=0
SET TIMESTAMP=1493436430/*!*/;
COMMIT
/*!*/;
# at 135017
#170429 10:27:13 server id 111  end_log_pos 135112 CRC32 0x793286dc 	Query	thread_id=194	exec_time=0	error_code=0
SET TIMESTAMP=1493436433/*!*/;
BEGIN
/*!*/;
# at 135112
#170429 10:27:13 server id 111  end_log_pos 135330 CRC32 0xf264d310 	Query	thread_id=194	exec_time=0	error_code=0
SET TIMESTAMP=1493436433/*!*/;
UPDATE spa_sale_massage SET id='1602', inv_num='52', inv_refer='201704-0052', date_bill='2017-04-29', cashier='9' WHERE id =1602
/*!*/;
# at 135330
#170429 10:27:13 server id 111  end_log_pos 135426 CRC32 0x5abdc8a2 	Query	thread_id=194	exec_time=0	error_code=0
SET TIMESTAMP=1493436433/*!*/;
COMMIT
/*!*/;
# at 135426
#170429 10:27:23 server id 111  end_log_pos 135521 CRC32 0xb33c1a3e 	Query	thread_id=195	exec_time=0	error_code=0
SET TIMESTAMP=1493436443/*!*/;
BEGIN
/*!*/;
# at 135521
#170429 10:27:23 server id 111  end_log_pos 136373 CRC32 0x0408e18e 	Query	thread_id=195	exec_time=0	error_code=0
SET TIMESTAMP=1493436443/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality=NULL, cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 136373
#170429 10:27:23 server id 111  end_log_pos 136469 CRC32 0x01d4bd30 	Query	thread_id=195	exec_time=0	error_code=0
SET TIMESTAMP=1493436443/*!*/;
COMMIT
/*!*/;
# at 136469
#170429 10:27:27 server id 111  end_log_pos 136564 CRC32 0x2e336a7a 	Query	thread_id=196	exec_time=0	error_code=0
SET TIMESTAMP=1493436447/*!*/;
BEGIN
/*!*/;
# at 136564
#170429 10:27:27 server id 111  end_log_pos 137415 CRC32 0xa77cde18 	Query	thread_id=196	exec_time=0	error_code=0
SET TIMESTAMP=1493436447/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='c', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 137415
#170429 10:27:27 server id 111  end_log_pos 137511 CRC32 0x11d91c3f 	Query	thread_id=196	exec_time=0	error_code=0
SET TIMESTAMP=1493436447/*!*/;
COMMIT
/*!*/;
# at 137511
#170429 10:27:27 server id 111  end_log_pos 137606 CRC32 0xa182839b 	Query	thread_id=197	exec_time=0	error_code=0
SET TIMESTAMP=1493436447/*!*/;
BEGIN
/*!*/;
# at 137606
#170429 10:27:27 server id 111  end_log_pos 138463 CRC32 0x00d08250 	Query	thread_id=197	exec_time=0	error_code=0
SET TIMESTAMP=1493436447/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 138463
#170429 10:27:27 server id 111  end_log_pos 138559 CRC32 0xf092c4fa 	Query	thread_id=197	exec_time=0	error_code=0
SET TIMESTAMP=1493436447/*!*/;
COMMIT
/*!*/;
# at 138559
#170429 10:27:30 server id 111  end_log_pos 138654 CRC32 0xafe2f0a0 	Query	thread_id=198	exec_time=0	error_code=0
SET TIMESTAMP=1493436450/*!*/;
BEGIN
/*!*/;
# at 138654
#170429 10:27:30 server id 111  end_log_pos 139510 CRC32 0x66af8b97 	Query	thread_id=198	exec_time=0	error_code=0
SET TIMESTAMP=1493436450/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='0', gender='f', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 139510
#170429 10:27:30 server id 111  end_log_pos 139606 CRC32 0xdafc4b19 	Query	thread_id=198	exec_time=0	error_code=0
SET TIMESTAMP=1493436450/*!*/;
COMMIT
/*!*/;
# at 139606
#170429 10:27:30 server id 111  end_log_pos 139701 CRC32 0x189257c6 	Query	thread_id=199	exec_time=0	error_code=0
SET TIMESTAMP=1493436450/*!*/;
BEGIN
/*!*/;
# at 139701
#170429 10:27:30 server id 111  end_log_pos 140562 CRC32 0x9215a400 	Query	thread_id=199	exec_time=0	error_code=0
SET TIMESTAMP=1493436450/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='0', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 140562
#170429 10:27:30 server id 111  end_log_pos 140658 CRC32 0x50a85928 	Query	thread_id=199	exec_time=0	error_code=0
SET TIMESTAMP=1493436450/*!*/;
COMMIT
/*!*/;
# at 140658
#170429 10:27:31 server id 111  end_log_pos 140753 CRC32 0x1607df3c 	Query	thread_id=200	exec_time=0	error_code=0
SET TIMESTAMP=1493436451/*!*/;
BEGIN
/*!*/;
# at 140753
#170429 10:27:31 server id 111  end_log_pos 141615 CRC32 0x71206729 	Query	thread_id=200	exec_time=0	error_code=0
SET TIMESTAMP=1493436451/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 141615
#170429 10:27:31 server id 111  end_log_pos 141711 CRC32 0x036bd030 	Query	thread_id=200	exec_time=0	error_code=0
SET TIMESTAMP=1493436451/*!*/;
COMMIT
/*!*/;
# at 141711
#170429 10:27:36 server id 111  end_log_pos 141806 CRC32 0x3677ded3 	Query	thread_id=201	exec_time=0	error_code=0
SET TIMESTAMP=1493436456/*!*/;
BEGIN
/*!*/;
# at 141806
#170429 10:27:36 server id 111  end_log_pos 142668 CRC32 0xd8662663 	Query	thread_id=201	exec_time=0	error_code=0
SET TIMESTAMP=1493436456/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 142668
#170429 10:27:36 server id 111  end_log_pos 142764 CRC32 0x115ffc2c 	Query	thread_id=201	exec_time=0	error_code=0
SET TIMESTAMP=1493436456/*!*/;
COMMIT
/*!*/;
# at 142764
#170429 10:27:40 server id 111  end_log_pos 142859 CRC32 0xee9b0a6a 	Query	thread_id=202	exec_time=0	error_code=0
SET TIMESTAMP=1493436460/*!*/;
BEGIN
/*!*/;
# at 142859
#170429 10:27:40 server id 111  end_log_pos 143740 CRC32 0xe24668f8 	Query	thread_id=202	exec_time=0	error_code=0
SET TIMESTAMP=1493436460/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 143740
#170429 10:27:40 server id 111  end_log_pos 143836 CRC32 0x6c0f1d3b 	Query	thread_id=202	exec_time=0	error_code=0
SET TIMESTAMP=1493436460/*!*/;
COMMIT
/*!*/;
# at 143836
#170429 10:27:42 server id 111  end_log_pos 143931 CRC32 0x0f042af5 	Query	thread_id=203	exec_time=0	error_code=0
SET TIMESTAMP=1493436462/*!*/;
BEGIN
/*!*/;
# at 143931
#170429 10:27:42 server id 111  end_log_pos 144821 CRC32 0xda7c6269 	Query	thread_id=203	exec_time=0	error_code=0
SET TIMESTAMP=1493436462/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 144821
#170429 10:27:42 server id 111  end_log_pos 144917 CRC32 0x8571245e 	Query	thread_id=203	exec_time=0	error_code=0
SET TIMESTAMP=1493436462/*!*/;
COMMIT
/*!*/;
# at 144917
#170429 10:27:56 server id 111  end_log_pos 145012 CRC32 0x5f8772c0 	Query	thread_id=216	exec_time=0	error_code=0
SET TIMESTAMP=1493436476/*!*/;
BEGIN
/*!*/;
# at 145012
#170429 10:27:56 server id 111  end_log_pos 145900 CRC32 0xe3d8306e 	Query	thread_id=216	exec_time=0	error_code=0
SET TIMESTAMP=1493436476/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 145900
#170429 10:27:56 server id 111  end_log_pos 145996 CRC32 0x54999e38 	Query	thread_id=216	exec_time=0	error_code=0
SET TIMESTAMP=1493436476/*!*/;
COMMIT
/*!*/;
# at 145996
#170429 10:27:56 server id 111  end_log_pos 146091 CRC32 0x83c6db4d 	Query	thread_id=217	exec_time=0	error_code=0
SET TIMESTAMP=1493436476/*!*/;
BEGIN
/*!*/;
# at 146091
#170429 10:27:56 server id 111  end_log_pos 146990 CRC32 0x46beab37 	Query	thread_id=217	exec_time=0	error_code=0
SET TIMESTAMP=1493436476/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 146990
#170429 10:27:56 server id 111  end_log_pos 147086 CRC32 0xae14f4a9 	Query	thread_id=217	exec_time=0	error_code=0
SET TIMESTAMP=1493436476/*!*/;
COMMIT
/*!*/;
# at 147086
#170429 10:28:00 server id 111  end_log_pos 147181 CRC32 0xa7df4bd9 	Query	thread_id=219	exec_time=0	error_code=0
SET TIMESTAMP=1493436480/*!*/;
BEGIN
/*!*/;
# at 147181
#170429 10:28:00 server id 111  end_log_pos 147427 CRC32 0x67696830 	Query	thread_id=219	exec_time=0	error_code=0
SET TIMESTAMP=1493436480/*!*/;
INSERT INTO spa_sale_massage_detail (id, main_id, product, price, qty, number, discount, therapist1) VALUES ('1765', '1602', '38', '50', '1', '1', '0', '1')
/*!*/;
# at 147427
#170429 10:28:00 server id 111  end_log_pos 147523 CRC32 0xed69b145 	Query	thread_id=219	exec_time=0	error_code=0
SET TIMESTAMP=1493436480/*!*/;
COMMIT
/*!*/;
# at 147523
#170429 10:28:00 server id 111  end_log_pos 147618 CRC32 0x27bd34dc 	Query	thread_id=220	exec_time=0	error_code=0
SET TIMESTAMP=1493436480/*!*/;
BEGIN
/*!*/;
# at 147618
#170429 10:28:00 server id 111  end_log_pos 148518 CRC32 0xd1b368f3 	Query	thread_id=220	exec_time=0	error_code=0
SET TIMESTAMP=1493436480/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='50', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 148518
#170429 10:28:00 server id 111  end_log_pos 148614 CRC32 0x62415bc5 	Query	thread_id=220	exec_time=0	error_code=0
SET TIMESTAMP=1493436480/*!*/;
COMMIT
/*!*/;
# at 148614
#170429 10:28:03 server id 111  end_log_pos 148709 CRC32 0xe34a9193 	Query	thread_id=221	exec_time=0	error_code=0
SET TIMESTAMP=1493436483/*!*/;
BEGIN
/*!*/;
# at 148709
#170429 10:28:03 server id 111  end_log_pos 149609 CRC32 0x9dfa68e3 	Query	thread_id=221	exec_time=0	error_code=0
SET TIMESTAMP=1493436483/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 149609
#170429 10:28:03 server id 111  end_log_pos 149705 CRC32 0x3662e806 	Query	thread_id=221	exec_time=0	error_code=0
SET TIMESTAMP=1493436483/*!*/;
COMMIT
/*!*/;
# at 149705
#170429 10:28:03 server id 111  end_log_pos 149800 CRC32 0x837cba7f 	Query	thread_id=222	exec_time=0	error_code=0
SET TIMESTAMP=1493436483/*!*/;
BEGIN
/*!*/;
# at 149800
#170429 10:28:03 server id 111  end_log_pos 150700 CRC32 0x87def272 	Query	thread_id=222	exec_time=0	error_code=0
SET TIMESTAMP=1493436483/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 150700
#170429 10:28:03 server id 111  end_log_pos 150796 CRC32 0x2d3a6819 	Query	thread_id=222	exec_time=0	error_code=0
SET TIMESTAMP=1493436483/*!*/;
COMMIT
/*!*/;
# at 150796
#170429  9:59:58 server id 21  end_log_pos 150891 CRC32 0xf74de0b8 	Query	thread_id=5	exec_time=3478	error_code=0
SET TIMESTAMP=1493434798/*!*/;
BEGIN
/*!*/;
# at 150891
# at 150923
#170429  9:59:58 server id 21  end_log_pos 150923 CRC32 0x364006ac 	Intvar
SET INSERT_ID=34506/*!*/;
#170429  9:59:58 server id 21  end_log_pos 151157 CRC32 0xc32db01b 	Query	thread_id=5	exec_time=3478	error_code=0
SET TIMESTAMP=1493434798/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('559','201704-00559','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 151157
#170429  9:59:58 server id 21  end_log_pos 151253 CRC32 0xe7c65025 	Query	thread_id=5	exec_time=3478	error_code=0
SET TIMESTAMP=1493434798/*!*/;
COMMIT
/*!*/;
# at 151253
#170429  9:59:58 server id 21  end_log_pos 151348 CRC32 0xb5cf9a26 	Query	thread_id=5	exec_time=3478	error_code=0
SET TIMESTAMP=1493434798/*!*/;
BEGIN
/*!*/;
# at 151348
# at 151380
#170429  9:59:58 server id 21  end_log_pos 151380 CRC32 0x720f9fc7 	Intvar
SET INSERT_ID=82074/*!*/;
#170429  9:59:58 server id 21  end_log_pos 151626 CRC32 0xb1ce889b 	Query	thread_id=5	exec_time=3478	error_code=0
SET TIMESTAMP=1493434798/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34506','21','1.00000000000000000e+000','2.50000000000000000e+000','1')
/*!*/;
# at 151626
#170429  9:59:58 server id 21  end_log_pos 151722 CRC32 0x232b0713 	Query	thread_id=5	exec_time=3478	error_code=0
SET TIMESTAMP=1493434798/*!*/;
COMMIT
/*!*/;
# at 151722
#170429 10:00:00 server id 21  end_log_pos 151817 CRC32 0xe5eaeb17 	Query	thread_id=5	exec_time=3476	error_code=0
SET TIMESTAMP=1493434800/*!*/;
BEGIN
/*!*/;
# at 151817
#170429 10:00:00 server id 21  end_log_pos 152440 CRC32 0xcb5c05c8 	Query	thread_id=5	exec_time=3476	error_code=0
SET TIMESTAMP=1493434800/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 09:59:58',`total`='2.50000000000000000e+000'  WHERE `id` = '34506' AND `inv_num` = '559' AND `inv_refer` = '201704-00559' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 152440
#170429 10:00:00 server id 21  end_log_pos 152536 CRC32 0xc60fe8fa 	Query	thread_id=5	exec_time=3476	error_code=0
SET TIMESTAMP=1493434800/*!*/;
COMMIT
/*!*/;
# at 152536
#170429 10:00:02 server id 21  end_log_pos 152631 CRC32 0x1fc96944 	Query	thread_id=5	exec_time=3474	error_code=0
SET TIMESTAMP=1493434802/*!*/;
BEGIN
/*!*/;
# at 152631
#170429 10:00:02 server id 21  end_log_pos 153261 CRC32 0xbcb1971a 	Query	thread_id=5	exec_time=3474	error_code=0
SET TIMESTAMP=1493434802/*!*/;
UPDATE `oms_sale` SET `bill`='5.50000000000000000e+000'  WHERE `id` = '34506' AND `inv_num` = '559' AND `inv_refer` = '201704-00559' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 09:59:58' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 153261
#170429 10:00:02 server id 21  end_log_pos 153357 CRC32 0x34d8b9ac 	Query	thread_id=5	exec_time=3474	error_code=0
SET TIMESTAMP=1493434802/*!*/;
COMMIT
/*!*/;
# at 153357
#170429 10:18:32 server id 21  end_log_pos 153452 CRC32 0x582fa50d 	Query	thread_id=6	exec_time=2364	error_code=0
SET TIMESTAMP=1493435912/*!*/;
BEGIN
/*!*/;
# at 153452
# at 153484
#170429 10:18:32 server id 21  end_log_pos 153484 CRC32 0xee468a37 	Intvar
SET INSERT_ID=34507/*!*/;
#170429 10:18:32 server id 21  end_log_pos 153718 CRC32 0xe7479b6d 	Query	thread_id=6	exec_time=2364	error_code=0
SET TIMESTAMP=1493435912/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('560','201704-00560','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 153718
#170429 10:18:32 server id 21  end_log_pos 153814 CRC32 0x6844525c 	Query	thread_id=6	exec_time=2364	error_code=0
SET TIMESTAMP=1493435912/*!*/;
COMMIT
/*!*/;
# at 153814
#170429 10:18:32 server id 21  end_log_pos 153909 CRC32 0x726436f1 	Query	thread_id=6	exec_time=2364	error_code=0
SET TIMESTAMP=1493435912/*!*/;
BEGIN
/*!*/;
# at 153909
# at 153941
#170429 10:18:32 server id 21  end_log_pos 153941 CRC32 0xa2065683 	Intvar
SET INSERT_ID=82075/*!*/;
#170429 10:18:32 server id 21  end_log_pos 154187 CRC32 0x52876a05 	Query	thread_id=6	exec_time=2364	error_code=0
SET TIMESTAMP=1493435912/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34507','49','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 154187
#170429 10:18:32 server id 21  end_log_pos 154283 CRC32 0x212141eb 	Query	thread_id=6	exec_time=2364	error_code=0
SET TIMESTAMP=1493435912/*!*/;
COMMIT
/*!*/;
# at 154283
#170429 10:18:33 server id 21  end_log_pos 154378 CRC32 0xa35c17cf 	Query	thread_id=6	exec_time=2363	error_code=0
SET TIMESTAMP=1493435913/*!*/;
BEGIN
/*!*/;
# at 154378
#170429 10:18:33 server id 21  end_log_pos 154550 CRC32 0x8aed416d 	Query	thread_id=6	exec_time=2363	error_code=0
SET TIMESTAMP=1493435913/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82075'
/*!*/;
# at 154550
#170429 10:18:33 server id 21  end_log_pos 154646 CRC32 0xa464d6e7 	Query	thread_id=6	exec_time=2363	error_code=0
SET TIMESTAMP=1493435913/*!*/;
COMMIT
/*!*/;
# at 154646
#170429 10:18:38 server id 21  end_log_pos 154741 CRC32 0x6626c3ae 	Query	thread_id=6	exec_time=2358	error_code=0
SET TIMESTAMP=1493435918/*!*/;
BEGIN
/*!*/;
# at 154741
# at 154773
#170429 10:18:38 server id 21  end_log_pos 154773 CRC32 0xada0b47f 	Intvar
SET INSERT_ID=82076/*!*/;
#170429 10:18:38 server id 21  end_log_pos 155019 CRC32 0x6b4db44b 	Query	thread_id=6	exec_time=2358	error_code=0
SET TIMESTAMP=1493435918/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34507','48','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 155019
#170429 10:18:38 server id 21  end_log_pos 155115 CRC32 0xfad66570 	Query	thread_id=6	exec_time=2358	error_code=0
SET TIMESTAMP=1493435918/*!*/;
COMMIT
/*!*/;
# at 155115
#170429 10:18:38 server id 21  end_log_pos 155210 CRC32 0x978647a5 	Query	thread_id=6	exec_time=2358	error_code=0
SET TIMESTAMP=1493435918/*!*/;
BEGIN
/*!*/;
# at 155210
#170429 10:18:38 server id 21  end_log_pos 155382 CRC32 0x908c776e 	Query	thread_id=6	exec_time=2358	error_code=0
SET TIMESTAMP=1493435918/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82076'
/*!*/;
# at 155382
#170429 10:18:38 server id 21  end_log_pos 155478 CRC32 0x696efaec 	Query	thread_id=6	exec_time=2358	error_code=0
SET TIMESTAMP=1493435918/*!*/;
COMMIT
/*!*/;
# at 155478
#170429 10:18:43 server id 21  end_log_pos 155573 CRC32 0xd2be1a8b 	Query	thread_id=6	exec_time=2353	error_code=0
SET TIMESTAMP=1493435923/*!*/;
BEGIN
/*!*/;
# at 155573
# at 155605
#170429 10:18:43 server id 21  end_log_pos 155605 CRC32 0xc602da16 	Intvar
SET INSERT_ID=82077/*!*/;
#170429 10:18:43 server id 21  end_log_pos 155851 CRC32 0xb3807d4d 	Query	thread_id=6	exec_time=2353	error_code=0
SET TIMESTAMP=1493435923/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34507','47','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 155851
#170429 10:18:43 server id 21  end_log_pos 155947 CRC32 0x18691590 	Query	thread_id=6	exec_time=2353	error_code=0
SET TIMESTAMP=1493435923/*!*/;
COMMIT
/*!*/;
# at 155947
#170429 10:18:47 server id 21  end_log_pos 156042 CRC32 0x8baec0d7 	Query	thread_id=6	exec_time=2349	error_code=0
SET TIMESTAMP=1493435927/*!*/;
BEGIN
/*!*/;
# at 156042
# at 156074
#170429 10:18:47 server id 21  end_log_pos 156074 CRC32 0x7cc32184 	Intvar
SET INSERT_ID=82078/*!*/;
#170429 10:18:47 server id 21  end_log_pos 156319 CRC32 0x41dd8f79 	Query	thread_id=6	exec_time=2349	error_code=0
SET TIMESTAMP=1493435927/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34507','1','1.00000000000000000e+000','3.00000000000000000e+000','4')
/*!*/;
# at 156319
#170429 10:18:47 server id 21  end_log_pos 156415 CRC32 0x0e396a5f 	Query	thread_id=6	exec_time=2349	error_code=0
SET TIMESTAMP=1493435927/*!*/;
COMMIT
/*!*/;
# at 156415
#170429 10:18:47 server id 21  end_log_pos 156510 CRC32 0xf49381c6 	Query	thread_id=6	exec_time=2349	error_code=0
SET TIMESTAMP=1493435927/*!*/;
BEGIN
/*!*/;
# at 156510
#170429 10:18:47 server id 21  end_log_pos 156682 CRC32 0xa3e1210f 	Query	thread_id=6	exec_time=2349	error_code=0
SET TIMESTAMP=1493435927/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82078'
/*!*/;
# at 156682
#170429 10:18:47 server id 21  end_log_pos 156778 CRC32 0x26d5d0b2 	Query	thread_id=6	exec_time=2349	error_code=0
SET TIMESTAMP=1493435927/*!*/;
COMMIT
/*!*/;
# at 156778
#170429 10:18:49 server id 21  end_log_pos 156873 CRC32 0x268fe168 	Query	thread_id=6	exec_time=2347	error_code=0
SET TIMESTAMP=1493435929/*!*/;
BEGIN
/*!*/;
# at 156873
#170429 10:18:49 server id 21  end_log_pos 157496 CRC32 0xa1e05db1 	Query	thread_id=6	exec_time=2347	error_code=0
SET TIMESTAMP=1493435929/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 10:18:33',`total`='3.10000000000000000e+001'  WHERE `id` = '34507' AND `inv_num` = '560' AND `inv_refer` = '201704-00560' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 157496
#170429 10:18:49 server id 21  end_log_pos 157592 CRC32 0x68bcff4a 	Query	thread_id=6	exec_time=2347	error_code=0
SET TIMESTAMP=1493435929/*!*/;
COMMIT
/*!*/;
# at 157592
#170429 10:18:53 server id 21  end_log_pos 157687 CRC32 0x8c6d25ed 	Query	thread_id=6	exec_time=2343	error_code=0
SET TIMESTAMP=1493435933/*!*/;
BEGIN
/*!*/;
# at 157687
# at 157719
#170429 10:18:53 server id 21  end_log_pos 157719 CRC32 0x85eb043e 	Intvar
SET INSERT_ID=13107/*!*/;
#170429 10:18:53 server id 21  end_log_pos 157892 CRC32 0x8348810a 	Query	thread_id=6	exec_time=2343	error_code=0
SET TIMESTAMP=1493435933/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34507','47','1')
/*!*/;
# at 157892
#170429 10:18:53 server id 21  end_log_pos 157988 CRC32 0xcc4e66ae 	Query	thread_id=6	exec_time=2343	error_code=0
SET TIMESTAMP=1493435933/*!*/;
COMMIT
/*!*/;
# at 157988
#170429 10:19:01 server id 21  end_log_pos 158083 CRC32 0x25855c68 	Query	thread_id=6	exec_time=2335	error_code=0
SET TIMESTAMP=1493435941/*!*/;
BEGIN
/*!*/;
# at 158083
#170429 10:19:01 server id 21  end_log_pos 158713 CRC32 0xbbcdc8fd 	Query	thread_id=6	exec_time=2335	error_code=0
SET TIMESTAMP=1493435941/*!*/;
UPDATE `oms_sale` SET `bill`='3.10000000000000000e+001'  WHERE `id` = '34507' AND `inv_num` = '560' AND `inv_refer` = '201704-00560' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:18:33' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 158713
#170429 10:19:01 server id 21  end_log_pos 158809 CRC32 0x75dcaa60 	Query	thread_id=6	exec_time=2335	error_code=0
SET TIMESTAMP=1493435941/*!*/;
COMMIT
/*!*/;
# at 158809
#170429 10:19:31 server id 21  end_log_pos 158904 CRC32 0xb04165ed 	Query	thread_id=6	exec_time=2305	error_code=0
SET TIMESTAMP=1493435971/*!*/;
BEGIN
/*!*/;
# at 158904
#170429 10:19:31 server id 21  end_log_pos 159575 CRC32 0x4d5ef908 	Query	thread_id=6	exec_time=2305	error_code=0
SET TIMESTAMP=1493435971/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='27',`gender`='Female'  WHERE `id` = '34507' AND `inv_num` = '560' AND `inv_refer` = '201704-00560' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:18:33' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '3.10000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '3.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 159575
#170429 10:19:31 server id 21  end_log_pos 159671 CRC32 0x89c32702 	Query	thread_id=6	exec_time=2305	error_code=0
SET TIMESTAMP=1493435971/*!*/;
COMMIT
/*!*/;
# at 159671
#170429 10:23:38 server id 21  end_log_pos 159766 CRC32 0x78c7fc79 	Query	thread_id=6	exec_time=2058	error_code=0
SET TIMESTAMP=1493436218/*!*/;
BEGIN
/*!*/;
# at 159766
# at 159798
#170429 10:23:38 server id 21  end_log_pos 159798 CRC32 0xe902ee41 	Intvar
SET INSERT_ID=34508/*!*/;
#170429 10:23:38 server id 21  end_log_pos 160032 CRC32 0x6e398b36 	Query	thread_id=6	exec_time=2058	error_code=0
SET TIMESTAMP=1493436218/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('561','201704-00561','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 160032
#170429 10:23:38 server id 21  end_log_pos 160128 CRC32 0xd0277373 	Query	thread_id=6	exec_time=2058	error_code=0
SET TIMESTAMP=1493436218/*!*/;
COMMIT
/*!*/;
# at 160128
#170429 10:34:55 server id 21  end_log_pos 160223 CRC32 0x58f57aa2 	Query	thread_id=7	exec_time=1381	error_code=0
SET TIMESTAMP=1493436895/*!*/;
BEGIN
/*!*/;
# at 160223
# at 160255
#170429 10:34:55 server id 21  end_log_pos 160255 CRC32 0xc1bcf6eb 	Intvar
SET INSERT_ID=82079/*!*/;
#170429 10:34:55 server id 21  end_log_pos 160502 CRC32 0x2f9b8894 	Query	thread_id=7	exec_time=1381	error_code=0
SET TIMESTAMP=1493436895/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34508','440','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 160502
#170429 10:34:55 server id 21  end_log_pos 160598 CRC32 0x62e4e4ac 	Query	thread_id=7	exec_time=1381	error_code=0
SET TIMESTAMP=1493436895/*!*/;
COMMIT
/*!*/;
# at 160598
#170429 10:34:56 server id 21  end_log_pos 160693 CRC32 0xe12af82b 	Query	thread_id=7	exec_time=1380	error_code=0
SET TIMESTAMP=1493436896/*!*/;
BEGIN
/*!*/;
# at 160693
#170429 10:34:56 server id 21  end_log_pos 160865 CRC32 0x41bb391c 	Query	thread_id=7	exec_time=1380	error_code=0
SET TIMESTAMP=1493436896/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82079'
/*!*/;
# at 160865
#170429 10:34:56 server id 21  end_log_pos 160961 CRC32 0xb1cf7317 	Query	thread_id=7	exec_time=1380	error_code=0
SET TIMESTAMP=1493436896/*!*/;
COMMIT
/*!*/;
# at 160961
#170429 10:34:56 server id 21  end_log_pos 161056 CRC32 0x0f288b13 	Query	thread_id=7	exec_time=1380	error_code=0
SET TIMESTAMP=1493436896/*!*/;
BEGIN
/*!*/;
# at 161056
#170429 10:34:56 server id 21  end_log_pos 161228 CRC32 0x1003cc8f 	Query	thread_id=7	exec_time=1380	error_code=0
SET TIMESTAMP=1493436896/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82079'
/*!*/;
# at 161228
#170429 10:34:56 server id 21  end_log_pos 161324 CRC32 0x0f720804 	Query	thread_id=7	exec_time=1380	error_code=0
SET TIMESTAMP=1493436896/*!*/;
COMMIT
/*!*/;
# at 161324
#170429 10:34:57 server id 21  end_log_pos 161419 CRC32 0xe5ae58b5 	Query	thread_id=7	exec_time=1379	error_code=0
SET TIMESTAMP=1493436897/*!*/;
BEGIN
/*!*/;
# at 161419
#170429 10:34:57 server id 21  end_log_pos 161591 CRC32 0x6374eb44 	Query	thread_id=7	exec_time=1379	error_code=0
SET TIMESTAMP=1493436897/*!*/;
UPDATE `oms_sale_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '82079'
/*!*/;
# at 161591
#170429 10:34:57 server id 21  end_log_pos 161687 CRC32 0x74abc297 	Query	thread_id=7	exec_time=1379	error_code=0
SET TIMESTAMP=1493436897/*!*/;
COMMIT
/*!*/;
# at 161687
#170429 10:34:58 server id 21  end_log_pos 161782 CRC32 0x8e1d67f1 	Query	thread_id=7	exec_time=1378	error_code=0
SET TIMESTAMP=1493436898/*!*/;
BEGIN
/*!*/;
# at 161782
#170429 10:34:58 server id 21  end_log_pos 161954 CRC32 0x02727346 	Query	thread_id=7	exec_time=1378	error_code=0
SET TIMESTAMP=1493436898/*!*/;
UPDATE `oms_sale_detail` SET `qty`='5.00000000000000000e+000' WHERE `id` = '82079'
/*!*/;
# at 161954
#170429 10:34:58 server id 21  end_log_pos 162050 CRC32 0x39b0c979 	Query	thread_id=7	exec_time=1378	error_code=0
SET TIMESTAMP=1493436898/*!*/;
COMMIT
/*!*/;
# at 162050
#170429 10:35:00 server id 21  end_log_pos 162145 CRC32 0xdfd89a8c 	Query	thread_id=7	exec_time=1376	error_code=0
SET TIMESTAMP=1493436900/*!*/;
BEGIN
/*!*/;
# at 162145
#170429 10:35:00 server id 21  end_log_pos 162768 CRC32 0xeef7c677 	Query	thread_id=7	exec_time=1376	error_code=0
SET TIMESTAMP=1493436900/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 10:34:55',`total`='4.00000000000000000e+001'  WHERE `id` = '34508' AND `inv_num` = '561' AND `inv_refer` = '201704-00561' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 162768
#170429 10:35:00 server id 21  end_log_pos 162864 CRC32 0xaf7bf04d 	Query	thread_id=7	exec_time=1376	error_code=0
SET TIMESTAMP=1493436900/*!*/;
COMMIT
/*!*/;
# at 162864
#170429 10:35:02 server id 21  end_log_pos 162959 CRC32 0x29cdd9d1 	Query	thread_id=7	exec_time=1374	error_code=0
SET TIMESTAMP=1493436902/*!*/;
BEGIN
/*!*/;
# at 162959
# at 162991
#170429 10:35:02 server id 21  end_log_pos 162991 CRC32 0x38dee7ce 	Intvar
SET INSERT_ID=13108/*!*/;
#170429 10:35:02 server id 21  end_log_pos 163165 CRC32 0x732ef922 	Query	thread_id=7	exec_time=1374	error_code=0
SET TIMESTAMP=1493436902/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34508','440','1')
/*!*/;
# at 163165
#170429 10:35:02 server id 21  end_log_pos 163261 CRC32 0xa6e44097 	Query	thread_id=7	exec_time=1374	error_code=0
SET TIMESTAMP=1493436902/*!*/;
COMMIT
/*!*/;
# at 163261
#170429 10:35:05 server id 21  end_log_pos 163356 CRC32 0xa4100165 	Query	thread_id=7	exec_time=1371	error_code=0
SET TIMESTAMP=1493436905/*!*/;
BEGIN
/*!*/;
# at 163356
#170429 10:35:05 server id 21  end_log_pos 163986 CRC32 0xe33bb531 	Query	thread_id=7	exec_time=1371	error_code=0
SET TIMESTAMP=1493436905/*!*/;
UPDATE `oms_sale` SET `bill`='4.00000000000000000e+001'  WHERE `id` = '34508' AND `inv_num` = '561' AND `inv_refer` = '201704-00561' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:34:55' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.00000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 163986
#170429 10:35:05 server id 21  end_log_pos 164082 CRC32 0x06feaa3c 	Query	thread_id=7	exec_time=1371	error_code=0
SET TIMESTAMP=1493436905/*!*/;
COMMIT
/*!*/;
# at 164082
#170429 10:38:12 server id 21  end_log_pos 164177 CRC32 0xcc1994b2 	Query	thread_id=7	exec_time=1184	error_code=0
SET TIMESTAMP=1493437092/*!*/;
BEGIN
/*!*/;
# at 164177
#170429 10:38:12 server id 21  end_log_pos 164848 CRC32 0x65d41dc2 	Query	thread_id=7	exec_time=1184	error_code=0
SET TIMESTAMP=1493437092/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='50',`gender`='Female'  WHERE `id` = '34508' AND `inv_num` = '561' AND `inv_refer` = '201704-00561' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:34:55' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '4.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.00000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 164848
#170429 10:38:12 server id 21  end_log_pos 164944 CRC32 0x430cc867 	Query	thread_id=7	exec_time=1184	error_code=0
SET TIMESTAMP=1493437092/*!*/;
COMMIT
/*!*/;
# at 164944
#170429 10:38:23 server id 21  end_log_pos 165039 CRC32 0xa4abcc0d 	Query	thread_id=7	exec_time=1173	error_code=0
SET TIMESTAMP=1493437103/*!*/;
BEGIN
/*!*/;
# at 165039
# at 165071
#170429 10:38:23 server id 21  end_log_pos 165071 CRC32 0x603df0ac 	Intvar
SET INSERT_ID=34509/*!*/;
#170429 10:38:23 server id 21  end_log_pos 165305 CRC32 0x229bde2e 	Query	thread_id=7	exec_time=1173	error_code=0
SET TIMESTAMP=1493437103/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('562','201704-00562','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 165305
#170429 10:38:23 server id 21  end_log_pos 165401 CRC32 0x93655764 	Query	thread_id=7	exec_time=1173	error_code=0
SET TIMESTAMP=1493437103/*!*/;
COMMIT
/*!*/;
# at 165401
#170429 10:46:18 server id 21  end_log_pos 165496 CRC32 0x1d36aff0 	Query	thread_id=7	exec_time=698	error_code=0
SET TIMESTAMP=1493437578/*!*/;
BEGIN
/*!*/;
# at 165496
#170429 10:46:18 server id 21  end_log_pos 166071 CRC32 0x1b229902 	Query	thread_id=7	exec_time=698	error_code=0
SET TIMESTAMP=1493437578/*!*/;
UPDATE `oms_sale` SET `employee`='26'  WHERE `id` = '34509' AND `inv_num` = '562' AND `inv_refer` = '201704-00562' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 166071
#170429 10:46:18 server id 21  end_log_pos 166167 CRC32 0xaa0c851e 	Query	thread_id=7	exec_time=698	error_code=0
SET TIMESTAMP=1493437578/*!*/;
COMMIT
/*!*/;
# at 166167
#170429 10:46:26 server id 21  end_log_pos 166262 CRC32 0xf49e06bd 	Query	thread_id=7	exec_time=690	error_code=0
SET TIMESTAMP=1493437586/*!*/;
BEGIN
/*!*/;
# at 166262
# at 166294
#170429 10:46:26 server id 21  end_log_pos 166294 CRC32 0x9b2771e2 	Intvar
SET INSERT_ID=82080/*!*/;
#170429 10:46:26 server id 21  end_log_pos 166540 CRC32 0x2fc3f6a2 	Query	thread_id=7	exec_time=690	error_code=0
SET TIMESTAMP=1493437586/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','40','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 166540
#170429 10:46:26 server id 21  end_log_pos 166636 CRC32 0xaa596d65 	Query	thread_id=7	exec_time=690	error_code=0
SET TIMESTAMP=1493437586/*!*/;
COMMIT
/*!*/;
# at 166636
#170429 10:46:34 server id 21  end_log_pos 166731 CRC32 0xeb15bbdf 	Query	thread_id=7	exec_time=682	error_code=0
SET TIMESTAMP=1493437594/*!*/;
BEGIN
/*!*/;
# at 166731
# at 166763
#170429 10:46:34 server id 21  end_log_pos 166763 CRC32 0x0f990522 	Intvar
SET INSERT_ID=82081/*!*/;
#170429 10:46:34 server id 21  end_log_pos 167009 CRC32 0x7577a109 	Query	thread_id=7	exec_time=682	error_code=0
SET TIMESTAMP=1493437594/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','39','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 167009
#170429 10:46:34 server id 21  end_log_pos 167105 CRC32 0x2d25d22c 	Query	thread_id=7	exec_time=682	error_code=0
SET TIMESTAMP=1493437594/*!*/;
COMMIT
/*!*/;
# at 167105
#170429 10:46:34 server id 21  end_log_pos 167200 CRC32 0xec8f19d7 	Query	thread_id=7	exec_time=682	error_code=0
SET TIMESTAMP=1493437594/*!*/;
BEGIN
/*!*/;
# at 167200
#170429 10:46:34 server id 21  end_log_pos 167372 CRC32 0xc2b2431a 	Query	thread_id=7	exec_time=682	error_code=0
SET TIMESTAMP=1493437594/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82081'
/*!*/;
# at 167372
#170429 10:46:34 server id 21  end_log_pos 167468 CRC32 0x9398a93f 	Query	thread_id=7	exec_time=682	error_code=0
SET TIMESTAMP=1493437594/*!*/;
COMMIT
/*!*/;
# at 167468
#170429 10:46:38 server id 21  end_log_pos 167563 CRC32 0x419f66f5 	Query	thread_id=7	exec_time=678	error_code=0
SET TIMESTAMP=1493437598/*!*/;
BEGIN
/*!*/;
# at 167563
# at 167595
#170429 10:46:38 server id 21  end_log_pos 167595 CRC32 0x871e131e 	Intvar
SET INSERT_ID=82082/*!*/;
#170429 10:46:38 server id 21  end_log_pos 167841 CRC32 0x990be3e2 	Query	thread_id=7	exec_time=678	error_code=0
SET TIMESTAMP=1493437598/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','41','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 167841
#170429 10:46:38 server id 21  end_log_pos 167937 CRC32 0x51837937 	Query	thread_id=7	exec_time=678	error_code=0
SET TIMESTAMP=1493437598/*!*/;
COMMIT
/*!*/;
# at 167937
#170429 10:46:38 server id 21  end_log_pos 168032 CRC32 0x37d3458e 	Query	thread_id=7	exec_time=678	error_code=0
SET TIMESTAMP=1493437598/*!*/;
BEGIN
/*!*/;
# at 168032
#170429 10:46:38 server id 21  end_log_pos 168204 CRC32 0xca12840a 	Query	thread_id=7	exec_time=678	error_code=0
SET TIMESTAMP=1493437598/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82082'
/*!*/;
# at 168204
#170429 10:46:38 server id 21  end_log_pos 168300 CRC32 0xa1c33638 	Query	thread_id=7	exec_time=678	error_code=0
SET TIMESTAMP=1493437598/*!*/;
COMMIT
/*!*/;
# at 168300
#170429 10:47:07 server id 21  end_log_pos 168395 CRC32 0x00b17939 	Query	thread_id=7	exec_time=649	error_code=0
SET TIMESTAMP=1493437627/*!*/;
BEGIN
/*!*/;
# at 168395
# at 168427
#170429 10:47:07 server id 21  end_log_pos 168427 CRC32 0x80b44aae 	Intvar
SET INSERT_ID=82083/*!*/;
#170429 10:47:07 server id 21  end_log_pos 168674 CRC32 0x5fc23ba4 	Query	thread_id=7	exec_time=649	error_code=0
SET TIMESTAMP=1493437627/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','445','1.00000000000000000e+000','8.00000000000000000e+000','4')
/*!*/;
# at 168674
#170429 10:47:07 server id 21  end_log_pos 168770 CRC32 0x0561ea63 	Query	thread_id=7	exec_time=649	error_code=0
SET TIMESTAMP=1493437627/*!*/;
COMMIT
/*!*/;
# at 168770
#170429 10:47:12 server id 21  end_log_pos 168865 CRC32 0x7dc5fd6e 	Query	thread_id=7	exec_time=644	error_code=0
SET TIMESTAMP=1493437632/*!*/;
BEGIN
/*!*/;
# at 168865
# at 168897
#170429 10:47:12 server id 21  end_log_pos 168897 CRC32 0xcb3b1e6d 	Intvar
SET INSERT_ID=82084/*!*/;
#170429 10:47:12 server id 21  end_log_pos 169144 CRC32 0x95743ce6 	Query	thread_id=7	exec_time=644	error_code=0
SET TIMESTAMP=1493437632/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','381','1.00000000000000000e+000','5.00000000000000000e+000','5')
/*!*/;
# at 169144
#170429 10:47:12 server id 21  end_log_pos 169240 CRC32 0x1daeaf1c 	Query	thread_id=7	exec_time=644	error_code=0
SET TIMESTAMP=1493437632/*!*/;
COMMIT
/*!*/;
# at 169240
#170429 10:47:18 server id 21  end_log_pos 169335 CRC32 0xbb954203 	Query	thread_id=7	exec_time=638	error_code=0
SET TIMESTAMP=1493437638/*!*/;
BEGIN
/*!*/;
# at 169335
# at 169367
#170429 10:47:18 server id 21  end_log_pos 169367 CRC32 0x568c6bcb 	Intvar
SET INSERT_ID=82085/*!*/;
#170429 10:47:18 server id 21  end_log_pos 169613 CRC32 0x6cdf0a16 	Query	thread_id=7	exec_time=638	error_code=0
SET TIMESTAMP=1493437638/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','79','1.00000000000000000e+000','1.50000000000000000e+000','6')
/*!*/;
# at 169613
#170429 10:47:18 server id 21  end_log_pos 169709 CRC32 0x86cff8aa 	Query	thread_id=7	exec_time=638	error_code=0
SET TIMESTAMP=1493437638/*!*/;
COMMIT
/*!*/;
# at 169709
#170429 10:47:18 server id 21  end_log_pos 169804 CRC32 0x0a5b921e 	Query	thread_id=7	exec_time=638	error_code=0
SET TIMESTAMP=1493437638/*!*/;
BEGIN
/*!*/;
# at 169804
#170429 10:47:18 server id 21  end_log_pos 169976 CRC32 0xc544a81f 	Query	thread_id=7	exec_time=638	error_code=0
SET TIMESTAMP=1493437638/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82085'
/*!*/;
# at 169976
#170429 10:47:18 server id 21  end_log_pos 170072 CRC32 0xe79d2b47 	Query	thread_id=7	exec_time=638	error_code=0
SET TIMESTAMP=1493437638/*!*/;
COMMIT
/*!*/;
# at 170072
#170429 10:47:19 server id 21  end_log_pos 170167 CRC32 0xa0c1b2f1 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
BEGIN
/*!*/;
# at 170167
#170429 10:47:19 server id 21  end_log_pos 170339 CRC32 0x4f157c8b 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82085'
/*!*/;
# at 170339
#170429 10:47:19 server id 21  end_log_pos 170435 CRC32 0xb7d1dd8a 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
COMMIT
/*!*/;
# at 170435
#170429 10:47:19 server id 21  end_log_pos 170530 CRC32 0xff9cb123 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
BEGIN
/*!*/;
# at 170530
#170429 10:47:19 server id 21  end_log_pos 170702 CRC32 0xd3a7853b 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
UPDATE `oms_sale_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '82085'
/*!*/;
# at 170702
#170429 10:47:19 server id 21  end_log_pos 170798 CRC32 0x096ca699 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
COMMIT
/*!*/;
# at 170798
#170429 10:47:19 server id 21  end_log_pos 170893 CRC32 0x2d432bd3 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
BEGIN
/*!*/;
# at 170893
#170429 10:47:19 server id 21  end_log_pos 171065 CRC32 0xf3610ab8 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
UPDATE `oms_sale_detail` SET `qty`='5.00000000000000000e+000' WHERE `id` = '82085'
/*!*/;
# at 171065
#170429 10:47:19 server id 21  end_log_pos 171161 CRC32 0x82b325df 	Query	thread_id=7	exec_time=637	error_code=0
SET TIMESTAMP=1493437639/*!*/;
COMMIT
/*!*/;
# at 171161
#170429 10:47:31 server id 21  end_log_pos 171256 CRC32 0x05f8de33 	Query	thread_id=7	exec_time=625	error_code=0
SET TIMESTAMP=1493437651/*!*/;
BEGIN
/*!*/;
# at 171256
# at 171288
#170429 10:47:31 server id 21  end_log_pos 171288 CRC32 0xed689981 	Intvar
SET INSERT_ID=82086/*!*/;
#170429 10:47:31 server id 21  end_log_pos 171534 CRC32 0xe06b08ef 	Query	thread_id=7	exec_time=625	error_code=0
SET TIMESTAMP=1493437651/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','11','1.00000000000000000e+000','5.00000000000000000e+000','7')
/*!*/;
# at 171534
#170429 10:47:31 server id 21  end_log_pos 171630 CRC32 0x9bc7d8f1 	Query	thread_id=7	exec_time=625	error_code=0
SET TIMESTAMP=1493437651/*!*/;
COMMIT
/*!*/;
# at 171630
#170429 10:47:32 server id 21  end_log_pos 171725 CRC32 0x1d935838 	Query	thread_id=7	exec_time=624	error_code=0
SET TIMESTAMP=1493437652/*!*/;
BEGIN
/*!*/;
# at 171725
#170429 10:47:32 server id 21  end_log_pos 171897 CRC32 0xf75981ff 	Query	thread_id=7	exec_time=624	error_code=0
SET TIMESTAMP=1493437652/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82086'
/*!*/;
# at 171897
#170429 10:47:32 server id 21  end_log_pos 171993 CRC32 0xd502b041 	Query	thread_id=7	exec_time=624	error_code=0
SET TIMESTAMP=1493437652/*!*/;
COMMIT
/*!*/;
# at 171993
#170429 10:47:34 server id 21  end_log_pos 172088 CRC32 0x7f63b8f3 	Query	thread_id=7	exec_time=622	error_code=0
SET TIMESTAMP=1493437654/*!*/;
BEGIN
/*!*/;
# at 172088
# at 172120
#170429 10:47:34 server id 21  end_log_pos 172120 CRC32 0xf077dfe4 	Intvar
SET INSERT_ID=82087/*!*/;
#170429 10:47:34 server id 21  end_log_pos 172365 CRC32 0x515b1780 	Query	thread_id=7	exec_time=622	error_code=0
SET TIMESTAMP=1493437654/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','9','1.00000000000000000e+000','5.00000000000000000e+000','8')
/*!*/;
# at 172365
#170429 10:47:34 server id 21  end_log_pos 172461 CRC32 0x014624fa 	Query	thread_id=7	exec_time=622	error_code=0
SET TIMESTAMP=1493437654/*!*/;
COMMIT
/*!*/;
# at 172461
#170429 10:47:36 server id 21  end_log_pos 172556 CRC32 0x41caa8b4 	Query	thread_id=7	exec_time=620	error_code=0
SET TIMESTAMP=1493437656/*!*/;
BEGIN
/*!*/;
# at 172556
#170429 10:47:36 server id 21  end_log_pos 172728 CRC32 0x2716bf52 	Query	thread_id=7	exec_time=620	error_code=0
SET TIMESTAMP=1493437656/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82087'
/*!*/;
# at 172728
#170429 10:47:36 server id 21  end_log_pos 172824 CRC32 0x315026ba 	Query	thread_id=7	exec_time=620	error_code=0
SET TIMESTAMP=1493437656/*!*/;
COMMIT
/*!*/;
# at 172824
#170429 10:47:39 server id 21  end_log_pos 172919 CRC32 0x05a78f24 	Query	thread_id=7	exec_time=617	error_code=0
SET TIMESTAMP=1493437659/*!*/;
BEGIN
/*!*/;
# at 172919
# at 172951
#170429 10:47:39 server id 21  end_log_pos 172951 CRC32 0x8f0f4149 	Intvar
SET INSERT_ID=82088/*!*/;
#170429 10:47:39 server id 21  end_log_pos 173197 CRC32 0xeb9100c1 	Query	thread_id=7	exec_time=617	error_code=0
SET TIMESTAMP=1493437659/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','12','1.00000000000000000e+000','5.00000000000000000e+000','9')
/*!*/;
# at 173197
#170429 10:47:39 server id 21  end_log_pos 173293 CRC32 0x63152b1a 	Query	thread_id=7	exec_time=617	error_code=0
SET TIMESTAMP=1493437659/*!*/;
COMMIT
/*!*/;
# at 173293
#170429 10:47:39 server id 21  end_log_pos 173388 CRC32 0x05362fd3 	Query	thread_id=7	exec_time=617	error_code=0
SET TIMESTAMP=1493437659/*!*/;
BEGIN
/*!*/;
# at 173388
#170429 10:47:39 server id 21  end_log_pos 173560 CRC32 0xd976c760 	Query	thread_id=7	exec_time=617	error_code=0
SET TIMESTAMP=1493437659/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82088'
/*!*/;
# at 173560
#170429 10:47:39 server id 21  end_log_pos 173656 CRC32 0xc2f504cd 	Query	thread_id=7	exec_time=617	error_code=0
SET TIMESTAMP=1493437659/*!*/;
COMMIT
/*!*/;
# at 173656
#170429 10:47:47 server id 21  end_log_pos 173751 CRC32 0xecb45044 	Query	thread_id=7	exec_time=609	error_code=0
SET TIMESTAMP=1493437667/*!*/;
BEGIN
/*!*/;
# at 173751
# at 173783
#170429 10:47:47 server id 21  end_log_pos 173783 CRC32 0x2db2ce5f 	Intvar
SET INSERT_ID=82089/*!*/;
#170429 10:47:47 server id 21  end_log_pos 174030 CRC32 0x4453ea4e 	Query	thread_id=7	exec_time=609	error_code=0
SET TIMESTAMP=1493437667/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','47','1.00000000000000000e+000','5.00000000000000000e+000','10')
/*!*/;
# at 174030
#170429 10:47:47 server id 21  end_log_pos 174126 CRC32 0x8f3a7e67 	Query	thread_id=7	exec_time=609	error_code=0
SET TIMESTAMP=1493437667/*!*/;
COMMIT
/*!*/;
# at 174126
#170429 10:47:47 server id 21  end_log_pos 174221 CRC32 0x070fa965 	Query	thread_id=7	exec_time=610	error_code=0
SET TIMESTAMP=1493437667/*!*/;
BEGIN
/*!*/;
# at 174221
#170429 10:47:47 server id 21  end_log_pos 174393 CRC32 0xb5afaedd 	Query	thread_id=7	exec_time=610	error_code=0
SET TIMESTAMP=1493437667/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82089'
/*!*/;
# at 174393
#170429 10:47:47 server id 21  end_log_pos 174489 CRC32 0xc0c201f9 	Query	thread_id=7	exec_time=610	error_code=0
SET TIMESTAMP=1493437667/*!*/;
COMMIT
/*!*/;
# at 174489
#170429 10:47:48 server id 21  end_log_pos 174584 CRC32 0x919caca3 	Query	thread_id=7	exec_time=609	error_code=0
SET TIMESTAMP=1493437668/*!*/;
BEGIN
/*!*/;
# at 174584
#170429 10:47:48 server id 21  end_log_pos 174756 CRC32 0xd83ab34f 	Query	thread_id=7	exec_time=609	error_code=0
SET TIMESTAMP=1493437668/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82089'
/*!*/;
# at 174756
#170429 10:47:48 server id 21  end_log_pos 174852 CRC32 0x4e20341b 	Query	thread_id=7	exec_time=609	error_code=0
SET TIMESTAMP=1493437668/*!*/;
COMMIT
/*!*/;
# at 174852
#170429 10:47:54 server id 21  end_log_pos 174947 CRC32 0xd7cf1572 	Query	thread_id=7	exec_time=603	error_code=0
SET TIMESTAMP=1493437674/*!*/;
BEGIN
/*!*/;
# at 174947
# at 174979
#170429 10:47:54 server id 21  end_log_pos 174979 CRC32 0x1c382d43 	Intvar
SET INSERT_ID=82090/*!*/;
#170429 10:47:54 server id 21  end_log_pos 175226 CRC32 0xe0bfc4e9 	Query	thread_id=7	exec_time=603	error_code=0
SET TIMESTAMP=1493437674/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','48','1.00000000000000000e+000','5.00000000000000000e+000','11')
/*!*/;
# at 175226
#170429 10:47:54 server id 21  end_log_pos 175322 CRC32 0xf4a6ef9e 	Query	thread_id=7	exec_time=603	error_code=0
SET TIMESTAMP=1493437674/*!*/;
COMMIT
/*!*/;
# at 175322
#170429 10:47:55 server id 21  end_log_pos 175417 CRC32 0x3cbbae8d 	Query	thread_id=7	exec_time=602	error_code=0
SET TIMESTAMP=1493437675/*!*/;
BEGIN
/*!*/;
# at 175417
#170429 10:47:55 server id 21  end_log_pos 175589 CRC32 0xde8c1570 	Query	thread_id=7	exec_time=602	error_code=0
SET TIMESTAMP=1493437675/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82090'
/*!*/;
# at 175589
#170429 10:47:55 server id 21  end_log_pos 175685 CRC32 0xfc9100c1 	Query	thread_id=7	exec_time=602	error_code=0
SET TIMESTAMP=1493437675/*!*/;
COMMIT
/*!*/;
# at 175685
#170429 10:47:59 server id 21  end_log_pos 175780 CRC32 0x45db53d8 	Query	thread_id=7	exec_time=598	error_code=0
SET TIMESTAMP=1493437679/*!*/;
BEGIN
/*!*/;
# at 175780
# at 175812
#170429 10:47:59 server id 21  end_log_pos 175812 CRC32 0x02a93ebe 	Intvar
SET INSERT_ID=82091/*!*/;
#170429 10:47:59 server id 21  end_log_pos 176059 CRC32 0x7ea44372 	Query	thread_id=7	exec_time=598	error_code=0
SET TIMESTAMP=1493437679/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','49','1.00000000000000000e+000','5.00000000000000000e+000','12')
/*!*/;
# at 176059
#170429 10:47:59 server id 21  end_log_pos 176155 CRC32 0x06e66c99 	Query	thread_id=7	exec_time=598	error_code=0
SET TIMESTAMP=1493437679/*!*/;
COMMIT
/*!*/;
# at 176155
#170429 10:47:59 server id 21  end_log_pos 176250 CRC32 0x3a73cefa 	Query	thread_id=7	exec_time=598	error_code=0
SET TIMESTAMP=1493437679/*!*/;
BEGIN
/*!*/;
# at 176250
#170429 10:47:59 server id 21  end_log_pos 176422 CRC32 0x0009d693 	Query	thread_id=7	exec_time=598	error_code=0
SET TIMESTAMP=1493437679/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82091'
/*!*/;
# at 176422
#170429 10:47:59 server id 21  end_log_pos 176518 CRC32 0x81a80e07 	Query	thread_id=7	exec_time=598	error_code=0
SET TIMESTAMP=1493437679/*!*/;
COMMIT
/*!*/;
# at 176518
#170429 10:48:03 server id 21  end_log_pos 176613 CRC32 0xa376aebd 	Query	thread_id=7	exec_time=594	error_code=0
SET TIMESTAMP=1493437683/*!*/;
BEGIN
/*!*/;
# at 176613
# at 176645
#170429 10:48:03 server id 21  end_log_pos 176645 CRC32 0x698b0784 	Intvar
SET INSERT_ID=82092/*!*/;
#170429 10:48:03 server id 21  end_log_pos 176892 CRC32 0xf9b4c7e9 	Query	thread_id=7	exec_time=594	error_code=0
SET TIMESTAMP=1493437683/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','13','1.00000000000000000e+000','3.00000000000000000e+000','13')
/*!*/;
# at 176892
#170429 10:48:03 server id 21  end_log_pos 176988 CRC32 0x42c4cb37 	Query	thread_id=7	exec_time=594	error_code=0
SET TIMESTAMP=1493437683/*!*/;
COMMIT
/*!*/;
# at 176988
#170429 10:48:03 server id 21  end_log_pos 177083 CRC32 0x1c57c206 	Query	thread_id=7	exec_time=594	error_code=0
SET TIMESTAMP=1493437683/*!*/;
BEGIN
/*!*/;
# at 177083
#170429 10:48:03 server id 21  end_log_pos 177255 CRC32 0xe6d88019 	Query	thread_id=7	exec_time=594	error_code=0
SET TIMESTAMP=1493437683/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82092'
/*!*/;
# at 177255
#170429 10:48:03 server id 21  end_log_pos 177351 CRC32 0xc6b5e213 	Query	thread_id=7	exec_time=594	error_code=0
SET TIMESTAMP=1493437683/*!*/;
COMMIT
/*!*/;
# at 177351
#170429 10:48:05 server id 21  end_log_pos 177446 CRC32 0x54b65ac9 	Query	thread_id=7	exec_time=592	error_code=0
SET TIMESTAMP=1493437685/*!*/;
BEGIN
/*!*/;
# at 177446
# at 177478
#170429 10:48:05 server id 21  end_log_pos 177478 CRC32 0x1ed6b290 	Intvar
SET INSERT_ID=82093/*!*/;
#170429 10:48:05 server id 21  end_log_pos 177724 CRC32 0xda77d019 	Query	thread_id=7	exec_time=592	error_code=0
SET TIMESTAMP=1493437685/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','4','1.00000000000000000e+000','3.00000000000000000e+000','14')
/*!*/;
# at 177724
#170429 10:48:05 server id 21  end_log_pos 177820 CRC32 0x34f33130 	Query	thread_id=7	exec_time=592	error_code=0
SET TIMESTAMP=1493437685/*!*/;
COMMIT
/*!*/;
# at 177820
#170429 10:48:06 server id 21  end_log_pos 177915 CRC32 0x9622de7c 	Query	thread_id=7	exec_time=591	error_code=0
SET TIMESTAMP=1493437686/*!*/;
BEGIN
/*!*/;
# at 177915
#170429 10:48:06 server id 21  end_log_pos 178087 CRC32 0x0c19575a 	Query	thread_id=7	exec_time=591	error_code=0
SET TIMESTAMP=1493437686/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82093'
/*!*/;
# at 178087
#170429 10:48:06 server id 21  end_log_pos 178183 CRC32 0x98f9b916 	Query	thread_id=7	exec_time=591	error_code=0
SET TIMESTAMP=1493437686/*!*/;
COMMIT
/*!*/;
# at 178183
#170429 10:48:08 server id 21  end_log_pos 178278 CRC32 0xd372e2b3 	Query	thread_id=7	exec_time=589	error_code=0
SET TIMESTAMP=1493437688/*!*/;
BEGIN
/*!*/;
# at 178278
# at 178310
#170429 10:48:08 server id 21  end_log_pos 178310 CRC32 0xa912af6f 	Intvar
SET INSERT_ID=82094/*!*/;
#170429 10:48:08 server id 21  end_log_pos 178556 CRC32 0xde3d0cf8 	Query	thread_id=7	exec_time=589	error_code=0
SET TIMESTAMP=1493437688/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','1','1.00000000000000000e+000','3.00000000000000000e+000','15')
/*!*/;
# at 178556
#170429 10:48:08 server id 21  end_log_pos 178652 CRC32 0xa49347a1 	Query	thread_id=7	exec_time=589	error_code=0
SET TIMESTAMP=1493437688/*!*/;
COMMIT
/*!*/;
# at 178652
#170429 10:48:09 server id 21  end_log_pos 178747 CRC32 0x14a3419e 	Query	thread_id=7	exec_time=588	error_code=0
SET TIMESTAMP=1493437689/*!*/;
BEGIN
/*!*/;
# at 178747
#170429 10:48:09 server id 21  end_log_pos 178919 CRC32 0xb4522024 	Query	thread_id=7	exec_time=588	error_code=0
SET TIMESTAMP=1493437689/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82094'
/*!*/;
# at 178919
#170429 10:48:09 server id 21  end_log_pos 179015 CRC32 0x583073fb 	Query	thread_id=7	exec_time=588	error_code=0
SET TIMESTAMP=1493437689/*!*/;
COMMIT
/*!*/;
# at 179015
#170429 10:48:10 server id 21  end_log_pos 179110 CRC32 0x2939794f 	Query	thread_id=7	exec_time=587	error_code=0
SET TIMESTAMP=1493437690/*!*/;
BEGIN
/*!*/;
# at 179110
# at 179142
#170429 10:48:10 server id 21  end_log_pos 179142 CRC32 0xd0490b6d 	Intvar
SET INSERT_ID=82095/*!*/;
#170429 10:48:10 server id 21  end_log_pos 179388 CRC32 0xc547413d 	Query	thread_id=7	exec_time=587	error_code=0
SET TIMESTAMP=1493437690/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','5','1.00000000000000000e+000','3.00000000000000000e+000','16')
/*!*/;
# at 179388
#170429 10:48:10 server id 21  end_log_pos 179484 CRC32 0x8d98da35 	Query	thread_id=7	exec_time=587	error_code=0
SET TIMESTAMP=1493437690/*!*/;
COMMIT
/*!*/;
# at 179484
#170429 10:48:22 server id 21  end_log_pos 179579 CRC32 0xd2b00c80 	Query	thread_id=7	exec_time=575	error_code=0
SET TIMESTAMP=1493437702/*!*/;
BEGIN
/*!*/;
# at 179579
# at 179611
#170429 10:48:22 server id 21  end_log_pos 179611 CRC32 0x0012490f 	Intvar
SET INSERT_ID=82096/*!*/;
#170429 10:48:22 server id 21  end_log_pos 179858 CRC32 0x1f00d7f7 	Query	thread_id=7	exec_time=575	error_code=0
SET TIMESTAMP=1493437702/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','27','1.00000000000000000e+000','5.00000000000000000e+000','17')
/*!*/;
# at 179858
#170429 10:48:22 server id 21  end_log_pos 179954 CRC32 0x4aadf61b 	Query	thread_id=7	exec_time=575	error_code=0
SET TIMESTAMP=1493437702/*!*/;
COMMIT
/*!*/;
# at 179954
#170429 10:48:30 server id 21  end_log_pos 180049 CRC32 0x6f6512a6 	Query	thread_id=7	exec_time=567	error_code=0
SET TIMESTAMP=1493437710/*!*/;
BEGIN
/*!*/;
# at 180049
# at 180081
#170429 10:48:30 server id 21  end_log_pos 180081 CRC32 0x4bcfad9a 	Intvar
SET INSERT_ID=82097/*!*/;
#170429 10:48:30 server id 21  end_log_pos 180328 CRC32 0xaa53f003 	Query	thread_id=7	exec_time=567	error_code=0
SET TIMESTAMP=1493437710/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','26','1.00000000000000000e+000','5.00000000000000000e+000','18')
/*!*/;
# at 180328
#170429 10:48:30 server id 21  end_log_pos 180424 CRC32 0x55f492d8 	Query	thread_id=7	exec_time=567	error_code=0
SET TIMESTAMP=1493437710/*!*/;
COMMIT
/*!*/;
# at 180424
#170429 10:48:36 server id 21  end_log_pos 180519 CRC32 0x034fdca8 	Query	thread_id=7	exec_time=561	error_code=0
SET TIMESTAMP=1493437716/*!*/;
BEGIN
/*!*/;
# at 180519
#170429 10:48:36 server id 21  end_log_pos 180905 CRC32 0x6c619c03 	Query	thread_id=7	exec_time=561	error_code=0
SET TIMESTAMP=1493437716/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000'  WHERE `id` = '82097' AND `main_id` = '34509' AND `product` = '26' AND `qty` = '1.00000000000000000e+000' AND `price` = '5.00000000000000000e+000' AND `discount` = '0.00000000000000000e+000' AND `inventory` IS NULL AND `number` = '18'
/*!*/;
# at 180905
#170429 10:48:36 server id 21  end_log_pos 181001 CRC32 0xf0fe3cfc 	Query	thread_id=7	exec_time=561	error_code=0
SET TIMESTAMP=1493437716/*!*/;
COMMIT
/*!*/;
# at 181001
#170429 10:48:41 server id 21  end_log_pos 181096 CRC32 0x087dd4d6 	Query	thread_id=7	exec_time=556	error_code=0
SET TIMESTAMP=1493437721/*!*/;
BEGIN
/*!*/;
# at 181096
# at 181128
#170429 10:48:41 server id 21  end_log_pos 181128 CRC32 0x242597ea 	Intvar
SET INSERT_ID=82098/*!*/;
#170429 10:48:41 server id 21  end_log_pos 181375 CRC32 0x0b5442f3 	Query	thread_id=7	exec_time=556	error_code=0
SET TIMESTAMP=1493437721/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34509','82','1.00000000000000000e+000','3.00000000000000000e+000','19')
/*!*/;
# at 181375
#170429 10:48:41 server id 21  end_log_pos 181471 CRC32 0x74fcbf42 	Query	thread_id=7	exec_time=556	error_code=0
SET TIMESTAMP=1493437721/*!*/;
COMMIT
/*!*/;
# at 181471
#170429 10:48:43 server id 21  end_log_pos 181566 CRC32 0x58e0e753 	Query	thread_id=7	exec_time=554	error_code=0
SET TIMESTAMP=1493437723/*!*/;
BEGIN
/*!*/;
# at 181566
#170429 10:48:43 server id 21  end_log_pos 182189 CRC32 0x71a6b5c1 	Query	thread_id=7	exec_time=554	error_code=0
SET TIMESTAMP=1493437723/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 10:46:26',`total`='1.49500000000000000e+002'  WHERE `id` = '34509' AND `inv_num` = '562' AND `inv_refer` = '201704-00562' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 182189
#170429 10:48:43 server id 21  end_log_pos 182285 CRC32 0x2e6804ce 	Query	thread_id=7	exec_time=554	error_code=0
SET TIMESTAMP=1493437723/*!*/;
COMMIT
/*!*/;
# at 182285
#170429 10:48:45 server id 21  end_log_pos 182380 CRC32 0x909c4419 	Query	thread_id=7	exec_time=552	error_code=0
SET TIMESTAMP=1493437725/*!*/;
BEGIN
/*!*/;
# at 182380
# at 182412
#170429 10:48:45 server id 21  end_log_pos 182412 CRC32 0xa894a8c0 	Intvar
SET INSERT_ID=13109/*!*/;
#170429 10:48:45 server id 21  end_log_pos 182585 CRC32 0x21783d74 	Query	thread_id=7	exec_time=552	error_code=0
SET TIMESTAMP=1493437725/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','79','1')
/*!*/;
# at 182585
#170429 10:48:45 server id 21  end_log_pos 182681 CRC32 0xc1a09555 	Query	thread_id=7	exec_time=552	error_code=0
SET TIMESTAMP=1493437725/*!*/;
COMMIT
/*!*/;
# at 182681
#170429 10:48:49 server id 21  end_log_pos 182776 CRC32 0x77b57959 	Query	thread_id=7	exec_time=548	error_code=0
SET TIMESTAMP=1493437729/*!*/;
BEGIN
/*!*/;
# at 182776
# at 182808
#170429 10:48:49 server id 21  end_log_pos 182808 CRC32 0x61740ff5 	Intvar
SET INSERT_ID=13110/*!*/;
#170429 10:48:49 server id 21  end_log_pos 182981 CRC32 0x20c53c34 	Query	thread_id=7	exec_time=548	error_code=0
SET TIMESTAMP=1493437729/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','44','1')
/*!*/;
# at 182981
#170429 10:48:49 server id 21  end_log_pos 183077 CRC32 0x9135b0b1 	Query	thread_id=7	exec_time=548	error_code=0
SET TIMESTAMP=1493437729/*!*/;
COMMIT
/*!*/;
# at 183077
#170429 10:48:54 server id 21  end_log_pos 183172 CRC32 0x6ed34985 	Query	thread_id=7	exec_time=543	error_code=0
SET TIMESTAMP=1493437734/*!*/;
BEGIN
/*!*/;
# at 183172
# at 183204
#170429 10:48:54 server id 21  end_log_pos 183204 CRC32 0xf30de5c0 	Intvar
SET INSERT_ID=13111/*!*/;
#170429 10:48:54 server id 21  end_log_pos 183377 CRC32 0xa5bc1cee 	Query	thread_id=7	exec_time=543	error_code=0
SET TIMESTAMP=1493437734/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','44','1')
/*!*/;
# at 183377
#170429 10:48:54 server id 21  end_log_pos 183473 CRC32 0x8263f701 	Query	thread_id=7	exec_time=543	error_code=0
SET TIMESTAMP=1493437734/*!*/;
COMMIT
/*!*/;
# at 183473
#170429 10:48:59 server id 21  end_log_pos 183568 CRC32 0x94685896 	Query	thread_id=7	exec_time=538	error_code=0
SET TIMESTAMP=1493437739/*!*/;
BEGIN
/*!*/;
# at 183568
# at 183600
#170429 10:48:59 server id 21  end_log_pos 183600 CRC32 0x58bb57cc 	Intvar
SET INSERT_ID=13112/*!*/;
#170429 10:48:59 server id 21  end_log_pos 183773 CRC32 0xe16a4301 	Query	thread_id=7	exec_time=538	error_code=0
SET TIMESTAMP=1493437739/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','44','1')
/*!*/;
# at 183773
#170429 10:48:59 server id 21  end_log_pos 183869 CRC32 0x10a08905 	Query	thread_id=7	exec_time=538	error_code=0
SET TIMESTAMP=1493437739/*!*/;
COMMIT
/*!*/;
# at 183869
#170429 10:49:02 server id 21  end_log_pos 183964 CRC32 0x6f071647 	Query	thread_id=7	exec_time=535	error_code=0
SET TIMESTAMP=1493437742/*!*/;
BEGIN
/*!*/;
# at 183964
# at 183996
#170429 10:49:02 server id 21  end_log_pos 183996 CRC32 0xe46022bf 	Intvar
SET INSERT_ID=13113/*!*/;
#170429 10:49:02 server id 21  end_log_pos 184168 CRC32 0x2fc84f75 	Query	thread_id=7	exec_time=535	error_code=0
SET TIMESTAMP=1493437742/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','5','1')
/*!*/;
# at 184168
#170429 10:49:02 server id 21  end_log_pos 184264 CRC32 0x5c7eccbb 	Query	thread_id=7	exec_time=535	error_code=0
SET TIMESTAMP=1493437742/*!*/;
COMMIT
/*!*/;
# at 184264
#170429 10:49:18 server id 21  end_log_pos 184359 CRC32 0x48a12bcd 	Query	thread_id=7	exec_time=519	error_code=0
SET TIMESTAMP=1493437758/*!*/;
BEGIN
/*!*/;
# at 184359
#170429 10:49:18 server id 21  end_log_pos 184531 CRC32 0x7b60b13b 	Query	thread_id=7	exec_time=519	error_code=0
SET TIMESTAMP=1493437758/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82092'
/*!*/;
# at 184531
#170429 10:49:18 server id 21  end_log_pos 184627 CRC32 0x188084a1 	Query	thread_id=7	exec_time=519	error_code=0
SET TIMESTAMP=1493437758/*!*/;
COMMIT
/*!*/;
# at 184627
#170429 10:49:26 server id 21  end_log_pos 184722 CRC32 0xbae861ea 	Query	thread_id=7	exec_time=511	error_code=0
SET TIMESTAMP=1493437766/*!*/;
BEGIN
/*!*/;
# at 184722
#170429 10:49:26 server id 21  end_log_pos 185353 CRC32 0x669f9741 	Query	thread_id=7	exec_time=511	error_code=0
SET TIMESTAMP=1493437766/*!*/;
UPDATE `oms_sale` SET `total`='1.52500000000000000e+002'  WHERE `id` = '34509' AND `inv_num` = '562' AND `inv_refer` = '201704-00562' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:46:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.49500000000000000e+002' AND `guide_name` IS NULL
/*!*/;
# at 185353
#170429 10:49:26 server id 21  end_log_pos 185449 CRC32 0xf46e932c 	Query	thread_id=7	exec_time=511	error_code=0
SET TIMESTAMP=1493437766/*!*/;
COMMIT
/*!*/;
# at 185449
#170429 10:49:32 server id 21  end_log_pos 185544 CRC32 0x07f90aaf 	Query	thread_id=7	exec_time=505	error_code=0
SET TIMESTAMP=1493437772/*!*/;
BEGIN
/*!*/;
# at 185544
# at 185576
#170429 10:49:32 server id 21  end_log_pos 185576 CRC32 0x82245c20 	Intvar
SET INSERT_ID=13114/*!*/;
#170429 10:49:32 server id 21  end_log_pos 185750 CRC32 0x3f5c3761 	Query	thread_id=7	exec_time=505	error_code=0
SET TIMESTAMP=1493437772/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','696','1')
/*!*/;
# at 185750
#170429 10:49:32 server id 21  end_log_pos 185846 CRC32 0xd7bb4331 	Query	thread_id=7	exec_time=505	error_code=0
SET TIMESTAMP=1493437772/*!*/;
COMMIT
/*!*/;
# at 185846
#170429 10:49:48 server id 21  end_log_pos 185941 CRC32 0x8e99bd5f 	Query	thread_id=7	exec_time=489	error_code=0
SET TIMESTAMP=1493437788/*!*/;
BEGIN
/*!*/;
# at 185941
#170429 10:49:48 server id 21  end_log_pos 186594 CRC32 0xab853770 	Query	thread_id=7	exec_time=489	error_code=0
SET TIMESTAMP=1493437788/*!*/;
UPDATE `oms_sale` SET `bill`='1.52500000000000000e+002',`pay_by`='Credit Card'  WHERE `id` = '34509' AND `inv_num` = '562' AND `inv_refer` = '201704-00562' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:46:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.52500000000000000e+002' AND `guide_name` IS NULL
/*!*/;
# at 186594
#170429 10:49:48 server id 21  end_log_pos 186690 CRC32 0x3ac9019d 	Query	thread_id=7	exec_time=489	error_code=0
SET TIMESTAMP=1493437788/*!*/;
COMMIT
/*!*/;
# at 186690
#170429 10:50:52 server id 21  end_log_pos 186785 CRC32 0x4af4f0be 	Query	thread_id=7	exec_time=425	error_code=0
SET TIMESTAMP=1493437852/*!*/;
BEGIN
/*!*/;
# at 186785
#170429 10:50:52 server id 21  end_log_pos 187464 CRC32 0x3867bc55 	Query	thread_id=7	exec_time=425	error_code=0
SET TIMESTAMP=1493437852/*!*/;
UPDATE `oms_sale` SET `nationality`='Euoropean',`age`='33',`gender`='Female'  WHERE `id` = '34509' AND `inv_num` = '562' AND `inv_refer` = '201704-00562' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:46:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.52500000000000000e+002' AND `pay_by` = 'Credit Card' AND `guide_phone` IS NULL AND `total` = '1.52500000000000000e+002' AND `guide_name` IS NULL
/*!*/;
# at 187464
#170429 10:50:52 server id 21  end_log_pos 187560 CRC32 0x7864d963 	Query	thread_id=7	exec_time=425	error_code=0
SET TIMESTAMP=1493437852/*!*/;
COMMIT
/*!*/;
# at 187560
#170429 10:51:11 server id 21  end_log_pos 187655 CRC32 0x8a926677 	Query	thread_id=7	exec_time=406	error_code=0
SET TIMESTAMP=1493437871/*!*/;
BEGIN
/*!*/;
# at 187655
# at 187687
#170429 10:51:11 server id 21  end_log_pos 187687 CRC32 0x760afccb 	Intvar
SET INSERT_ID=34510/*!*/;
#170429 10:51:11 server id 21  end_log_pos 187921 CRC32 0x7141d717 	Query	thread_id=7	exec_time=406	error_code=0
SET TIMESTAMP=1493437871/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('563','201704-00563','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 187921
#170429 10:51:11 server id 21  end_log_pos 188017 CRC32 0x04e56ce2 	Query	thread_id=7	exec_time=406	error_code=0
SET TIMESTAMP=1493437871/*!*/;
COMMIT
/*!*/;
# at 188017
#170429 10:51:11 server id 21  end_log_pos 188112 CRC32 0xe9d44452 	Query	thread_id=7	exec_time=406	error_code=0
SET TIMESTAMP=1493437871/*!*/;
BEGIN
/*!*/;
# at 188112
# at 188144
#170429 10:51:11 server id 21  end_log_pos 188144 CRC32 0x02b03fd6 	Intvar
SET INSERT_ID=82099/*!*/;
#170429 10:51:11 server id 21  end_log_pos 188390 CRC32 0x563e1890 	Query	thread_id=7	exec_time=406	error_code=0
SET TIMESTAMP=1493437871/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34510','69','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 188390
#170429 10:51:11 server id 21  end_log_pos 188486 CRC32 0xd505a5f5 	Query	thread_id=7	exec_time=406	error_code=0
SET TIMESTAMP=1493437871/*!*/;
COMMIT
/*!*/;
# at 188486
#170429 10:51:23 server id 21  end_log_pos 188581 CRC32 0x7e61c9a4 	Query	thread_id=7	exec_time=394	error_code=0
SET TIMESTAMP=1493437883/*!*/;
BEGIN
/*!*/;
# at 188581
# at 188613
#170429 10:51:23 server id 21  end_log_pos 188613 CRC32 0x8a901d05 	Intvar
SET INSERT_ID=82100/*!*/;
#170429 10:51:23 server id 21  end_log_pos 188860 CRC32 0x50260d10 	Query	thread_id=7	exec_time=394	error_code=0
SET TIMESTAMP=1493437883/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34510','137','1.00000000000000000e+000','6.50000000000000000e+000','2')
/*!*/;
# at 188860
#170429 10:51:23 server id 21  end_log_pos 188956 CRC32 0x26727490 	Query	thread_id=7	exec_time=394	error_code=0
SET TIMESTAMP=1493437883/*!*/;
COMMIT
/*!*/;
# at 188956
#170429 10:51:28 server id 21  end_log_pos 189051 CRC32 0x5dde7a46 	Query	thread_id=7	exec_time=389	error_code=0
SET TIMESTAMP=1493437888/*!*/;
BEGIN
/*!*/;
# at 189051
# at 189083
#170429 10:51:28 server id 21  end_log_pos 189083 CRC32 0x8b50ff8e 	Intvar
SET INSERT_ID=82101/*!*/;
#170429 10:51:28 server id 21  end_log_pos 189330 CRC32 0x8bd87ce4 	Query	thread_id=7	exec_time=389	error_code=0
SET TIMESTAMP=1493437888/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34510','138','1.00000000000000000e+000','6.50000000000000000e+000','3')
/*!*/;
# at 189330
#170429 10:51:28 server id 21  end_log_pos 189426 CRC32 0x1812d5e3 	Query	thread_id=7	exec_time=389	error_code=0
SET TIMESTAMP=1493437888/*!*/;
COMMIT
/*!*/;
# at 189426
#170429 10:51:39 server id 21  end_log_pos 189521 CRC32 0xbb3b4a1e 	Query	thread_id=7	exec_time=378	error_code=0
SET TIMESTAMP=1493437899/*!*/;
BEGIN
/*!*/;
# at 189521
#170429 10:51:39 server id 21  end_log_pos 190144 CRC32 0x6eca980e 	Query	thread_id=7	exec_time=378	error_code=0
SET TIMESTAMP=1493437899/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 10:51:11',`total`='1.80000000000000000e+001'  WHERE `id` = '34510' AND `inv_num` = '563' AND `inv_refer` = '201704-00563' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 190144
#170429 10:51:39 server id 21  end_log_pos 190240 CRC32 0x18255ec4 	Query	thread_id=7	exec_time=378	error_code=0
SET TIMESTAMP=1493437899/*!*/;
COMMIT
/*!*/;
# at 190240
#170429 10:51:42 server id 21  end_log_pos 190335 CRC32 0x6e752b3a 	Query	thread_id=7	exec_time=375	error_code=0
SET TIMESTAMP=1493437902/*!*/;
BEGIN
/*!*/;
# at 190335
#170429 10:51:42 server id 21  end_log_pos 190965 CRC32 0x89b36bde 	Query	thread_id=7	exec_time=375	error_code=0
SET TIMESTAMP=1493437902/*!*/;
UPDATE `oms_sale` SET `bill`='2.00000000000000000e+001'  WHERE `id` = '34510' AND `inv_num` = '563' AND `inv_refer` = '201704-00563' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:51:11' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.80000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 190965
#170429 10:51:42 server id 21  end_log_pos 191061 CRC32 0x0720ef72 	Query	thread_id=7	exec_time=375	error_code=0
SET TIMESTAMP=1493437902/*!*/;
COMMIT
/*!*/;
# at 191061
#170429 10:52:23 server id 21  end_log_pos 191156 CRC32 0x3241d59b 	Query	thread_id=7	exec_time=334	error_code=0
SET TIMESTAMP=1493437943/*!*/;
BEGIN
/*!*/;
# at 191156
#170429 10:52:23 server id 21  end_log_pos 191827 CRC32 0x0397b281 	Query	thread_id=7	exec_time=334	error_code=0
SET TIMESTAMP=1493437943/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='28',`gender`='Female'  WHERE `id` = '34510' AND `inv_num` = '563' AND `inv_refer` = '201704-00563' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 10:51:11' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '2.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.80000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 191827
#170429 10:52:23 server id 21  end_log_pos 191923 CRC32 0x421117e6 	Query	thread_id=7	exec_time=334	error_code=0
SET TIMESTAMP=1493437943/*!*/;
COMMIT
/*!*/;
# at 191923
#170429 10:58:36 server id 21  end_log_pos 192018 CRC32 0x04f1e9c6 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438316/*!*/;
BEGIN
/*!*/;
# at 192018
# at 192050
#170429 10:58:36 server id 21  end_log_pos 192050 CRC32 0x7bd93e2c 	Intvar
SET INSERT_ID=13115/*!*/;
#170429 10:58:36 server id 21  end_log_pos 192224 CRC32 0x3a95422b 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438316/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34509','666','1')
/*!*/;
# at 192224
#170429 10:58:36 server id 21  end_log_pos 192320 CRC32 0xa5ccbc55 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438316/*!*/;
COMMIT
/*!*/;
# at 192320
#170429 10:59:10 server id 21  end_log_pos 192415 CRC32 0xa00efff3 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493438350/*!*/;
BEGIN
/*!*/;
# at 192415
# at 192447
#170429 10:59:10 server id 21  end_log_pos 192447 CRC32 0xdf66b700 	Intvar
SET INSERT_ID=34511/*!*/;
#170429 10:59:10 server id 21  end_log_pos 192681 CRC32 0xcf088928 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493438350/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('564','201704-00564','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 192681
#170429 10:59:10 server id 21  end_log_pos 192777 CRC32 0x1a7c4643 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493438350/*!*/;
COMMIT
/*!*/;
# at 192777
#170429 11:01:24 server id 21  end_log_pos 192872 CRC32 0xb672daaa 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438484/*!*/;
BEGIN
/*!*/;
# at 192872
# at 192904
#170429 11:01:24 server id 21  end_log_pos 192904 CRC32 0x7321f553 	Intvar
SET INSERT_ID=82102/*!*/;
#170429 11:01:24 server id 21  end_log_pos 193150 CRC32 0xcb6df7de 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438484/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34511','78','1.00000000000000000e+000','3.00000000000000000e+000','1')
/*!*/;
# at 193150
#170429 11:01:24 server id 21  end_log_pos 193246 CRC32 0x2666ae1c 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438484/*!*/;
COMMIT
/*!*/;
# at 193246
#170429 11:01:24 server id 21  end_log_pos 193341 CRC32 0x541b2213 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438484/*!*/;
BEGIN
/*!*/;
# at 193341
#170429 11:01:24 server id 21  end_log_pos 193513 CRC32 0x7c061ef1 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438484/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82102'
/*!*/;
# at 193513
#170429 11:01:24 server id 21  end_log_pos 193609 CRC32 0x9978fa53 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438484/*!*/;
COMMIT
/*!*/;
# at 193609
#170429 11:01:27 server id 21  end_log_pos 193704 CRC32 0x85512cfc 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493438487/*!*/;
BEGIN
/*!*/;
# at 193704
# at 193736
#170429 11:01:27 server id 21  end_log_pos 193736 CRC32 0xf30de7fa 	Intvar
SET INSERT_ID=82103/*!*/;
#170429 11:01:27 server id 21  end_log_pos 193982 CRC32 0xcc61ac0d 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493438487/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34511','76','1.00000000000000000e+000','3.00000000000000000e+000','2')
/*!*/;
# at 193982
#170429 11:01:27 server id 21  end_log_pos 194078 CRC32 0x59fe6f0e 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493438487/*!*/;
COMMIT
/*!*/;
# at 194078
#170429 11:01:29 server id 21  end_log_pos 194173 CRC32 0x3ac8d3e0 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438489/*!*/;
BEGIN
/*!*/;
# at 194173
# at 194205
#170429 11:01:29 server id 21  end_log_pos 194205 CRC32 0x7e4e8de4 	Intvar
SET INSERT_ID=82104/*!*/;
#170429 11:01:29 server id 21  end_log_pos 194450 CRC32 0x26ec5847 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438489/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34511','4','1.00000000000000000e+000','3.00000000000000000e+000','3')
/*!*/;
# at 194450
#170429 11:01:29 server id 21  end_log_pos 194546 CRC32 0x44a6f030 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438489/*!*/;
COMMIT
/*!*/;
# at 194546
#170429 11:01:40 server id 21  end_log_pos 194641 CRC32 0x08e3a5ba 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438500/*!*/;
BEGIN
/*!*/;
# at 194641
# at 194673
#170429 11:01:40 server id 21  end_log_pos 194673 CRC32 0x171e57b7 	Intvar
SET INSERT_ID=82105/*!*/;
#170429 11:01:40 server id 21  end_log_pos 194920 CRC32 0x36663d67 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438500/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34511','436','1.00000000000000000e+000','3.00000000000000000e+000','4')
/*!*/;
# at 194920
#170429 11:01:40 server id 21  end_log_pos 195016 CRC32 0xc8fd369d 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438500/*!*/;
COMMIT
/*!*/;
# at 195016
#170429 11:01:47 server id 21  end_log_pos 195111 CRC32 0x215d5e61 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493438507/*!*/;
BEGIN
/*!*/;
# at 195111
#170429 11:01:47 server id 21  end_log_pos 195734 CRC32 0x566fd8d1 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493438507/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:01:24',`total`='1.50000000000000000e+001'  WHERE `id` = '34511' AND `inv_num` = '564' AND `inv_refer` = '201704-00564' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 195734
#170429 11:01:47 server id 21  end_log_pos 195830 CRC32 0x3fc3df50 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493438507/*!*/;
COMMIT
/*!*/;
# at 195830
#170429 11:01:48 server id 21  end_log_pos 195925 CRC32 0x8c439dc9 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438508/*!*/;
BEGIN
/*!*/;
# at 195925
# at 195957
#170429 11:01:48 server id 21  end_log_pos 195957 CRC32 0x196926fc 	Intvar
SET INSERT_ID=13116/*!*/;
#170429 11:01:48 server id 21  end_log_pos 196129 CRC32 0x85c73bbc 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438508/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34511','2','1')
/*!*/;
# at 196129
#170429 11:01:48 server id 21  end_log_pos 196225 CRC32 0xe5c3042e 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438508/*!*/;
COMMIT
/*!*/;
# at 196225
#170429 11:02:01 server id 21  end_log_pos 196320 CRC32 0xb8432369 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438521/*!*/;
BEGIN
/*!*/;
# at 196320
#170429 11:02:01 server id 21  end_log_pos 196542 CRC32 0xf839be5a 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438521/*!*/;
UPDATE `oms_sale_gift` SET `product`='3',`qty`='1'  WHERE `id` = '13116' AND `main_id` = '34511' AND `product` = '2' AND `qty` = '1'
/*!*/;
# at 196542
#170429 11:02:01 server id 21  end_log_pos 196638 CRC32 0xaa0a8ab9 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438521/*!*/;
COMMIT
/*!*/;
# at 196638
#170429 11:02:11 server id 21  end_log_pos 196733 CRC32 0x09a49ca9 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438531/*!*/;
BEGIN
/*!*/;
# at 196733
#170429 11:02:11 server id 21  end_log_pos 197363 CRC32 0xa9374b98 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438531/*!*/;
UPDATE `oms_sale` SET `bill`='2.00000000000000000e+001'  WHERE `id` = '34511' AND `inv_num` = '564' AND `inv_refer` = '201704-00564' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:01:24' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 197363
#170429 11:02:11 server id 21  end_log_pos 197459 CRC32 0x7a50f10f 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438531/*!*/;
COMMIT
/*!*/;
# at 197459
#170429 11:02:54 server id 21  end_log_pos 197554 CRC32 0x4f3ccecb 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438574/*!*/;
BEGIN
/*!*/;
# at 197554
#170429 11:02:54 server id 21  end_log_pos 198223 CRC32 0x8f76ed1d 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438574/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Male'  WHERE `id` = '34511' AND `inv_num` = '564' AND `inv_refer` = '201704-00564' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:01:24' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '2.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 198223
#170429 11:02:54 server id 21  end_log_pos 198319 CRC32 0xc82b2f7d 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493438574/*!*/;
COMMIT
/*!*/;
# at 198319
#170429 11:10:32 server id 21  end_log_pos 198414 CRC32 0xebdd4a77 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439032/*!*/;
BEGIN
/*!*/;
# at 198414
# at 198446
#170429 11:10:32 server id 21  end_log_pos 198446 CRC32 0x491b7886 	Intvar
SET INSERT_ID=34512/*!*/;
#170429 11:10:32 server id 21  end_log_pos 198680 CRC32 0x56267ba3 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439032/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('565','201704-00565','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 198680
#170429 11:10:32 server id 21  end_log_pos 198776 CRC32 0xc436dff4 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439032/*!*/;
COMMIT
/*!*/;
# at 198776
#170429 11:10:32 server id 21  end_log_pos 198871 CRC32 0x804fe7b3 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439032/*!*/;
BEGIN
/*!*/;
# at 198871
# at 198903
#170429 11:10:32 server id 21  end_log_pos 198903 CRC32 0x8c590af1 	Intvar
SET INSERT_ID=82106/*!*/;
#170429 11:10:32 server id 21  end_log_pos 199150 CRC32 0xd8ac7553 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439032/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34512','405','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 199150
#170429 11:10:32 server id 21  end_log_pos 199246 CRC32 0x6c3d1e55 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439032/*!*/;
COMMIT
/*!*/;
# at 199246
#170429 11:11:05 server id 21  end_log_pos 199341 CRC32 0x2eb6dba0 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439065/*!*/;
BEGIN
/*!*/;
# at 199341
#170429 11:11:05 server id 21  end_log_pos 199964 CRC32 0x651a7beb 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439065/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:10:32',`total`='5.00000000000000000e+000'  WHERE `id` = '34512' AND `inv_num` = '565' AND `inv_refer` = '201704-00565' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 199964
#170429 11:11:05 server id 21  end_log_pos 200060 CRC32 0x2e0cd0d6 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439065/*!*/;
COMMIT
/*!*/;
# at 200060
#170429 11:11:06 server id 21  end_log_pos 200155 CRC32 0x7441eef4 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439066/*!*/;
BEGIN
/*!*/;
# at 200155
#170429 11:11:06 server id 21  end_log_pos 200785 CRC32 0xdf2bbf14 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439066/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+000'  WHERE `id` = '34512' AND `inv_num` = '565' AND `inv_refer` = '201704-00565' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:10:32' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 200785
#170429 11:11:06 server id 21  end_log_pos 200881 CRC32 0xe89ae600 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439066/*!*/;
COMMIT
/*!*/;
# at 200881
#170429 11:15:19 server id 21  end_log_pos 200976 CRC32 0xde9f5257 	Query	thread_id=7	exec_time=4294967294	error_code=0
SET TIMESTAMP=1493439319/*!*/;
BEGIN
/*!*/;
# at 200976
# at 201008
#170429 11:15:19 server id 21  end_log_pos 201008 CRC32 0x8e3a6ce2 	Intvar
SET INSERT_ID=34513/*!*/;
#170429 11:15:19 server id 21  end_log_pos 201242 CRC32 0xa8a2b726 	Query	thread_id=7	exec_time=4294967294	error_code=0
SET TIMESTAMP=1493439319/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('566','201704-00566','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 201242
#170429 11:15:19 server id 21  end_log_pos 201338 CRC32 0x9da24ac6 	Query	thread_id=7	exec_time=4294967294	error_code=0
SET TIMESTAMP=1493439319/*!*/;
COMMIT
/*!*/;
# at 201338
#170429 11:15:20 server id 21  end_log_pos 201433 CRC32 0xb0b103ac 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493439320/*!*/;
BEGIN
/*!*/;
# at 201433
# at 201465
#170429 11:15:20 server id 21  end_log_pos 201465 CRC32 0x2c490b4c 	Intvar
SET INSERT_ID=82107/*!*/;
#170429 11:15:20 server id 21  end_log_pos 201710 CRC32 0x7163aa5e 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493439320/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34513','1','1.00000000000000000e+000','3.00000000000000000e+000','1')
/*!*/;
# at 201710
#170429 11:15:20 server id 21  end_log_pos 201806 CRC32 0xf0553cbe 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493439320/*!*/;
COMMIT
/*!*/;
# at 201806
#170429 11:15:20 server id 21  end_log_pos 201901 CRC32 0x70c537a9 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493439320/*!*/;
BEGIN
/*!*/;
# at 201901
#170429 11:15:20 server id 21  end_log_pos 202073 CRC32 0x8d96c447 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493439320/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82107'
/*!*/;
# at 202073
#170429 11:15:20 server id 21  end_log_pos 202169 CRC32 0x526745fc 	Query	thread_id=7	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493439320/*!*/;
COMMIT
/*!*/;
# at 202169
#170429 11:15:21 server id 21  end_log_pos 202264 CRC32 0xe41d6db0 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439321/*!*/;
BEGIN
/*!*/;
# at 202264
#170429 11:15:21 server id 21  end_log_pos 202436 CRC32 0xd9cfeffe 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439321/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82107'
/*!*/;
# at 202436
#170429 11:15:21 server id 21  end_log_pos 202532 CRC32 0xcda24401 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439321/*!*/;
COMMIT
/*!*/;
# at 202532
#170429 11:15:25 server id 21  end_log_pos 202627 CRC32 0x7502fdd6 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439325/*!*/;
BEGIN
/*!*/;
# at 202627
# at 202659
#170429 11:15:25 server id 21  end_log_pos 202659 CRC32 0x4cdbfc75 	Intvar
SET INSERT_ID=82108/*!*/;
#170429 11:15:25 server id 21  end_log_pos 202906 CRC32 0x60c41321 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439325/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34513','137','1.00000000000000000e+000','6.50000000000000000e+000','2')
/*!*/;
# at 202906
#170429 11:15:25 server id 21  end_log_pos 203002 CRC32 0x7fbe6180 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439325/*!*/;
COMMIT
/*!*/;
# at 203002
#170429 11:15:28 server id 21  end_log_pos 203097 CRC32 0x2e6df290 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439328/*!*/;
BEGIN
/*!*/;
# at 203097
#170429 11:15:28 server id 21  end_log_pos 203720 CRC32 0x74fc29bb 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439328/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:15:20',`total`='1.55000000000000000e+001'  WHERE `id` = '34513' AND `inv_num` = '566' AND `inv_refer` = '201704-00566' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 203720
#170429 11:15:28 server id 21  end_log_pos 203816 CRC32 0x72e9d846 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439328/*!*/;
COMMIT
/*!*/;
# at 203816
#170429 11:16:21 server id 21  end_log_pos 203911 CRC32 0x7ec233f0 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439381/*!*/;
BEGIN
/*!*/;
# at 203911
#170429 11:16:21 server id 21  end_log_pos 204595 CRC32 0xfebb2a59 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439381/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Female',`bill`='1.60000000000000000e+001'  WHERE `id` = '34513' AND `inv_num` = '566' AND `inv_refer` = '201704-00566' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:15:20' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.55000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 204595
#170429 11:16:21 server id 21  end_log_pos 204691 CRC32 0x60e981a3 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439381/*!*/;
COMMIT
/*!*/;
# at 204691
#170429 11:17:35 server id 21  end_log_pos 204786 CRC32 0x7fbda3af 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439455/*!*/;
BEGIN
/*!*/;
# at 204786
#170429 11:17:35 server id 21  end_log_pos 205457 CRC32 0x47f4a877 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439455/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Female'  WHERE `id` = '34512' AND `inv_num` = '565' AND `inv_refer` = '201704-00565' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:10:32' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+000' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 205457
#170429 11:17:35 server id 21  end_log_pos 205553 CRC32 0x83beba6d 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439455/*!*/;
COMMIT
/*!*/;
# at 205553
#170429 11:17:51 server id 21  end_log_pos 205648 CRC32 0x74a9c325 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439471/*!*/;
BEGIN
/*!*/;
# at 205648
# at 205680
#170429 11:17:51 server id 21  end_log_pos 205680 CRC32 0x7a47847d 	Intvar
SET INSERT_ID=34514/*!*/;
#170429 11:17:51 server id 21  end_log_pos 205914 CRC32 0x3297d11f 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439471/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('567','201704-00567','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 205914
#170429 11:17:51 server id 21  end_log_pos 206010 CRC32 0xf0043063 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439471/*!*/;
COMMIT
/*!*/;
# at 206010
#170429 11:20:29 server id 21  end_log_pos 206105 CRC32 0x5dae7bc9 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439629/*!*/;
BEGIN
/*!*/;
# at 206105
# at 206137
#170429 11:20:29 server id 21  end_log_pos 206137 CRC32 0xd9283086 	Intvar
SET INSERT_ID=82109/*!*/;
#170429 11:20:29 server id 21  end_log_pos 206384 CRC32 0xde8d7377 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439629/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34514','434','1.00000000000000000e+000','3.00000000000000000e+000','1')
/*!*/;
# at 206384
#170429 11:20:29 server id 21  end_log_pos 206480 CRC32 0x45221158 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439629/*!*/;
COMMIT
/*!*/;
# at 206480
#170429 11:20:30 server id 21  end_log_pos 206575 CRC32 0x36305f55 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439630/*!*/;
BEGIN
/*!*/;
# at 206575
# at 206607
#170429 11:20:30 server id 21  end_log_pos 206607 CRC32 0x5a4a81cc 	Intvar
SET INSERT_ID=82110/*!*/;
#170429 11:20:30 server id 21  end_log_pos 206854 CRC32 0xdcbbc534 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439630/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34514','433','1.00000000000000000e+000','3.00000000000000000e+000','2')
/*!*/;
# at 206854
#170429 11:20:30 server id 21  end_log_pos 206950 CRC32 0x81e1ba0c 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439630/*!*/;
COMMIT
/*!*/;
# at 206950
#170429 11:20:31 server id 21  end_log_pos 207045 CRC32 0x889dfd3e 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439631/*!*/;
BEGIN
/*!*/;
# at 207045
#170429 11:20:31 server id 21  end_log_pos 207217 CRC32 0x8cea8997 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439631/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82110'
/*!*/;
# at 207217
#170429 11:20:31 server id 21  end_log_pos 207313 CRC32 0x3cf41bd1 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439631/*!*/;
COMMIT
/*!*/;
# at 207313
#170429 11:20:33 server id 21  end_log_pos 207408 CRC32 0x8f55b118 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439633/*!*/;
BEGIN
/*!*/;
# at 207408
# at 207440
#170429 11:20:33 server id 21  end_log_pos 207440 CRC32 0xe9f21ccd 	Intvar
SET INSERT_ID=82111/*!*/;
#170429 11:20:33 server id 21  end_log_pos 207687 CRC32 0x49fdd69b 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439633/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34514','436','1.00000000000000000e+000','3.00000000000000000e+000','3')
/*!*/;
# at 207687
#170429 11:20:33 server id 21  end_log_pos 207783 CRC32 0xa19cc7a1 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439633/*!*/;
COMMIT
/*!*/;
# at 207783
#170429 11:20:33 server id 21  end_log_pos 207878 CRC32 0xb2d5fbf0 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439633/*!*/;
BEGIN
/*!*/;
# at 207878
#170429 11:20:33 server id 21  end_log_pos 208050 CRC32 0x91f6c506 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439633/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82111'
/*!*/;
# at 208050
#170429 11:20:33 server id 21  end_log_pos 208146 CRC32 0x4012bc60 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439633/*!*/;
COMMIT
/*!*/;
# at 208146
#170429 11:20:36 server id 21  end_log_pos 208241 CRC32 0xf0f4ad2e 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439636/*!*/;
BEGIN
/*!*/;
# at 208241
#170429 11:20:36 server id 21  end_log_pos 208864 CRC32 0xbec7f383 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439636/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:20:29',`total`='1.50000000000000000e+001'  WHERE `id` = '34514' AND `inv_num` = '567' AND `inv_refer` = '201704-00567' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 208864
#170429 11:20:36 server id 21  end_log_pos 208960 CRC32 0x4d4ea5be 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439636/*!*/;
COMMIT
/*!*/;
# at 208960
#170429 11:20:37 server id 21  end_log_pos 209055 CRC32 0x626c4093 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439637/*!*/;
BEGIN
/*!*/;
# at 209055
# at 209087
#170429 11:20:37 server id 21  end_log_pos 209087 CRC32 0x0453e33f 	Intvar
SET INSERT_ID=13117/*!*/;
#170429 11:20:37 server id 21  end_log_pos 209261 CRC32 0x7e5fbacf 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439637/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34514','435','1')
/*!*/;
# at 209261
#170429 11:20:37 server id 21  end_log_pos 209357 CRC32 0xbeab8487 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439637/*!*/;
COMMIT
/*!*/;
# at 209357
#170429 11:20:43 server id 21  end_log_pos 209452 CRC32 0x8b72698a 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439643/*!*/;
BEGIN
/*!*/;
# at 209452
#170429 11:20:43 server id 21  end_log_pos 210082 CRC32 0x0567bc37 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439643/*!*/;
UPDATE `oms_sale` SET `bill`='2.00000000000000000e+001'  WHERE `id` = '34514' AND `inv_num` = '567' AND `inv_refer` = '201704-00567' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:20:29' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 210082
#170429 11:20:43 server id 21  end_log_pos 210178 CRC32 0x98db029e 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439643/*!*/;
COMMIT
/*!*/;
# at 210178
#170429 11:22:53 server id 21  end_log_pos 210273 CRC32 0xd0c71c89 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439773/*!*/;
BEGIN
/*!*/;
# at 210273
# at 210305
#170429 11:22:53 server id 21  end_log_pos 210305 CRC32 0xfcee1e8b 	Intvar
SET INSERT_ID=34515/*!*/;
#170429 11:22:53 server id 21  end_log_pos 210539 CRC32 0x5512499d 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439773/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('568','201704-00568','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 210539
#170429 11:22:53 server id 21  end_log_pos 210635 CRC32 0x261a6170 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439773/*!*/;
COMMIT
/*!*/;
# at 210635
#170429 11:23:12 server id 21  end_log_pos 210730 CRC32 0x7729ea6a 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439792/*!*/;
BEGIN
/*!*/;
# at 210730
# at 210762
#170429 11:23:12 server id 21  end_log_pos 210762 CRC32 0xeddffae3 	Intvar
SET INSERT_ID=82112/*!*/;
#170429 11:23:12 server id 21  end_log_pos 211009 CRC32 0x3f50e947 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439792/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34515','613','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 211009
#170429 11:23:12 server id 21  end_log_pos 211105 CRC32 0x5d977603 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439792/*!*/;
COMMIT
/*!*/;
# at 211105
#170429 11:23:21 server id 21  end_log_pos 211200 CRC32 0x9d3bc53b 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439801/*!*/;
BEGIN
/*!*/;
# at 211200
#170429 11:23:21 server id 21  end_log_pos 211823 CRC32 0xfe299b7b 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439801/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:23:12',`total`='5.00000000000000000e+000'  WHERE `id` = '34515' AND `inv_num` = '568' AND `inv_refer` = '201704-00568' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 211823
#170429 11:23:21 server id 21  end_log_pos 211919 CRC32 0xc120b04d 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439801/*!*/;
COMMIT
/*!*/;
# at 211919
#170429 11:23:22 server id 21  end_log_pos 212014 CRC32 0xf8752c66 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439802/*!*/;
BEGIN
/*!*/;
# at 212014
#170429 11:23:22 server id 21  end_log_pos 212644 CRC32 0x8177653e 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439802/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+000'  WHERE `id` = '34515' AND `inv_num` = '568' AND `inv_refer` = '201704-00568' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:23:12' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 212644
#170429 11:23:22 server id 21  end_log_pos 212740 CRC32 0x85ee249b 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439802/*!*/;
COMMIT
/*!*/;
# at 212740
#170429 11:25:37 server id 21  end_log_pos 212835 CRC32 0x7ebbd029 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439937/*!*/;
BEGIN
/*!*/;
# at 212835
# at 212867
#170429 11:25:37 server id 21  end_log_pos 212867 CRC32 0x2b3c7814 	Intvar
SET INSERT_ID=34516/*!*/;
#170429 11:25:37 server id 21  end_log_pos 213101 CRC32 0xf4dbacfc 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439937/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('569','201704-00569','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 213101
#170429 11:25:37 server id 21  end_log_pos 213197 CRC32 0xadae31e7 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439937/*!*/;
COMMIT
/*!*/;
# at 213197
#170429 11:25:37 server id 21  end_log_pos 213292 CRC32 0x020b1942 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439937/*!*/;
BEGIN
/*!*/;
# at 213292
# at 213324
#170429 11:25:37 server id 21  end_log_pos 213324 CRC32 0x8af690d1 	Intvar
SET INSERT_ID=82113/*!*/;
#170429 11:25:37 server id 21  end_log_pos 213571 CRC32 0x30c529fd 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439937/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34516','645','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 213571
#170429 11:25:37 server id 21  end_log_pos 213667 CRC32 0x5c71db35 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439937/*!*/;
COMMIT
/*!*/;
# at 213667
#170429 11:25:38 server id 21  end_log_pos 213762 CRC32 0xaf9ba935 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439938/*!*/;
BEGIN
/*!*/;
# at 213762
#170429 11:25:38 server id 21  end_log_pos 214385 CRC32 0x8c4436c5 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439938/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:25:37',`total`='8.00000000000000000e+000'  WHERE `id` = '34516' AND `inv_num` = '569' AND `inv_refer` = '201704-00569' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 214385
#170429 11:25:38 server id 21  end_log_pos 214481 CRC32 0xc4b962e8 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493439938/*!*/;
COMMIT
/*!*/;
# at 214481
#170429 11:25:44 server id 21  end_log_pos 214576 CRC32 0x44490ceb 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439944/*!*/;
BEGIN
/*!*/;
# at 214576
#170429 11:25:44 server id 21  end_log_pos 215206 CRC32 0xcd66dac7 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439944/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+001'  WHERE `id` = '34516' AND `inv_num` = '569' AND `inv_refer` = '201704-00569' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:25:37' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '8.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 215206
#170429 11:25:44 server id 21  end_log_pos 215302 CRC32 0x749410c4 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493439944/*!*/;
COMMIT
/*!*/;
# at 215302
#170429 11:35:03 server id 21  end_log_pos 215397 CRC32 0x0565444b 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440503/*!*/;
BEGIN
/*!*/;
# at 215397
# at 215429
#170429 11:35:03 server id 21  end_log_pos 215429 CRC32 0x22851e37 	Intvar
SET INSERT_ID=34517/*!*/;
#170429 11:35:03 server id 21  end_log_pos 215663 CRC32 0x3bca99b9 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440503/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('570','201704-00570','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 215663
#170429 11:35:03 server id 21  end_log_pos 215759 CRC32 0x53a560b4 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440503/*!*/;
COMMIT
/*!*/;
# at 215759
#170429 11:35:18 server id 21  end_log_pos 215854 CRC32 0x7cdb27a1 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440518/*!*/;
BEGIN
/*!*/;
# at 215854
# at 215886
#170429 11:35:18 server id 21  end_log_pos 215886 CRC32 0x000f6025 	Intvar
SET INSERT_ID=82114/*!*/;
#170429 11:35:18 server id 21  end_log_pos 216132 CRC32 0x2e3f0755 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440518/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34517','44','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 216132
#170429 11:35:18 server id 21  end_log_pos 216228 CRC32 0x9a0f408b 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440518/*!*/;
COMMIT
/*!*/;
# at 216228
#170429 11:35:21 server id 21  end_log_pos 216323 CRC32 0x5eb8f4c2 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440521/*!*/;
BEGIN
/*!*/;
# at 216323
# at 216355
#170429 11:35:21 server id 21  end_log_pos 216355 CRC32 0x83f10759 	Intvar
SET INSERT_ID=82115/*!*/;
#170429 11:35:21 server id 21  end_log_pos 216601 CRC32 0xada4614d 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440521/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34517','46','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 216601
#170429 11:35:21 server id 21  end_log_pos 216697 CRC32 0x79f66a3d 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440521/*!*/;
COMMIT
/*!*/;
# at 216697
#170429 11:35:22 server id 21  end_log_pos 216792 CRC32 0x66d69032 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440522/*!*/;
BEGIN
/*!*/;
# at 216792
# at 216824
#170429 11:35:22 server id 21  end_log_pos 216824 CRC32 0xe9619ecb 	Intvar
SET INSERT_ID=82116/*!*/;
#170429 11:35:22 server id 21  end_log_pos 217070 CRC32 0x941fff66 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440522/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34517','19','1.00000000000000000e+000','2.50000000000000000e+000','3')
/*!*/;
# at 217070
#170429 11:35:22 server id 21  end_log_pos 217166 CRC32 0xf6d96c0a 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440522/*!*/;
COMMIT
/*!*/;
# at 217166
#170429 11:35:23 server id 21  end_log_pos 217261 CRC32 0x8a79f776 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440523/*!*/;
BEGIN
/*!*/;
# at 217261
#170429 11:35:23 server id 21  end_log_pos 217433 CRC32 0xfecdd6d8 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440523/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82116'
/*!*/;
# at 217433
#170429 11:35:23 server id 21  end_log_pos 217529 CRC32 0x44f13679 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440523/*!*/;
COMMIT
/*!*/;
# at 217529
#170429 11:35:24 server id 21  end_log_pos 217624 CRC32 0x97d846d2 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440524/*!*/;
BEGIN
/*!*/;
# at 217624
#170429 11:35:24 server id 21  end_log_pos 217796 CRC32 0x7b8bc66d 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440524/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82116'
/*!*/;
# at 217796
#170429 11:35:24 server id 21  end_log_pos 217892 CRC32 0x6e6d815e 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440524/*!*/;
COMMIT
/*!*/;
# at 217892
#170429 11:35:25 server id 21  end_log_pos 217987 CRC32 0x91d8d16b 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440525/*!*/;
BEGIN
/*!*/;
# at 217987
# at 218019
#170429 11:35:25 server id 21  end_log_pos 218019 CRC32 0xa0e763fd 	Intvar
SET INSERT_ID=82117/*!*/;
#170429 11:35:25 server id 21  end_log_pos 218265 CRC32 0xc0462193 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440525/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34517','21','1.00000000000000000e+000','2.50000000000000000e+000','4')
/*!*/;
# at 218265
#170429 11:35:25 server id 21  end_log_pos 218361 CRC32 0x965d4542 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440525/*!*/;
COMMIT
/*!*/;
# at 218361
#170429 11:35:26 server id 21  end_log_pos 218456 CRC32 0x39c754c4 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440526/*!*/;
BEGIN
/*!*/;
# at 218456
#170429 11:35:26 server id 21  end_log_pos 218628 CRC32 0x4f60d403 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440526/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82117'
/*!*/;
# at 218628
#170429 11:35:26 server id 21  end_log_pos 218724 CRC32 0xba200116 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440526/*!*/;
COMMIT
/*!*/;
# at 218724
#170429 11:35:26 server id 21  end_log_pos 218819 CRC32 0xa7311092 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440526/*!*/;
BEGIN
/*!*/;
# at 218819
#170429 11:35:26 server id 21  end_log_pos 218991 CRC32 0x587c5282 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440526/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82117'
/*!*/;
# at 218991
#170429 11:35:26 server id 21  end_log_pos 219087 CRC32 0xb5528822 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440526/*!*/;
COMMIT
/*!*/;
# at 219087
#170429 11:35:28 server id 21  end_log_pos 219182 CRC32 0x12bcfb51 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440528/*!*/;
BEGIN
/*!*/;
# at 219182
# at 219214
#170429 11:35:28 server id 21  end_log_pos 219214 CRC32 0x8075a8f6 	Intvar
SET INSERT_ID=82118/*!*/;
#170429 11:35:28 server id 21  end_log_pos 219460 CRC32 0x41f398d9 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440528/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34517','20','1.00000000000000000e+000','2.50000000000000000e+000','5')
/*!*/;
# at 219460
#170429 11:35:28 server id 21  end_log_pos 219556 CRC32 0x4785ab56 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440528/*!*/;
COMMIT
/*!*/;
# at 219556
#170429 11:35:34 server id 21  end_log_pos 219651 CRC32 0x1566be78 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440534/*!*/;
BEGIN
/*!*/;
# at 219651
#170429 11:35:34 server id 21  end_log_pos 220274 CRC32 0x37281047 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440534/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:35:18',`total`='2.75000000000000000e+001'  WHERE `id` = '34517' AND `inv_num` = '570' AND `inv_refer` = '201704-00570' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 220274
#170429 11:35:34 server id 21  end_log_pos 220370 CRC32 0x5b9c4c70 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440534/*!*/;
COMMIT
/*!*/;
# at 220370
#170429 11:35:35 server id 21  end_log_pos 220465 CRC32 0x693e9406 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440535/*!*/;
BEGIN
/*!*/;
# at 220465
# at 220497
#170429 11:35:35 server id 21  end_log_pos 220497 CRC32 0x2a677ff6 	Intvar
SET INSERT_ID=13118/*!*/;
#170429 11:35:35 server id 21  end_log_pos 220670 CRC32 0x2953ec47 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440535/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34517','20','1')
/*!*/;
# at 220670
#170429 11:35:35 server id 21  end_log_pos 220766 CRC32 0x3e142636 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440535/*!*/;
COMMIT
/*!*/;
# at 220766
#170429 11:36:03 server id 21  end_log_pos 220861 CRC32 0xbb17480c 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440563/*!*/;
BEGIN
/*!*/;
# at 220861
#170429 11:36:03 server id 21  end_log_pos 221491 CRC32 0xd17040db 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440563/*!*/;
UPDATE `oms_sale` SET `bill`='3.00000000000000000e+001'  WHERE `id` = '34517' AND `inv_num` = '570' AND `inv_refer` = '201704-00570' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:35:18' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.75000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 221491
#170429 11:36:03 server id 21  end_log_pos 221587 CRC32 0xa8c515ec 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440563/*!*/;
COMMIT
/*!*/;
# at 221587
#170429 11:36:30 server id 21  end_log_pos 221682 CRC32 0x47433fcb 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440590/*!*/;
BEGIN
/*!*/;
# at 221682
# at 221714
#170429 11:36:30 server id 21  end_log_pos 221714 CRC32 0x54e14306 	Intvar
SET INSERT_ID=34518/*!*/;
#170429 11:36:30 server id 21  end_log_pos 221948 CRC32 0xd4793280 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440590/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('571','201704-00571','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 221948
#170429 11:36:30 server id 21  end_log_pos 222044 CRC32 0xb76808cf 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440590/*!*/;
COMMIT
/*!*/;
# at 222044
#170429 11:36:31 server id 21  end_log_pos 222139 CRC32 0x9fc8c864 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440591/*!*/;
BEGIN
/*!*/;
# at 222139
# at 222171
#170429 11:36:31 server id 21  end_log_pos 222171 CRC32 0xeed58b65 	Intvar
SET INSERT_ID=82119/*!*/;
#170429 11:36:31 server id 21  end_log_pos 222417 CRC32 0x3e750dae 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440591/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34518','29','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 222417
#170429 11:36:31 server id 21  end_log_pos 222513 CRC32 0x8c41737e 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440591/*!*/;
COMMIT
/*!*/;
# at 222513
#170429 11:36:31 server id 21  end_log_pos 222608 CRC32 0xa550f025 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440591/*!*/;
BEGIN
/*!*/;
# at 222608
# at 222640
#170429 11:36:31 server id 21  end_log_pos 222640 CRC32 0x53fd3162 	Intvar
SET INSERT_ID=82120/*!*/;
#170429 11:36:31 server id 21  end_log_pos 222886 CRC32 0xe3753e99 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440591/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34518','41','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 222886
#170429 11:36:31 server id 21  end_log_pos 222982 CRC32 0x6fb3c58e 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440591/*!*/;
COMMIT
/*!*/;
# at 222982
#170429 11:36:38 server id 21  end_log_pos 223077 CRC32 0x8e85a406 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440598/*!*/;
BEGIN
/*!*/;
# at 223077
#170429 11:36:38 server id 21  end_log_pos 223700 CRC32 0x17e535a2 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440598/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:36:31',`total`='1.00000000000000000e+001'  WHERE `id` = '34518' AND `inv_num` = '571' AND `inv_refer` = '201704-00571' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 223700
#170429 11:36:38 server id 21  end_log_pos 223796 CRC32 0x229b6f61 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440598/*!*/;
COMMIT
/*!*/;
# at 223796
#170429 11:36:39 server id 21  end_log_pos 223891 CRC32 0x0e26b04a 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440599/*!*/;
BEGIN
/*!*/;
# at 223891
#170429 11:36:39 server id 21  end_log_pos 224521 CRC32 0x9fcf7df8 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440599/*!*/;
UPDATE `oms_sale` SET `bill`='1.00000000000000000e+001'  WHERE `id` = '34518' AND `inv_num` = '571' AND `inv_refer` = '201704-00571' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:36:31' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.00000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 224521
#170429 11:36:39 server id 21  end_log_pos 224617 CRC32 0x49c2a34f 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440599/*!*/;
COMMIT
/*!*/;
# at 224617
#170429 11:37:11 server id 21  end_log_pos 224712 CRC32 0x20d17b0a 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440631/*!*/;
BEGIN
/*!*/;
# at 224712
#170429 11:37:11 server id 21  end_log_pos 225383 CRC32 0x8f910684 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440631/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Female'  WHERE `id` = '34518' AND `inv_num` = '571' AND `inv_refer` = '201704-00571' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:36:31' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.00000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 225383
#170429 11:37:11 server id 21  end_log_pos 225479 CRC32 0x8d7040ef 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440631/*!*/;
COMMIT
/*!*/;
# at 225479
#170429 11:37:22 server id 21  end_log_pos 225574 CRC32 0x149937e4 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440642/*!*/;
BEGIN
/*!*/;
# at 225574
#170429 11:37:22 server id 21  end_log_pos 226245 CRC32 0x4bf5c67f 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440642/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Female'  WHERE `id` = '34517' AND `inv_num` = '570' AND `inv_refer` = '201704-00570' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:35:18' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '3.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.75000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 226245
#170429 11:37:22 server id 21  end_log_pos 226341 CRC32 0x562e52a7 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440642/*!*/;
COMMIT
/*!*/;
# at 226341
#170429 11:37:45 server id 21  end_log_pos 226436 CRC32 0x36a0815f 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440665/*!*/;
BEGIN
/*!*/;
# at 226436
#170429 11:37:45 server id 21  end_log_pos 227108 CRC32 0xf8ecda9a 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440665/*!*/;
UPDATE `oms_sale` SET `nationality`='Euoropean',`age`='40',`gender`='Female'  WHERE `id` = '34516' AND `inv_num` = '569' AND `inv_refer` = '201704-00569' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:25:37' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '8.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 227108
#170429 11:37:45 server id 21  end_log_pos 227204 CRC32 0xb6ede6fb 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440665/*!*/;
COMMIT
/*!*/;
# at 227204
#170429 11:37:56 server id 21  end_log_pos 227299 CRC32 0xadbe312b 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440676/*!*/;
BEGIN
/*!*/;
# at 227299
#170429 11:37:56 server id 21  end_log_pos 227967 CRC32 0xfc729d37 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440676/*!*/;
UPDATE `oms_sale` SET `nationality`='Chinese',`age`='40',`gender`='Male'  WHERE `id` = '34515' AND `inv_num` = '568' AND `inv_refer` = '201704-00568' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:23:12' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+000' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 227967
#170429 11:37:56 server id 21  end_log_pos 228063 CRC32 0x6a8451ab 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493440676/*!*/;
COMMIT
/*!*/;
# at 228063
#170429 11:38:05 server id 21  end_log_pos 228158 CRC32 0x6b250799 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440685/*!*/;
BEGIN
/*!*/;
# at 228158
#170429 11:38:05 server id 21  end_log_pos 228829 CRC32 0x171b878d 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440685/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Female'  WHERE `id` = '34514' AND `inv_num` = '567' AND `inv_refer` = '201704-00567' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:20:29' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '2.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 228829
#170429 11:38:05 server id 21  end_log_pos 228925 CRC32 0x78e5e316 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493440685/*!*/;
COMMIT
/*!*/;
# at 228925
#170429 11:46:28 server id 21  end_log_pos 229020 CRC32 0xbc2d8983 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493441188/*!*/;
BEGIN
/*!*/;
# at 229020
# at 229052
#170429 11:46:28 server id 21  end_log_pos 229052 CRC32 0xaddf76b9 	Intvar
SET INSERT_ID=34519/*!*/;
#170429 11:46:28 server id 21  end_log_pos 229286 CRC32 0xd833b9f0 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493441188/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('572','201704-00572','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 229286
#170429 11:46:28 server id 21  end_log_pos 229382 CRC32 0x5f7c2e5f 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493441188/*!*/;
COMMIT
/*!*/;
# at 229382
#170429 11:46:32 server id 21  end_log_pos 229477 CRC32 0x30c2d4f2 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493441192/*!*/;
BEGIN
/*!*/;
# at 229477
# at 229509
#170429 11:46:32 server id 21  end_log_pos 229509 CRC32 0xb3558fb1 	Intvar
SET INSERT_ID=82121/*!*/;
#170429 11:46:32 server id 21  end_log_pos 229755 CRC32 0xe209662d 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493441192/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34519','40','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 229755
#170429 11:46:32 server id 21  end_log_pos 229851 CRC32 0x513f5d94 	Query	thread_id=7	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493441192/*!*/;
COMMIT
/*!*/;
# at 229851
#170429 11:46:32 server id 21  end_log_pos 229946 CRC32 0x928160c3 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441192/*!*/;
BEGIN
/*!*/;
# at 229946
#170429 11:46:32 server id 21  end_log_pos 230118 CRC32 0xa228cfb7 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441192/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82121'
/*!*/;
# at 230118
#170429 11:46:32 server id 21  end_log_pos 230214 CRC32 0x4d6c7c93 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441192/*!*/;
COMMIT
/*!*/;
# at 230214
#170429 11:46:36 server id 21  end_log_pos 230309 CRC32 0x43f0a4b3 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441196/*!*/;
BEGIN
/*!*/;
# at 230309
# at 230341
#170429 11:46:36 server id 21  end_log_pos 230341 CRC32 0x8d972280 	Intvar
SET INSERT_ID=82122/*!*/;
#170429 11:46:36 server id 21  end_log_pos 230587 CRC32 0x01f74308 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441196/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34519','39','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 230587
#170429 11:46:36 server id 21  end_log_pos 230683 CRC32 0xcd6d76da 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441196/*!*/;
COMMIT
/*!*/;
# at 230683
#170429 11:46:51 server id 21  end_log_pos 230778 CRC32 0x4f4a9824 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441211/*!*/;
BEGIN
/*!*/;
# at 230778
#170429 11:46:51 server id 21  end_log_pos 231401 CRC32 0xa709d6b9 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441211/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 11:46:32',`total`='1.50000000000000000e+001'  WHERE `id` = '34519' AND `inv_num` = '572' AND `inv_refer` = '201704-00572' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 231401
#170429 11:46:51 server id 21  end_log_pos 231497 CRC32 0xe01e4a2e 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441211/*!*/;
COMMIT
/*!*/;
# at 231497
#170429 11:46:53 server id 21  end_log_pos 231592 CRC32 0x2dbaa4a7 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441213/*!*/;
BEGIN
/*!*/;
# at 231592
#170429 11:46:53 server id 21  end_log_pos 232222 CRC32 0xfd388558 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441213/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+001'  WHERE `id` = '34519' AND `inv_num` = '572' AND `inv_refer` = '201704-00572' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:46:32' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 232222
#170429 11:46:53 server id 21  end_log_pos 232318 CRC32 0xd89a5fea 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441213/*!*/;
COMMIT
/*!*/;
# at 232318
#170429 11:47:21 server id 21  end_log_pos 232413 CRC32 0xc8950065 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441241/*!*/;
BEGIN
/*!*/;
# at 232413
#170429 11:47:21 server id 21  end_log_pos 233085 CRC32 0x28a885e8 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441241/*!*/;
UPDATE `oms_sale` SET `nationality`='Euoropean',`age`='55',`gender`='Female'  WHERE `id` = '34519' AND `inv_num` = '572' AND `inv_refer` = '201704-00572' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 11:46:32' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 233085
#170429 11:47:21 server id 21  end_log_pos 233181 CRC32 0x104674d5 	Query	thread_id=7	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493441241/*!*/;
COMMIT
/*!*/;
# at 233181
#170429 12:01:56 server id 111  end_log_pos 233276 CRC32 0xee332edb 	Query	thread_id=335	exec_time=0	error_code=0
SET TIMESTAMP=1493442116/*!*/;
BEGIN
/*!*/;
# at 233276
#170429 12:01:56 server id 111  end_log_pos 234203 CRC32 0x3d2a08f2 	Query	thread_id=335	exec_time=0	error_code=0
SET TIMESTAMP=1493442116/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 234203
#170429 12:01:56 server id 111  end_log_pos 234299 CRC32 0xb391e696 	Query	thread_id=335	exec_time=0	error_code=0
SET TIMESTAMP=1493442116/*!*/;
COMMIT
/*!*/;
# at 234299
#170429 12:01:57 server id 111  end_log_pos 234394 CRC32 0x8c9f4771 	Query	thread_id=336	exec_time=0	error_code=0
SET TIMESTAMP=1493442117/*!*/;
BEGIN
/*!*/;
# at 234394
#170429 12:01:57 server id 111  end_log_pos 235216 CRC32 0x203d5890 	Query	thread_id=336	exec_time=0	error_code=0
SET TIMESTAMP=1493442117/*!*/;
UPDATE spa_sale_massage SET id='1598', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1598
/*!*/;
# at 235216
#170429 12:01:57 server id 111  end_log_pos 235312 CRC32 0x08da2b3d 	Query	thread_id=336	exec_time=0	error_code=0
SET TIMESTAMP=1493442117/*!*/;
COMMIT
/*!*/;
# at 235312
#170429 12:01:58 server id 111  end_log_pos 235407 CRC32 0x6f54caca 	Query	thread_id=337	exec_time=0	error_code=0
SET TIMESTAMP=1493442118/*!*/;
BEGIN
/*!*/;
# at 235407
#170429 12:01:58 server id 111  end_log_pos 236298 CRC32 0x068fac85 	Query	thread_id=337	exec_time=0	error_code=0
SET TIMESTAMP=1493442118/*!*/;
UPDATE spa_sale_massage SET id='1597', book_by='0', inv_num='47', inv_refer='201704-0047', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Hideyuki Matsuura', nationality='Japanese', cashier='1', age='51', gender='Male', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='22', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Walk in', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1597
/*!*/;
# at 236298
#170429 12:01:58 server id 111  end_log_pos 236394 CRC32 0x8725543c 	Query	thread_id=337	exec_time=0	error_code=0
SET TIMESTAMP=1493442118/*!*/;
COMMIT
/*!*/;
# at 236394
#170429 12:02:01 server id 111  end_log_pos 236489 CRC32 0x6b51de23 	Query	thread_id=338	exec_time=0	error_code=0
SET TIMESTAMP=1493442121/*!*/;
BEGIN
/*!*/;
# at 236489
#170429 12:02:01 server id 111  end_log_pos 237383 CRC32 0xfc5bad96 	Query	thread_id=338	exec_time=0	error_code=0
SET TIMESTAMP=1493442121/*!*/;
UPDATE spa_sale_massage SET id='1596', book_by='0', inv_num='48', inv_refer='201704-0048', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Mie Toyota', nationality='Japanese', cashier='2', age='50', gender='Female', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='1.5', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1596
/*!*/;
# at 237383
#170429 12:02:01 server id 111  end_log_pos 237479 CRC32 0xa3118252 	Query	thread_id=338	exec_time=0	error_code=0
SET TIMESTAMP=1493442121/*!*/;
COMMIT
/*!*/;
# at 237479
#170429 12:02:05 server id 111  end_log_pos 237574 CRC32 0xd0024924 	Query	thread_id=339	exec_time=0	error_code=0
SET TIMESTAMP=1493442125/*!*/;
BEGIN
/*!*/;
# at 237574
#170429 12:02:05 server id 111  end_log_pos 238471 CRC32 0x084f210f 	Query	thread_id=339	exec_time=0	error_code=0
SET TIMESTAMP=1493442125/*!*/;
UPDATE spa_sale_massage SET id='1595', book_by='0', inv_num='46', inv_refer='201704-0046', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Chigu Matsuura', nationality='Japanese', cashier='1', age='51', gender='Female', cus_email=NULL, cus_oriented='Travel Agency', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='22', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Walk in', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1595
/*!*/;
# at 238471
#170429 12:02:05 server id 111  end_log_pos 238567 CRC32 0x299ad6d1 	Query	thread_id=339	exec_time=0	error_code=0
SET TIMESTAMP=1493442125/*!*/;
COMMIT
/*!*/;
# at 238567
#170429 12:02:05 server id 111  end_log_pos 238662 CRC32 0x404cdb46 	Query	thread_id=340	exec_time=0	error_code=0
SET TIMESTAMP=1493442125/*!*/;
BEGIN
/*!*/;
# at 238662
#170429 12:02:05 server id 111  end_log_pos 239582 CRC32 0x50ecb2e4 	Query	thread_id=340	exec_time=0	error_code=0
SET TIMESTAMP=1493442125/*!*/;
UPDATE spa_sale_massage SET id='1594', book_by='0', inv_num='45', inv_refer='201704-0045', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Amina Toyota', nationality='Japanese', cashier='2', age='30', gender='Female', cus_email='naughty0110.a@gmail.com', cus_oriented='Guidebook', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='1.5', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1594
/*!*/;
# at 239582
#170429 12:02:05 server id 111  end_log_pos 239678 CRC32 0x19e9f79d 	Query	thread_id=340	exec_time=0	error_code=0
SET TIMESTAMP=1493442125/*!*/;
COMMIT
/*!*/;
# at 239678
#170429 12:02:07 server id 111  end_log_pos 239773 CRC32 0x87a0f7a8 	Query	thread_id=341	exec_time=0	error_code=0
SET TIMESTAMP=1493442127/*!*/;
BEGIN
/*!*/;
# at 239773
#170429 12:02:07 server id 111  end_log_pos 240692 CRC32 0x1d7dc01b 	Query	thread_id=341	exec_time=0	error_code=0
SET TIMESTAMP=1493442127/*!*/;
UPDATE spa_sale_massage SET id='1593', book_by='0', inv_num='44', inv_refer='201704-0044', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Masayo Ogawa', nationality='Japanese', cashier='2', age='30', gender='Female', cus_email='m.s.y.oga.0124@gmail.com', cus_oriented='Guidebook', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Credit', guide='0', total='77', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1593
/*!*/;
# at 240692
#170429 12:02:07 server id 111  end_log_pos 240788 CRC32 0x71de2e10 	Query	thread_id=341	exec_time=0	error_code=0
SET TIMESTAMP=1493442127/*!*/;
COMMIT
/*!*/;
# at 240788
#170429 12:02:28 server id 111  end_log_pos 240883 CRC32 0x86dbdd6c 	Query	thread_id=349	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
BEGIN
/*!*/;
# at 240883
#170429 12:02:28 server id 111  end_log_pos 241803 CRC32 0x97b0a8a8 	Query	thread_id=349	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
UPDATE spa_sale_massage SET id='1594', book_by='0', inv_num='45', inv_refer='201704-0045', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Amina Toyota', nationality='Japanese', cashier='2', age='30', gender='Female', cus_email='naughty0110.a@gmail.com', cus_oriented='Guidebook', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='1.5', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1594
/*!*/;
# at 241803
#170429 12:02:28 server id 111  end_log_pos 241899 CRC32 0x988aba61 	Query	thread_id=349	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
COMMIT
/*!*/;
# at 241899
#170429 12:02:28 server id 111  end_log_pos 241994 CRC32 0x6787c371 	Query	thread_id=350	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
BEGIN
/*!*/;
# at 241994
#170429 12:02:28 server id 111  end_log_pos 242891 CRC32 0xddcf93ca 	Query	thread_id=350	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
UPDATE spa_sale_massage SET id='1595', book_by='0', inv_num='46', inv_refer='201704-0046', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Chigu Matsuura', nationality='Japanese', cashier='1', age='51', gender='Female', cus_email=NULL, cus_oriented='Travel Agency', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='22', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Walk in', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1595
/*!*/;
# at 242891
#170429 12:02:28 server id 111  end_log_pos 242987 CRC32 0x3cbf962a 	Query	thread_id=350	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
COMMIT
/*!*/;
# at 242987
#170429 12:02:28 server id 111  end_log_pos 243082 CRC32 0xc5e71b64 	Query	thread_id=351	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
BEGIN
/*!*/;
# at 243082
#170429 12:02:28 server id 111  end_log_pos 243976 CRC32 0x0e9a7e63 	Query	thread_id=351	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
UPDATE spa_sale_massage SET id='1596', book_by='0', inv_num='48', inv_refer='201704-0048', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Mie Toyota', nationality='Japanese', cashier='2', age='50', gender='Female', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='1.5', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1596
/*!*/;
# at 243976
#170429 12:02:28 server id 111  end_log_pos 244072 CRC32 0x9e7e2bf4 	Query	thread_id=351	exec_time=0	error_code=0
SET TIMESTAMP=1493442148/*!*/;
COMMIT
/*!*/;
# at 244072
#170429 12:02:29 server id 111  end_log_pos 244167 CRC32 0x9a7f4562 	Query	thread_id=352	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
BEGIN
/*!*/;
# at 244167
#170429 12:02:29 server id 111  end_log_pos 245058 CRC32 0x6b46a075 	Query	thread_id=352	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
UPDATE spa_sale_massage SET id='1597', book_by='0', inv_num='47', inv_refer='201704-0047', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Hideyuki Matsuura', nationality='Japanese', cashier='1', age='51', gender='Male', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='22', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Walk in', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1597
/*!*/;
# at 245058
#170429 12:02:29 server id 111  end_log_pos 245154 CRC32 0x4c68f477 	Query	thread_id=352	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
COMMIT
/*!*/;
# at 245154
#170429 12:02:29 server id 111  end_log_pos 245249 CRC32 0xc1060405 	Query	thread_id=353	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
BEGIN
/*!*/;
# at 245249
#170429 12:02:29 server id 111  end_log_pos 246079 CRC32 0xb8a4361d 	Query	thread_id=353	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
UPDATE spa_sale_massage SET id='1598', book_by='0', inv_num='1', inv_refer=NULL, date_booked='2017-04-29', date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1598
/*!*/;
# at 246079
#170429 12:02:29 server id 111  end_log_pos 246175 CRC32 0x321a416a 	Query	thread_id=353	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
COMMIT
/*!*/;
# at 246175
#170429 12:02:29 server id 111  end_log_pos 246270 CRC32 0x81eb336e 	Query	thread_id=354	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
BEGIN
/*!*/;
# at 246270
#170429 12:02:29 server id 111  end_log_pos 247198 CRC32 0x0c56884e 	Query	thread_id=354	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 247198
#170429 12:02:29 server id 111  end_log_pos 247294 CRC32 0x7a7ec54b 	Query	thread_id=354	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
COMMIT
/*!*/;
# at 247294
#170429 12:02:29 server id 111  end_log_pos 247389 CRC32 0xd47dceaf 	Query	thread_id=355	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
BEGIN
/*!*/;
# at 247389
#170429 12:02:29 server id 111  end_log_pos 248313 CRC32 0xc43793ba 	Query	thread_id=355	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 248313
#170429 12:02:29 server id 111  end_log_pos 248409 CRC32 0xe200d2b9 	Query	thread_id=355	exec_time=0	error_code=0
SET TIMESTAMP=1493442149/*!*/;
COMMIT
/*!*/;
# at 248409
#170429 12:03:39 server id 111  end_log_pos 248504 CRC32 0x2983db6f 	Query	thread_id=356	exec_time=0	error_code=0
SET TIMESTAMP=1493442219/*!*/;
BEGIN
/*!*/;
# at 248504
#170429 12:03:39 server id 111  end_log_pos 249431 CRC32 0xcf41c081 	Query	thread_id=356	exec_time=0	error_code=0
SET TIMESTAMP=1493442219/*!*/;
UPDATE spa_sale_massage SET id='1600', book_by='0', inv_num='50', inv_refer='201704-0050', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='Yokoyama miyuki', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='hami835@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1600
/*!*/;
# at 249431
#170429 12:03:39 server id 111  end_log_pos 249527 CRC32 0x17166f88 	Query	thread_id=356	exec_time=0	error_code=0
SET TIMESTAMP=1493442219/*!*/;
COMMIT
/*!*/;
# at 249527
#170429 12:03:41 server id 111  end_log_pos 249622 CRC32 0xf5ef075b 	Query	thread_id=357	exec_time=0	error_code=0
SET TIMESTAMP=1493442221/*!*/;
BEGIN
/*!*/;
# at 249622
#170429 12:03:41 server id 111  end_log_pos 250452 CRC32 0x6ea1792c 	Query	thread_id=357	exec_time=0	error_code=0
SET TIMESTAMP=1493442221/*!*/;
UPDATE spa_sale_massage SET id='1598', book_by='0', inv_num='1', inv_refer=NULL, date_booked='2017-04-29', date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1598
/*!*/;
# at 250452
#170429 12:03:41 server id 111  end_log_pos 250548 CRC32 0x46f7caf0 	Query	thread_id=357	exec_time=0	error_code=0
SET TIMESTAMP=1493442221/*!*/;
COMMIT
/*!*/;
# at 250548
#170429 12:03:42 server id 111  end_log_pos 250643 CRC32 0x5aaa536e 	Query	thread_id=358	exec_time=0	error_code=0
SET TIMESTAMP=1493442222/*!*/;
BEGIN
/*!*/;
# at 250643
#170429 12:03:42 server id 111  end_log_pos 251534 CRC32 0x3369ca1b 	Query	thread_id=358	exec_time=0	error_code=0
SET TIMESTAMP=1493442222/*!*/;
UPDATE spa_sale_massage SET id='1597', book_by='0', inv_num='47', inv_refer='201704-0047', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Hideyuki Matsuura', nationality='Japanese', cashier='1', age='51', gender='Male', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='22', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Walk in', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1597
/*!*/;
# at 251534
#170429 12:03:42 server id 111  end_log_pos 251630 CRC32 0x7d3da380 	Query	thread_id=358	exec_time=0	error_code=0
SET TIMESTAMP=1493442222/*!*/;
COMMIT
/*!*/;
# at 251630
#170429 12:03:45 server id 111  end_log_pos 251725 CRC32 0x899e7e25 	Query	thread_id=359	exec_time=0	error_code=0
SET TIMESTAMP=1493442225/*!*/;
BEGIN
/*!*/;
# at 251725
#170429 12:03:45 server id 111  end_log_pos 252619 CRC32 0x13e8139a 	Query	thread_id=359	exec_time=0	error_code=0
SET TIMESTAMP=1493442225/*!*/;
UPDATE spa_sale_massage SET id='1596', book_by='0', inv_num='48', inv_refer='201704-0048', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Mie Toyota', nationality='Japanese', cashier='2', age='50', gender='Female', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='1.5', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1596
/*!*/;
# at 252619
#170429 12:03:45 server id 111  end_log_pos 252715 CRC32 0xf814f0a0 	Query	thread_id=359	exec_time=0	error_code=0
SET TIMESTAMP=1493442225/*!*/;
COMMIT
/*!*/;
# at 252715
#170429 12:03:46 server id 111  end_log_pos 252810 CRC32 0xb685f9ef 	Query	thread_id=360	exec_time=0	error_code=0
SET TIMESTAMP=1493442226/*!*/;
BEGIN
/*!*/;
# at 252810
#170429 12:03:46 server id 111  end_log_pos 253701 CRC32 0x0e8f15a1 	Query	thread_id=360	exec_time=0	error_code=0
SET TIMESTAMP=1493442226/*!*/;
UPDATE spa_sale_massage SET id='1597', book_by='0', inv_num='47', inv_refer='201704-0047', date_booked='2017-04-28 00:00:00', date_bill='2017-04-28', customer='Hideyuki Matsuura', nationality='Japanese', cashier='1', age='51', gender='Male', cus_email=NULL, cus_oriented='Others', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='22', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Walk in', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1597
/*!*/;
# at 253701
#170429 12:03:46 server id 111  end_log_pos 253797 CRC32 0xe98ea78d 	Query	thread_id=360	exec_time=0	error_code=0
SET TIMESTAMP=1493442226/*!*/;
COMMIT
/*!*/;
# at 253797
#170429 12:03:50 server id 111  end_log_pos 253892 CRC32 0x2310faac 	Query	thread_id=361	exec_time=0	error_code=0
SET TIMESTAMP=1493442230/*!*/;
BEGIN
/*!*/;
# at 253892
#170429 12:03:50 server id 111  end_log_pos 254722 CRC32 0x623bd9a8 	Query	thread_id=361	exec_time=0	error_code=0
SET TIMESTAMP=1493442230/*!*/;
UPDATE spa_sale_massage SET id='1598', book_by='0', inv_num='1', inv_refer=NULL, date_booked='2017-04-29', date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1598
/*!*/;
# at 254722
#170429 12:03:50 server id 111  end_log_pos 254818 CRC32 0x022e35e1 	Query	thread_id=361	exec_time=0	error_code=0
SET TIMESTAMP=1493442230/*!*/;
COMMIT
/*!*/;
# at 254818
#170429 12:03:52 server id 111  end_log_pos 254913 CRC32 0xc559b0eb 	Query	thread_id=362	exec_time=0	error_code=0
SET TIMESTAMP=1493442232/*!*/;
BEGIN
/*!*/;
# at 254913
#170429 12:03:52 server id 111  end_log_pos 255841 CRC32 0xa22e7ad2 	Query	thread_id=362	exec_time=0	error_code=0
SET TIMESTAMP=1493442232/*!*/;
UPDATE spa_sale_massage SET id='1599', book_by='0', inv_num='49', inv_refer='201704-0049', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='haga kuniko', nationality='Japanese', cashier='9', age='50', gender='Female', cus_email='harokuni1130@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='75.9', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1599
/*!*/;
# at 255841
#170429 12:03:52 server id 111  end_log_pos 255937 CRC32 0xe7e80067 	Query	thread_id=362	exec_time=0	error_code=0
SET TIMESTAMP=1493442232/*!*/;
COMMIT
/*!*/;
# at 255937
#170429 12:03:54 server id 111  end_log_pos 256032 CRC32 0x3e6875cd 	Query	thread_id=363	exec_time=0	error_code=0
SET TIMESTAMP=1493442234/*!*/;
BEGIN
/*!*/;
# at 256032
#170429 12:03:54 server id 111  end_log_pos 256956 CRC32 0x22f02bac 	Query	thread_id=363	exec_time=0	error_code=0
SET TIMESTAMP=1493442234/*!*/;
UPDATE spa_sale_massage SET id='1601', book_by='0', inv_num='51', inv_refer='201704-0051', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='kamiie junji', nationality='Japanese', cashier='9', age='50', gender='Male', cus_email='junji.xxxxx@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1601
/*!*/;
# at 256956
#170429 12:03:54 server id 111  end_log_pos 257052 CRC32 0x5e017eab 	Query	thread_id=363	exec_time=0	error_code=0
SET TIMESTAMP=1493442234/*!*/;
COMMIT
/*!*/;
# at 257052
#170429 12:20:42 server id 21  end_log_pos 257147 CRC32 0xad0da900 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443242/*!*/;
BEGIN
/*!*/;
# at 257147
# at 257179
#170429 12:20:42 server id 21  end_log_pos 257179 CRC32 0x4b988f61 	Intvar
SET INSERT_ID=34520/*!*/;
#170429 12:20:42 server id 21  end_log_pos 257413 CRC32 0xac4faf82 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443242/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('573','201704-00573','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 257413
#170429 12:20:42 server id 21  end_log_pos 257509 CRC32 0xcb73c0f5 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443242/*!*/;
COMMIT
/*!*/;
# at 257509
#170429 12:21:11 server id 21  end_log_pos 257604 CRC32 0x80c2ac16 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443271/*!*/;
BEGIN
/*!*/;
# at 257604
# at 257636
#170429 12:21:11 server id 21  end_log_pos 257636 CRC32 0x710de8fb 	Intvar
SET INSERT_ID=82123/*!*/;
#170429 12:21:11 server id 21  end_log_pos 257883 CRC32 0x7efd624a 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443271/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34520','439','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 257883
#170429 12:21:11 server id 21  end_log_pos 257979 CRC32 0xf4a588c5 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443271/*!*/;
COMMIT
/*!*/;
# at 257979
#170429 12:21:18 server id 21  end_log_pos 258074 CRC32 0xebbab6b6 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443278/*!*/;
BEGIN
/*!*/;
# at 258074
# at 258106
#170429 12:21:18 server id 21  end_log_pos 258106 CRC32 0xb91161bc 	Intvar
SET INSERT_ID=82124/*!*/;
#170429 12:21:18 server id 21  end_log_pos 258353 CRC32 0x989d5082 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443278/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34520','440','1.00000000000000000e+000','8.00000000000000000e+000','2')
/*!*/;
# at 258353
#170429 12:21:18 server id 21  end_log_pos 258449 CRC32 0x32ebad91 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443278/*!*/;
COMMIT
/*!*/;
# at 258449
#170429 12:21:20 server id 21  end_log_pos 258544 CRC32 0xb2dc8bf2 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443280/*!*/;
BEGIN
/*!*/;
# at 258544
#170429 12:21:20 server id 21  end_log_pos 259167 CRC32 0x987dcb90 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443280/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:21:11',`total`='1.60000000000000000e+001'  WHERE `id` = '34520' AND `inv_num` = '573' AND `inv_refer` = '201704-00573' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 259167
#170429 12:21:20 server id 21  end_log_pos 259263 CRC32 0x2d244d1d 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443280/*!*/;
COMMIT
/*!*/;
# at 259263
#170429 12:21:23 server id 21  end_log_pos 259358 CRC32 0x4b880871 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443283/*!*/;
BEGIN
/*!*/;
# at 259358
#170429 12:21:23 server id 21  end_log_pos 259988 CRC32 0x155d6b5d 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443283/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+001'  WHERE `id` = '34520' AND `inv_num` = '573' AND `inv_refer` = '201704-00573' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:21:11' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.60000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 259988
#170429 12:21:23 server id 21  end_log_pos 260084 CRC32 0x21f0c676 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443283/*!*/;
COMMIT
/*!*/;
# at 260084
#170429 12:21:31 server id 21  end_log_pos 260179 CRC32 0xd65b3d78 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443291/*!*/;
BEGIN
/*!*/;
# at 260179
#170429 12:21:31 server id 21  end_log_pos 260849 CRC32 0xc295e2fb 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443291/*!*/;
UPDATE `oms_sale` SET `nationality`='Euoropean',`age`='55',`gender`='Male'  WHERE `id` = '34520' AND `inv_num` = '573' AND `inv_refer` = '201704-00573' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:21:11' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.60000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 260849
#170429 12:21:31 server id 21  end_log_pos 260945 CRC32 0x84f5468e 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443291/*!*/;
COMMIT
/*!*/;
# at 260945
#170429 12:21:54 server id 21  end_log_pos 261040 CRC32 0x89179bb9 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443314/*!*/;
BEGIN
/*!*/;
# at 261040
# at 261072
#170429 12:21:54 server id 21  end_log_pos 261072 CRC32 0xebcdbaa8 	Intvar
SET INSERT_ID=34521/*!*/;
#170429 12:21:54 server id 21  end_log_pos 261306 CRC32 0x75e7cfe1 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443314/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('574','201704-00574','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 261306
#170429 12:21:54 server id 21  end_log_pos 261402 CRC32 0xbd57c368 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443314/*!*/;
COMMIT
/*!*/;
# at 261402
#170429 12:22:03 server id 21  end_log_pos 261497 CRC32 0xd48b3e4b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443323/*!*/;
BEGIN
/*!*/;
# at 261497
# at 261529
#170429 12:22:03 server id 21  end_log_pos 261529 CRC32 0x3ffcce3c 	Intvar
SET INSERT_ID=82125/*!*/;
#170429 12:22:03 server id 21  end_log_pos 261776 CRC32 0xa7721a35 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443323/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34521','396','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 261776
#170429 12:22:03 server id 21  end_log_pos 261872 CRC32 0x461dd611 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443323/*!*/;
COMMIT
/*!*/;
# at 261872
#170429 12:22:46 server id 21  end_log_pos 261967 CRC32 0x1421e1e7 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443366/*!*/;
BEGIN
/*!*/;
# at 261967
#170429 12:22:46 server id 21  end_log_pos 262590 CRC32 0xd7e2d1c0 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443366/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:22:03',`total`='8.00000000000000000e+000'  WHERE `id` = '34521' AND `inv_num` = '574' AND `inv_refer` = '201704-00574' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 262590
#170429 12:22:46 server id 21  end_log_pos 262686 CRC32 0xd40e894e 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443366/*!*/;
COMMIT
/*!*/;
# at 262686
#170429 12:22:53 server id 21  end_log_pos 262781 CRC32 0x3001f902 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443373/*!*/;
BEGIN
/*!*/;
# at 262781
#170429 12:22:53 server id 21  end_log_pos 263431 CRC32 0x3c5d0b8f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443373/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='37',`gender`='Female'  WHERE `id` = '34521' AND `inv_num` = '574' AND `inv_refer` = '201704-00574' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:22:03' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '8.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 263431
#170429 12:22:53 server id 21  end_log_pos 263527 CRC32 0x224400a3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443373/*!*/;
COMMIT
/*!*/;
# at 263527
#170429 12:24:35 server id 21  end_log_pos 263622 CRC32 0x5a6e040b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443475/*!*/;
BEGIN
/*!*/;
# at 263622
#170429 12:24:35 server id 21  end_log_pos 264259 CRC32 0x15392b1a 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443475/*!*/;
UPDATE `oms_sale` SET `bill`='8.00000000000000000e+000'  WHERE `id` = '34521' AND `inv_num` = '574' AND `inv_refer` = '201704-00574' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` = 'Japanese' AND `employee` = '26' AND `age` = '37' AND `gender` = 'Female' AND `time` = '1899-12-30 12:22:03' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '8.00000000000000000e+000' AND `guide_name` IS NULL
/*!*/;
# at 264259
#170429 12:24:35 server id 21  end_log_pos 264355 CRC32 0x05b982c3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443475/*!*/;
COMMIT
/*!*/;
# at 264355
#170429 12:24:44 server id 111  end_log_pos 264450 CRC32 0x5c490b4a 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443484/*!*/;
/*!\C utf8 *//*!*/;
SET @@session.character_set_client=33,@@session.collation_connection=33,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 264450
# at 264482
#170429 12:24:44 server id 111  end_log_pos 264482 CRC32 0x4880d4ae 	Intvar
SET INSERT_ID=1185/*!*/;
#170429 12:24:44 server id 111  end_log_pos 264723 CRC32 0x8efb9162 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443484/*!*/;
INSERT INTO  `spa_sale_product`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('26','201704-00026','2017-04-29 00:00:00','30','Cash')
/*!*/;
# at 264723
#170429 12:24:44 server id 111  end_log_pos 264819 CRC32 0x74c4b968 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443484/*!*/;
COMMIT
/*!*/;
# at 264819
#170429 12:24:48 server id 111  end_log_pos 264914 CRC32 0xaeeb25d4 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443488/*!*/;
BEGIN
/*!*/;
# at 264914
# at 264946
#170429 12:24:48 server id 111  end_log_pos 264946 CRC32 0x61a04337 	Intvar
SET INSERT_ID=4238/*!*/;
#170429 12:24:48 server id 111  end_log_pos 265200 CRC32 0x9a66e81e 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443488/*!*/;
INSERT INTO  `spa_sale_product_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('1185','445','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 265200
#170429 12:24:48 server id 111  end_log_pos 265296 CRC32 0x75495354 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443488/*!*/;
COMMIT
/*!*/;
# at 265296
#170429 12:24:50 server id 111  end_log_pos 265391 CRC32 0x48237ead 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443490/*!*/;
BEGIN
/*!*/;
# at 265391
#170429 12:24:50 server id 111  end_log_pos 265570 CRC32 0x99fc4f84 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443490/*!*/;
UPDATE `spa_sale_product_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '4238'
/*!*/;
# at 265570
#170429 12:24:50 server id 111  end_log_pos 265666 CRC32 0xc8f48515 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443490/*!*/;
COMMIT
/*!*/;
# at 265666
#170429 12:24:52 server id 111  end_log_pos 265761 CRC32 0x7cbaccfb 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443492/*!*/;
BEGIN
/*!*/;
# at 265761
#170429 12:24:52 server id 111  end_log_pos 265940 CRC32 0x8359969a 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443492/*!*/;
UPDATE `spa_sale_product_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '4238'
/*!*/;
# at 265940
#170429 12:24:52 server id 111  end_log_pos 266036 CRC32 0x9cf77d8e 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443492/*!*/;
COMMIT
/*!*/;
# at 266036
#170429 12:24:54 server id 111  end_log_pos 266131 CRC32 0x127f3b78 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443494/*!*/;
BEGIN
/*!*/;
# at 266131
#170429 12:24:54 server id 111  end_log_pos 266310 CRC32 0x8abe93d9 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443494/*!*/;
UPDATE `spa_sale_product_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '4238'
/*!*/;
# at 266310
#170429 12:24:54 server id 111  end_log_pos 266406 CRC32 0x1b072be7 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443494/*!*/;
COMMIT
/*!*/;
# at 266406
#170429 12:24:56 server id 111  end_log_pos 266501 CRC32 0x68f26a9a 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443496/*!*/;
BEGIN
/*!*/;
# at 266501
#170429 12:24:56 server id 111  end_log_pos 266680 CRC32 0x5cf66d34 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443496/*!*/;
UPDATE `spa_sale_product_detail` SET `qty`='5.00000000000000000e+000' WHERE `id` = '4238'
/*!*/;
# at 266680
#170429 12:24:56 server id 111  end_log_pos 266776 CRC32 0xb439fea6 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443496/*!*/;
COMMIT
/*!*/;
# at 266776
#170429 12:24:59 server id 111  end_log_pos 266871 CRC32 0x23f5b59d 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443499/*!*/;
BEGIN
/*!*/;
# at 266871
#170429 12:24:59 server id 111  end_log_pos 267490 CRC32 0xd4317410 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443499/*!*/;
UPDATE `spa_sale_product` SET `time`='1899-12-30 12:24:48',`total`='4.00000000000000000e+001'  WHERE `id` = '1185' AND `inv_num` = '26' AND `inv_refer` = '201704-00026' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '30' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `change` IS NULL AND `pay_by` = 'Cash' AND `guide` IS NULL AND `total` IS NULL
/*!*/;
# at 267490
#170429 12:24:59 server id 111  end_log_pos 267586 CRC32 0x914249ab 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443499/*!*/;
COMMIT
/*!*/;
# at 267586
#170429 12:25:03 server id 111  end_log_pos 267681 CRC32 0xbbc8539d 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443503/*!*/;
BEGIN
/*!*/;
# at 267681
# at 267713
#170429 12:25:03 server id 111  end_log_pos 267713 CRC32 0x37ae050c 	Intvar
SET INSERT_ID=6469/*!*/;
#170429 12:25:03 server id 111  end_log_pos 267894 CRC32 0xfc0adef8 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443503/*!*/;
INSERT INTO  `spa_sale_product_gift`  (`main_id`,`product`,`qty`) VALUES ('1185','445','1')
/*!*/;
# at 267894
#170429 12:25:03 server id 111  end_log_pos 267990 CRC32 0x0ff24ae0 	Query	thread_id=395	exec_time=0	error_code=0
SET TIMESTAMP=1493443503/*!*/;
COMMIT
/*!*/;
# at 267990
#170429 12:30:49 server id 21  end_log_pos 268085 CRC32 0x992cfcef 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443849/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 268085
# at 268117
#170429 12:30:49 server id 21  end_log_pos 268117 CRC32 0x07af163c 	Intvar
SET INSERT_ID=34522/*!*/;
#170429 12:30:49 server id 21  end_log_pos 268351 CRC32 0xe246d36f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443849/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('575','201704-00575','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 268351
#170429 12:30:49 server id 21  end_log_pos 268447 CRC32 0x4230b2c7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443849/*!*/;
COMMIT
/*!*/;
# at 268447
#170429 12:30:51 server id 21  end_log_pos 268542 CRC32 0x5382fc4c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443851/*!*/;
BEGIN
/*!*/;
# at 268542
# at 268574
#170429 12:30:51 server id 21  end_log_pos 268574 CRC32 0x473022c0 	Intvar
SET INSERT_ID=82126/*!*/;
#170429 12:30:51 server id 21  end_log_pos 268819 CRC32 0x923414ac 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443851/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34522','9','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 268819
#170429 12:30:51 server id 21  end_log_pos 268915 CRC32 0xd1c98750 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443851/*!*/;
COMMIT
/*!*/;
# at 268915
#170429 12:30:51 server id 21  end_log_pos 269010 CRC32 0x45bfdcdf 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443851/*!*/;
BEGIN
/*!*/;
# at 269010
#170429 12:30:51 server id 21  end_log_pos 269182 CRC32 0x52ef19d9 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443851/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82126'
/*!*/;
# at 269182
#170429 12:30:51 server id 21  end_log_pos 269278 CRC32 0xbddd3bc3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443851/*!*/;
COMMIT
/*!*/;
# at 269278
#170429 12:30:55 server id 21  end_log_pos 269373 CRC32 0xd53b27a6 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443855/*!*/;
BEGIN
/*!*/;
# at 269373
# at 269405
#170429 12:30:55 server id 21  end_log_pos 269405 CRC32 0xd268a943 	Intvar
SET INSERT_ID=82127/*!*/;
#170429 12:30:55 server id 21  end_log_pos 269651 CRC32 0x99ed2551 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443855/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34522','10','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 269651
#170429 12:30:55 server id 21  end_log_pos 269747 CRC32 0x900f9030 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443855/*!*/;
COMMIT
/*!*/;
# at 269747
#170429 12:30:56 server id 21  end_log_pos 269842 CRC32 0xd5bd2f4f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443856/*!*/;
BEGIN
/*!*/;
# at 269842
#170429 12:30:56 server id 21  end_log_pos 270014 CRC32 0x8ba19000 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443856/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82127'
/*!*/;
# at 270014
#170429 12:30:56 server id 21  end_log_pos 270110 CRC32 0x4d42aa74 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443856/*!*/;
COMMIT
/*!*/;
# at 270110
#170429 12:31:01 server id 21  end_log_pos 270205 CRC32 0x2d49490b 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443861/*!*/;
BEGIN
/*!*/;
# at 270205
# at 270237
#170429 12:31:01 server id 21  end_log_pos 270237 CRC32 0x9a75e7db 	Intvar
SET INSERT_ID=82128/*!*/;
#170429 12:31:01 server id 21  end_log_pos 270483 CRC32 0xb1b54b46 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443861/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34522','11','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 270483
#170429 12:31:01 server id 21  end_log_pos 270579 CRC32 0x6c3c1750 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443861/*!*/;
COMMIT
/*!*/;
# at 270579
#170429 12:31:03 server id 21  end_log_pos 270674 CRC32 0x97f14e40 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443863/*!*/;
BEGIN
/*!*/;
# at 270674
#170429 12:31:03 server id 21  end_log_pos 271297 CRC32 0xd0e84d65 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443863/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:30:51',`total`='2.50000000000000000e+001'  WHERE `id` = '34522' AND `inv_num` = '575' AND `inv_refer` = '201704-00575' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 271297
#170429 12:31:03 server id 21  end_log_pos 271393 CRC32 0x6371788c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493443863/*!*/;
COMMIT
/*!*/;
# at 271393
#170429 12:31:05 server id 21  end_log_pos 271488 CRC32 0x1871186c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443865/*!*/;
BEGIN
/*!*/;
# at 271488
# at 271520
#170429 12:31:05 server id 21  end_log_pos 271520 CRC32 0x0966791d 	Intvar
SET INSERT_ID=13119/*!*/;
#170429 12:31:05 server id 21  end_log_pos 271693 CRC32 0x9fafaeac 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443865/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34522','11','1')
/*!*/;
# at 271693
#170429 12:31:05 server id 21  end_log_pos 271789 CRC32 0x6d73a14c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493443865/*!*/;
COMMIT
/*!*/;
# at 271789
#170429 12:32:17 server id 21  end_log_pos 271884 CRC32 0x7d5b6c25 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493443937/*!*/;
BEGIN
/*!*/;
# at 271884
#170429 12:32:17 server id 21  end_log_pos 272514 CRC32 0x78d6429c 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493443937/*!*/;
UPDATE `oms_sale` SET `bill`='2.50000000000000000e+001'  WHERE `id` = '34522' AND `inv_num` = '575' AND `inv_refer` = '201704-00575' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:30:51' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 272514
#170429 12:32:17 server id 21  end_log_pos 272610 CRC32 0x79e6a7c0 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493443937/*!*/;
COMMIT
/*!*/;
# at 272610
#170429 12:37:56 server id 21  end_log_pos 272705 CRC32 0x6cd13ac5 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444276/*!*/;
BEGIN
/*!*/;
# at 272705
#170429 12:37:56 server id 21  end_log_pos 273399 CRC32 0x3a45de95 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444276/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='55',`gender`='Female',`pay_by`='Credit Card'  WHERE `id` = '34522' AND `inv_num` = '575' AND `inv_refer` = '201704-00575' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:30:51' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '2.50000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 273399
#170429 12:37:56 server id 21  end_log_pos 273495 CRC32 0xc1e3c636 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444276/*!*/;
COMMIT
/*!*/;
# at 273495
#170429 12:41:53 server id 21  end_log_pos 273590 CRC32 0x40fa943a 	Query	thread_id=9	exec_time=3	error_code=0
SET TIMESTAMP=1493444513/*!*/;
BEGIN
/*!*/;
# at 273590
# at 273622
#170429 12:41:53 server id 21  end_log_pos 273622 CRC32 0x4ce70073 	Intvar
SET INSERT_ID=34523/*!*/;
#170429 12:41:53 server id 21  end_log_pos 273856 CRC32 0x9f5656f7 	Query	thread_id=9	exec_time=3	error_code=0
SET TIMESTAMP=1493444513/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('576','201704-00576','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 273856
#170429 12:41:53 server id 21  end_log_pos 273952 CRC32 0xe25e621f 	Query	thread_id=9	exec_time=3	error_code=0
SET TIMESTAMP=1493444513/*!*/;
COMMIT
/*!*/;
# at 273952
#170429 12:41:54 server id 21  end_log_pos 274047 CRC32 0x26b94be0 	Query	thread_id=9	exec_time=2	error_code=0
SET TIMESTAMP=1493444514/*!*/;
BEGIN
/*!*/;
# at 274047
# at 274079
#170429 12:41:54 server id 21  end_log_pos 274079 CRC32 0xe68fca37 	Intvar
SET INSERT_ID=82129/*!*/;
#170429 12:41:54 server id 21  end_log_pos 274326 CRC32 0x34eec457 	Query	thread_id=9	exec_time=2	error_code=0
SET TIMESTAMP=1493444514/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34523','256','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 274326
#170429 12:41:54 server id 21  end_log_pos 274422 CRC32 0x27dcb40f 	Query	thread_id=9	exec_time=2	error_code=0
SET TIMESTAMP=1493444514/*!*/;
COMMIT
/*!*/;
# at 274422
#170429 12:42:00 server id 21  end_log_pos 274517 CRC32 0x4a6b244c 	Query	thread_id=9	exec_time=15	error_code=0
SET TIMESTAMP=1493444520/*!*/;
BEGIN
/*!*/;
# at 274517
# at 274549
#170429 12:42:00 server id 21  end_log_pos 274549 CRC32 0xa05b7ea4 	Intvar
SET INSERT_ID=82130/*!*/;
#170429 12:42:00 server id 21  end_log_pos 274795 CRC32 0xa28e042c 	Query	thread_id=9	exec_time=15	error_code=0
SET TIMESTAMP=1493444520/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34523','37','1.00000000000000000e+000','3.00000000000000000e+000','2')
/*!*/;
# at 274795
#170429 12:42:00 server id 21  end_log_pos 274891 CRC32 0xb4feabc3 	Query	thread_id=9	exec_time=15	error_code=0
SET TIMESTAMP=1493444520/*!*/;
COMMIT
/*!*/;
# at 274891
#170429 12:42:03 server id 21  end_log_pos 274986 CRC32 0x52d4e628 	Query	thread_id=9	exec_time=12	error_code=0
SET TIMESTAMP=1493444523/*!*/;
BEGIN
/*!*/;
# at 274986
# at 275018
#170429 12:42:03 server id 21  end_log_pos 275018 CRC32 0x176edffc 	Intvar
SET INSERT_ID=82131/*!*/;
#170429 12:42:03 server id 21  end_log_pos 275265 CRC32 0x2ae1f79f 	Query	thread_id=9	exec_time=12	error_code=0
SET TIMESTAMP=1493444523/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34523','616','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 275265
#170429 12:42:03 server id 21  end_log_pos 275361 CRC32 0x25e57d82 	Query	thread_id=9	exec_time=12	error_code=0
SET TIMESTAMP=1493444523/*!*/;
COMMIT
/*!*/;
# at 275361
#170429 12:42:20 server id 21  end_log_pos 275456 CRC32 0x9a98c34d 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444540/*!*/;
BEGIN
/*!*/;
# at 275456
#170429 12:42:20 server id 21  end_log_pos 276079 CRC32 0xf65c100e 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444540/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:41:54',`total`='1.60000000000000000e+001'  WHERE `id` = '34523' AND `inv_num` = '576' AND `inv_refer` = '201704-00576' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 276079
#170429 12:42:20 server id 21  end_log_pos 276175 CRC32 0x7841c742 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444540/*!*/;
COMMIT
/*!*/;
# at 276175
#170429 12:42:23 server id 21  end_log_pos 276270 CRC32 0x1626e28f 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444543/*!*/;
BEGIN
/*!*/;
# at 276270
#170429 12:42:23 server id 21  end_log_pos 276900 CRC32 0x1fe5f5b7 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444543/*!*/;
UPDATE `oms_sale` SET `bill`='1.60000000000000000e+001'  WHERE `id` = '34523' AND `inv_num` = '576' AND `inv_refer` = '201704-00576' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:41:54' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.60000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 276900
#170429 12:42:23 server id 21  end_log_pos 276996 CRC32 0xbc53fbb8 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444543/*!*/;
COMMIT
/*!*/;
# at 276996
#170429 12:44:24 server id 21  end_log_pos 277091 CRC32 0xde177664 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444664/*!*/;
BEGIN
/*!*/;
# at 277091
# at 277123
#170429 12:44:24 server id 21  end_log_pos 277123 CRC32 0xb8a0fea0 	Intvar
SET INSERT_ID=34524/*!*/;
#170429 12:44:24 server id 21  end_log_pos 277357 CRC32 0x75b07d75 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444664/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('577','201704-00577','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 277357
#170429 12:44:24 server id 21  end_log_pos 277453 CRC32 0x2c0cded1 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444664/*!*/;
COMMIT
/*!*/;
# at 277453
#170429 12:44:25 server id 21  end_log_pos 277548 CRC32 0x375b4193 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444665/*!*/;
BEGIN
/*!*/;
# at 277548
# at 277580
#170429 12:44:25 server id 21  end_log_pos 277580 CRC32 0x265762f1 	Intvar
SET INSERT_ID=82132/*!*/;
#170429 12:44:25 server id 21  end_log_pos 277827 CRC32 0x0ed7ed66 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444665/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','617','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 277827
#170429 12:44:25 server id 21  end_log_pos 277923 CRC32 0x8da74324 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444665/*!*/;
COMMIT
/*!*/;
# at 277923
#170429 12:44:43 server id 21  end_log_pos 278018 CRC32 0x1611de42 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444683/*!*/;
BEGIN
/*!*/;
# at 278018
# at 278050
#170429 12:44:43 server id 21  end_log_pos 278050 CRC32 0xe72a345e 	Intvar
SET INSERT_ID=82133/*!*/;
#170429 12:44:43 server id 21  end_log_pos 278295 CRC32 0xb462b4d8 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444683/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','9','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 278295
#170429 12:44:43 server id 21  end_log_pos 278391 CRC32 0xaef69881 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444683/*!*/;
COMMIT
/*!*/;
# at 278391
#170429 12:44:46 server id 21  end_log_pos 278486 CRC32 0x87b2b14c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444686/*!*/;
BEGIN
/*!*/;
# at 278486
# at 278518
#170429 12:44:46 server id 21  end_log_pos 278518 CRC32 0xb9aaaa48 	Intvar
SET INSERT_ID=82134/*!*/;
#170429 12:44:46 server id 21  end_log_pos 278764 CRC32 0x774551ef 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444686/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','10','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 278764
#170429 12:44:46 server id 21  end_log_pos 278860 CRC32 0x346bc1cb 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444686/*!*/;
COMMIT
/*!*/;
# at 278860
#170429 12:44:47 server id 21  end_log_pos 278955 CRC32 0x4f840b73 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444687/*!*/;
BEGIN
/*!*/;
# at 278955
#170429 12:44:47 server id 21  end_log_pos 279127 CRC32 0x0ea5b9bd 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444687/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82134'
/*!*/;
# at 279127
#170429 12:44:47 server id 21  end_log_pos 279223 CRC32 0x2631a54a 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444687/*!*/;
COMMIT
/*!*/;
# at 279223
#170429 12:44:54 server id 21  end_log_pos 279318 CRC32 0x394ea39a 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444694/*!*/;
BEGIN
/*!*/;
# at 279318
# at 279350
#170429 12:44:54 server id 21  end_log_pos 279350 CRC32 0x27163a40 	Intvar
SET INSERT_ID=82135/*!*/;
#170429 12:44:54 server id 21  end_log_pos 279596 CRC32 0xfeccb819 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444694/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','39','1.00000000000000000e+000','5.00000000000000000e+000','4')
/*!*/;
# at 279596
#170429 12:44:54 server id 21  end_log_pos 279692 CRC32 0x4ff05cbd 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444694/*!*/;
COMMIT
/*!*/;
# at 279692
#170429 12:44:56 server id 21  end_log_pos 279787 CRC32 0x9da627a4 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444696/*!*/;
BEGIN
/*!*/;
# at 279787
# at 279819
#170429 12:44:56 server id 21  end_log_pos 279819 CRC32 0x3e4e5621 	Intvar
SET INSERT_ID=82136/*!*/;
#170429 12:44:56 server id 21  end_log_pos 280065 CRC32 0xeb19c53c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444696/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','62','1.00000000000000000e+000','1.00000000000000000e+000','5')
/*!*/;
# at 280065
#170429 12:44:56 server id 21  end_log_pos 280161 CRC32 0x57498b37 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444696/*!*/;
COMMIT
/*!*/;
# at 280161
#170429 12:44:56 server id 21  end_log_pos 280256 CRC32 0xf6a0a1a0 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444696/*!*/;
BEGIN
/*!*/;
# at 280256
#170429 12:44:56 server id 21  end_log_pos 280428 CRC32 0x257f7698 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444696/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82136'
/*!*/;
# at 280428
#170429 12:44:56 server id 21  end_log_pos 280524 CRC32 0x7dd44813 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444696/*!*/;
COMMIT
/*!*/;
# at 280524
#170429 12:45:00 server id 21  end_log_pos 280619 CRC32 0x9f85e95a 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444700/*!*/;
BEGIN
/*!*/;
# at 280619
# at 280651
#170429 12:45:00 server id 21  end_log_pos 280651 CRC32 0x8932a9ed 	Intvar
SET INSERT_ID=82137/*!*/;
#170429 12:45:00 server id 21  end_log_pos 280898 CRC32 0xa262f693 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444700/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','445','1.00000000000000000e+000','8.00000000000000000e+000','6')
/*!*/;
# at 280898
#170429 12:45:00 server id 21  end_log_pos 280994 CRC32 0x0cd1d23f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444700/*!*/;
COMMIT
/*!*/;
# at 280994
#170429 12:45:01 server id 21  end_log_pos 281089 CRC32 0xc97912e1 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444701/*!*/;
BEGIN
/*!*/;
# at 281089
#170429 12:45:01 server id 21  end_log_pos 281261 CRC32 0x8c5359e7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444701/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82137'
/*!*/;
# at 281261
#170429 12:45:01 server id 21  end_log_pos 281357 CRC32 0x7c30e0a6 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444701/*!*/;
COMMIT
/*!*/;
# at 281357
#170429 12:45:04 server id 21  end_log_pos 281452 CRC32 0x4ae25668 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444704/*!*/;
BEGIN
/*!*/;
# at 281452
# at 281484
#170429 12:45:04 server id 21  end_log_pos 281484 CRC32 0x423961e5 	Intvar
SET INSERT_ID=82138/*!*/;
#170429 12:45:04 server id 21  end_log_pos 281731 CRC32 0x843e85fb 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444704/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34524','443','1.00000000000000000e+000','8.00000000000000000e+000','7')
/*!*/;
# at 281731
#170429 12:45:04 server id 21  end_log_pos 281827 CRC32 0xc7ecafba 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444704/*!*/;
COMMIT
/*!*/;
# at 281827
#170429 12:45:07 server id 21  end_log_pos 281922 CRC32 0xd3d1c078 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493444707/*!*/;
BEGIN
/*!*/;
# at 281922
#170429 12:45:07 server id 21  end_log_pos 282545 CRC32 0xb30bf6d7 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493444707/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:44:25',`total`='5.10000000000000000e+001'  WHERE `id` = '34524' AND `inv_num` = '577' AND `inv_refer` = '201704-00577' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 282545
#170429 12:45:07 server id 21  end_log_pos 282641 CRC32 0xd841df85 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493444707/*!*/;
COMMIT
/*!*/;
# at 282641
#170429 12:45:10 server id 21  end_log_pos 282736 CRC32 0xd47c88ea 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444710/*!*/;
BEGIN
/*!*/;
# at 282736
# at 282768
#170429 12:45:10 server id 21  end_log_pos 282768 CRC32 0xc704efab 	Intvar
SET INSERT_ID=13120/*!*/;
#170429 12:45:10 server id 21  end_log_pos 282941 CRC32 0x5c9fdcbf 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444710/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34524','12','1')
/*!*/;
# at 282941
#170429 12:45:10 server id 21  end_log_pos 283037 CRC32 0xb3b906e2 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444710/*!*/;
COMMIT
/*!*/;
# at 283037
#170429 12:45:36 server id 21  end_log_pos 283132 CRC32 0x3aa72a10 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444736/*!*/;
BEGIN
/*!*/;
# at 283132
# at 283164
#170429 12:45:36 server id 21  end_log_pos 283164 CRC32 0x653016e9 	Intvar
SET INSERT_ID=13121/*!*/;
#170429 12:45:36 server id 21  end_log_pos 283338 CRC32 0x0f4b0ce9 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444736/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34524','695','1')
/*!*/;
# at 283338
#170429 12:45:36 server id 21  end_log_pos 283434 CRC32 0x702b726e 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444736/*!*/;
COMMIT
/*!*/;
# at 283434
#170429 12:46:35 server id 21  end_log_pos 283529 CRC32 0x962c045c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444795/*!*/;
BEGIN
/*!*/;
# at 283529
#170429 12:46:35 server id 21  end_log_pos 284201 CRC32 0x91976dc5 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444795/*!*/;
UPDATE `oms_sale` SET `nationality`='Euoropean',`age`='35',`gender`='Male',`pay_by`='Credit Card'  WHERE `id` = '34524' AND `inv_num` = '577' AND `inv_refer` = '201704-00577' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:44:25' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '5.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 284201
#170429 12:46:35 server id 21  end_log_pos 284297 CRC32 0x4f1d45d9 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444795/*!*/;
COMMIT
/*!*/;
# at 284297
#170429 12:46:38 server id 21  end_log_pos 284392 CRC32 0x3f02c4c3 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444798/*!*/;
BEGIN
/*!*/;
# at 284392
#170429 12:46:38 server id 21  end_log_pos 285035 CRC32 0x4e48bc8e 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444798/*!*/;
UPDATE `oms_sale` SET `bill`='5.10000000000000000e+001'  WHERE `id` = '34524' AND `inv_num` = '577' AND `inv_refer` = '201704-00577' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` = 'Euoropean' AND `employee` = '26' AND `age` = '35' AND `gender` = 'Male' AND `time` = '1899-12-30 12:44:25' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Credit Card' AND `guide_phone` IS NULL AND `total` = '5.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 285035
#170429 12:46:38 server id 21  end_log_pos 285131 CRC32 0x9a863f34 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444798/*!*/;
COMMIT
/*!*/;
# at 285131
#170429 12:46:53 server id 21  end_log_pos 285226 CRC32 0x9d49b2a0 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444813/*!*/;
BEGIN
/*!*/;
# at 285226
# at 285258
#170429 12:46:53 server id 21  end_log_pos 285258 CRC32 0x97da5f67 	Intvar
SET INSERT_ID=34525/*!*/;
#170429 12:46:53 server id 21  end_log_pos 285492 CRC32 0x98e99c63 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444813/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('578','201704-00578','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 285492
#170429 12:46:53 server id 21  end_log_pos 285588 CRC32 0xd4f7e62a 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444813/*!*/;
COMMIT
/*!*/;
# at 285588
#170429 12:46:55 server id 21  end_log_pos 285683 CRC32 0x981a7939 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493444815/*!*/;
BEGIN
/*!*/;
# at 285683
# at 285715
#170429 12:46:55 server id 21  end_log_pos 285715 CRC32 0x36666d25 	Intvar
SET INSERT_ID=82139/*!*/;
#170429 12:46:55 server id 21  end_log_pos 285962 CRC32 0x88c03bdc 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493444815/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34525','440','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 285962
#170429 12:46:55 server id 21  end_log_pos 286058 CRC32 0x212675e3 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493444815/*!*/;
COMMIT
/*!*/;
# at 286058
#170429 12:46:57 server id 21  end_log_pos 286153 CRC32 0x0b632807 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444817/*!*/;
BEGIN
/*!*/;
# at 286153
#170429 12:46:57 server id 21  end_log_pos 286325 CRC32 0x6a623435 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444817/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82139'
/*!*/;
# at 286325
#170429 12:46:57 server id 21  end_log_pos 286421 CRC32 0x711df74c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444817/*!*/;
COMMIT
/*!*/;
# at 286421
#170429 12:47:03 server id 21  end_log_pos 286516 CRC32 0x8b840ef3 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444823/*!*/;
BEGIN
/*!*/;
# at 286516
#170429 12:47:03 server id 21  end_log_pos 287139 CRC32 0x185c4e30 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444823/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:46:55',`total`='1.60000000000000000e+001'  WHERE `id` = '34525' AND `inv_num` = '578' AND `inv_refer` = '201704-00578' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 287139
#170429 12:47:03 server id 21  end_log_pos 287235 CRC32 0xb8d0e4a0 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493444823/*!*/;
COMMIT
/*!*/;
# at 287235
#170429 12:47:20 server id 21  end_log_pos 287330 CRC32 0x70aef74b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444840/*!*/;
BEGIN
/*!*/;
# at 287330
#170429 12:47:20 server id 21  end_log_pos 287960 CRC32 0x711bc63c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444840/*!*/;
UPDATE `oms_sale` SET `bill`='1.69793999999999980e+001'  WHERE `id` = '34525' AND `inv_num` = '578' AND `inv_refer` = '201704-00578' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:46:55' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.60000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 287960
#170429 12:47:20 server id 21  end_log_pos 288056 CRC32 0x64b0d280 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444840/*!*/;
COMMIT
/*!*/;
# at 288056
#170429 12:47:54 server id 21  end_log_pos 288151 CRC32 0xd751d091 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444874/*!*/;
BEGIN
/*!*/;
# at 288151
#170429 12:47:54 server id 21  end_log_pos 288820 CRC32 0xd6febbdb 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444874/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='50',`gender`='Male'  WHERE `id` = '34525' AND `inv_num` = '578' AND `inv_refer` = '201704-00578' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:46:55' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.69793999999999980e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.60000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 288820
#170429 12:47:54 server id 21  end_log_pos 288916 CRC32 0xf65eb7df 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493444874/*!*/;
COMMIT
/*!*/;
# at 288916
#170429 12:54:15 server id 21  end_log_pos 289011 CRC32 0x4c817fcd 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445255/*!*/;
BEGIN
/*!*/;
# at 289011
# at 289043
#170429 12:54:15 server id 21  end_log_pos 289043 CRC32 0x88aaa9a6 	Intvar
SET INSERT_ID=34526/*!*/;
#170429 12:54:15 server id 21  end_log_pos 289277 CRC32 0x570bf202 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445255/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('579','201704-00579','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 289277
#170429 12:54:15 server id 21  end_log_pos 289373 CRC32 0x5e006fba 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445255/*!*/;
COMMIT
/*!*/;
# at 289373
#170429 12:54:16 server id 21  end_log_pos 289468 CRC32 0x4ca808da 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445256/*!*/;
BEGIN
/*!*/;
# at 289468
# at 289500
#170429 12:54:16 server id 21  end_log_pos 289500 CRC32 0x0b2da1f4 	Intvar
SET INSERT_ID=82140/*!*/;
#170429 12:54:16 server id 21  end_log_pos 289746 CRC32 0xd6de1b71 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445256/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34526','46','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 289746
#170429 12:54:16 server id 21  end_log_pos 289842 CRC32 0x54df5630 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445256/*!*/;
COMMIT
/*!*/;
# at 289842
#170429 12:54:18 server id 21  end_log_pos 289937 CRC32 0xc856c97e 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493445258/*!*/;
BEGIN
/*!*/;
# at 289937
# at 289969
#170429 12:54:18 server id 21  end_log_pos 289969 CRC32 0x821e2709 	Intvar
SET INSERT_ID=82141/*!*/;
#170429 12:54:18 server id 21  end_log_pos 290215 CRC32 0xfdb94d1e 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493445258/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34526','11','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 290215
#170429 12:54:18 server id 21  end_log_pos 290311 CRC32 0x93674bcb 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493445258/*!*/;
COMMIT
/*!*/;
# at 290311
#170429 12:54:22 server id 21  end_log_pos 290406 CRC32 0x3665ea55 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493445262/*!*/;
BEGIN
/*!*/;
# at 290406
# at 290438
#170429 12:54:22 server id 21  end_log_pos 290438 CRC32 0xbc8ebef8 	Intvar
SET INSERT_ID=82142/*!*/;
#170429 12:54:22 server id 21  end_log_pos 290685 CRC32 0xd288d6d2 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493445262/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34526','433','1.00000000000000000e+000','3.00000000000000000e+000','3')
/*!*/;
# at 290685
#170429 12:54:22 server id 21  end_log_pos 290781 CRC32 0xa6e660b5 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493445262/*!*/;
COMMIT
/*!*/;
# at 290781
#170429 12:54:29 server id 21  end_log_pos 290876 CRC32 0x15fc3a52 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445269/*!*/;
BEGIN
/*!*/;
# at 290876
# at 290908
#170429 12:54:29 server id 21  end_log_pos 290908 CRC32 0x6e32800a 	Intvar
SET INSERT_ID=82143/*!*/;
#170429 12:54:29 server id 21  end_log_pos 291154 CRC32 0x715cec08 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445269/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34526','29','1.00000000000000000e+000','5.00000000000000000e+000','4')
/*!*/;
# at 291154
#170429 12:54:29 server id 21  end_log_pos 291250 CRC32 0x2a1f6128 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445269/*!*/;
COMMIT
/*!*/;
# at 291250
#170429 12:54:39 server id 21  end_log_pos 291345 CRC32 0xf11e50ab 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445279/*!*/;
BEGIN
/*!*/;
# at 291345
#170429 12:54:39 server id 21  end_log_pos 291968 CRC32 0x8a6351e0 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445279/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:54:16',`total`='1.80000000000000000e+001'  WHERE `id` = '34526' AND `inv_num` = '579' AND `inv_refer` = '201704-00579' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 291968
#170429 12:54:39 server id 21  end_log_pos 292064 CRC32 0x8dc076dc 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445279/*!*/;
COMMIT
/*!*/;
# at 292064
#170429 12:55:04 server id 21  end_log_pos 292159 CRC32 0xc712a7fe 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445304/*!*/;
BEGIN
/*!*/;
# at 292159
#170429 12:55:04 server id 21  end_log_pos 292812 CRC32 0x70b1b934 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445304/*!*/;
UPDATE `oms_sale` SET `bill`='1.80000000000000000e+001',`pay_by`='Credit Card'  WHERE `id` = '34526' AND `inv_num` = '579' AND `inv_refer` = '201704-00579' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:54:16' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.80000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 292812
#170429 12:55:04 server id 21  end_log_pos 292908 CRC32 0x4ff2e8f7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445304/*!*/;
COMMIT
/*!*/;
# at 292908
#170429 12:55:32 server id 21  end_log_pos 293003 CRC32 0x86eb82ed 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445332/*!*/;
BEGIN
/*!*/;
# at 293003
# at 293035
#170429 12:55:32 server id 21  end_log_pos 293035 CRC32 0x86ea7878 	Intvar
SET INSERT_ID=34527/*!*/;
#170429 12:55:32 server id 21  end_log_pos 293269 CRC32 0x2bdabcaa 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445332/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('580','201704-00580','2017-04-29 00:00:00','26','Cash')
/*!*/;
# at 293269
#170429 12:55:32 server id 21  end_log_pos 293365 CRC32 0x065cf51c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445332/*!*/;
COMMIT
/*!*/;
# at 293365
#170429 12:55:33 server id 21  end_log_pos 293460 CRC32 0x64c73c64 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445333/*!*/;
BEGIN
/*!*/;
# at 293460
# at 293492
#170429 12:55:33 server id 21  end_log_pos 293492 CRC32 0xcadbae19 	Intvar
SET INSERT_ID=82144/*!*/;
#170429 12:55:33 server id 21  end_log_pos 293738 CRC32 0x883a3d7b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445333/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34527','21','1.00000000000000000e+000','2.50000000000000000e+000','1')
/*!*/;
# at 293738
#170429 12:55:33 server id 21  end_log_pos 293834 CRC32 0x8165af21 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445333/*!*/;
COMMIT
/*!*/;
# at 293834
#170429 12:55:38 server id 21  end_log_pos 293929 CRC32 0x41afedf8 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445338/*!*/;
BEGIN
/*!*/;
# at 293929
# at 293961
#170429 12:55:38 server id 21  end_log_pos 293961 CRC32 0xc7bc2d57 	Intvar
SET INSERT_ID=82145/*!*/;
#170429 12:55:38 server id 21  end_log_pos 294207 CRC32 0x17558e91 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445338/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34527','27','1.00000000000000000e+000','5.00000000000000000e+000','2')
/*!*/;
# at 294207
#170429 12:55:38 server id 21  end_log_pos 294303 CRC32 0x83c369f8 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445338/*!*/;
COMMIT
/*!*/;
# at 294303
#170429 12:55:46 server id 21  end_log_pos 294398 CRC32 0xc1dfb1c1 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445346/*!*/;
BEGIN
/*!*/;
# at 294398
# at 294430
#170429 12:55:46 server id 21  end_log_pos 294430 CRC32 0x9d8a9fa9 	Intvar
SET INSERT_ID=82146/*!*/;
#170429 12:55:46 server id 21  end_log_pos 294677 CRC32 0x0117697a 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445346/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34527','672','1.00000000000000000e+000','4.50000000000000000e+000','3')
/*!*/;
# at 294677
#170429 12:55:46 server id 21  end_log_pos 294773 CRC32 0x21341027 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445346/*!*/;
COMMIT
/*!*/;
# at 294773
#170429 12:55:56 server id 21  end_log_pos 294868 CRC32 0x0f4011ea 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445356/*!*/;
BEGIN
/*!*/;
# at 294868
#170429 12:55:56 server id 21  end_log_pos 295491 CRC32 0x0902bf7f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445356/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 12:55:33',`total`='1.20000000000000000e+001'  WHERE `id` = '34527' AND `inv_num` = '580' AND `inv_refer` = '201704-00580' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 295491
#170429 12:55:56 server id 21  end_log_pos 295587 CRC32 0x28bff70d 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445356/*!*/;
COMMIT
/*!*/;
# at 295587
#170429 12:55:58 server id 21  end_log_pos 295682 CRC32 0xf0fdae83 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445358/*!*/;
BEGIN
/*!*/;
# at 295682
#170429 12:55:58 server id 21  end_log_pos 296312 CRC32 0x87074574 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445358/*!*/;
UPDATE `oms_sale` SET `bill`='2.20000000000000000e+001'  WHERE `id` = '34527' AND `inv_num` = '580' AND `inv_refer` = '201704-00580' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:55:33' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.20000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 296312
#170429 12:55:58 server id 21  end_log_pos 296408 CRC32 0x9f45d54c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445358/*!*/;
COMMIT
/*!*/;
# at 296408
#170429 12:56:12 server id 111  end_log_pos 296593 CRC32 0xf840d2bc 	Query	thread_id=408	exec_time=0	error_code=0
SET TIMESTAMP=1493445372/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=224,@@session.collation_server=8/*!*/;
ALTER TABLE `spa_sale_massage`  ADD `sale_status` INT NOT NULL DEFAULT '0'  AFTER `back_margin`
/*!*/;
# at 296593
#170429 12:56:35 server id 21  end_log_pos 296688 CRC32 0xb9b983ef 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445395/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 296688
#170429 12:56:35 server id 21  end_log_pos 297382 CRC32 0x314899e7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445395/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='27',`gender`='Female',`pay_by`='Credit Card'  WHERE `id` = '34527' AND `inv_num` = '580' AND `inv_refer` = '201704-00580' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:55:33' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '2.20000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.20000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 297382
#170429 12:56:35 server id 21  end_log_pos 297478 CRC32 0x744d9457 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493445395/*!*/;
COMMIT
/*!*/;
# at 297478
#170429 12:56:46 server id 21  end_log_pos 297573 CRC32 0x95baeb7d 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493445406/*!*/;
BEGIN
/*!*/;
# at 297573
#170429 12:56:46 server id 21  end_log_pos 298251 CRC32 0xb138cc00 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493445406/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='27',`gender`='Female'  WHERE `id` = '34526' AND `inv_num` = '579' AND `inv_refer` = '201704-00579' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '26' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 12:54:16' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '1.80000000000000000e+001' AND `pay_by` = 'Credit Card' AND `guide_phone` IS NULL AND `total` = '1.80000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 298251
#170429 12:56:46 server id 21  end_log_pos 298347 CRC32 0x727e6c8f 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493445406/*!*/;
COMMIT
/*!*/;
# at 298347
#170429 13:03:51 server id 111  end_log_pos 298442 CRC32 0x2ad72398 	Query	thread_id=414	exec_time=0	error_code=0
SET TIMESTAMP=1493445831/*!*/;
BEGIN
/*!*/;
# at 298442
#170429 13:03:51 server id 111  end_log_pos 299342 CRC32 0x271d7d92 	Query	thread_id=414	exec_time=0	error_code=0
SET TIMESTAMP=1493445831/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total=NULL, date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 299342
#170429 13:03:51 server id 111  end_log_pos 299438 CRC32 0x005dce77 	Query	thread_id=414	exec_time=0	error_code=0
SET TIMESTAMP=1493445831/*!*/;
COMMIT
/*!*/;
# at 299438
#170429 13:03:52 server id 111  end_log_pos 299533 CRC32 0x054f01b4 	Query	thread_id=415	exec_time=0	error_code=0
SET TIMESTAMP=1493445832/*!*/;
BEGIN
/*!*/;
# at 299533
#170429 13:03:52 server id 111  end_log_pos 300433 CRC32 0xab184f8a 	Query	thread_id=415	exec_time=0	error_code=0
SET TIMESTAMP=1493445832/*!*/;
UPDATE spa_sale_massage SET id='1602', book_by='0', inv_num='52', inv_refer='201704-0052', date_booked='2017-04-29 00:00:00', date_bill='2017-04-29', customer='celine', nationality='Chinese', cashier='9', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='55', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL WHERE id =1602
/*!*/;
# at 300433
#170429 13:03:52 server id 111  end_log_pos 300529 CRC32 0x70aa2042 	Query	thread_id=415	exec_time=0	error_code=0
SET TIMESTAMP=1493445832/*!*/;
COMMIT
/*!*/;
# at 300529
#170429 13:03:57 server id 111  end_log_pos 300624 CRC32 0x8e574cd4 	Query	thread_id=416	exec_time=0	error_code=0
SET TIMESTAMP=1493445837/*!*/;
BEGIN
/*!*/;
# at 300624
# at 300656
#170429 13:03:57 server id 111  end_log_pos 300656 CRC32 0xec622ec1 	Intvar
SET INSERT_ID=1603/*!*/;
#170429 13:03:57 server id 111  end_log_pos 300797 CRC32 0x2b31ac27 	Query	thread_id=416	exec_time=0	error_code=0
SET TIMESTAMP=1493445837/*!*/;
INSERT INTO spa_sale_massage (gender) VALUES (NULL)
/*!*/;
# at 300797
#170429 13:03:57 server id 111  end_log_pos 300893 CRC32 0x613d7d8a 	Query	thread_id=416	exec_time=0	error_code=0
SET TIMESTAMP=1493445837/*!*/;
COMMIT
/*!*/;
# at 300893
#170429 13:03:57 server id 111  end_log_pos 300988 CRC32 0xdbb81f85 	Query	thread_id=418	exec_time=0	error_code=0
SET TIMESTAMP=1493445837/*!*/;
BEGIN
/*!*/;
# at 300988
#170429 13:03:57 server id 111  end_log_pos 301827 CRC32 0xf3e9ecbc 	Query	thread_id=418	exec_time=0	error_code=0
SET TIMESTAMP=1493445837/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='1', inv_refer=NULL, date_booked=NULL, date_bill=NULL, customer=NULL, nationality=NULL, cashier='0', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 301827
#170429 13:03:57 server id 111  end_log_pos 301923 CRC32 0x698b1bbb 	Query	thread_id=418	exec_time=0	error_code=0
SET TIMESTAMP=1493445837/*!*/;
COMMIT
/*!*/;
# at 301923
#170429 13:04:02 server id 111  end_log_pos 302018 CRC32 0x2370c946 	Query	thread_id=420	exec_time=0	error_code=0
SET TIMESTAMP=1493445842/*!*/;
BEGIN
/*!*/;
# at 302018
#170429 13:04:02 server id 111  end_log_pos 302236 CRC32 0xa9b4aba7 	Query	thread_id=420	exec_time=0	error_code=0
SET TIMESTAMP=1493445842/*!*/;
UPDATE spa_sale_massage SET id='1603', inv_num='53', inv_refer='201704-0053', date_bill='2017-04-29', cashier='2' WHERE id =1603
/*!*/;
# at 302236
#170429 13:04:02 server id 111  end_log_pos 302332 CRC32 0x6e10ee33 	Query	thread_id=420	exec_time=0	error_code=0
SET TIMESTAMP=1493445842/*!*/;
COMMIT
/*!*/;
# at 302332
#170429 13:04:22 server id 111  end_log_pos 302427 CRC32 0x1bab32c6 	Query	thread_id=421	exec_time=0	error_code=0
SET TIMESTAMP=1493445862/*!*/;
BEGIN
/*!*/;
# at 302427
#170429 13:04:22 server id 111  end_log_pos 303303 CRC32 0xed550657 	Query	thread_id=421	exec_time=0	error_code=0
SET TIMESTAMP=1493445862/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality=NULL, cashier='2', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 303303
#170429 13:04:22 server id 111  end_log_pos 303399 CRC32 0xb4b7b43b 	Query	thread_id=421	exec_time=0	error_code=0
SET TIMESTAMP=1493445862/*!*/;
COMMIT
/*!*/;
# at 303399
#170429 13:04:24 server id 111  end_log_pos 303494 CRC32 0x1ac27ddf 	Query	thread_id=422	exec_time=0	error_code=0
SET TIMESTAMP=1493445864/*!*/;
BEGIN
/*!*/;
# at 303494
#170429 13:04:24 server id 111  end_log_pos 304369 CRC32 0x56045951 	Query	thread_id=422	exec_time=0	error_code=0
SET TIMESTAMP=1493445864/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='j', cashier='2', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 304369
#170429 13:04:24 server id 111  end_log_pos 304465 CRC32 0x5070c154 	Query	thread_id=422	exec_time=0	error_code=0
SET TIMESTAMP=1493445864/*!*/;
COMMIT
/*!*/;
# at 304465
#170429 13:04:24 server id 111  end_log_pos 304560 CRC32 0xd1e6dcd6 	Query	thread_id=423	exec_time=0	error_code=0
SET TIMESTAMP=1493445864/*!*/;
BEGIN
/*!*/;
# at 304560
#170429 13:04:24 server id 111  end_log_pos 305442 CRC32 0xefd4dcca 	Query	thread_id=423	exec_time=0	error_code=0
SET TIMESTAMP=1493445864/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 305442
#170429 13:04:24 server id 111  end_log_pos 305538 CRC32 0x0569142e 	Query	thread_id=423	exec_time=0	error_code=0
SET TIMESTAMP=1493445864/*!*/;
COMMIT
/*!*/;
# at 305538
#170429 13:04:27 server id 111  end_log_pos 305633 CRC32 0x349bdc95 	Query	thread_id=424	exec_time=0	error_code=0
SET TIMESTAMP=1493445867/*!*/;
BEGIN
/*!*/;
# at 305633
#170429 13:04:27 server id 111  end_log_pos 306515 CRC32 0xf4c8e1d5 	Query	thread_id=424	exec_time=0	error_code=0
SET TIMESTAMP=1493445867/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 306515
#170429 13:04:27 server id 111  end_log_pos 306611 CRC32 0xea53941d 	Query	thread_id=424	exec_time=0	error_code=0
SET TIMESTAMP=1493445867/*!*/;
COMMIT
/*!*/;
# at 306611
#170429 13:04:28 server id 111  end_log_pos 306706 CRC32 0x4a1b3bae 	Query	thread_id=425	exec_time=0	error_code=0
SET TIMESTAMP=1493445868/*!*/;
BEGIN
/*!*/;
# at 306706
#170429 13:04:28 server id 111  end_log_pos 307588 CRC32 0x071a55f8 	Query	thread_id=425	exec_time=0	error_code=0
SET TIMESTAMP=1493445868/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='0', gender=NULL, cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 307588
#170429 13:04:28 server id 111  end_log_pos 307684 CRC32 0x72392dde 	Query	thread_id=425	exec_time=0	error_code=0
SET TIMESTAMP=1493445868/*!*/;
COMMIT
/*!*/;
# at 307684
#170429 13:04:30 server id 111  end_log_pos 307779 CRC32 0x626252e8 	Query	thread_id=426	exec_time=0	error_code=0
SET TIMESTAMP=1493445870/*!*/;
BEGIN
/*!*/;
# at 307779
#170429 13:04:30 server id 111  end_log_pos 308660 CRC32 0x54bba368 	Query	thread_id=426	exec_time=0	error_code=0
SET TIMESTAMP=1493445870/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='0', gender='f', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 308660
#170429 13:04:30 server id 111  end_log_pos 308756 CRC32 0x7bdccc46 	Query	thread_id=426	exec_time=0	error_code=0
SET TIMESTAMP=1493445870/*!*/;
COMMIT
/*!*/;
# at 308756
#170429 13:04:32 server id 111  end_log_pos 308851 CRC32 0x22a83c9d 	Query	thread_id=427	exec_time=0	error_code=0
SET TIMESTAMP=1493445872/*!*/;
BEGIN
/*!*/;
# at 308851
#170429 13:04:32 server id 111  end_log_pos 309737 CRC32 0xce00b44e 	Query	thread_id=427	exec_time=0	error_code=0
SET TIMESTAMP=1493445872/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='0', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 309737
#170429 13:04:32 server id 111  end_log_pos 309833 CRC32 0xd6cc729d 	Query	thread_id=427	exec_time=0	error_code=0
SET TIMESTAMP=1493445872/*!*/;
COMMIT
/*!*/;
# at 309833
#170429 13:04:36 server id 111  end_log_pos 309928 CRC32 0x5bd98616 	Query	thread_id=428	exec_time=0	error_code=0
SET TIMESTAMP=1493445876/*!*/;
BEGIN
/*!*/;
# at 309928
#170429 13:04:36 server id 111  end_log_pos 310815 CRC32 0x5e500df0 	Query	thread_id=428	exec_time=0	error_code=0
SET TIMESTAMP=1493445876/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email=NULL, cus_oriented=NULL, cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 310815
#170429 13:04:36 server id 111  end_log_pos 310911 CRC32 0xb289a0bb 	Query	thread_id=428	exec_time=0	error_code=0
SET TIMESTAMP=1493445876/*!*/;
COMMIT
/*!*/;
# at 310911
#170429 13:04:44 server id 111  end_log_pos 311006 CRC32 0xf940306c 	Query	thread_id=429	exec_time=0	error_code=0
SET TIMESTAMP=1493445884/*!*/;
BEGIN
/*!*/;
# at 311006
#170429 13:04:44 server id 111  end_log_pos 311912 CRC32 0xdd93ba35 	Query	thread_id=429	exec_time=0	error_code=0
SET TIMESTAMP=1493445884/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method=NULL, voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 311912
#170429 13:04:44 server id 111  end_log_pos 312008 CRC32 0x7ae95af5 	Query	thread_id=429	exec_time=0	error_code=0
SET TIMESTAMP=1493445884/*!*/;
COMMIT
/*!*/;
# at 312008
#170429 13:04:45 server id 111  end_log_pos 312103 CRC32 0x4102aaf5 	Query	thread_id=430	exec_time=0	error_code=0
SET TIMESTAMP=1493445885/*!*/;
BEGIN
/*!*/;
# at 312103
#170429 13:04:45 server id 111  end_log_pos 313018 CRC32 0xeed91c19 	Query	thread_id=430	exec_time=0	error_code=0
SET TIMESTAMP=1493445885/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email=NULL, cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 313018
#170429 13:04:45 server id 111  end_log_pos 313114 CRC32 0x3d85dbbb 	Query	thread_id=430	exec_time=0	error_code=0
SET TIMESTAMP=1493445885/*!*/;
COMMIT
/*!*/;
# at 313114
#170429 13:05:09 server id 111  end_log_pos 313209 CRC32 0x6d553ac8 	Query	thread_id=431	exec_time=0	error_code=0
SET TIMESTAMP=1493445909/*!*/;
BEGIN
/*!*/;
# at 313209
#170429 13:05:09 server id 111  end_log_pos 314141 CRC32 0xa7287247 	Query	thread_id=431	exec_time=0	error_code=0
SET TIMESTAMP=1493445909/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='0', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 314141
#170429 13:05:09 server id 111  end_log_pos 314237 CRC32 0x316f0eb6 	Query	thread_id=431	exec_time=0	error_code=0
SET TIMESTAMP=1493445909/*!*/;
COMMIT
/*!*/;
# at 314237
#170429 13:05:24 server id 111  end_log_pos 314332 CRC32 0xdb6f704f 	Query	thread_id=433	exec_time=0	error_code=0
SET TIMESTAMP=1493445924/*!*/;
BEGIN
/*!*/;
# at 314332
#170429 13:05:24 server id 111  end_log_pos 314578 CRC32 0xb4d84634 	Query	thread_id=433	exec_time=0	error_code=0
SET TIMESTAMP=1493445924/*!*/;
INSERT INTO spa_sale_massage_detail (id, main_id, product, price, qty, number, discount, therapist1) VALUES ('1766', '1603', '1', '45', '1', '1', '0', '13')
/*!*/;
# at 314578
#170429 13:05:24 server id 111  end_log_pos 314674 CRC32 0x54fbb3b6 	Query	thread_id=433	exec_time=0	error_code=0
SET TIMESTAMP=1493445924/*!*/;
COMMIT
/*!*/;
# at 314674
#170429 13:05:24 server id 111  end_log_pos 314769 CRC32 0xfb21f4d4 	Query	thread_id=434	exec_time=0	error_code=0
SET TIMESTAMP=1493445924/*!*/;
BEGIN
/*!*/;
# at 314769
#170429 13:05:24 server id 111  end_log_pos 315702 CRC32 0x1e917462 	Query	thread_id=434	exec_time=0	error_code=0
SET TIMESTAMP=1493445924/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='45', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 315702
#170429 13:05:24 server id 111  end_log_pos 315798 CRC32 0x233be9dd 	Query	thread_id=434	exec_time=0	error_code=0
SET TIMESTAMP=1493445924/*!*/;
COMMIT
/*!*/;
# at 315798
#170429 13:05:32 server id 111  end_log_pos 315893 CRC32 0x4eb4a62c 	Query	thread_id=436	exec_time=0	error_code=0
SET TIMESTAMP=1493445932/*!*/;
BEGIN
/*!*/;
# at 315893
#170429 13:05:32 server id 111  end_log_pos 316139 CRC32 0xa8404795 	Query	thread_id=436	exec_time=0	error_code=0
SET TIMESTAMP=1493445932/*!*/;
INSERT INTO spa_sale_massage_detail (id, main_id, product, price, qty, number, discount, therapist1) VALUES ('1767', '1603', '25', '50', '1', '2', '0', '8')
/*!*/;
# at 316139
#170429 13:05:32 server id 111  end_log_pos 316235 CRC32 0xedbee81b 	Query	thread_id=436	exec_time=0	error_code=0
SET TIMESTAMP=1493445932/*!*/;
COMMIT
/*!*/;
# at 316235
#170429 13:05:32 server id 111  end_log_pos 316330 CRC32 0xa23d8f26 	Query	thread_id=437	exec_time=0	error_code=0
SET TIMESTAMP=1493445932/*!*/;
BEGIN
/*!*/;
# at 316330
#170429 13:05:32 server id 111  end_log_pos 317263 CRC32 0x6f1f00de 	Query	thread_id=437	exec_time=0	error_code=0
SET TIMESTAMP=1493445932/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='95', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='0', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 317263
#170429 13:05:32 server id 111  end_log_pos 317359 CRC32 0xbd377601 	Query	thread_id=437	exec_time=0	error_code=0
SET TIMESTAMP=1493445932/*!*/;
COMMIT
/*!*/;
# at 317359
#170429 13:05:35 server id 111  end_log_pos 317454 CRC32 0x7e3c9626 	Query	thread_id=438	exec_time=0	error_code=0
SET TIMESTAMP=1493445935/*!*/;
BEGIN
/*!*/;
# at 317454
#170429 13:05:35 server id 111  end_log_pos 318390 CRC32 0x68e5b4c2 	Query	thread_id=438	exec_time=0	error_code=0
SET TIMESTAMP=1493445935/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='104.5', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 318390
#170429 13:05:35 server id 111  end_log_pos 318486 CRC32 0x546f0b91 	Query	thread_id=438	exec_time=0	error_code=0
SET TIMESTAMP=1493445935/*!*/;
COMMIT
/*!*/;
# at 318486
#170429 13:05:35 server id 111  end_log_pos 318581 CRC32 0x55ca89d6 	Query	thread_id=439	exec_time=0	error_code=0
SET TIMESTAMP=1493445935/*!*/;
BEGIN
/*!*/;
# at 318581
#170429 13:05:35 server id 111  end_log_pos 319517 CRC32 0xea7fe1c3 	Query	thread_id=439	exec_time=0	error_code=0
SET TIMESTAMP=1493445935/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='104.5', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 319517
#170429 13:05:35 server id 111  end_log_pos 319613 CRC32 0xb9bd3b42 	Query	thread_id=439	exec_time=0	error_code=0
SET TIMESTAMP=1493445935/*!*/;
COMMIT
/*!*/;
# at 319613
#170429 13:07:20 server id 111  end_log_pos 319708 CRC32 0xf9058e04 	Query	thread_id=453	exec_time=0	error_code=0
SET TIMESTAMP=1493446040/*!*/;
BEGIN
/*!*/;
# at 319708
#170429 13:07:20 server id 111  end_log_pos 320641 CRC32 0x06249d2b 	Query	thread_id=453	exec_time=0	error_code=0
SET TIMESTAMP=1493446040/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total=NULL, date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 320641
#170429 13:07:20 server id 111  end_log_pos 320737 CRC32 0xf7871e15 	Query	thread_id=453	exec_time=0	error_code=0
SET TIMESTAMP=1493446040/*!*/;
COMMIT
/*!*/;
# at 320737
#170429 13:07:21 server id 111  end_log_pos 320832 CRC32 0x1a0d3d3d 	Query	thread_id=454	exec_time=0	error_code=0
SET TIMESTAMP=1493446041/*!*/;
BEGIN
/*!*/;
# at 320832
#170429 13:07:21 server id 111  end_log_pos 321768 CRC32 0xf20250d5 	Query	thread_id=454	exec_time=0	error_code=0
SET TIMESTAMP=1493446041/*!*/;
UPDATE spa_sale_massage SET id='1603', book_by='0', inv_num='53', inv_refer='201704-0053', date_booked='2017-04-29', date_bill='2017-04-29', customer='Chung Soonhee', nationality='Japanese', cashier='2', age='40', gender='Female', cus_email='c.suni421@gmail.com', cus_oriented='Internet Search, Blog', cus_follow_up='0', time=NULL, bill='0', memo=NULL, pay_by='Cash', guide='0', total='104.5', date_treatment=NULL, time_start=NULL, time_end=NULL, time_pickup=NULL, location_pickup=NULL, room_treat=NULL, feedb_recept='0', feedb_amb='0', feedb_therapist='0', feedb_therapy='0', type_case=NULL, contact='0', followup='0', source_booked='0', amount_commis=NULL, commissioner=NULL, earn_transport='0', spend_transport='0', isVAT='1', status=NULL, book_method='Spa Website', voucher=NULL, partner=NULL, back_margin=NULL, sale_status='0' WHERE id =1603
/*!*/;
# at 321768
#170429 13:07:21 server id 111  end_log_pos 321864 CRC32 0x3a033b6c 	Query	thread_id=454	exec_time=0	error_code=0
SET TIMESTAMP=1493446041/*!*/;
COMMIT
/*!*/;
# at 321864
#170429 13:13:39 server id 21  end_log_pos 321959 CRC32 0x8c8cca8a 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446419/*!*/;
BEGIN
/*!*/;
# at 321959
# at 321991
#170429 13:13:39 server id 21  end_log_pos 321991 CRC32 0x1947adc1 	Intvar
SET INSERT_ID=34528/*!*/;
#170429 13:13:39 server id 21  end_log_pos 322225 CRC32 0xf7f30c88 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446419/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('581','201704-00581','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 322225
#170429 13:13:39 server id 21  end_log_pos 322321 CRC32 0xe09166e1 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446419/*!*/;
COMMIT
/*!*/;
# at 322321
#170429 13:13:40 server id 21  end_log_pos 322416 CRC32 0xed103ee2 	Query	thread_id=9	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493446420/*!*/;
BEGIN
/*!*/;
# at 322416
# at 322448
#170429 13:13:40 server id 21  end_log_pos 322448 CRC32 0x03a60fe0 	Intvar
SET INSERT_ID=82147/*!*/;
#170429 13:13:40 server id 21  end_log_pos 322695 CRC32 0xf9f7e877 	Query	thread_id=9	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493446420/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34528','375','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 322695
#170429 13:13:40 server id 21  end_log_pos 322791 CRC32 0x9ccfe731 	Query	thread_id=9	exec_time=4294967295	error_code=0
SET TIMESTAMP=1493446420/*!*/;
COMMIT
/*!*/;
# at 322791
#170429 13:13:42 server id 21  end_log_pos 322886 CRC32 0x4128953b 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446422/*!*/;
BEGIN
/*!*/;
# at 322886
# at 322918
#170429 13:13:42 server id 21  end_log_pos 322918 CRC32 0x98eb4990 	Intvar
SET INSERT_ID=82148/*!*/;
#170429 13:13:42 server id 21  end_log_pos 323165 CRC32 0xc210678c 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446422/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34528','440','1.00000000000000000e+000','8.00000000000000000e+000','2')
/*!*/;
# at 323165
#170429 13:13:42 server id 21  end_log_pos 323261 CRC32 0x6518cf87 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446422/*!*/;
COMMIT
/*!*/;
# at 323261
#170429 13:13:44 server id 21  end_log_pos 323356 CRC32 0x836005be 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446424/*!*/;
BEGIN
/*!*/;
# at 323356
# at 323388
#170429 13:13:44 server id 21  end_log_pos 323388 CRC32 0x54aaf221 	Intvar
SET INSERT_ID=82149/*!*/;
#170429 13:13:44 server id 21  end_log_pos 323635 CRC32 0x030cf9d6 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446424/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34528','618','1.00000000000000000e+000','5.00000000000000000e+000','3')
/*!*/;
# at 323635
#170429 13:13:44 server id 21  end_log_pos 323731 CRC32 0xf281a43d 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446424/*!*/;
COMMIT
/*!*/;
# at 323731
#170429 13:13:45 server id 21  end_log_pos 323826 CRC32 0xa9969ed9 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446425/*!*/;
BEGIN
/*!*/;
# at 323826
#170429 13:13:45 server id 21  end_log_pos 323998 CRC32 0xc13e6df7 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446425/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82149'
/*!*/;
# at 323998
#170429 13:13:45 server id 21  end_log_pos 324094 CRC32 0x5452b7b4 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446425/*!*/;
COMMIT
/*!*/;
# at 324094
#170429 13:13:53 server id 21  end_log_pos 324189 CRC32 0xb951eb80 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446433/*!*/;
BEGIN
/*!*/;
# at 324189
#170429 13:13:53 server id 21  end_log_pos 324812 CRC32 0x2f1dc6d3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446433/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 13:13:40',`total`='2.30000000000000000e+001'  WHERE `id` = '34528' AND `inv_num` = '581' AND `inv_refer` = '201704-00581' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 324812
#170429 13:13:53 server id 21  end_log_pos 324908 CRC32 0x4ffede30 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446433/*!*/;
COMMIT
/*!*/;
# at 324908
#170429 13:14:03 server id 21  end_log_pos 325003 CRC32 0x1c6ba5a8 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446443/*!*/;
BEGIN
/*!*/;
# at 325003
#170429 13:14:03 server id 21  end_log_pos 325633 CRC32 0x39a049ab 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446443/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+001'  WHERE `id` = '34528' AND `inv_num` = '581' AND `inv_refer` = '201704-00581' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:13:40' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 325633
#170429 13:14:03 server id 21  end_log_pos 325729 CRC32 0xc38e8fbf 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446443/*!*/;
COMMIT
/*!*/;
# at 325729
#170429 13:14:44 server id 21  end_log_pos 325824 CRC32 0x0483e408 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446484/*!*/;
BEGIN
/*!*/;
# at 325824
#170429 13:14:44 server id 21  end_log_pos 326459 CRC32 0x7f2935bf 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446484/*!*/;
UPDATE `oms_sale` SET `gender`='Female'  WHERE `id` = '34528' AND `inv_num` = '581' AND `inv_refer` = '201704-00581' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:13:40' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 326459
#170429 13:14:44 server id 21  end_log_pos 326555 CRC32 0x8086ccfe 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446484/*!*/;
COMMIT
/*!*/;
# at 326555
#170429 13:16:37 server id 21  end_log_pos 326650 CRC32 0x2680b670 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
BEGIN
/*!*/;
# at 326650
# at 326682
#170429 13:16:37 server id 21  end_log_pos 326682 CRC32 0xa28e8f85 	Intvar
SET INSERT_ID=34529/*!*/;
#170429 13:16:37 server id 21  end_log_pos 326916 CRC32 0x4a39d20a 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('582','201704-00582','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 326916
#170429 13:16:37 server id 21  end_log_pos 327012 CRC32 0x060754ee 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
COMMIT
/*!*/;
# at 327012
#170429 13:16:37 server id 21  end_log_pos 327107 CRC32 0x06263c8c 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
BEGIN
/*!*/;
# at 327107
# at 327139
#170429 13:16:37 server id 21  end_log_pos 327139 CRC32 0x6f7c2386 	Intvar
SET INSERT_ID=82150/*!*/;
#170429 13:16:37 server id 21  end_log_pos 327386 CRC32 0xde81119a 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34529','440','1.00000000000000000e+000','8.00000000000000000e+000','1')
/*!*/;
# at 327386
#170429 13:16:37 server id 21  end_log_pos 327482 CRC32 0x5a0b1f86 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
COMMIT
/*!*/;
# at 327482
#170429 13:16:37 server id 21  end_log_pos 327577 CRC32 0xf9690421 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
BEGIN
/*!*/;
# at 327577
# at 327609
#170429 13:16:37 server id 21  end_log_pos 327609 CRC32 0xab2e7e91 	Intvar
SET INSERT_ID=82151/*!*/;
#170429 13:16:37 server id 21  end_log_pos 327856 CRC32 0x1b50a68e 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34529','445','1.00000000000000000e+000','8.00000000000000000e+000','2')
/*!*/;
# at 327856
#170429 13:16:37 server id 21  end_log_pos 327952 CRC32 0x1eb40e69 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1493446597/*!*/;
COMMIT
/*!*/;
# at 327952
#170429 13:17:04 server id 21  end_log_pos 328047 CRC32 0x0bfca5f4 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446624/*!*/;
BEGIN
/*!*/;
# at 328047
# at 328079
#170429 13:17:04 server id 21  end_log_pos 328079 CRC32 0xd29f6375 	Intvar
SET INSERT_ID=82152/*!*/;
#170429 13:17:04 server id 21  end_log_pos 328325 CRC32 0xdac01627 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446624/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34529','17','1.00000000000000000e+000','2.50000000000000000e+000','3')
/*!*/;
# at 328325
#170429 13:17:04 server id 21  end_log_pos 328421 CRC32 0xc1179664 	Query	thread_id=9	exec_time=4294967293	error_code=0
SET TIMESTAMP=1493446624/*!*/;
COMMIT
/*!*/;
# at 328421
#170429 13:17:05 server id 21  end_log_pos 328516 CRC32 0xc59ed048 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446625/*!*/;
BEGIN
/*!*/;
# at 328516
#170429 13:17:05 server id 21  end_log_pos 328688 CRC32 0x996de985 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446625/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82152'
/*!*/;
# at 328688
#170429 13:17:05 server id 21  end_log_pos 328784 CRC32 0xe586b2e8 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446625/*!*/;
COMMIT
/*!*/;
# at 328784
#170429 13:17:05 server id 21  end_log_pos 328879 CRC32 0x631c82d7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446625/*!*/;
BEGIN
/*!*/;
# at 328879
#170429 13:17:05 server id 21  end_log_pos 329051 CRC32 0xebb70a29 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446625/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82152'
/*!*/;
# at 329051
#170429 13:17:05 server id 21  end_log_pos 329147 CRC32 0xe5c9c072 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446625/*!*/;
COMMIT
/*!*/;
# at 329147
#170429 13:17:07 server id 21  end_log_pos 329242 CRC32 0xe9a234ac 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446627/*!*/;
BEGIN
/*!*/;
# at 329242
#170429 13:17:07 server id 21  end_log_pos 329414 CRC32 0xc7ed019c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446627/*!*/;
UPDATE `oms_sale_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '82152'
/*!*/;
# at 329414
#170429 13:17:07 server id 21  end_log_pos 329510 CRC32 0xd9aea717 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446627/*!*/;
COMMIT
/*!*/;
# at 329510
#170429 13:17:09 server id 21  end_log_pos 329605 CRC32 0x631021a9 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446629/*!*/;
BEGIN
/*!*/;
# at 329605
# at 329637
#170429 13:17:09 server id 21  end_log_pos 329637 CRC32 0x0e5f62bc 	Intvar
SET INSERT_ID=82153/*!*/;
#170429 13:17:09 server id 21  end_log_pos 329883 CRC32 0x8280c68c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446629/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34529','16','1.00000000000000000e+000','2.50000000000000000e+000','4')
/*!*/;
# at 329883
#170429 13:17:09 server id 21  end_log_pos 329979 CRC32 0x978d5d07 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446629/*!*/;
COMMIT
/*!*/;
# at 329979
#170429 13:17:10 server id 21  end_log_pos 330074 CRC32 0x32ae1785 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446630/*!*/;
BEGIN
/*!*/;
# at 330074
# at 330106
#170429 13:17:10 server id 21  end_log_pos 330106 CRC32 0xdd03e0ec 	Intvar
SET INSERT_ID=82154/*!*/;
#170429 13:17:10 server id 21  end_log_pos 330352 CRC32 0x8a4992b3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446630/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34529','14','1.00000000000000000e+000','2.50000000000000000e+000','5')
/*!*/;
# at 330352
#170429 13:17:10 server id 21  end_log_pos 330448 CRC32 0xe62c857c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446630/*!*/;
COMMIT
/*!*/;
# at 330448
#170429 13:17:10 server id 21  end_log_pos 330543 CRC32 0xbe26454f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446630/*!*/;
BEGIN
/*!*/;
# at 330543
#170429 13:17:10 server id 21  end_log_pos 330715 CRC32 0xff72f8f0 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446630/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82154'
/*!*/;
# at 330715
#170429 13:17:10 server id 21  end_log_pos 330811 CRC32 0x7b999fde 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446630/*!*/;
COMMIT
/*!*/;
# at 330811
#170429 13:17:12 server id 21  end_log_pos 330906 CRC32 0xa710f314 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446632/*!*/;
BEGIN
/*!*/;
# at 330906
# at 330938
#170429 13:17:12 server id 21  end_log_pos 330938 CRC32 0x1965e37f 	Intvar
SET INSERT_ID=82155/*!*/;
#170429 13:17:12 server id 21  end_log_pos 331184 CRC32 0xfbeadac8 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446632/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34529','15','1.00000000000000000e+000','2.50000000000000000e+000','6')
/*!*/;
# at 331184
#170429 13:17:12 server id 21  end_log_pos 331280 CRC32 0x9c128e6f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446632/*!*/;
COMMIT
/*!*/;
# at 331280
#170429 13:17:12 server id 21  end_log_pos 331375 CRC32 0x4b6f0e53 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446632/*!*/;
BEGIN
/*!*/;
# at 331375
#170429 13:17:12 server id 21  end_log_pos 331547 CRC32 0x7d82f76e 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446632/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82155'
/*!*/;
# at 331547
#170429 13:17:12 server id 21  end_log_pos 331643 CRC32 0x0f34f4c7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446632/*!*/;
COMMIT
/*!*/;
# at 331643
#170429 13:17:14 server id 21  end_log_pos 331738 CRC32 0x58915f47 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446634/*!*/;
BEGIN
/*!*/;
# at 331738
#170429 13:17:14 server id 21  end_log_pos 331910 CRC32 0x6358ed95 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446634/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82153'
/*!*/;
# at 331910
#170429 13:17:14 server id 21  end_log_pos 332006 CRC32 0xd48a2fa4 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446634/*!*/;
COMMIT
/*!*/;
# at 332006
#170429 13:17:21 server id 21  end_log_pos 332101 CRC32 0x7bf13618 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446641/*!*/;
BEGIN
/*!*/;
# at 332101
#170429 13:17:21 server id 21  end_log_pos 332724 CRC32 0x134122f7 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446641/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 13:16:37',`total`='4.10000000000000000e+001'  WHERE `id` = '34529' AND `inv_num` = '582' AND `inv_refer` = '201704-00582' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 332724
#170429 13:17:21 server id 21  end_log_pos 332820 CRC32 0x58bd8ebc 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446641/*!*/;
COMMIT
/*!*/;
# at 332820
#170429 13:17:23 server id 21  end_log_pos 332915 CRC32 0x64338445 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446643/*!*/;
BEGIN
/*!*/;
# at 332915
# at 332947
#170429 13:17:23 server id 21  end_log_pos 332947 CRC32 0x05c9337f 	Intvar
SET INSERT_ID=13122/*!*/;
#170429 13:17:23 server id 21  end_log_pos 333120 CRC32 0xf04d0d82 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446643/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34529','17','1')
/*!*/;
# at 333120
#170429 13:17:23 server id 21  end_log_pos 333216 CRC32 0x098dd3c1 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446643/*!*/;
COMMIT
/*!*/;
# at 333216
#170429 13:17:23 server id 21  end_log_pos 333311 CRC32 0xe5584647 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446643/*!*/;
BEGIN
/*!*/;
# at 333311
# at 333343
#170429 13:17:23 server id 21  end_log_pos 333343 CRC32 0x237fae13 	Intvar
SET INSERT_ID=13123/*!*/;
#170429 13:17:23 server id 21  end_log_pos 333516 CRC32 0x0d43d864 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446643/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34529','17','1')
/*!*/;
# at 333516
#170429 13:17:23 server id 21  end_log_pos 333612 CRC32 0x3a96e501 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446643/*!*/;
COMMIT
/*!*/;
# at 333612
#170429 13:17:47 server id 21  end_log_pos 333707 CRC32 0x4af4ba8b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446667/*!*/;
BEGIN
/*!*/;
# at 333707
#170429 13:17:47 server id 21  end_log_pos 334337 CRC32 0x3fc4d804 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446667/*!*/;
UPDATE `oms_sale` SET `bill`='5.00000000000000000e+001'  WHERE `id` = '34529' AND `inv_num` = '582' AND `inv_refer` = '201704-00582' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:16:37' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 334337
#170429 13:17:47 server id 21  end_log_pos 334433 CRC32 0x61bf61d2 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446667/*!*/;
COMMIT
/*!*/;
# at 334433
#170429 13:18:49 server id 21  end_log_pos 334528 CRC32 0xfb666c10 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446729/*!*/;
BEGIN
/*!*/;
# at 334528
#170429 13:18:49 server id 21  end_log_pos 335199 CRC32 0x24138f7c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446729/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30',`gender`='Female'  WHERE `id` = '34529' AND `inv_num` = '582' AND `inv_refer` = '201704-00582' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:16:37' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '4.10000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 335199
#170429 13:18:49 server id 21  end_log_pos 335295 CRC32 0xee8dff1f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493446729/*!*/;
COMMIT
/*!*/;
# at 335295
#170429 13:18:59 server id 21  end_log_pos 335390 CRC32 0x71b1ba9d 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446739/*!*/;
BEGIN
/*!*/;
# at 335390
#170429 13:18:59 server id 21  end_log_pos 336046 CRC32 0xf8befc91 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446739/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='30'  WHERE `id` = '34528' AND `inv_num` = '581' AND `inv_refer` = '201704-00581' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` = 'Female' AND `time` = '1899-12-30 13:13:40' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '5.00000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.30000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 336046
#170429 13:18:59 server id 21  end_log_pos 336142 CRC32 0xd3ea349a 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493446739/*!*/;
COMMIT
/*!*/;
# at 336142
#170429 13:25:47 server id 111  end_log_pos 336237 CRC32 0xcbec194e 	Query	thread_id=468	exec_time=0	error_code=0
SET TIMESTAMP=1493447147/*!*/;
BEGIN
/*!*/;
# at 336237
# at 336269
#170429 13:25:47 server id 111  end_log_pos 336269 CRC32 0xd1ab8d5e 	Intvar
SET INSERT_ID=1597/*!*/;
#170429 13:25:47 server id 111  end_log_pos 336463 CRC32 0xb449d1fe 	Query	thread_id=468	exec_time=0	error_code=0
SET TIMESTAMP=1493447147/*!*/;
INSERT INTO inventory_product_out (date, employee, status) VALUES ('2017-04-29 13:27', 'Phen', 'to_oms')
/*!*/;
# at 336463
#170429 13:25:47 server id 111  end_log_pos 336494 CRC32 0x8f4549b3 	Xid = 2877
COMMIT/*!*/;
# at 336494
#170429 13:25:47 server id 111  end_log_pos 336589 CRC32 0xdbdd5ab6 	Query	thread_id=470	exec_time=0	error_code=0
SET TIMESTAMP=1493447147/*!*/;
BEGIN
/*!*/;
# at 336589
#170429 13:25:47 server id 111  end_log_pos 336736 CRC32 0xba870134 	Query	thread_id=470	exec_time=0	error_code=0
SET TIMESTAMP=1493447147/*!*/;
UPDATE inventory_product_out SET id='1597' WHERE id =1597
/*!*/;
# at 336736
#170429 13:25:47 server id 111  end_log_pos 336832 CRC32 0xc2d4f7e8 	Query	thread_id=470	exec_time=0	error_code=0
SET TIMESTAMP=1493447147/*!*/;
COMMIT
/*!*/;
# at 336832
#170429 13:25:51 server id 111  end_log_pos 336927 CRC32 0x4ebe8eb3 	Query	thread_id=473	exec_time=0	error_code=0
SET TIMESTAMP=1493447151/*!*/;
BEGIN
/*!*/;
# at 336927
#170429 13:25:51 server id 111  end_log_pos 337146 CRC32 0xe2e52489 	Query	thread_id=473	exec_time=0	error_code=0
SET TIMESTAMP=1493447151/*!*/;
UPDATE inventory_product_out SET date='2017-Apr-29 13:27', employee='Thura', others='', status='to_oms', id='1597' WHERE id =1597
/*!*/;
# at 337146
#170429 13:25:51 server id 111  end_log_pos 337177 CRC32 0xba40a5a2 	Xid = 2890
COMMIT/*!*/;
# at 337177
#170429 13:25:53 server id 111  end_log_pos 337272 CRC32 0x63520498 	Query	thread_id=474	exec_time=0	error_code=0
SET TIMESTAMP=1493447153/*!*/;
BEGIN
/*!*/;
# at 337272
#170429 13:25:53 server id 111  end_log_pos 337491 CRC32 0xf51ce1d4 	Query	thread_id=474	exec_time=0	error_code=0
SET TIMESTAMP=1493447153/*!*/;
UPDATE inventory_product_out SET date='2017-Apr-29 13:27', employee='Thura', others='', status='to_oms', id='1597' WHERE id =1597
/*!*/;
# at 337491
#170429 13:25:53 server id 111  end_log_pos 337522 CRC32 0x22af5437 	Xid = 2892
COMMIT/*!*/;
# at 337522
#170429 13:25:55 server id 111  end_log_pos 337617 CRC32 0x7cb3dae1 	Query	thread_id=475	exec_time=0	error_code=0
SET TIMESTAMP=1493447155/*!*/;
BEGIN
/*!*/;
# at 337617
#170429 13:25:55 server id 111  end_log_pos 337829 CRC32 0x2387a669 	Query	thread_id=475	exec_time=0	error_code=0
SET TIMESTAMP=1493447155/*!*/;
UPDATE inventory_product_out SET date='2017-04-18', employee='Thura', others='', status='to_oms', id='1597' WHERE id =1597
/*!*/;
# at 337829
#170429 13:25:55 server id 111  end_log_pos 337860 CRC32 0xb0635cad 	Xid = 2894
COMMIT/*!*/;
# at 337860
#170429 13:25:56 server id 111  end_log_pos 337955 CRC32 0xd569768a 	Query	thread_id=476	exec_time=0	error_code=0
SET TIMESTAMP=1493447156/*!*/;
BEGIN
/*!*/;
# at 337955
#170429 13:25:56 server id 111  end_log_pos 338167 CRC32 0xa0742909 	Query	thread_id=476	exec_time=0	error_code=0
SET TIMESTAMP=1493447156/*!*/;
UPDATE inventory_product_out SET date='2017-04-18', employee='Thura', others='', status='to_oms', id='1597' WHERE id =1597
/*!*/;
# at 338167
#170429 13:25:56 server id 111  end_log_pos 338198 CRC32 0xb477d550 	Xid = 2896
COMMIT/*!*/;
# at 338198
#170429 13:25:57 server id 111  end_log_pos 338293 CRC32 0x1d866d7c 	Query	thread_id=477	exec_time=0	error_code=0
SET TIMESTAMP=1493447157/*!*/;
BEGIN
/*!*/;
# at 338293
#170429 13:25:57 server id 111  end_log_pos 338505 CRC32 0x0cb3b363 	Query	thread_id=477	exec_time=0	error_code=0
SET TIMESTAMP=1493447157/*!*/;
UPDATE inventory_product_out SET date='2017-04-29', employee='Thura', others='', status='to_oms', id='1597' WHERE id =1597
/*!*/;
# at 338505
#170429 13:25:57 server id 111  end_log_pos 338536 CRC32 0x04e04367 	Xid = 2898
COMMIT/*!*/;
# at 338536
#170429 13:26:04 server id 111  end_log_pos 338631 CRC32 0xf4ec6683 	Query	thread_id=480	exec_time=0	error_code=0
SET TIMESTAMP=1493447164/*!*/;
BEGIN
/*!*/;
# at 338631
#170429 13:26:04 server id 111  end_log_pos 338838 CRC32 0xadd6bdd4 	Query	thread_id=480	exec_time=0	error_code=0
SET TIMESTAMP=1493447164/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35702', '1597', '1', '12', '1')
/*!*/;
# at 338838
#170429 13:26:04 server id 111  end_log_pos 338934 CRC32 0xff57c803 	Query	thread_id=480	exec_time=0	error_code=0
SET TIMESTAMP=1493447164/*!*/;
COMMIT
/*!*/;
# at 338934
#170429 13:26:08 server id 111  end_log_pos 339029 CRC32 0x6380a3cd 	Query	thread_id=483	exec_time=0	error_code=0
SET TIMESTAMP=1493447168/*!*/;
BEGIN
/*!*/;
# at 339029
#170429 13:26:08 server id 111  end_log_pos 339236 CRC32 0x8bf3fc23 	Query	thread_id=483	exec_time=0	error_code=0
SET TIMESTAMP=1493447168/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35703', '1597', '2', '12', '2')
/*!*/;
# at 339236
#170429 13:26:08 server id 111  end_log_pos 339332 CRC32 0x7d1b8556 	Query	thread_id=483	exec_time=0	error_code=0
SET TIMESTAMP=1493447168/*!*/;
COMMIT
/*!*/;
# at 339332
#170429 13:26:11 server id 111  end_log_pos 339427 CRC32 0xf6c77cc5 	Query	thread_id=486	exec_time=0	error_code=0
SET TIMESTAMP=1493447171/*!*/;
BEGIN
/*!*/;
# at 339427
#170429 13:26:11 server id 111  end_log_pos 339634 CRC32 0x826019be 	Query	thread_id=486	exec_time=0	error_code=0
SET TIMESTAMP=1493447171/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35704', '1597', '3', '12', '3')
/*!*/;
# at 339634
#170429 13:26:11 server id 111  end_log_pos 339730 CRC32 0x67a3b7b9 	Query	thread_id=486	exec_time=0	error_code=0
SET TIMESTAMP=1493447171/*!*/;
COMMIT
/*!*/;
# at 339730
#170429 13:26:15 server id 111  end_log_pos 339825 CRC32 0x0f388ccc 	Query	thread_id=489	exec_time=0	error_code=0
SET TIMESTAMP=1493447175/*!*/;
BEGIN
/*!*/;
# at 339825
#170429 13:26:15 server id 111  end_log_pos 340032 CRC32 0xeb6b1158 	Query	thread_id=489	exec_time=0	error_code=0
SET TIMESTAMP=1493447175/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35705', '1597', '4', '12', '4')
/*!*/;
# at 340032
#170429 13:26:15 server id 111  end_log_pos 340128 CRC32 0x303d8dc7 	Query	thread_id=489	exec_time=0	error_code=0
SET TIMESTAMP=1493447175/*!*/;
COMMIT
/*!*/;
# at 340128
#170429 13:26:17 server id 111  end_log_pos 340223 CRC32 0x95fb6b06 	Query	thread_id=492	exec_time=0	error_code=0
SET TIMESTAMP=1493447177/*!*/;
BEGIN
/*!*/;
# at 340223
#170429 13:26:17 server id 111  end_log_pos 340431 CRC32 0x7c5fad9b 	Query	thread_id=492	exec_time=0	error_code=0
SET TIMESTAMP=1493447177/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35706', '1597', NULL, '12', '5')
/*!*/;
# at 340431
#170429 13:26:17 server id 111  end_log_pos 340527 CRC32 0xe736aed9 	Query	thread_id=492	exec_time=0	error_code=0
SET TIMESTAMP=1493447177/*!*/;
COMMIT
/*!*/;
# at 340527
#170429 13:26:20 server id 111  end_log_pos 340622 CRC32 0x07af5657 	Query	thread_id=495	exec_time=0	error_code=0
SET TIMESTAMP=1493447180/*!*/;
BEGIN
/*!*/;
# at 340622
#170429 13:26:20 server id 111  end_log_pos 340828 CRC32 0x663f03e8 	Query	thread_id=495	exec_time=0	error_code=0
SET TIMESTAMP=1493447180/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35707', '1597', '6', '3', '6')
/*!*/;
# at 340828
#170429 13:26:20 server id 111  end_log_pos 340924 CRC32 0xa211040d 	Query	thread_id=495	exec_time=0	error_code=0
SET TIMESTAMP=1493447180/*!*/;
COMMIT
/*!*/;
# at 340924
#170429 13:26:26 server id 111  end_log_pos 341019 CRC32 0xe9b912a0 	Query	thread_id=498	exec_time=0	error_code=0
SET TIMESTAMP=1493447186/*!*/;
BEGIN
/*!*/;
# at 341019
#170429 13:26:26 server id 111  end_log_pos 341226 CRC32 0x54cd3f08 	Query	thread_id=498	exec_time=0	error_code=0
SET TIMESTAMP=1493447186/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35708', '1597', '9', '12', '7')
/*!*/;
# at 341226
#170429 13:26:26 server id 111  end_log_pos 341322 CRC32 0xddfba930 	Query	thread_id=498	exec_time=0	error_code=0
SET TIMESTAMP=1493447186/*!*/;
COMMIT
/*!*/;
# at 341322
#170429 13:26:36 server id 111  end_log_pos 341417 CRC32 0x2a8e57c8 	Query	thread_id=499	exec_time=0	error_code=0
SET TIMESTAMP=1493447196/*!*/;
BEGIN
/*!*/;
# at 341417
#170429 13:26:36 server id 111  end_log_pos 341624 CRC32 0xe59297ea 	Query	thread_id=499	exec_time=0	error_code=0
SET TIMESTAMP=1493447196/*!*/;
UPDATE inventory_product_out_detail SET id='35706', main_id='1597', product='5', qty='12', number='5' WHERE id =35706
/*!*/;
# at 341624
#170429 13:26:36 server id 111  end_log_pos 341720 CRC32 0x77049c38 	Query	thread_id=499	exec_time=0	error_code=0
SET TIMESTAMP=1493447196/*!*/;
COMMIT
/*!*/;
# at 341720
#170429 13:26:46 server id 111  end_log_pos 341815 CRC32 0xb374c003 	Query	thread_id=502	exec_time=0	error_code=0
SET TIMESTAMP=1493447206/*!*/;
BEGIN
/*!*/;
# at 341815
#170429 13:26:46 server id 111  end_log_pos 342023 CRC32 0x80efc9d1 	Query	thread_id=502	exec_time=0	error_code=0
SET TIMESTAMP=1493447206/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35709', '1597', '13', '50', '8')
/*!*/;
# at 342023
#170429 13:26:46 server id 111  end_log_pos 342119 CRC32 0x390237d0 	Query	thread_id=502	exec_time=0	error_code=0
SET TIMESTAMP=1493447206/*!*/;
COMMIT
/*!*/;
# at 342119
#170429 13:26:57 server id 111  end_log_pos 342214 CRC32 0xc5550150 	Query	thread_id=505	exec_time=0	error_code=0
SET TIMESTAMP=1493447217/*!*/;
BEGIN
/*!*/;
# at 342214
#170429 13:26:57 server id 111  end_log_pos 342422 CRC32 0x25b18c30 	Query	thread_id=505	exec_time=0	error_code=0
SET TIMESTAMP=1493447217/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35710', '1597', '18', '20', '9')
/*!*/;
# at 342422
#170429 13:26:57 server id 111  end_log_pos 342518 CRC32 0xab45855b 	Query	thread_id=505	exec_time=0	error_code=0
SET TIMESTAMP=1493447217/*!*/;
COMMIT
/*!*/;
# at 342518
#170429 13:27:02 server id 111  end_log_pos 342613 CRC32 0xadf9739d 	Query	thread_id=508	exec_time=0	error_code=0
SET TIMESTAMP=1493447222/*!*/;
BEGIN
/*!*/;
# at 342613
#170429 13:27:02 server id 111  end_log_pos 342822 CRC32 0x08fd3394 	Query	thread_id=508	exec_time=0	error_code=0
SET TIMESTAMP=1493447222/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35711', '1597', '19', '40', '10')
/*!*/;
# at 342822
#170429 13:27:02 server id 111  end_log_pos 342918 CRC32 0x814c43d0 	Query	thread_id=508	exec_time=0	error_code=0
SET TIMESTAMP=1493447222/*!*/;
COMMIT
/*!*/;
# at 342918
#170429 13:27:05 server id 111  end_log_pos 343013 CRC32 0x09c7d60d 	Query	thread_id=511	exec_time=0	error_code=0
SET TIMESTAMP=1493447225/*!*/;
BEGIN
/*!*/;
# at 343013
#170429 13:27:05 server id 111  end_log_pos 343222 CRC32 0xa652bb2d 	Query	thread_id=511	exec_time=0	error_code=0
SET TIMESTAMP=1493447225/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35712', '1597', '21', '40', '11')
/*!*/;
# at 343222
#170429 13:27:05 server id 111  end_log_pos 343318 CRC32 0x257f4725 	Query	thread_id=511	exec_time=0	error_code=0
SET TIMESTAMP=1493447225/*!*/;
COMMIT
/*!*/;
# at 343318
#170429 13:28:36 server id 111  end_log_pos 343413 CRC32 0xa7b4312f 	Query	thread_id=514	exec_time=0	error_code=0
SET TIMESTAMP=1493447316/*!*/;
BEGIN
/*!*/;
# at 343413
#170429 13:28:36 server id 111  end_log_pos 343622 CRC32 0xc1a4d375 	Query	thread_id=514	exec_time=0	error_code=0
SET TIMESTAMP=1493447316/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35713', '1597', '39', '20', '12')
/*!*/;
# at 343622
#170429 13:28:36 server id 111  end_log_pos 343718 CRC32 0x841ef639 	Query	thread_id=514	exec_time=0	error_code=0
SET TIMESTAMP=1493447316/*!*/;
COMMIT
/*!*/;
# at 343718
#170429 13:28:39 server id 111  end_log_pos 343813 CRC32 0xf1b92d57 	Query	thread_id=517	exec_time=0	error_code=0
SET TIMESTAMP=1493447319/*!*/;
BEGIN
/*!*/;
# at 343813
#170429 13:28:39 server id 111  end_log_pos 344022 CRC32 0x3ae5af37 	Query	thread_id=517	exec_time=0	error_code=0
SET TIMESTAMP=1493447319/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35714', '1597', '40', '20', '13')
/*!*/;
# at 344022
#170429 13:28:39 server id 111  end_log_pos 344118 CRC32 0x60711b9a 	Query	thread_id=517	exec_time=0	error_code=0
SET TIMESTAMP=1493447319/*!*/;
COMMIT
/*!*/;
# at 344118
#170429 13:28:44 server id 111  end_log_pos 344213 CRC32 0x1260b75a 	Query	thread_id=520	exec_time=0	error_code=0
SET TIMESTAMP=1493447324/*!*/;
BEGIN
/*!*/;
# at 344213
#170429 13:28:44 server id 111  end_log_pos 344422 CRC32 0x4df2d8e7 	Query	thread_id=520	exec_time=0	error_code=0
SET TIMESTAMP=1493447324/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35715', '1597', '41', '20', '14')
/*!*/;
# at 344422
#170429 13:28:44 server id 111  end_log_pos 344518 CRC32 0x179a8535 	Query	thread_id=520	exec_time=0	error_code=0
SET TIMESTAMP=1493447324/*!*/;
COMMIT
/*!*/;
# at 344518
#170429 13:28:47 server id 111  end_log_pos 344613 CRC32 0x2ce714da 	Query	thread_id=523	exec_time=0	error_code=0
SET TIMESTAMP=1493447327/*!*/;
BEGIN
/*!*/;
# at 344613
#170429 13:28:47 server id 111  end_log_pos 344822 CRC32 0xdbbbec1b 	Query	thread_id=523	exec_time=0	error_code=0
SET TIMESTAMP=1493447327/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35716', '1597', '44', '20', '15')
/*!*/;
# at 344822
#170429 13:28:47 server id 111  end_log_pos 344918 CRC32 0x337e409a 	Query	thread_id=523	exec_time=0	error_code=0
SET TIMESTAMP=1493447327/*!*/;
COMMIT
/*!*/;
# at 344918
#170429 13:28:55 server id 111  end_log_pos 345013 CRC32 0x971b633a 	Query	thread_id=526	exec_time=0	error_code=0
SET TIMESTAMP=1493447335/*!*/;
BEGIN
/*!*/;
# at 345013
#170429 13:28:55 server id 111  end_log_pos 345222 CRC32 0x0d1038d0 	Query	thread_id=526	exec_time=0	error_code=0
SET TIMESTAMP=1493447335/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35717', '1597', '46', '40', '16')
/*!*/;
# at 345222
#170429 13:28:55 server id 111  end_log_pos 345318 CRC32 0x3af4e1a4 	Query	thread_id=526	exec_time=0	error_code=0
SET TIMESTAMP=1493447335/*!*/;
COMMIT
/*!*/;
# at 345318
#170429 13:29:10 server id 111  end_log_pos 345413 CRC32 0x68e66192 	Query	thread_id=529	exec_time=0	error_code=0
SET TIMESTAMP=1493447350/*!*/;
BEGIN
/*!*/;
# at 345413
#170429 13:29:10 server id 111  end_log_pos 345622 CRC32 0xb134e30b 	Query	thread_id=529	exec_time=0	error_code=0
SET TIMESTAMP=1493447350/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35718', '1597', '47', '12', '17')
/*!*/;
# at 345622
#170429 13:29:10 server id 111  end_log_pos 345718 CRC32 0x22be265f 	Query	thread_id=529	exec_time=0	error_code=0
SET TIMESTAMP=1493447350/*!*/;
COMMIT
/*!*/;
# at 345718
#170429 13:29:13 server id 111  end_log_pos 345813 CRC32 0xa84f33fe 	Query	thread_id=532	exec_time=0	error_code=0
SET TIMESTAMP=1493447353/*!*/;
BEGIN
/*!*/;
# at 345813
#170429 13:29:13 server id 111  end_log_pos 346022 CRC32 0x43425bf8 	Query	thread_id=532	exec_time=0	error_code=0
SET TIMESTAMP=1493447353/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35719', '1597', '48', '12', '18')
/*!*/;
# at 346022
#170429 13:29:13 server id 111  end_log_pos 346118 CRC32 0x48d40566 	Query	thread_id=532	exec_time=0	error_code=0
SET TIMESTAMP=1493447353/*!*/;
COMMIT
/*!*/;
# at 346118
#170429 13:29:17 server id 111  end_log_pos 346213 CRC32 0xb2451f04 	Query	thread_id=535	exec_time=0	error_code=0
SET TIMESTAMP=1493447357/*!*/;
BEGIN
/*!*/;
# at 346213
#170429 13:29:17 server id 111  end_log_pos 346422 CRC32 0x4cc7981b 	Query	thread_id=535	exec_time=0	error_code=0
SET TIMESTAMP=1493447357/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35720', '1597', '49', '12', '19')
/*!*/;
# at 346422
#170429 13:29:17 server id 111  end_log_pos 346518 CRC32 0xc1e21570 	Query	thread_id=535	exec_time=0	error_code=0
SET TIMESTAMP=1493447357/*!*/;
COMMIT
/*!*/;
# at 346518
#170429 13:29:25 server id 111  end_log_pos 346613 CRC32 0xda11e8ec 	Query	thread_id=538	exec_time=0	error_code=0
SET TIMESTAMP=1493447365/*!*/;
BEGIN
/*!*/;
# at 346613
#170429 13:29:25 server id 111  end_log_pos 346823 CRC32 0xb70881c7 	Query	thread_id=538	exec_time=0	error_code=0
SET TIMESTAMP=1493447365/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35721', '1597', '440', '10', '20')
/*!*/;
# at 346823
#170429 13:29:25 server id 111  end_log_pos 346919 CRC32 0x3054a19e 	Query	thread_id=538	exec_time=0	error_code=0
SET TIMESTAMP=1493447365/*!*/;
COMMIT
/*!*/;
# at 346919
#170429 13:29:34 server id 111  end_log_pos 347014 CRC32 0xe5f68b2f 	Query	thread_id=541	exec_time=0	error_code=0
SET TIMESTAMP=1493447374/*!*/;
BEGIN
/*!*/;
# at 347014
#170429 13:29:34 server id 111  end_log_pos 347224 CRC32 0x1090e224 	Query	thread_id=541	exec_time=0	error_code=0
SET TIMESTAMP=1493447374/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35722', '1597', '409', '50', '21')
/*!*/;
# at 347224
#170429 13:29:34 server id 111  end_log_pos 347320 CRC32 0x5ab8b18d 	Query	thread_id=541	exec_time=0	error_code=0
SET TIMESTAMP=1493447374/*!*/;
COMMIT
/*!*/;
# at 347320
#170429 13:29:42 server id 111  end_log_pos 347415 CRC32 0x3bea72e5 	Query	thread_id=546	exec_time=0	error_code=0
SET TIMESTAMP=1493447382/*!*/;
BEGIN
/*!*/;
# at 347415
#170429 13:29:42 server id 111  end_log_pos 347624 CRC32 0x850cd6db 	Query	thread_id=546	exec_time=0	error_code=0
SET TIMESTAMP=1493447382/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35723', '1597', '82', '50', '22')
/*!*/;
# at 347624
#170429 13:29:42 server id 111  end_log_pos 347720 CRC32 0xaa96e0a8 	Query	thread_id=546	exec_time=0	error_code=0
SET TIMESTAMP=1493447382/*!*/;
COMMIT
/*!*/;
# at 347720
#170429 13:29:49 server id 111  end_log_pos 347815 CRC32 0x22252810 	Query	thread_id=551	exec_time=0	error_code=0
SET TIMESTAMP=1493447389/*!*/;
BEGIN
/*!*/;
# at 347815
#170429 13:29:49 server id 111  end_log_pos 348024 CRC32 0x265c05de 	Query	thread_id=551	exec_time=0	error_code=0
SET TIMESTAMP=1493447389/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35724', '1597', '62', '40', '23')
/*!*/;
# at 348024
#170429 13:29:49 server id 111  end_log_pos 348120 CRC32 0x8e0dc246 	Query	thread_id=551	exec_time=0	error_code=0
SET TIMESTAMP=1493447389/*!*/;
COMMIT
/*!*/;
# at 348120
#170429 13:30:16 server id 111  end_log_pos 348215 CRC32 0x9359a619 	Query	thread_id=560	exec_time=0	error_code=0
SET TIMESTAMP=1493447416/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=224,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 348215
#170429 13:30:16 server id 111  end_log_pos 348387 CRC32 0x4bd47fcb 	Query	thread_id=560	exec_time=0	error_code=0

/*!*/;
# at 348387
#170429 13:30:16 server id 111  end_log_pos 348483 CRC32 0x19332fd4 	Query	thread_id=560	exec_time=0	error_code=0
SET TIMESTAMP=1493447416/*!*/;
COMMIT
/*!*/;
# at 348483
#170429 13:30:19 server id 111  end_log_pos 348578 CRC32 0xc35dfe0d 	Query	thread_id=563	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 348578
# at 348610
#170429 13:30:19 server id 111  end_log_pos 348610 CRC32 0x83f37d0b 	Intvar
SET INSERT_ID=1598/*!*/;
#170429 13:30:19 server id 111  end_log_pos 348805 CRC32 0x47270250 	Query	thread_id=563	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
INSERT INTO inventory_product_out (date, employee, status) VALUES ('2017-04-29 13:31', 'Phen', 'SD_2spa')
/*!*/;
# at 348805
#170429 13:30:19 server id 111  end_log_pos 348836 CRC32 0xf84d2ebc 	Xid = 3232
COMMIT/*!*/;
# at 348836
#170429 13:30:19 server id 111  end_log_pos 348931 CRC32 0x3a9eb059 	Query	thread_id=565	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
BEGIN
/*!*/;
# at 348931
#170429 13:30:19 server id 111  end_log_pos 349078 CRC32 0x992c9b44 	Query	thread_id=565	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
UPDATE inventory_product_out SET id='1598' WHERE id =1598
/*!*/;
# at 349078
#170429 13:30:19 server id 111  end_log_pos 349174 CRC32 0x4a75c014 	Query	thread_id=565	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
COMMIT
/*!*/;
# at 349174
#170429 13:30:19 server id 111  end_log_pos 349269 CRC32 0x5a8437e5 	Query	thread_id=568	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=224,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 349269
#170429 13:30:19 server id 111  end_log_pos 349441 CRC32 0x3d00fdef 	Query	thread_id=568	exec_time=0	error_code=0

/*!*/;
# at 349441
#170429 13:30:19 server id 111  end_log_pos 349537 CRC32 0xe445c86b 	Query	thread_id=568	exec_time=0	error_code=0
SET TIMESTAMP=1493447419/*!*/;
COMMIT
/*!*/;
# at 349537
#170429 13:30:22 server id 111  end_log_pos 349632 CRC32 0x61a3bd07 	Query	thread_id=569	exec_time=0	error_code=0
SET TIMESTAMP=1493447422/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 349632
#170429 13:30:22 server id 111  end_log_pos 349852 CRC32 0xdf9d260f 	Query	thread_id=569	exec_time=0	error_code=0
SET TIMESTAMP=1493447422/*!*/;
UPDATE inventory_product_out SET date='2017-Apr-29 13:31', employee='Thura', others='', status='SD_2spa', id='1598' WHERE id =1598
/*!*/;
# at 349852
#170429 13:30:22 server id 111  end_log_pos 349883 CRC32 0xa2849f33 	Xid = 3263
COMMIT/*!*/;
# at 349883
#170429 13:30:23 server id 111  end_log_pos 349978 CRC32 0x33c147fb 	Query	thread_id=570	exec_time=0	error_code=0
SET TIMESTAMP=1493447423/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=224,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 349978
#170429 13:30:23 server id 111  end_log_pos 350150 CRC32 0x72e5fa03 	Query	thread_id=570	exec_time=0	error_code=0

/*!*/;
# at 350150
#170429 13:30:23 server id 111  end_log_pos 350246 CRC32 0xccfed602 	Query	thread_id=570	exec_time=0	error_code=0
SET TIMESTAMP=1493447423/*!*/;
COMMIT
/*!*/;
# at 350246
#170429 13:30:24 server id 111  end_log_pos 350341 CRC32 0xc4f157a7 	Query	thread_id=571	exec_time=0	error_code=0
SET TIMESTAMP=1493447424/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=8/*!*/;
BEGIN
/*!*/;
# at 350341
#170429 13:30:24 server id 111  end_log_pos 350561 CRC32 0x76c057ef 	Query	thread_id=571	exec_time=0	error_code=0
SET TIMESTAMP=1493447424/*!*/;
UPDATE inventory_product_out SET date='2017-Apr-29 13:31', employee='Thura', others='', status='SD_2spa', id='1598' WHERE id =1598
/*!*/;
# at 350561
#170429 13:30:24 server id 111  end_log_pos 350592 CRC32 0xa190abf0 	Xid = 3283
COMMIT/*!*/;
# at 350592
#170429 13:30:25 server id 111  end_log_pos 350687 CRC32 0x9e755591 	Query	thread_id=572	exec_time=0	error_code=0
SET TIMESTAMP=1493447425/*!*/;
BEGIN
/*!*/;
# at 350687
#170429 13:30:25 server id 111  end_log_pos 350900 CRC32 0x0c6b8a30 	Query	thread_id=572	exec_time=0	error_code=0
SET TIMESTAMP=1493447425/*!*/;
UPDATE inventory_product_out SET date='2017-04-17', employee='Thura', others='', status='SD_2spa', id='1598' WHERE id =1598
/*!*/;
# at 350900
#170429 13:30:25 server id 111  end_log_pos 350931 CRC32 0xefd33bbe 	Xid = 3285
COMMIT/*!*/;
# at 350931
#170429 13:30:25 server id 111  end_log_pos 351026 CRC32 0x86150577 	Query	thread_id=573	exec_time=0	error_code=0
SET TIMESTAMP=1493447425/*!*/;
BEGIN
/*!*/;
# at 351026
#170429 13:30:25 server id 111  end_log_pos 351239 CRC32 0xf33f261f 	Query	thread_id=573	exec_time=0	error_code=0
SET TIMESTAMP=1493447425/*!*/;
UPDATE inventory_product_out SET date='2017-04-17', employee='Thura', others='', status='SD_2spa', id='1598' WHERE id =1598
/*!*/;
# at 351239
#170429 13:30:25 server id 111  end_log_pos 351270 CRC32 0xe0acd1d4 	Xid = 3287
COMMIT/*!*/;
# at 351270
#170429 13:30:27 server id 111  end_log_pos 351365 CRC32 0x95818aa5 	Query	thread_id=574	exec_time=0	error_code=0
SET TIMESTAMP=1493447427/*!*/;
BEGIN
/*!*/;
# at 351365
#170429 13:30:27 server id 111  end_log_pos 351578 CRC32 0x35b58044 	Query	thread_id=574	exec_time=0	error_code=0
SET TIMESTAMP=1493447427/*!*/;
UPDATE inventory_product_out SET date='2017-04-29', employee='Thura', others='', status='SD_2spa', id='1598' WHERE id =1598
/*!*/;
# at 351578
#170429 13:30:27 server id 111  end_log_pos 351609 CRC32 0x8437538a 	Xid = 3289
COMMIT/*!*/;
# at 351609
#170429 13:30:33 server id 111  end_log_pos 351704 CRC32 0xc0c4c41f 	Query	thread_id=577	exec_time=0	error_code=0
SET TIMESTAMP=1493447433/*!*/;
BEGIN
/*!*/;
# at 351704
#170429 13:30:33 server id 111  end_log_pos 351913 CRC32 0xe853f11d 	Query	thread_id=577	exec_time=0	error_code=0
SET TIMESTAMP=1493447433/*!*/;
INSERT INTO inventory_product_out_detail (id, main_id, product, qty, number) VALUES ('35725', '1598', '445', '12', '1')
/*!*/;
# at 351913
#170429 13:30:33 server id 111  end_log_pos 352009 CRC32 0xc8f14ee7 	Query	thread_id=577	exec_time=0	error_code=0
SET TIMESTAMP=1493447433/*!*/;
COMMIT
/*!*/;
# at 352009
#170429 13:34:25 server id 21  end_log_pos 352104 CRC32 0x12ee406b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447665/*!*/;
BEGIN
/*!*/;
# at 352104
# at 352136
#170429 13:34:25 server id 21  end_log_pos 352136 CRC32 0xb702adf9 	Intvar
SET INSERT_ID=34530/*!*/;
#170429 13:34:25 server id 21  end_log_pos 352370 CRC32 0xc0787ce8 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447665/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('583','201704-00583','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 352370
#170429 13:34:25 server id 21  end_log_pos 352466 CRC32 0x78f6abbe 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447665/*!*/;
COMMIT
/*!*/;
# at 352466
#170429 13:34:26 server id 21  end_log_pos 352561 CRC32 0x61bcfa2b 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447666/*!*/;
BEGIN
/*!*/;
# at 352561
# at 352593
#170429 13:34:26 server id 21  end_log_pos 352593 CRC32 0x12e6d32a 	Intvar
SET INSERT_ID=82156/*!*/;
#170429 13:34:26 server id 21  end_log_pos 352839 CRC32 0x4d0ab7c4 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447666/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34530','46','1.00000000000000000e+000','5.00000000000000000e+000','1')
/*!*/;
# at 352839
#170429 13:34:26 server id 21  end_log_pos 352935 CRC32 0x756c12a6 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447666/*!*/;
COMMIT
/*!*/;
# at 352935
#170429 13:34:26 server id 21  end_log_pos 353030 CRC32 0xf00118a3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447666/*!*/;
BEGIN
/*!*/;
# at 353030
#170429 13:34:26 server id 21  end_log_pos 353202 CRC32 0x070e0227 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447666/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82156'
/*!*/;
# at 353202
#170429 13:34:26 server id 21  end_log_pos 353298 CRC32 0xd26b16d0 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447666/*!*/;
COMMIT
/*!*/;
# at 353298
#170429 13:34:27 server id 21  end_log_pos 353393 CRC32 0x0c96eaa7 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447667/*!*/;
BEGIN
/*!*/;
# at 353393
#170429 13:34:27 server id 21  end_log_pos 353565 CRC32 0xeb08a97c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447667/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82156'
/*!*/;
# at 353565
#170429 13:34:27 server id 21  end_log_pos 353661 CRC32 0xe34aebfb 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447667/*!*/;
COMMIT
/*!*/;
# at 353661
#170429 13:34:27 server id 21  end_log_pos 353756 CRC32 0x1ebf94f3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447667/*!*/;
BEGIN
/*!*/;
# at 353756
#170429 13:34:27 server id 21  end_log_pos 353928 CRC32 0x84a8fb42 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447667/*!*/;
UPDATE `oms_sale_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '82156'
/*!*/;
# at 353928
#170429 13:34:27 server id 21  end_log_pos 354024 CRC32 0x30e26c92 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447667/*!*/;
COMMIT
/*!*/;
# at 354024
#170429 13:34:28 server id 21  end_log_pos 354119 CRC32 0x8d7a5915 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447668/*!*/;
BEGIN
/*!*/;
# at 354119
#170429 13:34:28 server id 21  end_log_pos 354291 CRC32 0xefc94aef 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447668/*!*/;
UPDATE `oms_sale_detail` SET `qty`='5.00000000000000000e+000' WHERE `id` = '82156'
/*!*/;
# at 354291
#170429 13:34:28 server id 21  end_log_pos 354387 CRC32 0x70c8d304 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493447668/*!*/;
COMMIT
/*!*/;
# at 354387
#170429 13:34:31 server id 21  end_log_pos 354482 CRC32 0xd3211877 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447671/*!*/;
BEGIN
/*!*/;
# at 354482
#170429 13:34:31 server id 21  end_log_pos 355105 CRC32 0x46a9d5f6 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447671/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 13:34:26',`total`='2.50000000000000000e+001'  WHERE `id` = '34530' AND `inv_num` = '583' AND `inv_refer` = '201704-00583' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 355105
#170429 13:34:31 server id 21  end_log_pos 355201 CRC32 0xf265f7d1 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447671/*!*/;
COMMIT
/*!*/;
# at 355201
#170429 13:34:33 server id 21  end_log_pos 355296 CRC32 0x3567e7e6 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447673/*!*/;
BEGIN
/*!*/;
# at 355296
# at 355328
#170429 13:34:33 server id 21  end_log_pos 355328 CRC32 0xf27b964e 	Intvar
SET INSERT_ID=13124/*!*/;
#170429 13:34:33 server id 21  end_log_pos 355501 CRC32 0xc02f8d1e 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447673/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34530','46','1')
/*!*/;
# at 355501
#170429 13:34:33 server id 21  end_log_pos 355597 CRC32 0x2714399e 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447673/*!*/;
COMMIT
/*!*/;
# at 355597
#170429 13:35:05 server id 21  end_log_pos 355692 CRC32 0x3ba0e117 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447705/*!*/;
BEGIN
/*!*/;
# at 355692
#170429 13:35:05 server id 21  end_log_pos 356322 CRC32 0x6761386f 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447705/*!*/;
UPDATE `oms_sale` SET `bill`='2.50000000000000000e+001'  WHERE `id` = '34530' AND `inv_num` = '583' AND `inv_refer` = '201704-00583' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:34:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 356322
#170429 13:35:05 server id 21  end_log_pos 356418 CRC32 0x6cf6ebd1 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447705/*!*/;
COMMIT
/*!*/;
# at 356418
#170429 13:35:55 server id 21  end_log_pos 356513 CRC32 0x91ffae1c 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447755/*!*/;
BEGIN
/*!*/;
# at 356513
#170429 13:35:55 server id 21  end_log_pos 357227 CRC32 0x706f9076 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447755/*!*/;
UPDATE `oms_sale` SET `nationality`='Japanese',`age`='60',`gender`='Female',`guide_phone`='012630442',`guide_name`='G'  WHERE `id` = '34530' AND `inv_num` = '583' AND `inv_refer` = '201704-00583' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:34:26' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` = '2.50000000000000000e+001' AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '2.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 357227
#170429 13:35:55 server id 21  end_log_pos 357323 CRC32 0x7ce3b222 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493447755/*!*/;
COMMIT
/*!*/;
# at 357323
#170429 13:47:28 server id 21  end_log_pos 357418 CRC32 0x6f264cac 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448448/*!*/;
BEGIN
/*!*/;
# at 357418
# at 357450
#170429 13:47:28 server id 21  end_log_pos 357450 CRC32 0x2f9bf9ed 	Intvar
SET INSERT_ID=34531/*!*/;
#170429 13:47:28 server id 21  end_log_pos 357684 CRC32 0x6ae34946 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448448/*!*/;
INSERT INTO  `oms_sale`  (`inv_num`,`inv_refer`,`date_bill`,`employee`,`pay_by`) VALUES ('584','201704-00584','2017-04-29 00:00:00','11','Cash')
/*!*/;
# at 357684
#170429 13:47:28 server id 21  end_log_pos 357780 CRC32 0xddb3c5ff 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448448/*!*/;
COMMIT
/*!*/;
# at 357780
#170429 13:47:31 server id 21  end_log_pos 357875 CRC32 0x2fd0ba22 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448451/*!*/;
BEGIN
/*!*/;
# at 357875
# at 357907
#170429 13:47:31 server id 21  end_log_pos 357907 CRC32 0x45dba21c 	Intvar
SET INSERT_ID=82157/*!*/;
#170429 13:47:31 server id 21  end_log_pos 358153 CRC32 0xfc019a0e 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448451/*!*/;
INSERT INTO  `oms_sale_detail`  (`main_id`,`product`,`qty`,`price`,`number`) VALUES ('34531','37','1.00000000000000000e+000','3.00000000000000000e+000','1')
/*!*/;
# at 358153
#170429 13:47:31 server id 21  end_log_pos 358249 CRC32 0x3791bb29 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448451/*!*/;
COMMIT
/*!*/;
# at 358249
#170429 13:47:31 server id 21  end_log_pos 358344 CRC32 0x7edfa490 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448451/*!*/;
BEGIN
/*!*/;
# at 358344
#170429 13:47:31 server id 21  end_log_pos 358516 CRC32 0xdbec3d89 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448451/*!*/;
UPDATE `oms_sale_detail` SET `qty`='2.00000000000000000e+000' WHERE `id` = '82157'
/*!*/;
# at 358516
#170429 13:47:31 server id 21  end_log_pos 358612 CRC32 0xdfb1b11d 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448451/*!*/;
COMMIT
/*!*/;
# at 358612
#170429 13:47:32 server id 21  end_log_pos 358707 CRC32 0x56a8009c 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
BEGIN
/*!*/;
# at 358707
#170429 13:47:32 server id 21  end_log_pos 358879 CRC32 0xc18de18f 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
UPDATE `oms_sale_detail` SET `qty`='3.00000000000000000e+000' WHERE `id` = '82157'
/*!*/;
# at 358879
#170429 13:47:32 server id 21  end_log_pos 358975 CRC32 0x722c163e 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
COMMIT
/*!*/;
# at 358975
#170429 13:47:32 server id 21  end_log_pos 359070 CRC32 0xfcef0812 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
BEGIN
/*!*/;
# at 359070
#170429 13:47:32 server id 21  end_log_pos 359242 CRC32 0xf7d37d27 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
UPDATE `oms_sale_detail` SET `qty`='4.00000000000000000e+000' WHERE `id` = '82157'
/*!*/;
# at 359242
#170429 13:47:32 server id 21  end_log_pos 359338 CRC32 0xc73ac4eb 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
COMMIT
/*!*/;
# at 359338
#170429 13:47:32 server id 21  end_log_pos 359433 CRC32 0x32da5121 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
BEGIN
/*!*/;
# at 359433
#170429 13:47:32 server id 21  end_log_pos 359605 CRC32 0xe747c2a4 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
UPDATE `oms_sale_detail` SET `qty`='5.00000000000000000e+000' WHERE `id` = '82157'
/*!*/;
# at 359605
#170429 13:47:32 server id 21  end_log_pos 359701 CRC32 0x831ee1c3 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448452/*!*/;
COMMIT
/*!*/;
# at 359701
#170429 13:47:35 server id 21  end_log_pos 359796 CRC32 0xdc9538e8 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448455/*!*/;
BEGIN
/*!*/;
# at 359796
#170429 13:47:35 server id 21  end_log_pos 360419 CRC32 0xac2d1f9f 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448455/*!*/;
UPDATE `oms_sale` SET `time`='1899-12-30 13:47:31',`total`='1.50000000000000000e+001'  WHERE `id` = '34531' AND `inv_num` = '584' AND `inv_refer` = '201704-00584' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` IS NULL AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` IS NULL AND `guide_name` IS NULL
/*!*/;
# at 360419
#170429 13:47:35 server id 21  end_log_pos 360515 CRC32 0x8fd6c711 	Query	thread_id=9	exec_time=4294967291	error_code=0
SET TIMESTAMP=1493448455/*!*/;
COMMIT
/*!*/;
# at 360515
#170429 13:47:37 server id 21  end_log_pos 360610 CRC32 0x01fff74b 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448457/*!*/;
BEGIN
/*!*/;
# at 360610
# at 360642
#170429 13:47:37 server id 21  end_log_pos 360642 CRC32 0xcc508d94 	Intvar
SET INSERT_ID=13125/*!*/;
#170429 13:47:37 server id 21  end_log_pos 360815 CRC32 0x6a8cbfd4 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448457/*!*/;
INSERT INTO  `oms_sale_gift`  (`main_id`,`product`,`qty`) VALUES ('34531','37','1')
/*!*/;
# at 360815
#170429 13:47:37 server id 21  end_log_pos 360911 CRC32 0x81d41ed1 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448457/*!*/;
COMMIT
/*!*/;
# at 360911
#170429 13:47:55 server id 21  end_log_pos 361006 CRC32 0x115b4c97 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448475/*!*/;
BEGIN
/*!*/;
# at 361006
#170429 13:47:55 server id 21  end_log_pos 361636 CRC32 0xdf88955a 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448475/*!*/;
UPDATE `oms_sale` SET `bill`='1.50000000000000000e+001'  WHERE `id` = '34531' AND `inv_num` = '584' AND `inv_refer` = '201704-00584' AND `date_bill` = '2017-04-29 00:00:00' AND `customer` IS NULL AND `nationality` IS NULL AND `employee` = '11' AND `age` IS NULL AND `gender` IS NULL AND `time` = '1899-12-30 13:47:31' AND `round_up` = '0.00000000000000000e+000' AND `percentage` = '0.00000000000000000e+000' AND `bill` IS NULL AND `pay_by` = 'Cash' AND `guide_phone` IS NULL AND `total` = '1.50000000000000000e+001' AND `guide_name` IS NULL
/*!*/;
# at 361636
#170429 13:47:55 server id 21  end_log_pos 361732 CRC32 0x0fd39c67 	Query	thread_id=9	exec_time=4294967292	error_code=0
SET TIMESTAMP=1493448475/*!*/;
COMMIT
/*!*/;
DELIMITER ;
# End of log file
ROLLBACK /* added by mysqlbinlog */;
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
