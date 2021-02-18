
selects / inserts / updates / deletes 

where conditions - 

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
where	Be_tm_code = l_Be_tm_code; 

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
				values	(	l_Be_tm_code			, 
				            l_Be_full_name			, 
				            l_Be_hq_address_str		, 
				            l_Be_hq_address_str_no	, 
				            l_Be_hq_address_plz		, 
				            l_Be_hq_address_ort		, 
				            l_Be_hq_address_ctry	, 
				            l_Be_hq_address_stadt	, 
				            l_Be_hq_address_region	, 
				            l_Be_hq_geschaeftsfuehrer, 
				            l_Be_hq_stellvertretter	, 
				            l_Be_hq_auth_status		, 
				            l_Be_hq_once_auth		, 
				            l_Be_hq_first_create	, 
				            l_Be_hq_first_auth		, 
                            l_Be_hq_maker_id		, 
                            l_Be_hq_Maker_dt_stamp  , 
                            l_Be_hq_checker_id		, 
                            l_Be_hq_checker_dt_Stamp
						)

	commit; 
	
Update 	BEHauptsitz	set Be_full_name			 := 	l_Be_full_name			,
                        Be_hq_address_str		 :=     l_Be_hq_address_str		,
                        Be_hq_address_str_no	 :=     l_Be_hq_address_str_no	,
                        Be_hq_address_plz		 :=     l_Be_hq_address_plz		,
                        Be_hq_address_ort		 :=     l_Be_hq_address_ort		,
                        Be_hq_address_ctry		 :=     l_Be_hq_address_ctry	,
                        Be_hq_address_stadt		 :=     l_Be_hq_address_stadt	,
                        Be_hq_address_region	 :=     l_Be_hq_address_region	,
                        Be_hq_geschaeftsfuehrer	 :=     l_Be_hq_geschaeftsfuehrer
                        Be_hq_stellvertretter	 :=     l_Be_hq_stellvertretter	,
                        Be_hq_auth_status		 :=     l_Be_hq_auth_status		,
                        Be_hq_once_auth			 :=     l_Be_hq_once_auth		,
                        Be_hq_first_create		 :=     l_Be_hq_first_create	,
                        Be_hq_first_auth		 :=     l_Be_hq_first_auth		,
	                    Be_hq_maker_id			 :=     l_Be_hq_maker_id		,
	                    Be_hq_Maker_dt_stamp  	 :=     l_Be_hq_Maker_dt_stamp  ,
                        Be_hq_checker_id		 :=     l_Be_hq_checker_id		,
                        Be_hq_checker_dt_Stamp 	 :=     l_Be_hq_checker_dt_Stamp
				where	Be_tm_code = l_Be_tm_code; 


Delete from BEHauptsitz where Be_tm_code = l_Be_tm_code; 

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


select 	Be_fl_code				,		
		Be_flfull_name			,
		Be_fl_address_str		,
		Be_fl_address_str_no	,
		Be_fl_address_plz		,
		Be_fl_address_ort		,
		Be_fl_address_ctry		,
		Be_fl_address_stadt		,
		Be_fl_address_region	,
		Be_fl_geschaeftsfuehrer	,
		Be_fl_stellvertretter	,
		Be_fl_auth_status		,
		Be_fl_once_auth			,
		Be_fl_first_create		,
		Be_fl_first_auth		,
		Be_fl_maker_id			,
		Be_fl_Maker_dt_stamp  	,
		Be_fl_checker_id		,
		Be_fl_checker_dt_Stamp 	
from	BEFiliale
where 	Be_fl_code = l_Be_fl_code; 

Insert  into BEFiliale	(	Be_fl_code				,			
                            Be_flfull_name			,
                            Be_fl_address_str		,
                            Be_fl_address_str_no	,
                            Be_fl_address_plz		,
                            Be_fl_address_ort		,
                            Be_fl_address_ctry		,
                            Be_fl_address_stadt		,
                            Be_fl_address_region	,
                            Be_fl_geschaeftsfuehrer	,
                            Be_fl_stellvertretter	,
                            Be_fl_auth_status		,
                            Be_fl_once_auth			,
                            Be_fl_first_create		,
                            Be_fl_first_auth		,
                            Be_fl_maker_id			,
                            Be_fl_Maker_dt_stamp  	,
                            Be_fl_checker_id		,
                            Be_fl_checker_dt_Stamp 	
						)
				value	(	l_Be_fl_code			,
				            l_Be_flfull_name		,
				            l_Be_fl_address_str		,
				            l_Be_fl_address_str_no	,
				            l_Be_fl_address_plz		,
				            l_Be_fl_address_ort		,
				            l_Be_fl_address_ctry	,
				            l_Be_fl_address_stadt	,
				            l_Be_fl_address_region	,
				            l_Be_fl_geschaeftsfuehrer,
				            l_Be_fl_stellvertretter	,
				            l_Be_fl_auth_status		,
				            l_Be_fl_once_auth		,
				            l_Be_fl_first_create	,
				            l_Be_fl_first_auth		,
				            l_Be_fl_maker_id		,
				            l_Be_fl_Maker_dt_stamp  ,
				            l_Be_fl_checker_id		,
				            l_Be_fl_checker_dt_Stamp
						)
																			
UPDATE	BEFiliale	set		Be_flfull_name			:-		    l_Be_flfull_name			,
						    Be_fl_address_str		:-		    l_Be_fl_address_str		    ,
				            Be_fl_address_str_no	:-		    l_Be_fl_address_str_no	    ,
				            Be_fl_address_plz		:-		    l_Be_fl_address_plz		    ,
				            Be_fl_address_ort		:-		    l_Be_fl_address_ort		    ,
				            Be_fl_address_ctry		:-		    l_Be_fl_address_ctry		,
				            Be_fl_address_stadt		:-		    l_Be_fl_address_stadt		,
                            Be_fl_address_region	:-		    l_Be_fl_address_region	    ,
                            Be_fl_geschaeftsfuehrer :-		    l_Be_fl_geschaeftsfuehrer   ,
                            Be_fl_stellvertretter	:-		    l_Be_fl_stellvertretter	    ,
                            Be_fl_auth_status		:-		    l_Be_fl_auth_status		    ,
                            Be_fl_once_auth			:-		    l_Be_fl_once_auth			,
                            Be_fl_first_create		:-		    l_Be_fl_first_create		,
                            Be_fl_first_auth		:-		    l_Be_fl_first_auth		    ,
                            Be_fl_maker_id			:-		    l_Be_fl_maker_id			,
                            Be_fl_Maker_dt_stamp  	:-		    l_Be_fl_Maker_dt_stamp  	,
                            Be_fl_checker_id		:-		    l_Be_fl_checker_id		    ,
                            Be_fl_checker_dt_Stamp  :-		    l_Be_fl_checker_dt_Stamp 
				where 		Be_fl_code = l_Be_fl_code; 
				
