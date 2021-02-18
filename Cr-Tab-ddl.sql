
------------------------------------------------------------------------------------------------------------------------------------------------------
-- This is HO entity table and will be containing the prime information about the organization. 
-- Being Head Office, it will be having only one record. 
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table BEHauptsitz(	Be_tm_code							varchar2(100), 
							Be_full_name						varchar2(500), 
							Be_hq_address_str					varchar2(30), 
							Be_hq_address_str_no				varchar2(30), 
							Be_hq_address_plz					number, 
							Be_hq_address_ort					varchar2(30), 
							Be_hq_address_ctry					varchar2(30), 
							Be_hq_address_stadt					varchar2(30), 
							Be_hq_address_region				varchar2(30), 							
							Be_hq_geschaeftsfuehrer				varchar2(100), 
							Be_hq_stellvertretter				varchar2(100),
							Be_hq_auth_status					char(1), 
							Be_hq_once_auth						char(1), 
							Be_hq_first_create					date, 
							Be_hq_first_auth					date, 
							Be_hq_maker_id						varchar2(20), 
							Be_hq_Maker_dt_stamp  				date, 
							Be_hq_checker_id					varchar2(20), 
							Be_hq_checker_dt_Stamp 				date 							
						) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Company Branch info store - Here it is possible to have more records as well. and multi country rollout as well is possible. 
-- Frankfurt. 	- Deutsche Borse - HSBC - DAX. 
-- Copenhagen. 	- SAXO. 
-- Londone 		- LSE.  						
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table BEFiliale (	Be_fl_code							varchar2(100), 
							Be_flfull_name						varchar2(500), 
							Be_fl_address_str					varchar2(30), 
							Be_fl_address_str_no				varchar2(30), 
							Be_fl_address_plz					number, 
							Be_fl_address_ort					varchar2(30), 
							Be_fl_address_ctry					varchar2(30), 
							Be_fl_address_stadt					varchar2(30), 
							Be_fl_address_region				varchar2(30), 							
							Be_fl_geschaeftsfuehrer				varchar2(100), 
							Be_fl_stellvertretter				varchar2(100),
							Be_fl_auth_status					char(1), 
							Be_fl_once_auth						char(1), 
							Be_fl_first_create					date, 
							Be_fl_first_auth					date, 
							Be_fl_maker_id						varchar2(20), 
							Be_fl_Maker_dt_stamp  				date, 
							Be_fl_checker_id					varchar2(20), 
							Be_fl_checker_dt_Stamp 				date 
						) 
/
						
------------------------------------------------------------------------------------------------------------------------------------------------------
-- Customer master Table. - Includes the Digital log in ID and security questions. 				
-- Also contains the branch code of the customer, to see which branch / country the customer belongs too. 
-- So the funds could be routed to the respective stock exchange. 
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table KDkundendata	(	Kd_cust_id						varchar2(100), 		
								Kd_nationality					varchar2(2), 		
								Kd_unique_id					varchar2(2), 										
								Kd_unique_id_issdt				date, 																										
								Kd_unique_id_expdt				date, 		
								Kd_uid_iss_authority			varchar2(100), 										
								Kd_aufenthalt_id				varchar2(2), 																		
								Kd_aufenthalt_id_issdt			date, 																										
								Kd_aufenthalt_id_expdt			date, 												
								Kd_aufid_iss_authority			varchar2(100), 										
								kd_vorname						varchar2(50),
								kd_nachname						varchar2(50),								
								kd_grdname						varchar2(50),																
								Kd_full_name					varchar2(500), 
								kd_geburtsdatum					date, 								
								kd_age							number(5,3), 								
								Kd_address_str					varchar2(30), 
								Kd_address_str_no				varchar2(30), 
								Kd_address_plz					number, 
								Kd_address_ort					varchar2(30), 
								Kd_address_ctry					varchar2(30), 
								Kd_address_stadt				varchar2(30), 
								Kd_address_region				varchar2(30), 							
								Kd_fl_code						varchar2(100), 
								Kd_user_id						varchar2(100),
								Kd_kennwort						varchar2(100),								
								kd_last_login_dtm				date, 			
								Kd_user_id_status				varchar2(100),								
								Kd_uid_stchg_date				varchar2(100),																
								Kd_kennwort_frage1				varchar2(100),																
								Kd_fr_antwort1					varchar2(100),																								
								Kd_kennwort_frage2				varchar2(100),																
								Kd_fr_antwort2					varchar2(100),																								
								Kd_kennwort_frage3				varchar2(100),																
								Kd_fr_antwort3					varchar2(100),																								
								Kd_kennwort_frage4				varchar2(100),																
								Kd_fr_antwort4					varchar2(100),																								
								Kd_kennwort_frage5				varchar2(100),																
								Kd_fr_antwort5					varchar2(100),	
								Kd_handynummer					number, 								
								Kd_dslnummer					number, 																
								Kd_email_id						varchar2(50),
								kd_opening_date					date, 
								kd_mstudy_subs_code				varchar2(50), 		-- Stock value predication feature. 						
								Kd_auth_status					char(1), 
								Kd_once_auth					char(1), 
								Kd_first_create					date, 
								Kd_first_auth					date, 
								Kd_maker_id						varchar2(20), 
								Kd_Maker_dt_stamp  				date, 
								Kd_checker_id					varchar2(20), 
								Kd_checker_dt_Stamp 			date 
							)
