
DATA Medicare_DMEPOS_PUF;
	LENGTH
		referring_npi        				$ 10
		referring_provider_last_org_name    $ 70
		referring_provider_first_name		$ 20
		referring_provider_mi				$ 1
		referring_credentials				$ 20
		referring_provider_gender			$ 1
		referring_entity_code				$ 1
		referring_provider_street1			$ 55
		referring_provider_street2			$ 55
		referring_provider_city				$ 40
		referring_provider_state			$ 2
		referring_provider_zip				$ 20
		referring_provider_country			$ 2
		referring_provider_type 			$ 91
		referring_provider_type_flag        $ 1
		hcpcs_code       					$ 5
		hcpcs_description 					$ 256
		betos_classification 				$ 36
		betos_classification_group          $ 31
		supplier_rental_indicator			$ 1
		number_of_suppliers 				8
		number_of_supplier_beneficiaries	8.
		number_of_supplier_claims 			8
		number_of_supplier_services 		8
		avg_supplier_submitted_charge		8
		avg_supplier_medicare_allow_amt		8
		avg_supplier_medicare_pmt_amt		8
		avg_supplier_medicare_std_amt		8;

	INFILE 'C:\My documents\Medicare_Referring_Provider_DMEPOS_PUF_CY2017.tab'

		lrecl=32767
		dlm='09'x
		pad missover
		firstobs = 2
		dsd;

	INPUT
		referring_npi             
		referring_provider_last_org_name 
		referring_provider_first_name 
		referring_provider_mi 
		referring_credentials 
		referring_provider_gender 
		referring_entity_code 
		referring_provider_street1 
		referring_provider_street2 
		referring_provider_city 
		referring_provider_state 
		referring_provider_zip 
		referring_provider_country 
		referring_provider_type 
		referring_provider_type_flag  
		hcpcs_code       	
		hcpcs_description 
		betos_classification
		betos_classification_group
		supplier_rental_indicator
		number_of_suppliers
		number_of_supplier_beneficiaries
		number_of_supplier_claims 
		number_of_supplier_services
		avg_supplier_submitted_charge
		avg_supplier_medicare_allow_amt
		avg_supplier_medicare_pmt_amt
		avg_supplier_medicare_std_amt
;

	LABEL
		referring_npi    					= "National Provider Identifier"       
		referring_provider_last_org_name 	= "Last Name/Organization Name of the Referring Provider"
		referring_provider_first_name 		= "First Name of the Referring Provider"
		referring_provider_mi				= "Middle Initial of the Referring Provider"
		referring_credentials 				= "Credentials of the Referring Provider"
		referring_provider_gender 			= "Gender of the Referring Provider"
		referring_entity_code 				= "Entity Type of the Referring Provider"
		referring_provider_street1 			= "Street Address 1 of the Referring Provider"
		referring_provider_street2 			= "Street Address 2 of the Referring Provider"
		referring_provider_city 			= "City of the Referring Provider"
		referring_provider_state 			= "State Code of the Referring Provider"
		referring_provider_zip 				= "Zip Code of the Referring Provider"
		referring_provider_country 			= "Country Code of the Referring Provider"
		referring_provider_type	 			= "Provider Type of the Referring Provider"
		referring_provider_type_flag		= "Flag Identifying the Source of the Provider Type"
		hcpcs_code       					= "HCPCS Code"
		hcpcs_description 					= "Description Associated With the HCPCS Code"
		betos_classification				= "BETOS Classification Associated With the HCPCS Code"
		betos_classification_group			= "High Level BETOS Classification Group"
		supplier_rental_indicator			= "Indicator Identifying Products as Rental or Non-rental"
		number_of_suppliers					= "Number of Suppliers Rendering DMEPOS Products/Services"
		number_of_supplier_beneficiaries	= "Number of Medicare Beneficiaries Associated with Supplier DMEPOS Claims"
		number_of_supplier_claims 			= "Number of Supplier DMEPOS Claims"
		number_of_supplier_services			= "Number of Supplier DMEPOS Services"
		avg_supplier_submitted_charge		= "Average Charges that Suppliers Submitted for DMEPOS"
		avg_supplier_medicare_allow_amt		= "Average Medicare Allowed Amounts for DMEPOS"
		avg_supplier_medicare_pmt_amt		= "Average Medicare Payments for DMEPOS"
		avg_supplier_medicare_std_amt		= "Average Medicare Standardized Payments for DMEPOS";
RUN;
