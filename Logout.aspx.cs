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
        HttpCookie Usercookies = Request.Cookies["User"];
        if (Usercookies != null)
        {
            Usercookies.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(Usercookies);
            Response.Redirect("logout.aspx");
        }

        Response.AddHeader("REFRESH", "5;login.aspx");
    }





}