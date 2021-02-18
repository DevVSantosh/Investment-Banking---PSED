
------------------------------------------------------------------------------------------------------------------------------------------------------
	-- Company Header HTML Generator - can be used any time based on the upcoming modifications. 
	-- An automated tool to build ahead in order to 
------------------------------------------------------------------------------------------------------------------------------------------------------

set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------

set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

------------------------------------------------------------------------------------------------------------------------------------------------------
set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

------------------------------------------------------------------------------------------------------------------------------------------------------set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

------------------------------------------------------------------------------------------------------------------------------------------------------set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

------------------------------------------------------------------------------------------------------------------------------------------------------set termout off

------------------------------------------------------------------------------------------------------------------------------------------------------

set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------

set termout off
set pages 999
SET MARKUP HTML ON TABLE "class=BEHauptsitz cellspacing=0" ENTMAP OFF

col Be_full_name 			 format a30 				heading "<p class=left>Company Name</p>"
col Be_tm_code   			 format a30/*$999,999*/     heading "<p class=left>Trademark</p>"
col Be_hq_address_str		 format a30 				heading "<p class=left>Street Name</p>"
col Be_hq_address_str_no	 format a30 				heading "<p class=left>Number</p>"
col Be_hq_address_plz		 format a30 				heading "<p class=left>Post Code</p>"
col Be_hq_address_ort		 format a30 				heading "<p class=left>Place Name</p>"
col Be_hq_address_ctry		 format a30 				heading "<p class=left>City</p>"
col Be_hq_address_stadt		 format a30 				heading "<p class=left>State</p>"
col Be_hq_address_region	 format a30 				heading "<p class=left>Region</p>"
col Be_hq_geschaeftsfuehrer	 format a30 				heading "<p class=left>CEO Name</p>"
col Be_hq_stellvertretter	 format a30 				heading "<p class=left>Represented By</p>"
col Be_hq_auth_status		 format a30 				heading "<p class=left>Authorization status</p>"
col Be_hq_once_auth			 format a30 				heading "<p class=left>Once Authorized</p>"
col Be_hq_first_create		 format dd-mm-yyyy 			heading "<p class=left>Incorp Date</p>"
col Be_hq_first_auth		 format a30 				heading "<p class=left>First Auth</p>"
col Be_hq_maker_id			 format a30 				heading "<p class=left>Maker user</p>"
col Be_hq_Maker_dt_stamp  	 format dd-mm-yyyy 			heading "<p class=left>Maker Date Stamp</p>"
col Be_hq_checker_id		 format a30 				heading "<p class=left>Checker_id</p>"
col Be_hq_checker_dt_Stamp 	 format dd-mm-yyyy 			heading "<p class=left>Checker Dt Stamp</p>"


spool BEHauptsitz_html.htm

select	Be_tm_code				  , 
        Be_full_name			  , 
        Be_hq_address_str		  , 
        Be_hq_address_str_no	  , 
        Be_hq_address_plz		  , 
        Be_hq_address_ort		  , 
        Be_hq_address_ctry		  , 
        Be_hq_address_stadt		  , 
        Be_hq_address_region	  , 
        Be_hq_geschaeftsfuehrer	  , 
        Be_hq_stellvertretter	  , 
        Be_hq_auth_status		  , 
        Be_hq_once_auth			  , 
        Be_hq_first_create		  , 
        Be_hq_first_auth		  , 
        Be_hq_maker_id			  , 
        Be_hq_Maker_dt_stamp  	  , 
        Be_hq_checker_id		  , 
        Be_hq_checker_dt_Stamp 	   
from
   BEHauptsitz e;
spool off;

-------------------------------------------------------------------------------------------------------------------------------------------------------


