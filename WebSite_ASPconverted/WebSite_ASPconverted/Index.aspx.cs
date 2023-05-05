using ASP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Show_More(object sender, EventArgs e)
    {
        HtmlControl control = (HtmlControl)Page.FindControl("more_info");
        string status = control.Attributes["hidden"];
        if (status == "hidden")
        {
            control.Attributes.Remove("hidden");
        }
        else
        {
            control.Attributes.Add("hidden", "hidden");
        }
        ;
    }
}