/							
------------------------------------------------------------------------------------------------------------------------------------------------------
-- Customer accounts table. 
-- This is the bank entity information for the customers accounts. 
-- These details will help in marking the DMAT investment details and to do the funds settlements. 
-- In order to have better view of the funds positioning for the customer, company balance and Bank Balance both are taken. 
-- Open Banking concept can also be applied in the future. 
------------------------------------------------------------------------------------------------------------------------------------------------------
						
Create table KDkontodata	(	Kd_cust_id						varchar2(100), 		
								kd_iban							varchar2(35),
								kd_bic_code						varchar2(11),								
								kd_kontonummer					varchar2(50),																
								kd_kontoblz						varchar2(50),	
								kd_ktfl_address					varchar2(50),	
								kd_konto_Status					char(1),									
								kd_konto_seqnr					number,																	
								kd_kontovorname					varchar2(50),
								kd_kontonachname				varchar2(50),								
								kd_ktgrdname					varchar2(50),																
								Kd_ktfull_name					varchar2(500), 
								Kd_full_name					varchar2(500), 
								kd_geburtsdatum					date, 								
								kd_age							number(5,3), 								
								Kd_kaz_address_str				varchar2(30), 
								Kd_kaz_address_str_no			varchar2(30), 
								Kd_kaz_address_plz				number, 
								Kd_kaz_address_ort				varchar2(30), 
								Kd_kaz_address_ctry				varchar2(30), 
								Kd_kaz_address_stadt			varchar2(30), 
								Kd_kaz_address_region			varchar2(30), 							
								Kd_fl_code						varchar2(100), 
								Kd_currency						varchar2(3),
								Kd_lcy_curr_balance				number(22.3), 
								Kd_acy_curr_balance				number(22.3), 
								kd_konto_mandate_id				varchar2(50),								
								kd_konto_mandate_stdt			Date, 
								kd_konto_mandate_enddt			Date,
								Kd_auth_status					char(1), 
								Kd_once_auth					char(1), 
								Kd_first_create					date, 
								Kd_first_auth					date, 
								Kd_maker_id						varchar2(20), 
								Kd_Maker_dt_stamp  				date, 
								Kd_checker_id					varchar2(20), 
								Kd_checker_dt_Stamp 			date 
							)
/
							
------------------------------------------------------------------------------------------------------------------------------------------------------

-- Most of the new agencies / companies will begin with the EQUITIES and Mutual Funds investments. 							
-- So the products offered will be as follows. 

	-- Equities. 		-- SIP Equities. 
	-- Mutual funds. 	-- SIP Mutual Funds. 
	-- Intra day trade ( Market value trade ). 
	-- Limit trade 		-- Algorithmic trading ). 
	-- Payments 		-- Domestic / SEPA / SWIFT -- to be used for settlements. 

------------------------------------------------------------------------------------------------------------------------------------------------------	
	
