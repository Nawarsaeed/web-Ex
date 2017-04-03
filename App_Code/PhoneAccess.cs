using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.OleDb;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web;

/// <summary>
/// Summary description for PhoneAccess
/// </summary>
public class PhoneAccess
{
    //Felmeddelande
    static string errMessage = "";

    //Dummy konstruktor (Det går att radera)
    public PhoneAccess() { errMessage = ""; }

    //Peka & öppna databasen
    //Argumentlista: sqlCmd = sql-satsen, l = label för ev felmeddelande
    public void ReadCase(string sqlString, Label l, out string Name, out int Price)
    {

        errMessage = "";
        //Lista för kund, OBS! using System.Collections.Generic; krävs
        //List<KundData> KundList = new List<KundData>();
        Name = "";
        Price = 0;


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
                Name = (string)reader["CASE_NAME"];
                Price = (int)reader["CASE_PRIS"];
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
}