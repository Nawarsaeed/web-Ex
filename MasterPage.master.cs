﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie Usercookies = Request.Cookies["User"];
        if (Usercookies != null)
        {
            OurUser.Visible = true;
            OurUser.InnerText = Usercookies["Name"];
            Usercookies.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Set(Usercookies);

            signout.Visible = true;
            signin.Visible = false;
            signup.Visible = false;
        }
        else
        {
            OurUser.Visible = false;
            signout.Visible = false;
            signin.Visible = true;
            signup.Visible = true;
        }
    }

}