Create table BeProducts		(	Be_Product_code					varchar2(50), 									
								Be_Product_description			varchar2(100), 									
								Be_Product_category				varchar2(50), 			-- Get from category master. 																	
								Be_Product_stdate				date, 					
								Be_Product_enddate				date, 					
								Be_Product_status				char(1),
								Be_product_auth_status			char(1), 
								Be_product_once_auth			char(1), 
								Be_product_first_create			date, 
								Be_product_first_auth			date, 
								Be_product_maker_id				varchar2(20), 
								Be_product_Maker_dt_stamp  		date, 
								Be_product_checker_id			varchar2(20), 
								Be_product_checker_dt_Stamp 	date 
							) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------							
--  This table stores the standard product offerings for the agency business. 
--  Marking and maintaining the products helps in applying standard set of parameters on the investment transactions. 
--  Also this helps in building better analytics in order to evaluate and predict the essential values of the markets and units. 
------------------------------------------------------------------------------------------------------------------------------------------------------
							
Create table BeProducts_prefs	(	Be_Product_code					varchar2(50), 									
									Be_Product_type					varchar2(5), 									
									Be_Product_glac_no				varchar2(50), 			-- Get from category master. 																	
									Be_Product_24by7				char(1), 					
									Be_Product_enddate				date, 					
									Be_Product_status				char(1),
									Be_product_auth_status			char(1), 
									Be_product_once_auth			char(1), 
									Be_product_first_create			date, 
									Be_product_first_auth			date, 
									Be_product_maker_id				varchar2(20), 
									Be_product_Maker_dt_stamp  		date, 
									Be_product_checker_id			varchar2(20), 
									Be_product_checker_dt_Stamp 	date ,
									Be_product_gds				 	number, 
									Be_product_gl_code			 	varchar2(10), 
									Be_product_txn_code			 	varchar2(3), 									
									Be_product_ccy_code			 	varchar2(3), 																		
									Be_product_paysystem			varchar2(10), 	
									Be_product_dailycut_hr			number, 	
									Be_product_dailycut_min			number										
								) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------
--  This table stores the port folio of the all the investments done by the customer. 
--  In case of multi country entities, we need to have different customer ids as the settlement currencies are different. 
--  The values will be measured as part of each transaction and also at the end of the day as part of daily business closure. 
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table KD_portfolio	(	Pf_custid			varchar2(100), 
								Pf_asset_code		varchar2(5), 
								Pf_asset_type		varchar2(5), 
								Pf_asset_qty		number, 
								Pf_asset_ccy		varchar2(3), 
								Pf_asset_value		number(22,5), 
								Pf_last_book_date	date, 
								Pf_last_setl_date	date, 								
								Pf_setl_refno		varchar2(16)						
							) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------
--  This table stores the algorithmic trading rules. 
--  Based on the trade rules template the customer can put up the Algo trading. 
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table KD_trade_rules	(	Tr_ruleid			varchar2(100), 
								Tr_rule_type		varchar2(100), 		-- Normal - intraday, SIP , algorithmic. 
								Tr_asset_code		varchar2(5), 
								Tr_asset_type		varchar2(5), 
								Tr_mktorlmt			char(1),
								Tr_buysell_ind		char(1), 								
								Tr_asset_qty		number, 
								Tr_asset_ccy		varchar2(3), 
								Tr_asset_value		number(22,5), 
								Tr_sip_indicator	char(1),								
								Tr_sip_st_date		date, 
								Tr_sip_end_date		date, 								
								Tr_agt_st_date		date, 
								Tr_agt_end_date		date, 																
								Tr_cond_ropr		varchar2(1), 
								Tr_cond_prrng_from	number(22,5), 
								Tr_cond_prrng_to	number(22,5)
							) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------
--  This table stores the normal and algorithmic trading instructions. 
--  Based on the trade rules template the customer can put up the Algo trading instructions in the below tables. 
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table KD_trade_instr	(	Ti_custid			varchar2(100), 
								Ti_ruleid			varchar2(10), 
								Ti_rule_type		varchar2(100), 
								Ti_asset_code		varchar2(5), 
								Ti_asset_type		varchar2(5), 
								Ti_buysell_ind		char(1), 
								Ti_mktorlmt			char(1),
								Ti_asset_qty		number, 
								Ti_asset_ccy		varchar2(3), 
								Ti_asset_value		number(22,5), 
								Ti_sip_indicator	char(1),								
								Ti_trade_st_date	date, 
								Ti_trade_end_date	date, 								
								Ti_trade_remrks		varchar2(100) 								
							) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------							
