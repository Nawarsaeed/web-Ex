﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HttpCookie Usercookies = Request.Cookies["User"];
            if (Usercookies != null)
            {
                OurUser.Visible = true;
                OurUser.InnerText = Usercookies["Name"];
                signin.Visible = true;
                signin.InnerText = "logga ut";
                signup.Visible = false;
            }
            else
            {
                signin.Visible = true;
                signup.Visible = true;
            }
        }

    }
}