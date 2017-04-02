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
            HttpCookie Usercookies = Request.Cookies["User"];
        if (!IsPostBack)
        {
            if (Usercookies != null)
            {
                Takedata();

            }
        }
    }

    protected void btnSpara_Click(object sender, EventArgs e)
    {
        HttpCookie Usercookies = Request.Cookies["User"];
        string usermail = Usercookies["Mail"];
        DataAccess access = new DataAccess();

        string sqlCmd;
        //Samla indata

        sqlCmd = "UPDATE TBL_USER SET USER_FORENAME = '" + txbFirsName.Text + "',  USER_AFTERNAME = '" + txbSurName.Text + "', USER_ADRESS = '" + txbAdress.Text + "', USER_STAD = '" + txbCity.Text + "', USER_POSTNR = '" + txbZip.Text + "', USER_LAND = '" + txbCountry.Text + " ', USER_MOBIL = '" + txbMobilenumber.Text + "' WHERE USER_EMAIL = '" + usermail + "';";
        access.SetData(sqlCmd, lblError);

    }

    protected void Takedata()
    {
        HttpCookie Usercookies = Request.Cookies["User"];
        string name = Usercookies["Name"];

        DataAccess access = new DataAccess();
        string fn;
        string en;
        string ad;
        string st;
        string pn;
        string la;
        string mo;

        string SqlCmd = "SELECT * FROM TBL_USER WHERE USER_NAME= '" + name + "' ;";

        access.TakeInformation(SqlCmd, lblError, out fn, out en, out ad, out st, out pn, out la, out mo);

        txbFirsName.Text = fn;
        txbSurName.Text = en;
        txbAdress.Text = ad;
        txbCity.Text = st;
        txbZip.Text = pn;
        txbCountry.Text = la;
        txbMobilenumber.Text = mo;
    }
}