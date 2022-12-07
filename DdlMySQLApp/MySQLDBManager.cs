using MySql.Data.MySqlClient;

namespace Manager;



public static class MySQLDBManager
{


    public static string conString=@"server =localhost; user=root; password = root; database = classicmodels;";


    public static bool CreateTable()
      {
          bool status =false;

          MySqlConnection con =new MySqlConnection();

          con.ConnectionString =conString;
       
              try{
             
                   string query= "CREATE TABLE CustomerManager( customerid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,"+
                                "firstName varchar(50),"+
                                "lastName VARCHAR(50),"+
                                "productdetails VARCHAR (255),"+
                                "contactDetails VARCHAR (255)"+
                                 ")";
                                                                                                                                                                                                                                                                                                      
                   System.Console.WriteLine(query);

                  MySqlCommand cmd = new MySqlCommand(query,con);
                  con.Open();
                  cmd.ExecuteNonQuery();
                  status= true;

                 }
             catch (Exception e)
                {
                  System.Console.WriteLine(e.Message);
                }
             finally
                {
                  con.Close();
                }
        return status;
      }

    public static bool Insert(string fname ,string lname , string productdetails,string contactDetails)
  {
       bool status = false;

       MySqlConnection con = new MySqlConnection();
       con.ConnectionString=conString;
       try 
       {
         string query="INSERT INTO customerManager (firstname,lastname,productdetails,contactDetails) "+
        "VALUES('"+ fname+"' ,'"+lname +"','"+productdetails+"','"+contactDetails+"')";
           
           System.Console.WriteLine(query);
           MySqlCommand cmd = new MySqlCommand(query,con);
           con.Open();
           cmd.ExecuteNonQuery();
           status=true;
       
       }
       catch(Exception e)
       {
           System.Console.WriteLine(e.Message);
       }
       finally{
         con.Close();
       }
       return status;
  }

    public static bool Update(int id,string fname , string lname, string productdetails,string contactDetails){
       bool status =false;
   
       MySqlConnection con = new MySqlConnection();
       con.ConnectionString=conString;
       
          try{
            string query ="UPDATE customerManager SET firstName='"+fname+"'"+
                            "lastname='"+lname+"-"+
                            "productdetails'="+productdetails+"-"+
                            "contactdetails=" +contactDetails+"-"+
                            " WHERE customerid ="+id;
            System.Console.WriteLine(query);
            MySqlCommand cmd =new MySqlCommand(query,con);
            con.Open();
            cmd.ExecuteNonQuery();
            status=true;
             }
             catch(Exception e)
             {
                  System.Console.WriteLine(e.Message);
             }
             finally
             {
                con.Close();
             }

     return status;

  }
    public static bool DELETE(int id)
  {

    bool status=false;

    MySqlConnection con =new MySqlConnection();
    con.ConnectionString=conString;
    try{
         string query="DELETE from customerManager where id " + id;
        System.Console.WriteLine(query);
        MySqlCommand cmd =new MySqlCommand(query,con);
        con.Open();
        cmd.ExecuteNonQuery();
        status=true;

    
  }
  catch (Exception e)
  {
     System.Console.WriteLine(e.Message);
  }
  finally
  {
    con.Close();

  }
  return status;

 
   }


  public static void ShowAllCustomers(){
        MySqlConnection con=new MySqlConnection();
        try{
            con.ConnectionString=conString;
            con.Open();
            string query = "SELECT * FROM customerManager";
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
                {
                    //Console.WriteLine(rdr[0]+" -- "+rdr[1]+" -- "+rdr[2]+" -- "+rdr[4]);
                    Console.WriteLine(rdr["customerId"]+"---" + rdr["firstname"]+" -- "+rdr["lastName"]+" ---- "+rdr["productdetails"]+" --- "+rdr["contactDetails"]+")");
                }
                rdr.Close();
            }

        catch(Exception e)
        {
            Console.WriteLine(e.Message);
        }

        finally
        {
            con.Close();
        }

    }

    public static void allCustomers(int id){
        bool status=false;
        MySqlConnection con=new MySqlConnection();
        try{
            con.ConnectionString=conString;
            con.Open();
            string query = "SELECT * FROM customerManager WHERE Id="+id;
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
                {
                     Console.WriteLine(rdr["Id"]+"---" + rdr["firstName"]+" -- "+rdr["lastName"]+" ---- "+rdr["productdetails"]+" --- "+rdr["contaictdetails"]+")");

                       status=true;
                }
                
                rdr.Close();
            }
        catch(Exception e){
            Console.WriteLine(e.Message);
        }

        finally{
            con.Close();
        }

    }
}