Delete from BEFiliale where Be_fl_code = l_Be_fl_code; 				

commit; 


						
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

Select 	Kd_cust_id				, 
        Kd_nationality			, 
        Kd_unique_id			, 
        Kd_unique_id_issdt		, 
        Kd_unique_id_expdt		, 
        Kd_uid_iss_authority	, 
        Kd_aufenthalt_id		, 
        Kd_aufenthalt_id_issdt	, 
        Kd_aufenthalt_id_expdt	, 
        Kd_aufid_iss_authority	, 
        kd_vorname				, 
        kd_nachname				, 
        kd_grdname				, 
        Kd_full_name			, 
        kd_geburtsdatum			, 
        kd_age					, 
        Kd_address_str			, 
        Kd_address_str_no		, 
        Kd_address_plz			, 
        Kd_address_ort			, 
        Kd_address_ctry			, 
        Kd_address_stadt		, 
        Kd_address_region		, 
        Kd_fl_code				, 
        Kd_user_id				, 
        Kd_kennwort				, 
        kd_last_login_dtm		, 
        Kd_user_id_status		, 
        Kd_uid_stchg_date		, 
        Kd_kennwort_frage1		, 
        Kd_fr_antwort1			, 
        Kd_kennwort_frage2		, 
        Kd_fr_antwort2			, 
        Kd_kennwort_frage3		, 
        Kd_fr_antwort3			, 
        Kd_kennwort_frage4		, 
        Kd_fr_antwort4			, 
        Kd_kennwort_frage5		, 
        Kd_fr_antwort5			, 
        Kd_handynummer			, 
        Kd_dslnummer			, 
        Kd_email_id				, 
        kd_opening_date			, 
        kd_mstudy_subs_code		, 
        Kd_auth_status			, 
        Kd_once_auth			, 
        Kd_first_create			, 
        Kd_first_auth			, 
        Kd_maker_id				, 
        Kd_Maker_dt_stamp  		, 
        Kd_checker_id			, 
        Kd_checker_dt_Stamp 	, 
from	KDkundendata
where	Kd_cust_id	= l_Kd_cust_id;

Insert into KDkundendata	(	Kd_cust_id				,
                                Kd_nationality			,
                                Kd_unique_id			,
                                Kd_unique_id_issdt		,
                                Kd_unique_id_expdt		,
                                Kd_uid_iss_authority	,
                                Kd_aufenthalt_id		,
                                Kd_aufenthalt_id_issdt	,
                                Kd_aufenthalt_id_expdt	,
                                Kd_aufid_iss_authority	,
                                kd_vorname				,
                                kd_nachname				,
                                kd_grdname				,
                                Kd_full_name			,
                                kd_geburtsdatum			,
                                kd_age					,
                                Kd_address_str			,
                                Kd_address_str_no		,
                                Kd_address_plz			,
                                Kd_address_ort			,
                                Kd_address_ctry			,
                                Kd_address_stadt		,
                                Kd_address_region		,
                                Kd_fl_code				,
                                Kd_user_id				,
                                Kd_kennwort				,
                                kd_last_login_dtm		,
                                Kd_user_id_status		,
                                Kd_uid_stchg_date		,
                                Kd_kennwort_frage1		,
                                Kd_fr_antwort1			,
                                Kd_kennwort_frage2		,
                                Kd_fr_antwort2			,
                                Kd_kennwort_frage3		,
                                Kd_fr_antwort3			,
                                Kd_kennwort_frage4		,
                                Kd_fr_antwort4			,
                                Kd_kennwort_frage5		,
                                Kd_fr_antwort5			,
                                Kd_handynummer			,
                                Kd_dslnummer			,
                                Kd_email_id				,
                                kd_opening_date			,
                                kd_mstudy_subs_code		,
                                Kd_auth_status			,
                                Kd_once_auth			,
                                Kd_first_create			,
                                Kd_first_auth			,
                                Kd_maker_id				,
                                Kd_Maker_dt_stamp  		,
                                Kd_checker_id			,
                                Kd_checker_dt_Stamp 	
							)
					value	(	l_Kd_cust_id				,
					            l_Kd_nationality			,
					            l_Kd_unique_id				,
					            l_Kd_unique_id_issdt		,
                                l_Kd_unique_id_expdt		,
                                l_Kd_uid_iss_authority		,
                                l_Kd_aufenthalt_id			,
                                l_Kd_aufenthalt_id_issdt	,
                                l_Kd_aufenthalt_id_expdt	,
                                l_Kd_aufid_iss_authority	,
                                l_kd_vorname				,
                                l_kd_nachname				,
                                l_kd_grdname				,
                                l_Kd_full_name				,
                                l_kd_geburtsdatum			,
                                l_kd_age					,
                                l_Kd_address_str			,
                                l_Kd_address_str_no			,
                                l_Kd_address_plz			,
                                l_Kd_address_ort			,
                                l_Kd_address_ctry			,
                                l_Kd_address_stadt			,
                                l_Kd_address_region			,
                                l_Kd_fl_code				,
                                l_Kd_user_id				,
                                l_Kd_kennwort				,
                                l_kd_last_login_dtm			,
                                l_Kd_user_id_status			,
                                l_Kd_uid_stchg_date			,
                                l_Kd_kennwort_frage1		,
                                l_Kd_fr_antwort1			,
                                l_Kd_kennwort_frage2		,
                                l_Kd_fr_antwort2			,
                                l_Kd_kennwort_frage3		,
                                l_Kd_fr_antwort3			,
                                l_Kd_kennwort_frage4		,
                                l_Kd_fr_antwort4			,
                                l_Kd_kennwort_frage5		,
                                l_Kd_fr_antwort5			,
                                l_Kd_handynummer			,
                                l_Kd_dslnummer				,
                                l_Kd_email_id				,
                                l_kd_opening_date			,
                                l_kd_mstudy_subs_code		,
                                l_Kd_auth_status			,
                                l_Kd_once_auth				,
                                l_Kd_first_create			,
                                l_Kd_first_auth				,
                                l_Kd_maker_id				,
                                l_Kd_Maker_dt_stamp  		,
                                l_Kd_checker_id				,
                                l_Kd_checker_dt_Stamp 		
							); 
							
