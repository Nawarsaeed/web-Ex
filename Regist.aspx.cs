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
        if (!IsPostBack)
        {
            HttpCookie Usercookies = Request.Cookies["User"];
            if (Usercookies != null)
            {
                Response.Redirect("Profilepage.aspx");
            }
        }
    }

    protected void btnRigs_Click(object sender, EventArgs e)
    {
        DataAccess access = new DataAccess();


        string u = txbUsername.Text;
        string em = txbEmail.Text;
        string p = txbPassword.Text;

        string sqlCmd;
        //Samla indata


        sqlCmd = "INSERT INTO TBL_USER(USER_NAME, USER_PASSWORD, USER_EMAIL) VALUES ('" + u + "', '" + p + "', '" + em + "')";

        //Skicka med sql-satsen och en err-label
        //Kontrollera att kunden är registrerat genom att
        //ladda om sidan och kolla DroppDownList

        access.SetData(sqlCmd, lblError);

        txbUsername.Text = "";
        txbEmail.Text = "";
        txbPassword.Text = "";

        if (lblError.Text == "")
        {
            Response.Redirect("login.aspx");
        }
    }
}