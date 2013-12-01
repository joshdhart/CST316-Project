This readme explains how to connect your project to an existing MySQL database.

For those of you that haven't already, you should create a local database for our music library.
In MySQL, type:
CREATE DATABASE musicLibrary;
USE musicLibrary;

Then copy paste all the commands we have to populate the db.

Once the database is created, please install MySQL's .net connector either by using the provided .msi file
or by going to the following URL: http://dev.mysql.com/downloads/connector/net/
Once the install is completed, you can find the files needed in the directory:
C:\Program Files (x86)\MySQL\Connector NET 6.7.4\Assemblies\v4.0

Now, in your MusicLibrary project, right click on References in the solution explorer,
click add reference, go to browse, and add 2 .dll's: MySql.Data.dll and MySql.Web.dll
Both are located in the file path listed above.

Once you have added the 2 new references, add: using MySql.Data.MySqlClient;
to wherever we plan on using Queries to access our db.

Then, we need to establish connection to the db by adding:
try
{
	string myConnectionString = "Server=localhost;Database=musicLibrary;Uid=root;Pwd={password};";
	MySqlConnection myConnection = new MySqlConnection(myConnectionString);
	MySqlDataAdapter myDataAdapter = new MySqlDataAdapter();
	myDataAdapter.SelectCommand = new MySqlCommand(" {query} ; ", myConnection);
	myConnection.Open();
}
catch (Exception ex)
{
	MessageBox.Show(ex.Message);
}


After this, connection should be established and capable of making queries.