Update 	KDkundendata 	set 		Kd_nationality			    := 		l_Kd_nationality			
                                    Kd_unique_id			    := 		l_Kd_unique_id			
					                Kd_unique_id_issdt		    := 		l_Kd_unique_id_issdt		
                                    Kd_unique_id_expdt		    := 		l_Kd_unique_id_expdt		
                                    Kd_uid_iss_authority	    := 		l_Kd_uid_iss_authority	
                                    Kd_aufenthalt_id		    := 		l_Kd_aufenthalt_id		
                                    Kd_aufenthalt_id_issdt	    := 		l_Kd_aufenthalt_id_issdt	
                                    Kd_aufenthalt_id_expdt	    := 		l_Kd_aufenthalt_id_expdt	
                                    Kd_aufid_iss_authority	    := 		l_Kd_aufid_iss_authority	
                                    kd_vorname				    := 		l_kd_vorname				
                                    kd_nachname				    := 		l_kd_nachname				
                                    kd_grdname				    := 		l_kd_grdname				
                                    Kd_full_name			    := 		l_Kd_full_name			
                                    kd_geburtsdatum			    := 		l_kd_geburtsdatum			
                                    kd_age					    := 		l_kd_age					
                                    Kd_address_str			    := 		l_Kd_address_str			
                                    Kd_address_str_no		    := 		l_Kd_address_str_no		
                                    Kd_address_plz			    := 		l_Kd_address_plz			
                                    Kd_address_ort			    := 		l_Kd_address_ort			
                                    Kd_address_ctry			    := 		l_Kd_address_ctry			
                                    Kd_address_stadt		    := 		l_Kd_address_stadt		
                                    Kd_address_region		    := 		l_Kd_address_region		
                                    Kd_fl_code				    := 		l_Kd_fl_code				
                                    Kd_user_id				    := 		l_Kd_user_id				
                                    Kd_kennwort				    := 		l_Kd_kennwort				
                                    kd_last_login_dtm		    := 		l_kd_last_login_dtm		
                                    Kd_user_id_status		    := 		l_Kd_user_id_status		
                                    Kd_uid_stchg_date		    := 		l_Kd_uid_stchg_date		
                                    Kd_kennwort_frage1		    := 		l_Kd_kennwort_frage1		
                                    Kd_fr_antwort1			    := 		l_Kd_fr_antwort1			
                                    Kd_kennwort_frage2		    := 		l_Kd_kennwort_frage2		
                                    Kd_fr_antwort2			    := 		l_Kd_fr_antwort2			
                                    Kd_kennwort_frage3		    := 		l_Kd_kennwort_frage3		
                                    Kd_fr_antwort3			    := 		l_Kd_fr_antwort3			
                                    Kd_kennwort_frage4		    := 		l_Kd_kennwort_frage4		
                                    Kd_fr_antwort4			    := 		l_Kd_fr_antwort4			
                                    Kd_kennwort_frage5		    := 		l_Kd_kennwort_frage5		
                                    Kd_fr_antwort5			    := 		l_Kd_fr_antwort5			
                                    Kd_handynummer			    := 		l_Kd_handynummer			
                                    Kd_dslnummer			    := 		l_Kd_dslnummer			
                                    Kd_email_id				    := 		l_Kd_email_id				
                                    kd_opening_date			    := 		l_kd_opening_date			
                                    kd_mstudy_subs_code		    := 		l_kd_mstudy_subs_code		
                                    Kd_auth_status			    := 		l_Kd_auth_status			
                                    Kd_once_auth			    := 		l_Kd_once_auth			
                                    Kd_first_create			    := 		l_Kd_first_create			
                                    Kd_first_auth			    := 		l_Kd_first_auth			
                                    Kd_maker_id				    := 		l_Kd_maker_id				
                                    Kd_Maker_dt_stamp  		    := 		l_Kd_Maker_dt_stamp  		
                                    Kd_checker_id			    := 		l_Kd_checker_id			
                                    Kd_checker_dt_Stamp 	    := 		l_Kd_checker_dt_Stamp 	
						where 		Kd_cust_id = l_Kd_cust_id; 
						
Delete from KDkundendata where 	Kd_cust_id = l_Kd_cust_id; 						

commit; 
				
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


select Kd_cust_id				, 
       kd_iban					, 
       kd_bic_code				, 
       kd_kontonummer			, 
       kd_kontoblz				, 
       kd_ktfl_address			, 
       kd_konto_Status			, 
       kd_konto_seqnr			, 
       kd_kontovorname			, 
       kd_kontonachname		    , 
       kd_ktgrdname			    , 
       Kd_ktfull_name			, 
       Kd_full_name			    , 
       kd_geburtsdatum			, 
       kd_age					, 
       Kd_kaz_address_str		, 
       Kd_kaz_address_str_no	, 
       Kd_kaz_address_plz		, 
       Kd_kaz_address_ort		, 
       Kd_kaz_address_ctry		, 
       Kd_kaz_address_stadt	    , 
       Kd_kaz_address_region	, 
       Kd_fl_code				, 
       Kd_currency				, 
       Kd_lcy_curr_balance		, 
       Kd_acy_curr_balance		, 
       kd_konto_mandate_id		, 
       kd_konto_mandate_stdt	, 
       kd_konto_mandate_enddt	, 
       Kd_auth_status			, 
       Kd_once_auth			    , 
       Kd_first_create			, 
       Kd_first_auth			, 
       Kd_maker_id				, 
       Kd_Maker_dt_stamp  		, 
       Kd_checker_id			, 
       Kd_checker_dt_Stamp 	    
from   KDkontodata
where  kd_cust_id = l_Kd_cust_id; 


