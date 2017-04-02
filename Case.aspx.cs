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

    protected void Change()
    {
        if (phoneTypes.Value == "3") PhonecasePrice.InnerText = "6 000 kr";
    }
}