using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgetpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnForget_Click(object sender, EventArgs e)
    {
        //En objekt f�r �tkoms till databasen
        DataAccess access = new DataAccess();
        //Samla indata

        string mail = txbforget.Text;
        bool havemail;
  

        //Bygg sql-satsen
        string SqlCmd = "SELECT * FROM TBL_USER2 WHERE EMAIL= '" + mail + "' ;";

        //Skicka med sql-satsen
        access.ReadMail(SqlCmd, lblError, mail, out havemail);

        //om det finns mail, d� visar dianmail.aspx, annars visar alternativ att registera sig
        if (havemail)
        {
            Response.Redirect("Dinmail.aspx");
        }
        else
        {
            Undertext.HRef = "regist.aspx";
            Undertext.InnerText = "Kund finns inte. klicka h�r f�r att registera dig.";
        }
    }
}