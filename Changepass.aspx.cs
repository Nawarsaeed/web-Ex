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

    }

    protected void btnBytLösenord_Click(object sender, EventArgs e)
    {
        HttpCookie Usercookies = Request.Cookies["User"];
        string usermail = Usercookies["Mail"];
        DataAccess access = new DataAccess();
        //Samla indata

        string oldpw = txbOldPass.Text;
        string newpw = txbNewPass.Text;
        string repeat = txbRepeat.Text;
        string Username = "";
        string Usermail = "";
        bool Right = false;

        //Samla indata


        string SqlCmd = "SELECT * FROM TBL_USER WHERE USER_EMAIL= '" + usermail + "' ;";

        access.ReadData(SqlCmd, lblError, oldpw, out Username, out Right, out Usermail);


        if (!Right)
        {
            lblError.Text = "gamla lösenord är fel.";
        }
        else if (Right && newpw == repeat)
        {
            string sqlCmd;
            sqlCmd = "UPDATE TBL_USER SET USER_PASSWORD = '" + newpw + "' WHERE USER_EMAIL = '" + usermail + "';";
            access.SetData(sqlCmd, lblError);
            txbOldPass.Text = "";
            txbNewPass.Text = "";
            txbRepeat.Text = "";
            lblError.Text = "Lösenorden ändras!";

        }
        else
        {
            lblError.Text = "Lösenorden som du mata in är olika.";
        }

    }
}