package main

import (
	"database/sql"
	"fmt"
	"log"
	"os"

	"github.com/joho/godotenv"

	/*	"html/template"
		"log"
		"math"
		"strconv"
	*/
	// load Google Postgres proxy driver
	_ "github.com/GoogleCloudPlatform/cloudsql-proxy/proxy/dialers/postgres"
)

/* Open the database
Note: this doesn't actually connect to the database, but instead prepares
a "database abstraction"
*/
func OpenDB() (*sql.DB, error) {

	// Get db connection details from environment variables.
	// Note: these variables are stored in a .env file,
	//       speficied in launch.json.
	// TODO: how do I run this from a terminal, w/ .env file?
	var (
		dbUser                 = os.Getenv("SQL_DB_USER")
		dbPwd                  = os.Getenv("SQL_DB_PASS")
		instanceConnectionName = os.Getenv("SQL_INSTANCE_CONNECTION_NAME")
		dbName                 = os.Getenv("SQL_DB_NAME")
	)

	if instanceConnectionName == "" {
		log.Fatal("Error: did not load environment variables for database connection")
	}

	// form connection paramter string to pass to Open
	dsn := fmt.Sprintf("host=%s dbname=%s user=%s password=%s sslmode=disable",
		instanceConnectionName, dbName, dbUser, dbPwd)

	db, err := sql.Open("cloudsqlpostgres", dsn)
	if err != nil {
		log.Fatal(err)
	}

	return db, err
}

/* Main function tasks:

 */
func main() {

	// load environment variables from .env file
	godotenv.Load("../.env")

	// Open the database
	db, err := OpenDB()
	//fmt.Println(db, err)

	// Test database connection
	err = db.Ping()
	if err != nil {
		log.Fatal(err)
	}

	// delete existing tables

	// create new tables

	fmt.Println("Success!!")

	// make sure database closes after exit
	defer db.Close()
}
