# github

## Initialization

  ### config.php
  
  Go to application/config/config.php line number 26 and edit according to the connection on your own computer
    
  ## database configuration
    
  First, go to application/config/database.php line number 78 and edit 'hostname', 'username', 'password' and 'database' fields to the your own connection information
    
  Second, make sure you have a database with the value in the database field you edited in the first step then run BuildDatabase. Example 'http://localhost/github/Builddatabase'
    
    
## Using

  When the Repo Controller runs, it first checks if the database has any records. 
  
  If the result is false, it will update the database with the specified rest api by running the update method.
  
  Else, it will run the get method and fill the interface with the records from the database.
  
  
