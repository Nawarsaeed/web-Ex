using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.OleDb;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{

    //Felmeddelande
    static string errMessage = "";

    //Dummy konstruktor (Det går att radera)
    public DataAccess() { errMessage = ""; }

    //Peka & öppna databasen
    //Argumentlista: sqlCmd = sql-satsen, l = label för ev felmeddelande
    public void ReadData(string sqlString, Label l, string pw, out string Name, out bool pn, out string Email)
    {

        errMessage = "";
        //Lista för kund, OBS! using System.Collections.Generic; krävs
        //List<KundData> KundList = new List<KundData>();
        Name = "";
        Email = "";
        pn = false;
        string dbpw = "";


        //Ange vilken ConnectionString vill du använda
        string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //Skapa uppkopplingen
        OleDbConnection Conn = new OleDbConnection(ConnString);
        //Skapa SQL-kommando
        OleDbCommand SqlCommand = new OleDbCommand(sqlString, Conn);


        //Öppna uppkoplingen 
        try //utför kommando
        {
            Conn.Open(); //öppna DB
                         //Exekvera sql-kommandot

            OleDbDataReader reader = SqlCommand.ExecuteReader();

            while (reader.Read())
            {

                Name = (string)reader["USER_NAME"];
                Email = (string)reader["USER_EMAIL"];
                dbpw = (string)reader["USER_PASSWORD"];

                if (pw == dbpw) pn = true;
                else pn = false;

            }
        }
        catch (Exception ex) //om det blir fel
        {
            errMessage = errMessage + "Databasfel ReadData:    <br/>" + ex;
        }
        finally //avsulta
        {
            Conn.Close();
            if (errMessage != "")//Om det finns ett felmed
            //Om catch exekverades
            {
                l.Text = errMessage; ///Skriv ut meddelande i labeln l
            }
        }
    }
    public void SetData(string sqlString, Label l)
    {
        errMessage = "";
        //Ange vilken ConnectionString vill du använda
        string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //Skapa uppkopplingen 
        OleDbConnection Conn = new OleDbConnection(ConnString);

        //Skapa SQL-kommando 
        OleDbCommand SqlCommand = new OleDbCommand(sqlString, Conn);

        //Öppna uppkoplingen 
        try //utför kommando
        {
            Conn.Open(); //öppna DB
            SqlCommand.ExecuteNonQuery();
        }
        catch (Exception ex) //om det blir fel
        {
            errMessage = errMessage + "Databasfel GR:    <br/>" + ex;
        }
        finally //avsulta
        {
            Conn.Close();
            if (errMessage != "")//Om det finns ett felmed
            {
                l.Text = errMessage; ///Skriv ut meddelande i labeln l
            }
        }
    }
    public void ReadMail(string sqlString, Label l, string mail, out bool havemail)
    {
        errMessage = "";
        //Lista för kund, OBS! using System.Collections.Generic; krävs
        //List<KundData> KundList = new List<KundData>();
        havemail = false;
        string DBmail = "";


        //Ange vilken ConnectionString vill du använda
        string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //Skapa uppkopplingen
        OleDbConnection Conn = new OleDbConnection(ConnString);
        //Skapa SQL-kommando
        OleDbCommand SqlCommand = new OleDbCommand(sqlString, Conn);


        //Öppna uppkoplingen 
        try //utför kommando
        {
            Conn.Open(); //öppna DB
                         //Exekvera sql-kommandot

            OleDbDataReader reader = SqlCommand.ExecuteReader();

            while (reader.Read())
            {

                DBmail = (string)reader["USER_EMAIL"];

                if (DBmail == mail) havemail = true;
                else havemail = false;

            }
        }
        catch (Exception ex) //om det blir fel
        {
            errMessage = errMessage + "Databasfel ReadMail:    <br/>" + ex;
        }
        finally //avsulta
        {
            Conn.Close();
            if (errMessage != "")//Om det finns ett felmed
            //Om catch exekverades
            {
                l.Text = errMessage; ///Skriv ut meddelande i labeln l
            }
        }
    }

    public void TakeInformation(string sqlString, Label l, out string FName, out string EName, out string Adress, out string Stad, out string Post, out string Land, out string Mobil)
    {

        errMessage = "";
        //Lista för kund, OBS! using System.Collections.Generic; krävs
        //List<KundData> KundList = new List<KundData>();
        FName = "";
        EName = "";
        Adress = "";
        Stad = "";
        Post = "";
        Land = "";
        Mobil = "";

        //Ange vilken ConnectionString vill du använda
        string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //Skapa uppkopplingen
        OleDbConnection Conn = new OleDbConnection(ConnString);
        //Skapa SQL-kommando
        OleDbCommand SqlCommand = new OleDbCommand(sqlString, Conn);


        //Öppna uppkoplingen 
        try //utför kommando
        {
            Conn.Open(); //öppna DB
                         //Exekvera sql-kommandot

            OleDbDataReader reader = SqlCommand.ExecuteReader();

            while (reader.Read())
            {

                FName = (string)reader["USER_FORENAME"];
                EName = (string)reader["USER_AFTERNAME"];
                Adress = (string)reader["USER_ADRESS"];
                Stad = (string)reader["USER_STAD"];
                Post = (string)reader["USER_POSTNR"];
                Land = (string)reader["USER_LAND"];
                Mobil = (string)reader["USER_Mobil"];
            }
        }
        catch (Exception ex) //om det blir fel
        {
            errMessage = errMessage + "Databasfel TakeData:    <br/>" + ex;
        }
        finally //avsulta
        {
            Conn.Close();
            if (errMessage != "")//Om det finns ett felmed
            //Om catch exekverades
            {
                l.Text = errMessage; ///Skriv ut meddelande i labeln l
            }
        }
    }

}