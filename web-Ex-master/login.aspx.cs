using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HttpCookie cookies = Request.Cookies["Remeberme"];
            if (cookies != null)
            {
                txbUser.Text = cookies["Username"];
                txbPass.Text = cookies["Password"];
                ccbReme.Checked = true;
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //En objekt för åtkoms till databasen
        DataAccess access = new DataAccess();
        //Samla indata

        string t = txbUser.Text;
        string pw = txbPass.Text;
        bool Right;
        string Username = "";


        //Bygg sql-satsen, SELECT för kund
        string SqlCmd = "SELECT * FROM TBL_USER2 WHERE EMAIL= '" + t + "' ;";

        //Skicka med sql-satsen, vilken greadView ska utdata vissas i och en err-label
        access.ReadData(SqlCmd, lblError, pw, out Username, out Right);


        //Om det logga in, då skapa cookies,annars visar fel
        if (Right)
        {
            HttpCookie cookies = new HttpCookie("Remeberme");

            if (ccbReme.Checked == true)
            {
                cookies["Username"] = txbUser.Text;
                cookies["Password"] = txbPass.Text;
                cookies.Expires = DateTime.Now.AddMinutes(10);
                Response.Cookies.Add(cookies);
            }
            else
            {
                cookies.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(cookies);
            }

            HttpCookie Usercookies = new HttpCookie("User");
            Usercookies["Name"] = Username;
            Usercookies.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(Usercookies);

            Response.Redirect("Index.aspx");
        }

        else
        {
            lblWork.Text = "Ditt mail eller lösenord är fel";
        }
    }
       


    

}