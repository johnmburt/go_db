# Databases in Go project

Working with a CSV downloaded from CMS.gov:

- [Medicare Referring Provider DMEPOS Data CY2017 ](https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/DME2017)
	- The 2017 Referring Durable Medical Equipment, Prosthetics, Orthotics and Supplies (DMEPOS) Public Use File (herein referred to as “Referring Provider DMEPOS PUF”) presents information on DMEPOS products and services provided to Medicare beneficiaries ordered by physicians and other healthcare professionals.  The Referring Provider DMEPOS PUF contains data on utilization, payment (allowed amount and Medicare payment), and submitted charges organized by National Provider Identifier (NPI), Healthcare Common Procedure Coding System (HCPCS) code and supplier rental indicator. This PUF is based on information from CMS administrative claims data for Medicare beneficiaries enrolled in the fee-for-service program available from the CMS Chronic Condition Data Warehouse (www.ccwdata.org). The data in the Referring Provider DMEPOS PUF covers calendar year 2017 and contains final-action (i.e., all claim adjustments have been resolved) Part B non-institutional DMEPOS line items for the Medicare fee-for-service (FFS) population.  

	- While the Referring Provider DMEPOS PUF has a wealth of information on payment and utilization for Medicare DMEPOS services, the dataset has a number of limitations.  Of particular importance is the fact that the data may not be representative of a physician’s entire practice as it only includes information on Medicare fee-for-service beneficiaries.  In addition, the data are not intended to indicate the quality of care provided and are not risk-adjusted to account for differences in underlying severity of disease of patient populations.  For additional limitations, please review the methodology document available below.


The goal of this project is to use Go code to load the CSV data into PostgreSQL and MongoDB databases.

Two sub-projects:

- PostgreSQL database load. This will essentially be the 6 Degrees job interview homework assignment using Go and a Google Cloud PostgreSQL database, instead of Python and a local PostgreSQL install.

- Notes:
	- I needed to set up a Cloud SQL Proxy to be able to connect from my local PC.
		- Used Go Cloud SQL Proxy library
		- Created credential file in GCP console:
			- Enable Cloud SQL Admin API (in APIs and Services)
			- In IAM Admin, Service Accounts,
				- Select the project containing the PostgreSQL server.
				- Actions, Create Key, Save file (will be xxxxx.json)
				- Note: need to gitignore this file
	- [Connecting to Cloud SQL from external applications](https://cloud.google.com/sql/docs/postgres/connect-external-app#go)
	- [the Cloud SQL Proxy GitHub page](https://github.com/GoogleCloudPlatform/cloudsql-proxy#to-use-inside-a-go-program)
	- [Connecting to Cloud SQL (Postgres) from a Go web app](https://github.com/GoogleCloudPlatform/golang-samples/blob/master/cloudsql/postgres/database-sql/README.md)
	
	
	
- MongoDB database load. For this task I'll create a db on the MongoDB Atlas site.