Insert into KDKontodata	(	Kd_cust_id				, 	   
							kd_iban					, 
							kd_bic_code				, 
							kd_kontonummer			, 
							kd_kontoblz				, 
							kd_ktfl_address			, 
							kd_konto_Status			, 
							kd_konto_seqnr			, 
							kd_kontovorname			, 
							kd_kontonachname		, 
							kd_ktgrdname			, 
							Kd_ktfull_name			, 
							Kd_full_name			, 
							kd_geburtsdatum			, 
							kd_age					, 
							Kd_kaz_address_str		, 
							Kd_kaz_address_str_no	, 
							Kd_kaz_address_plz		, 
							Kd_kaz_address_ort		, 
							Kd_kaz_address_ctry		, 
							Kd_kaz_address_stadt	, 
							Kd_kaz_address_region	, 
							Kd_fl_code				, 
							Kd_currency				, 
							Kd_lcy_curr_balance		, 
							Kd_acy_curr_balance		, 
							kd_konto_mandate_id		, 
							kd_konto_mandate_stdt	, 
							kd_konto_mandate_enddt	, 
							Kd_auth_status			, 
							Kd_once_auth			, 
							Kd_first_create			, 
							Kd_first_auth			, 
							Kd_maker_id				, 
							Kd_Maker_dt_stamp  		, 
							Kd_checker_id			, 
							Kd_checker_dt_Stamp 	
				value	(	l_Kd_cust_id				,	
							l_kd_iban					,
							l_kd_bic_code				,
							l_kd_kontonummer			,
							l_kd_kontoblz				,
							l_kd_ktfl_address			,
							l_kd_konto_Status			,
							l_kd_konto_seqnr			,
							l_kd_kontovorname			,
							l_kd_kontonachname		    ,
							l_kd_ktgrdname			    ,
							l_Kd_ktfull_name			,
							l_Kd_full_name			    ,
							l_kd_geburtsdatum			,
							l_kd_age					,
							l_Kd_kaz_address_str		,
							l_Kd_kaz_address_str_no	    ,
							l_Kd_kaz_address_plz		,
							l_Kd_kaz_address_ort		,
							l_Kd_kaz_address_ctry		,
							l_Kd_kaz_address_stadt	    ,
							l_Kd_kaz_address_region	    ,
							l_Kd_fl_code				,
							l_Kd_currency				,
							l_Kd_lcy_curr_balance		,
							l_Kd_acy_curr_balance		,
							l_kd_konto_mandate_id		,
							l_kd_konto_mandate_stdt	    ,
							l_kd_konto_mandate_enddt	,
							l_Kd_auth_status			,
							l_Kd_once_auth			    ,
							l_Kd_first_create			,
							l_Kd_first_auth			    ,
							l_Kd_maker_id				,
							l_Kd_Maker_dt_stamp  		,
							l_Kd_checker_id			    ,
							l_Kd_checker_dt_Stamp 	    
						); 
						
	Update 	KDkontodata	set	kd_iban					:= 		l_kd_iban					
							kd_bic_code				:= 		l_kd_bic_code				
							kd_kontonummer			:= 		l_kd_kontonummer			
							kd_kontoblz				:= 		l_kd_kontoblz				
							kd_ktfl_address			:= 		l_kd_ktfl_address			
							kd_konto_Status			:= 		l_kd_konto_Status			
							kd_konto_seqnr			:= 		l_kd_konto_seqnr			
							kd_kontovorname			:= 		l_kd_kontovorname			
							kd_kontonachname		:= 		l_kd_kontonachname		
							kd_ktgrdname			:= 		l_kd_ktgrdname			
							Kd_ktfull_name			:= 		l_Kd_ktfull_name			
							Kd_full_name			:= 		l_Kd_full_name			
							kd_geburtsdatum			:= 		l_kd_geburtsdatum			
							kd_age					:= 		l_kd_age					
							Kd_kaz_address_str		:= 		l_Kd_kaz_address_str		
							Kd_kaz_address_str_no	:= 		l_Kd_kaz_address_str_no	
							Kd_kaz_address_plz		:= 		l_Kd_kaz_address_plz		
							Kd_kaz_address_ort		:= 		l_Kd_kaz_address_ort		
							Kd_kaz_address_ctry		:= 		l_Kd_kaz_address_ctry		
							Kd_kaz_address_stadt	:= 		l_Kd_kaz_address_stadt	
							Kd_kaz_address_region	:= 		l_Kd_kaz_address_region	
							Kd_fl_code				:= 		l_Kd_fl_code				
							Kd_currency				:= 		l_Kd_currency				
							Kd_lcy_curr_balance		:= 		l_Kd_lcy_curr_balance		
							Kd_acy_curr_balance		:= 		l_Kd_acy_curr_balance		
							kd_konto_mandate_id		:= 		l_kd_konto_mandate_id		
							kd_konto_mandate_stdt	:= 		l_kd_konto_mandate_stdt	
							kd_konto_mandate_enddt	:= 		l_kd_konto_mandate_enddt	
							Kd_auth_status			:= 		l_Kd_auth_status			
							Kd_once_auth			:= 		l_Kd_once_auth			
							Kd_first_create			:= 		l_Kd_first_create			
							Kd_first_auth			:= 		l_Kd_first_auth			
							Kd_maker_id				:= 		l_Kd_maker_id				
							Kd_Maker_dt_stamp  		:= 		l_Kd_Maker_dt_stamp  		
							Kd_checker_id			:= 		l_Kd_checker_id			
							Kd_checker_dt_Stamp 	:= 		l_Kd_checker_dt_Stamp 	
					where Kd_cust_id = 		l_Kd_cust_id; 
					
	Delete from KDkontodata	where Kd_cust_id = 		l_Kd_cust_id; 		

	commit; 
	
					
							
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

Select 	Be_Product_code				, 
        Be_Product_description		, 
        Be_Product_category			, 
        Be_Product_stdate			, 
        Be_Product_enddate			, 
        Be_Product_status			, 
        Be_product_auth_status		, 
        Be_product_once_auth		, 
        Be_product_first_create		, 
        Be_product_first_auth		, 
        Be_product_maker_id			, 
        Be_product_Maker_dt_stamp  	, 
        Be_product_checker_id		, 
        Be_product_checker_dt_Stamp 
from 	BeProducts
where	Be_Product_code	= 	l_Be_Product_code; 

Insert into BeProducts	(	Be_Product_code					, 	
							Be_Product_description		    , 
							Be_Product_category			    , 
							Be_Product_stdate			    , 
							Be_Product_enddate			    , 
							Be_Product_status			    , 
							Be_product_auth_status		    , 
							Be_product_once_auth		    , 
							Be_product_first_create		    , 
							Be_product_first_auth		    , 
							Be_product_maker_id			    , 
							Be_product_Maker_dt_stamp  	    , 
							Be_product_checker_id		    , 
							Be_product_checker_dt_Stamp     	
						)
				values	(	l_Be_Product_code				
							l_Be_Product_description		
							l_Be_Product_category			
							l_Be_Product_stdate			
							l_Be_Product_enddate			
							l_Be_Product_status			
							l_Be_product_auth_status		
							l_Be_product_once_auth		
							l_Be_product_first_create		
							l_Be_product_first_auth		
							l_Be_product_maker_id			
							l_Be_product_Maker_dt_stamp  	
							l_Be_product_checker_id		
							l_Be_product_checker_dt_Stamp 
						); 

Update	BeProducts	set		Be_Product_description		    := 	l_Be_Product_description		
							Be_Product_category			    := 	l_Be_Product_category			
							Be_Product_stdate			    := 	l_Be_Product_stdate			
							Be_Product_enddate			    := 	l_Be_Product_enddate			
							Be_Product_status			    := 	l_Be_Product_status			
							Be_product_auth_status		    := 	l_Be_product_auth_status		
							Be_product_once_auth		    := 	l_Be_product_once_auth		
							Be_product_first_create		    := 	l_Be_product_first_create		
							Be_product_first_auth		    := 	l_Be_product_first_auth		
							Be_product_maker_id			    := 	l_Be_product_maker_id			
							Be_product_Maker_dt_stamp  	    := 	l_Be_product_Maker_dt_stamp  	
							Be_product_checker_id		    := 	l_Be_product_checker_id		
							Be_product_checker_dt_Stamp     := 	l_Be_product_checker_dt_Stamp 
					where 	Be_Product_code	= 	l_Be_Product_code	

Delete from where Be_Product_code	= 	l_Be_Product_code; 


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



Select 	Be_Product_code				, 
		Be_Product_type				, 
		Be_Product_glac_no			, 
		Be_Product_24by7			, 
		Be_Product_enddate			, 
		Be_Product_status			, 
		Be_product_auth_status		, 
		Be_product_once_auth		, 
		Be_product_first_create		, 
		Be_product_first_auth		, 
		Be_product_maker_id			, 
		Be_product_Maker_dt_stamp  	, 
		Be_product_checker_id		, 
		Be_product_checker_dt_Stamp , 
		Be_product_gds				, 
		Be_product_gl_code			, 
		Be_product_txn_code			, 
		Be_product_ccy_code			, 
		Be_product_paysystem		, 
		Be_product_dailycut_hr		, 
		Be_product_dailycut_min		
from	BeProducts_prefs
where	Be_Product_code =  l_Be_Product_code; 



Insert into BeProducts_prefs 	(	Be_Product_code				, 
									Be_Product_type				, 
									Be_Product_glac_no			, 
									Be_Product_24by7			, 
									Be_Product_enddate			, 
									Be_Product_status			, 
									Be_product_auth_status		, 
									Be_product_once_auth		, 
									Be_product_first_create		, 
									Be_product_first_auth		, 
									Be_product_maker_id			, 
									Be_product_Maker_dt_stamp  	, 
									Be_product_checker_id		, 
									Be_product_checker_dt_Stamp , 
									Be_product_gds				, 
									Be_product_gl_code			, 
									Be_product_txn_code			, 
									Be_product_ccy_code			, 
									Be_product_paysystem		, 
									Be_product_dailycut_hr		, 
									Be_product_dailycut_min		
						value	(	l_Be_Product_code				, 
									l_Be_Product_type				, 
									l_Be_Product_glac_no			, 
									l_Be_Product_24by7			    , 
									l_Be_Product_enddate			, 
									l_Be_Product_status			    , 
									l_Be_product_auth_status		, 
									l_Be_product_once_auth		    , 
									l_Be_product_first_create		, 
									l_Be_product_first_auth		    , 
									l_Be_product_maker_id			, 
									l_Be_product_Maker_dt_stamp  	, 
									l_Be_product_checker_id		    , 
									l_Be_product_checker_dt_Stamp   , 
									l_Be_product_gds				, 
									l_Be_product_gl_code			, 
									l_Be_product_txn_code			, 
									l_Be_product_ccy_code			, 
									l_Be_product_paysystem		    , 
									l_Be_product_dailycut_hr		, 
									l_Be_product_dailycut_min		
								); 

Update 	BeProducts_prefs 	set		Be_Product_type				:=		l_Be_Product_type				
									Be_Product_glac_no			:=		l_Be_Product_glac_no			
									Be_Product_24by7			:=		l_Be_Product_24by7			
									Be_Product_enddate			:=		l_Be_Product_enddate			
									Be_Product_status			:=		l_Be_Product_status			
									Be_product_auth_status		:=		l_Be_product_auth_status		
									Be_product_once_auth		:=		l_Be_product_once_auth		
									Be_product_first_create		:=		l_Be_product_first_create		
									Be_product_first_auth		:=		l_Be_product_first_auth		
									Be_product_maker_id			:=		l_Be_product_maker_id			
									Be_product_Maker_dt_stamp  	:=		l_Be_product_Maker_dt_stamp  	
									Be_product_checker_id		:=		l_Be_product_checker_id		
									Be_product_checker_dt_Stamp :=		l_Be_product_checker_dt_Stamp 
									Be_product_gds				:=		l_Be_product_gds				
									Be_product_gl_code			:=		l_Be_product_gl_code			
									Be_product_txn_code			:=		l_Be_product_txn_code			
									Be_product_ccy_code			:=		l_Be_product_ccy_code			
									Be_product_paysystem		:=		l_Be_product_paysystem		
									Be_product_dailycut_hr		:=		l_Be_product_dailycut_hr		
									Be_product_dailycut_min		:=		l_Be_product_dailycut_min	
where Be_Product_code =  l_Be_Product_code; 

Delete from BeProducts_prefs where Be_Product_code =  l_Be_Product_code; 

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

select 	Pf_custid			, 
        Pf_asset_code		, 
        Pf_asset_type		, 
        Pf_asset_qty		, 
        Pf_asset_ccy		, 
        Pf_asset_value		, 
        Pf_last_book_date	, 
        Pf_last_setl_date	, 
        Pf_setl_refno		, 
from	KD_portfolio
where	Pf_custid = l_Pf_custid; 

Insert into KD_portfolio	(	Pf_custid			, 
								Pf_asset_code		, 
								Pf_asset_type		, 
								Pf_asset_qty		, 
								Pf_asset_ccy		, 
								Pf_asset_value		, 
								Pf_last_book_date	, 
								Pf_last_setl_date	, 
								Pf_setl_refno		
							)
				values		(	l_Pf_custid			, 
								l_Pf_asset_code		, 
								l_Pf_asset_type		, 
								l_Pf_asset_qty		, 
								l_Pf_asset_ccy		, 
								l_Pf_asset_value	, 
								l_Pf_last_book_date	, 
								l_Pf_last_setl_date	, 
								l_Pf_setl_refno		
							); 
							
UPDATE 	Kd_portfolio	set 	Pf_asset_code		:=	l_Pf_asset_code		,
								Pf_asset_type		:=	l_Pf_asset_type		,
								Pf_asset_qty		:=	l_Pf_asset_qty		,
								Pf_asset_ccy		:=	l_Pf_asset_ccy		,
								Pf_asset_value		:=	l_Pf_asset_value	,
								Pf_last_book_date	:=	l_Pf_last_book_date	,
								Pf_last_setl_date	:=	l_Pf_last_setl_date	,
								Pf_setl_refno		:=	l_Pf_setl_refno		
where	Pf_custid	=	l_Pf_custid	; 

Delete from Kd_portfolio where	Pf_custid	=	l_Pf_custid	; 
			

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



Select 	Tr_ruleid			, 
		Tr_rule_type		, 
		Tr_asset_code		, 
		Tr_asset_type		, 
		Tr_mktorlmt			, 
		Tr_buysell_ind		, 
		Tr_asset_qty		, 
		Tr_asset_ccy		, 
		Tr_asset_value		, 
		Tr_sip_indicator	, 
		Tr_sip_st_date		, 
		Tr_sip_end_date		, 
		Tr_agt_st_date		, 
		Tr_agt_end_date		, 
		Tr_cond_ropr		, 
		Tr_cond_prrng_from	, 
		Tr_cond_prrng_to	
from	KD_trade_rules
where 	Tr_ruleid			:=	l_Tr_ruleid;		


Insert into KD_trade_rules	(	Tr_ruleid			, 
								Tr_rule_type		, 
								Tr_asset_code		, 
								Tr_asset_type		, 
								Tr_mktorlmt			, 
								Tr_buysell_ind		, 
								Tr_asset_qty		, 
								Tr_asset_ccy		, 
								Tr_asset_value		, 
								Tr_sip_indicator	, 
								Tr_sip_st_date		, 
								Tr_sip_end_date		, 
								Tr_agt_st_date		, 
								Tr_agt_end_date		, 
								Tr_cond_ropr		, 
								Tr_cond_prrng_from	, 
								Tr_cond_prrng_to	
							)
					values	(	l_Tr_ruleid			 	, 
								l_Tr_rule_type		    , 
								l_Tr_asset_code		    , 
								l_Tr_asset_type		    , 
								l_Tr_mktorlmt			, 
								l_Tr_buysell_ind		, 
								l_Tr_asset_qty		    , 
								l_Tr_asset_ccy		    , 
								l_Tr_asset_value		, 
								l_Tr_sip_indicator	    , 
								l_Tr_sip_st_date		, 
								l_Tr_sip_end_date		, 
								l_Tr_agt_st_date		, 
								l_Tr_agt_end_date		, 
								l_Tr_cond_ropr		    , 
								l_Tr_cond_prrng_from	, 
								l_Tr_cond_prrng_to	    
							); 

Update KD_trade_rules	set 	Tr_ruleid			:=	l_Tr_ruleid			,
								Tr_rule_type		:=	l_Tr_rule_type		,
								Tr_asset_code		:=	l_Tr_asset_code		,
								Tr_asset_type		:=	l_Tr_asset_type		,
								Tr_mktorlmt			:=	l_Tr_mktorlmt		,	
								Tr_buysell_ind		:=	l_Tr_buysell_ind	,	
								Tr_asset_qty		:=	l_Tr_asset_qty		,
								Tr_asset_ccy		:=	l_Tr_asset_ccy		,
								Tr_asset_value		:=	l_Tr_asset_value	,	
								Tr_sip_indicator	:=	l_Tr_sip_indicator	,
								Tr_sip_st_date		:=	l_Tr_sip_st_date	,	
								Tr_sip_end_date		:=	l_Tr_sip_end_date	,	
								Tr_agt_st_date		:=	l_Tr_agt_st_date	,	
								Tr_agt_end_date		:=	l_Tr_agt_end_date	,	
								Tr_cond_ropr		:=	l_Tr_cond_ropr		,
								Tr_cond_prrng_from	:=	l_Tr_cond_prrng_from,	
								Tr_cond_prrng_to	:=	l_Tr_cond_prrng_to	
						where	Tr_ruleid			:=	l_Tr_ruleid; 

Delete from where  Tr_ruleid			:=	l_Tr_ruleid	; 

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


select 	Ti_custid			, 
        Ti_ruleid			, 
        Ti_rule_type		, 
        Ti_asset_code		, 
        Ti_asset_type		, 
        Ti_buysell_ind		, 
        Ti_mktorlmt			, 
        Ti_asset_qty		, 
        Ti_asset_ccy		, 
        Ti_asset_value		, 
        Ti_sip_indicator	, 
        Ti_trade_st_date	, 
        Ti_trade_end_date	, 
        Ti_trade_remrks		
from 	KD_trade_instr
where	Ti_custid 	= l_Ti_custid ; 

Insert into	KD_trade_instr	(		Ti_custid			, 
                                    Ti_ruleid			, 
                                    Ti_rule_type		, 
                                    Ti_asset_code		, 
	                                Ti_asset_type		, 
                                    Ti_buysell_ind		, 
                                    Ti_mktorlmt			, 
                                    Ti_asset_qty		, 
                                    Ti_asset_ccy		, 
                                    Ti_asset_value		, 
                                    Ti_sip_indicator	, 
                                    Ti_trade_st_date	, 
                                    Ti_trade_end_date	, 
                                    Ti_trade_remrks		
							)
					values	(		l_Ti_custid			, 
                                    l_Ti_ruleid			, 
                                    l_Ti_rule_type		, 
                                    l_Ti_asset_code		, 
                                    l_Ti_asset_type		, 
                                    l_Ti_buysell_ind	, 
                                    l_Ti_mktorlmt		, 
                                    l_Ti_asset_qty		, 
                                    l_Ti_asset_ccy		, 
                                    l_Ti_asset_value	, 
                                    l_Ti_sip_indicator	, 
                                    l_Ti_trade_st_date	, 
                                    l_Ti_trade_end_date	, 
                                    l_Ti_trade_remrks		
							); 
							
UPDATE	Kd_trade_instr	set Ti_ruleid			:= 	l_Ti_ruleid			,  
							Ti_rule_type		:= 	l_Ti_rule_type		,  
							Ti_asset_code		:= 	l_Ti_asset_code		,  
							Ti_asset_type		:= 	l_Ti_asset_type		,  
							Ti_buysell_ind		:= 	l_Ti_buysell_ind	, 
							Ti_mktorlmt			:= 	l_Ti_mktorlmt		, 
							Ti_asset_qty		:= 	l_Ti_asset_qty		,  
							Ti_asset_ccy		:= 	l_Ti_asset_ccy		,  
							Ti_asset_value		:= 	l_Ti_asset_value	, 
							Ti_sip_indicator	:= 	l_Ti_sip_indicator	,  
							Ti_trade_st_date	:= 	l_Ti_trade_st_date	,  
							Ti_trade_end_date	:= 	l_Ti_trade_end_date	,  
							Ti_trade_remrks		:= 	l_Ti_trade_remrks	
				where	Ti_custid			:= 	l_Ti_custid;   
				
Delete from Kd_trade_instr where Ti_custid	:= 	l_Ti_custid;   	


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


Select Tj_book_refno		, 
       Tj_book_date		    , 
       Tj_ruleid			, 
       Tj_rule_type		    , 
       Tj_asset_code		, 
       Tj_asset_type		, 
       Tj_mktorlmt			, 
       Tj_buysell_ind		, 
       Tj_asset_qty_tried	, 
       Tj_asset_ccy		    , 
       Tj_asset_value_pu	, 
       Tj_booked_units		, 
       Tj_booked_price		, 
       Tj_unbooked_units	, 
       Tj_sip_indicator	    , 
       Tj_sip_st_date		, 
       Tj_sip_end_date		, 
       Tj_agt_st_date		, 
       Tj_agt_end_date		, 
       Tj_cond_ropr		    , 
       Tj_cond_prrng_from	, 
       Tj_cond_prrng_to	    
from 	KD_tradebook_journal
where 	Tj_book_refno = l_Tj_book_refno; 

Insert into KD_tradebook_journal	(	Tj_book_refno		, 	   
										Tj_book_date		, 
										Tj_ruleid			, 
										Tj_rule_type		, 
										Tj_asset_code		, 
										Tj_asset_type		, 
										Tj_mktorlmt			, 
										Tj_buysell_ind		, 
										Tj_asset_qty_tried	, 
										Tj_asset_ccy		, 
										Tj_asset_value_pu	, 
										Tj_booked_units		, 
										Tj_booked_price		, 
										Tj_unbooked_units	, 
										Tj_sip_indicator	, 
										Tj_sip_st_date		, 
										Tj_sip_end_date		, 
										Tj_agt_st_date		, 
										Tj_agt_end_date		, 
										Tj_cond_ropr		, 
										Tj_cond_prrng_from	, 
										Tj_cond_prrng_to	
									)
							value	(	l_Tj_book_refno			,
                                        l_Tj_book_date			,
                                        l_Tj_ruleid				,
                                        l_Tj_rule_type			,
                                        l_Tj_asset_code			,
                                        l_Tj_asset_type			,
                                        l_Tj_mktorlmt			,
                                        l_Tj_buysell_ind		,
                                        l_Tj_asset_qty_tried	,
                                        l_Tj_asset_ccy			,
                                        l_Tj_asset_value_pu		,
                                        l_Tj_booked_units		,
                                        l_Tj_booked_price		,
                                        l_Tj_unbooked_units		,
                                        l_Tj_sip_indicator		,
                                        l_Tj_sip_st_date		,
                                        l_Tj_sip_end_date		,
                                        l_Tj_agt_st_date		,
                                        l_Tj_agt_end_date		,
                                        l_Tj_cond_ropr			,
                                        l_Tj_cond_prrng_from	,
                                        l_Tj_cond_prrng_to	
									); 
									
Update 		KD_tradebook_journal	set 	Tj_book_date		:=	    l_Tj_book_date			,
											Tj_ruleid			:=	    l_Tj_ruleid				,
											Tj_rule_type		:=	    l_Tj_rule_type			,
											Tj_asset_code		:=	    l_Tj_asset_code			,
											Tj_asset_type		:=	    l_Tj_asset_type			,
											Tj_mktorlmt			:=	    l_Tj_mktorlmt			,
											Tj_buysell_ind		:=	    l_Tj_buysell_ind		,
											Tj_asset_qty_tried	:=	    l_Tj_asset_qty_tried	,
											Tj_asset_ccy		:=	    l_Tj_asset_ccy			,
											Tj_asset_value_pu	:=	    l_Tj_asset_value_pu		,
											Tj_booked_units		:=	    l_Tj_booked_units		,
											Tj_booked_price		:=	    l_Tj_booked_price		,
											Tj_unbooked_units	:=	    l_Tj_unbooked_units		,
											Tj_sip_indicator	:=	    l_Tj_sip_indicator		,
											Tj_sip_st_date		:=	    l_Tj_sip_st_date		,
											Tj_sip_end_date		:=	    l_Tj_sip_end_date		,
											Tj_agt_st_date		:=	    l_Tj_agt_st_date		,
											Tj_agt_end_date		:=	    l_Tj_agt_end_date		,
											Tj_cond_ropr		:=	    l_Tj_cond_ropr			,
											Tj_cond_prrng_from	:=	    l_Tj_cond_prrng_from	,
											Tj_cond_prrng_to	:=	    l_Tj_cond_prrng_to	
									where 	Tj_book_refno	=	l_Tj_book_refno;
									
Delete from KD_tradebook_journal where Tj_book_refno = l_Tj_book_refno; 


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

select 	Ts_setl_refno		, 
        Ts_setl_date		, 
        Ts_book_refno		, 
        Ts_book_date		, 
        Ts_custid			, 
        Ts_buysell_ind		, 
        Ts_drcr_ind			, 
        Ts_iban				, 
        Ts_bic_code			, 
        Ts_kontonummer		, 
        Ts_kontoblz			, 
        Ts_konto_ccy		, 
        Ts_direct_account	, 
        Ts_payment_ref_no	, 
        Ts_other_bnk_acct	, 
        Ts_amount_requested	, 
        Ts_amount_confirmed	, 
        Ts_amount_unbooked	, 
        Ts_balance_received	, 
        Ts_balance_currency	, 
        Ts_post_book_bal	
from	KD_tbjournal_setl
where	Ts_setl_refno = l_Ts_setl_refno 
and 	Ts_book_refno = l_Ts_book_refno; 

Insert into	KD_tbjournal_setl (		Ts_setl_refno		, 
                                    Ts_setl_date		, 
                                    Ts_book_refno		, 
                                    Ts_book_date		, 
                                    Ts_custid			, 
                                    Ts_buysell_ind		, 
                                    Ts_drcr_ind			, 
                                    Ts_iban				, 
                                    Ts_bic_code			, 
                                    Ts_kontonummer		, 
                                    Ts_kontoblz			, 
                                    Ts_konto_ccy		, 
                                    Ts_direct_account	, 
                                    Ts_payment_ref_no	, 
                                    Ts_other_bnk_acct	, 
                                    Ts_amount_requested	, 
                                    Ts_amount_confirmed	, 
                                    Ts_amount_unbooked	, 
                                    Ts_balance_received	, 
                                    Ts_balance_currency	, 
                                    Ts_post_book_bal	
								)
						values	(	l_Ts_setl_refno			, 
						            l_Ts_setl_date			, 
						            l_Ts_book_refno			, 
						            l_Ts_book_date			, 
						            l_Ts_custid				, 
						            l_Ts_buysell_ind		, 
						            l_Ts_drcr_ind			, 
						            l_Ts_iban				, 
						            l_Ts_bic_code			, 
						            l_Ts_kontonummer		, 
						            l_Ts_kontoblz			, 
                                    l_Ts_konto_ccy			, 
                                    l_Ts_direct_account		, 
                                    l_Ts_payment_ref_no		, 
                                    l_Ts_other_bnk_acct		, 
                                    l_Ts_amount_requested	, 
                                    l_Ts_amount_confirmed	, 
                                    l_Ts_amount_unbooked	, 
                                    l_Ts_balance_received	, 
                                    l_Ts_balance_currency	, 
                                    l_Ts_post_book_bal	
								); 
								
Update 	KD_tbjournal_setl
set		Ts_setl_date		    :=	l_Ts_setl_date		
        Ts_book_date		    :=	l_Ts_book_date		
        Ts_custid			    :=	l_Ts_custid			
        Ts_buysell_ind		    :=	l_Ts_buysell_ind		
        Ts_drcr_ind			    :=	l_Ts_drcr_ind			
        Ts_iban				    :=	l_Ts_iban				
        Ts_bic_code			    :=	l_Ts_bic_code			
        Ts_kontonummer		    :=	l_Ts_kontonummer		
        Ts_kontoblz			    :=	l_Ts_kontoblz			
        Ts_konto_ccy		    :=	l_Ts_konto_ccy		
		Ts_direct_account		:=	l_Ts_direct_account						
        Ts_payment_ref_no	    :=	l_Ts_payment_ref_no	
        Ts_other_bnk_acct	    :=	l_Ts_other_bnk_acct	
        Ts_amount_requested	    :=	l_Ts_amount_requested	
        Ts_amount_confirmed	    :=	l_Ts_amount_confirmed	
        Ts_amount_unbooked	    :=	l_Ts_amount_unbooked	
        Ts_balance_received	    :=	l_Ts_balance_received	
        Ts_balance_currency	    :=	l_Ts_balance_currency	
        Ts_post_book_bal	    :=	l_Ts_post_book_bal
where 	Ts_setl_refno = l_Ts_setl_refno 
and 	Ts_book_refno = l_Ts_book_refno; 


Delete from KD_tbjournal_setl 
where 	Ts_setl_refno = l_Ts_setl_refno 
and Ts_book_refno = l_Ts_book_refno; 
 

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
								
select 	Cust_id				, 
        cust_type			, 
        user_id				, 
        user_type			, 
        trn_ref_no			, 
        trn_type			, 
        trn_subtype			, 
        try_seq_no			, 
        action_code			, 
        asset_code			, 
        asset_type			, 
        asset_qty			, 
        asset_value			, 
        out_msg_time		, 
        out_req_msg			, 
        otp_value_conf 		, 
        otp_value_key_in	, 
        in_resp_msg			, 
        post_otp_resp_xml	, 
        in_msg_time			, 
        comm_status			
FROM	Ib_exchg_comm_apigateway
where	Cust_id		= 	l_Cust_id
and 	trn_ref_no	=	l_trn_ref_no; 


Insert into 	Ib_exchg_comm_apigateway	(	Cust_id				, 
                                                cust_type			, 
                                                user_id				, 
                                                user_type			, 
                                                trn_ref_no			, 
                                                trn_type			, 
                                                trn_subtype			, 
                                                try_seq_no			, 
                                                action_code			, 
                                                asset_code			, 
                                                asset_type			, 
                                                asset_qty			, 
                                                asset_value			, 
                                                out_msg_time		, 
                                                out_req_msg			, 
                                                otp_value_conf 		, 
                                                otp_value_key_in	, 
                                                in_resp_msg			, 
                                                post_otp_resp_xml	, 
                                                in_msg_time			, 
                                                comm_status			
											)
									values	(	l_Cust_id				, 
                                                l_cust_type				, 
                                                l_user_id				, 
                                                l_user_type				, 
                                                l_trn_ref_no			, 
                                                l_trn_type				, 
                                                l_trn_subtype			, 
                                                l_try_seq_no			, 
                                                l_action_code			, 
                                                l_asset_code			, 
                                                l_asset_type			, 
                                                l_asset_qty				, 
                                                l_asset_value			, 
                                                l_out_msg_time			, 
                                                l_out_req_msg			, 
                                                l_otp_value_conf 		, 
                                                l_otp_value_key_in		, 
                                                l_in_resp_msg			, 
                                                l_post_otp_resp_xml		, 
                                                l_in_msg_time			, 
                                                l_comm_status			
											); 
											
UPDATE	Ib_exchg_comm_apigateway	
set		cust_type			:=		l_cust_type				,  
        user_id				:=		l_user_id				,  
        user_type			:=		l_user_type				,  
        trn_type			:=		l_trn_type				,  
        trn_subtype			:=		l_trn_subtype			,  
        try_seq_no			:=		l_try_seq_no			,  
        action_code			:=		l_action_code			,  
        asset_code			:=		l_asset_code			,  
        asset_type			:=		l_asset_type			,  
        asset_qty			:=		l_asset_qty				,  
        asset_value			:=		l_asset_value			,  
        out_msg_time		:=		l_out_msg_time			,  
        out_req_msg			:=		l_out_req_msg			,  
        otp_value_conf 		:=		l_otp_value_conf 		,  
        otp_value_key_in	:=		l_otp_value_key_in		,  
        in_resp_msg			:=		l_in_resp_msg			,  
        post_otp_resp_xml	:=		l_post_otp_resp_xml		,  
        in_msg_time			:=		l_in_msg_time			,  
        comm_status			:=		l_comm_status			
where	Cust_id		= 	l_Cust_id
and 	trn_ref_no	=	l_trn_ref_no; 
											
Delete from Ib_exchg_comm_apigateway
where	Cust_id		= 	l_Cust_id
and 	trn_ref_no	=	l_trn_ref_no; 

								
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
								
								
select 	Cust_id				, 
        cust_type			, 
        user_id				, 
        user_type			, 
        trn_ref_no			, 
        trn_type			, 
        trn_subtype			, 
        trn_seq_no			, 
        Pay_proc_code		, 
        in_msg_time			, 
        in_req_xml			, 
        otp_value_key_out 	, 
        otp_value_key_in	, 
        imd_resp_xml		, 
        post_otp_resp_xml	, 
        out_msg_time		, 
        pay_proc_status		
from 	Ib_pymt_gateway
where 	Cust_id = l_cust_id
and 	trn_ref_no = l_trn_ref_no; 		


Insert into Ib_pymt_gateway	(	Cust_id				, 
                                cust_type			, 
                                user_id				, 
                                user_type			, 
                                trn_ref_no			, 
                                trn_type			, 
                                trn_subtype			, 
                                trn_seq_no			, 
                                Pay_proc_code		, 
                                in_msg_time			, 
                                in_req_xml			, 
                                otp_value_key_out 	, 
                                otp_value_key_in	, 
                                imd_resp_xml		, 
                                post_otp_resp_xml	, 
                                out_msg_time		, 
                                pay_proc_status		
							) 
					value 	(	l_Cust_id				, 
					            l_cust_type				,	 
					            l_user_id				, 
					            l_user_type				, 
					            l_trn_ref_no			, 
					            l_trn_type				, 
					            l_trn_subtype			, 
					            l_trn_seq_no			, 
					            l_Pay_proc_code			, 
					            l_in_msg_time			, 
					            l_in_req_xml			, 
					            l_otp_value_key_out 	, 
					            l_otp_value_key_in		, 
					            l_imd_resp_xml			, 
					            l_post_otp_resp_xml		, 
					            l_out_msg_time			, 
					            l_pay_proc_status	
							); 
							
Update 	Ib_pymt_gateway
set 	cust_type			:=	 	cust_type			, 
        user_id				:=	 	user_id				, 	
        user_type			:=	 	user_type			, 
        trn_type			:=	 	trn_type			, 
        trn_subtype			:=	 	trn_subtype			, 	
        trn_seq_no			:=	 	trn_seq_no			, 
        Pay_proc_code		:=	 	Pay_proc_code		, 
        in_msg_time			:=	 	in_msg_time			, 	
        in_req_xml			:=	 	in_req_xml			, 
        otp_value_key_out 	:=	 	otp_value_key_out 	, 
        otp_value_key_in	:=	 	otp_value_key_in	, 
        imd_resp_xml		:=	 	imd_resp_xml		, 
        post_otp_resp_xml	:=	 	post_otp_resp_xml	, 
        out_msg_time		:=	 	out_msg_time		, 
        pay_proc_status		:=   	pay_proc_status		
where 	Cust_id = l_cust_id
and 	trn_ref_no = l_trn_ref_no; 		

Delete 	from Ib_pymt_gateway
where 	Cust_id = l_cust_id
and 	trn_ref_no = l_trn_ref_no; 							
	
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	

