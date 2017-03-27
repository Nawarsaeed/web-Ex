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
    public void ReadData(string sqlString, Label l, string pw, out string Name, out bool pn)
    {

        errMessage = "";
        //Lista för kund, OBS! using System.Collections.Generic; krävs
        //List<KundData> KundList = new List<KundData>();
        Name = "";
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

                Name = (string)reader["USERNAME"];
                dbpw = (string)reader["PASSWORD"];

                if (pw == dbpw) pn = true;
                else pn = false;

            }
        }
        catch (Exception ex) //om det blir fel
        {
            errMessage = errMessage + "Databasfel ReadDataForApdate:    <br/>" + ex;
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

                DBmail = (string)reader["EMAIL"];

                if (DBmail == mail) havemail = true;
                else havemail = false;

            }
        }
        catch (Exception ex) //om det blir fel
        {
            errMessage = errMessage + "Databasfel ReadDataForApdate:    <br/>" + ex;
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