-- This table records the investment transactions of the customers / FII customers. 
-- Based on this table, the resultant balances will be computed by the system for each transaction and eod. 							
------------------------------------------------------------------------------------------------------------------------------------------------------
							
Create table KD_tradebook_journal	(	Tj_book_refno				varchar2(16), 
										Tj_book_date				date, 
										Tj_ruleid					varchar2(100), 
										Tj_rule_type				varchar2(100), 		Normal - intraday, SIP , algorithmic. 
										Tj_asset_code				varchar2(5), 
										Tj_asset_type				varchar2(5), 
										Tj_mktorlmt					char(1),
										Tj_buysell_ind				char(1), 																	
										Tj_asset_qty_tried			number, 
										Tj_asset_ccy				varchar2(3), 
										Tj_asset_value_pu			number(22,5), 
										Tj_booked_units				number, 
										Tj_booked_price				number(22,5), 									
										Tj_unbooked_units			number, 
										Tj_sip_indicator			char(1),								
										Tj_sip_st_date				date, 
										Tj_sip_end_date				date, 								
										Tj_agt_st_date				date, 
										Tj_agt_end_date				date, 
										Tj_cond_ropr				varchar2(1), 
										Tj_cond_prrng_from			number(22,5), 
										Tj_cond_prrng_to			number(22,5)
									) 
/

------------------------------------------------------------------------------------------------------------------------------------------------------
-- This table records settlements needed ( via Payments utilities ). 
-- Based on this table, the resultant balances will be computed by the system for each transaction and eod. 							
------------------------------------------------------------------------------------------------------------------------------------------------------

Create table KD_tbjournal_setl		(	Ts_setl_refno				varchar2(16), 
										Ts_setl_date				date, 
										Ts_book_refno				varchar2(100), 
										Ts_book_date				date, 
										Ts_custid					varchar2(100), 
										Ts_buysell_ind				char(1), 
										Ts_drcr_ind					char(1), 
										Ts_iban						varchar2(35),
										Ts_bic_code					varchar2(11),								
										Ts_kontonummer				varchar2(50),																
										Ts_kontoblz					varchar2(50),	
										Ts_konto_ccy				varchar2(3), 
										Ts_direct_account			char(1), 
										Ts_payment_ref_no			varchar2(16), 
										Ts_other_bnk_acct			char(1), 
										Ts_amount_requested			number(22,5), 
										Ts_amount_confirmed			number(22,5), 
										Ts_amount_unbooked			number(22,5), 
										Ts_balance_received			number(22,5), 
										Ts_balance_currency			varchar2(5), 										
										Ts_post_book_bal			number(22,5)
									)
/

------------------------------------------------------------------------------------------------------------------------------------------------------									
-- BASE stats computation for the customer port folio. 									
------------------------------------------------------------------------------------------------------------------------------------------------------
									
Create table KD_portfolio_stat	(	Pf_custid					varchar2(100), 
									Pf_asset_type				varchar2(5), 
									Pf_asset_wkqty				number, 
									Pf_asset_ccy				varchar2(3), 
									Pf_asset_wkvalue			number(22,5), 
									Pf_last_book_date			date, 
									Pf_last_setl_date			date, 								
									Pf_setl_refno				varchar2(16),						
									Pf_asset_botvalue			number(22,5), 
									Pf_asset_sellvalue			number(22,5), 
									Pf_asset_wkgains			number(22,5), 									
									Pf_asset_wklosses			number(22,5), 																		
								) 

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Daily stock price store for Equities. 
------------------------------------------------------------------------------------------------------------------------------------------------------
									
Create Table Stock_EQprice 	( 	Sp_Exch_Code           	Varchar2(10),        
								Sp_Exch_Ccy            	Varchar2(3),        
								Sp_Exch_Dot            	Varchar2(3),        								
								Sp_Exch_Dct            	Varchar2(3),        																
								Sp_BIZ_DATE            	DATE,        
								Sp_COMPANY_NAME        	VARCHAR2(500),
								Sp_STOCK_CODE          	VARCHAR2(5),   
								Sp_PRICE_CCY           	VARCHAR2(3),  										
								Sp_PRICE_VALUE         	VARCHAR2(10),  
								Sp_PRICE_AMOUNT        	NUMBER(22,5),  										
								Sp_COMP_MKT_CAP        	VARCHAR2(10),  
								Sp_STOCK_INDICES       	VARCHAR2(500)
							)
