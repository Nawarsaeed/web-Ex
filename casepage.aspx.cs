using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class casepage2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }



    protected void phoneTypes_SelectedIndexChanged(object sender, EventArgs e)
    {
        PhoneAccess access = new PhoneAccess();

        string name = "";
        int price = 0;
        int tprice;

        string SqlCmd = "SELECT * FROM TBL_CASEFORM WHERE CASE_ID= " + phoneTypes.SelectedValue + " ;";
        access.ReadCase(SqlCmd, lblError, out name, out price);
        CasePrice.InnerText = Convert.ToString(price);

        

        tprice = Convert.ToInt16(CasePrice.InnerText) + Convert.ToInt16(DesginPrice.InnerText);
        TotalPrice.InnerText = Convert.ToString(tprice);

    }


}