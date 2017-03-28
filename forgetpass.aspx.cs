using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnForget_Click(object sender, EventArgs e)
    {
        //En objekt för åtkoms till databasen
        DataAccess access = new DataAccess();
        //Samla indata

        string mail = txbforget.Text;
        bool havemail;


        //Bygg sql-satsen
        string SqlCmd = "SELECT * FROM TBL_USER WHERE USER_EMAIL= '" + mail + "' ;";

        //Skicka med sql-satsen
        access.ReadMail(SqlCmd, lblError, mail, out havemail);

        //om det finns mail, då visar dianmail.aspx, annars visar alternativ att registera sig
        if (havemail)
        {
            Undertext.InnerText = "Email har skickat till dig";
        }
        else
        {
            Undertext.HRef = "regist.aspx";
            Undertext.InnerText = "Kund finns inte. klicka här för att registera dig.";
        }
    }
}