
-- Oracle DB PACKAGE Specification. 

Create or Replace Package Ibpks_crud_entities	(	p_BEHauptsitz						BEHauptsitz%rowtype, 
													p_BEFiliale							BEFiliale%rowtype, 
													p_BeProducts						BeProducts%rowtype, 
													p_BeProducts_prefs					BeProducts_prefs%rowtype, 
													p_KD_trade_rules					KD_trade_rules%rowtype, 
													p_Ib_exchg_comm_apigateway			p_Ib_exchg_comm_apigateway%rowtype													
													p_Ib_exchg_comm_apigateway  		Ib_exchg_comm_apigateway%rowtype, 
													p_Ib_pymt_gateway   				Ib_pymt_gateway%rowtype 
												)
Return Boolean; 
												
												
												
End Ibpks_crud_entities; 
/ 

-- Oracle DB PACKAGE Body. 

Create or Replace Package Body is Ibpks_crud_entities	(	p_BEHauptsitz						BEHauptsitz%rowtype, 
															p_BEFiliale							BEFiliale%rowtype, 
															p_BeProducts						BeProducts%rowtype, 
															p_BeProducts_prefs					BeProducts_prefs%rowtype, 
															p_KD_trade_rules					KD_trade_rules%rowtype, 
															p_Ib_exchg_comm_apigateway			p_Ib_exchg_comm_apigateway%rowtype													
															p_Ib_exchg_comm_apigateway  		Ib_exchg_comm_apigateway%rowtype, 
															p_Ib_pymt_gateway   				Ib_pymt_gateway%rowtype 
														)
Return boolean is 

/*------------------------------------------------------------Change History--------------------------------------------------------------------------
   ** Modified by     	: 
   ** Modified On     	: 
   ** Modified reason  	: 
   ** Search string     : 
--------------------------------------------------------------Change History-------------------------------------------------------------------------*/
   
l_BEHauptsitz					BEHauptsitz%rowtype; 
l_BEFiliale						BEFiliale%rowtype;
l_BeProducts					BeProducts%rowtype;
l_BeProducts_prefs				BeProducts_prefs%rowtype;
l_KD_trade_rules				KD_trade_rules%rowtype; 
l_Ib_exchg_comm_apigateway		p_Ib_exchg_comm_apigateway%rowtype; 												
l_Ib_exchg_comm_apigateway  	Ib_exchg_comm_apigateway%rowtype; 
l_Ib_pymt_gateway   			Ib_pymt_gateway%rowtype;  


											
Function 	fn_create_entities	(	p_BEHauptsitz				,
                                    p_BEFiliale					,
                                    p_BeProducts				,
                                    p_BeProducts_prefs			,
                                    p_KD_trade_rules			,
                                    p_Ib_exchg_comm_apigateway	,
                                    p_Ib_exchg_comm_apigateway  ,
                                    p_Ib_pymt_gateway   		
								) 
Return boolean is
BEGIN
	If p_BEHauptsitz.be_tm_code is not null 
	THEN	
		BEGIN
			Select	Be_tm_code				, 
					Be_full_name			, 
					Be_hq_address_str		, 
					Be_hq_address_str_no	, 
					Be_hq_address_plz		, 
					Be_hq_address_ort		, 
					Be_hq_address_ctry		, 
					Be_hq_address_stadt		, 
					Be_hq_address_region	, 
					Be_hq_geschaeftsfuehrer	, 
					Be_hq_stellvertretter	, 
					Be_hq_auth_status		, 
					Be_hq_once_auth			, 
					Be_hq_first_create		, 
					Be_hq_first_auth		, 
					Be_hq_maker_id			, 
					Be_hq_Maker_dt_stamp  	, 
					Be_hq_checker_id		, 
					Be_hq_checker_dt_Stamp 	
			from	BEHauptsitz
			into	l_BEHauptsitz
			where	Be_tm_code = l_Be_tm_code; 
		EXCEPTION	
			When no_data_found then	
					Insert into	BEHauptsitz (	Be_tm_code				, 
												Be_full_name			, 
												Be_hq_address_str		, 
												Be_hq_address_str_no	, 
												Be_hq_address_plz		, 
												Be_hq_address_ort		, 
												Be_hq_address_ctry		, 
												Be_hq_address_stadt		, 
												Be_hq_address_region	, 
												Be_hq_geschaeftsfuehrer	, 
												Be_hq_stellvertretter	, 
												Be_hq_auth_status		, 
												Be_hq_once_auth			, 
												Be_hq_first_create		, 
												Be_hq_first_auth		, 
												Be_hq_maker_id			, 
												Be_hq_Maker_dt_stamp  	, 
												Be_hq_checker_id		, 
												Be_hq_checker_dt_Stamp 	
											)
									values	(	p_BEHauptsitz.Be_tm_code			, 
												p_BEHauptsitz.Be_full_name			, 
												p_BEHauptsitz.Be_hq_address_str		, 
												p_BEHauptsitz.Be_hq_address_str_no	, 
												p_BEHauptsitz.Be_hq_address_plz		, 
												p_BEHauptsitz.Be_hq_address_ort		, 
												p_BEHauptsitz.Be_hq_address_ctry	, 
												p_BEHauptsitz.Be_hq_address_stadt	, 
												p_BEHauptsitz.Be_hq_address_region	, 
												p_BEHauptsitz.Be_hq_geschaeftsfuehrer, 
												p_BEHauptsitz.Be_hq_stellvertretter	, 
												p_BEHauptsitz.Be_hq_auth_status		, 
												p_BEHauptsitz.Be_hq_once_auth		, 
												p_BEHauptsitz.Be_hq_first_create	, 
												p_BEHauptsitz.Be_hq_first_auth		, 
												p_BEHauptsitz.Be_hq_maker_id		, 
												p_BEHauptsitz.Be_hq_Maker_dt_stamp  , 
												p_BEHauptsitz.Be_hq_checker_id		, 
												p_BEHauptsitz.Be_hq_checker_dt_Stamp
											);
		End; 
End; 
/ 


												
													


												
												
												
													