/

------------------------------------------------------------------------------------------------------------------------------------------------------
-- Daily stock price store for Mutual Funds. 
------------------------------------------------------------------------------------------------------------------------------------------------------

Create Table Stock_MFprice 	( 	Sp_Exch_Code           	Varchar2(10),        
								Sp_Exch_Ccy            	Varchar2(3),        
								Sp_Exch_Dot            	Varchar2(3),        								
								Sp_Exch_Dct            	Varchar2(3),        																
								Sp_BIZ_DATE            	DATE,        
								Sp_MF_CODE          	VARCHAR2(5),   
								Sp_MFPRICE_CCY          VARCHAR2(3)  										
								Sp_MFUnit_VALUE         VARCHAR2(10),  
								Sp_MFUnit_AMOUNT        NUMBER(22,5),  										
								Sp_FUND_MKT_CAP        	VARCHAR2(10),  							
								Sp_STOCK_INDICES       	VARCHAR2(500)
							)
/

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- Gateway Tables. 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	-- Investment Banking communication Gateway. 

Create table Ib_comm_gateway 		(	Cust_id					varchar2(25), 
										cust_type				varchar2(10), 
										user_id					varchar2(25), 
										user_type				varchar2(10), 
										trn_ref_no				varchar2(16), 
										trn_type				varchar2(10), 
										trn_subtype				varchar2(10), 
										trn_seq_no				number, 
										action_code				varchar2(10), 
										in_msg_time				date,
										in_req_xml				blob, 	
										otp_value_key_out 		varchar2(2000), 
										otp_value_key_in		varchar2(2000), 
										imd_resp_xml			blob, 
										post_otp_resp_xml		blob,
										out_msg_time			date, 
										action_status			char(1)
									) 
								

--	Investment Banking Exchange communication Gateway. 
		
'https://api.hsbc.com.hk/live/dax-anlage/v1.0/book-inv-transactions'
'https://api.hsbc.com.hk/live/dax-anlage/v1.0/settlement-transactions'
'https://api.hsbc.com.hk/live/open-banking/v1.0/personal-foreign-exchange-rates'

Create table exchange_api_master 	(	exch_code			varchar2(25), 
										exch_desc			varchar2(100), 
										exch_aprvl_key		varchar2(100), 
										exch_mst_api_url 	varchar2(20000), 
										exch_api_msg_xml	blob
									) 
/ 

Create table Ib_exchg_comm_apigateway 	(	Cust_id					varchar2(25), 
											cust_type				varchar2(10), 
											user_id					varchar2(25), 
											user_type				varchar2(10), 
											trn_ref_no				varchar2(16), 
											trn_type				varchar2(10), 
											trn_subtype				varchar2(10), 
											try_seq_no				number, 										
											action_code				varchar2(10), 										
											asset_code				varchar2(5), 
											asset_type				varchar2(5), 										
											asset_qty				number, 										
											asset_value				number(22,5), 										
											out_msg_time			date,
											out_req_msg				blob, 	
											otp_value_conf 			varchar2(2000), 
											otp_value_key_in		varchar2(2000), 
											in_resp_msg				blob, 
											post_otp_resp_xml		blob,
											in_msg_time				date, 
											comm_status				char(1)
										) 
								
								
-- Investment Banking payment Gateway. 								

Create table Ib_pymt_gateway 	(	Cust_id					varchar2(25), 
									cust_type				varchar2(10), 
									user_id					varchar2(25), 
									user_type				varchar2(10), 
									trn_ref_no				varchar2(16), 
									trn_type				varchar2(10), 
									trn_subtype				varchar2(10), 
									trn_seq_no				number, 
									Pay_proc_code			varchar2(10), 
									in_msg_time				date,
									in_req_xml				blob, 	
									otp_value_key_out 		varchar2(2000), 
									otp_value_key_in		varchar2(2000), 
									imd_resp_xml			blob, 
									post_otp_resp_xml		blob,
									out_msg_time			date, 
									pay_proc_status			char(1)
								) 
	
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	

