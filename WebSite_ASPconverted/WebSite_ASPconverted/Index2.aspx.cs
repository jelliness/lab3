using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Show_Calculator(object sender, EventArgs e)
    {
        HtmlControl calculator = (HtmlControl)Page.FindControl("calculator");
        HtmlControl age_count = (HtmlControl)Page.FindControl("age_counter");
        HtmlControl vidplayer = (HtmlControl)Page.FindControl("video_stream");
        string status = calculator.Attributes["hidden"];
        if (status == "hidden")
        {
            calculator.Attributes.Remove("hidden");
            age_count.Attributes.Add("hidden", "hidden");
            vidplayer.Attributes.Add("hidden", "hidden");

        }
        else
        {
            calculator.Attributes.Add("hidden", "hidden");

        }
    }
    protected void Show_AgeCalcu(object sender, EventArgs e)
    {
        HtmlControl calculator = (HtmlControl)Page.FindControl("calculator");
        HtmlControl age_count = (HtmlControl)Page.FindControl("age_counter");
        HtmlControl vidplayer = (HtmlControl)Page.FindControl("video_stream");
        string status = age_count.Attributes["hidden"];
        if (status == "hidden")
        {
            calculator.Attributes.Add("hidden", "hidden");
            vidplayer.Attributes.Add("hidden", "hidden");
            age_count.Attributes.Remove("hidden");

        }
        else
        {
            age_count.Attributes.Add("hidden", "hidden");
        }
    }
      protected void Show_Video(object sender, EventArgs e)
    {
        HtmlControl calculator = (HtmlControl)Page.FindControl("calculator");
        HtmlControl age_count = (HtmlControl)Page.FindControl("age_counter");
        HtmlControl vidplayer = (HtmlControl)Page.FindControl("video_stream");
        string status = vidplayer.Attributes["hidden"];
        if (status == "hidden")
        {
            calculator.Attributes.Add("hidden", "hidden");
            age_count.Attributes.Add("hidden", "hidden");
            vidplayer.Attributes.Remove("hidden");

        }
        else
        {
            vidplayer.Attributes.Add("hidden", "hidden");
        }
    }

    protected void Add_num(object sender, CommandEventArgs e)
    {
        double num1 = 0.0, num2 = 0.0;
        bool numstatus1 = double.TryParse(addend1.Text, out num1);
        bool numstatus2 = double.TryParse(addend2.Text, out num2);
        if (numstatus1 && numstatus2)
        {
            double result;
            result = num1 + num2;
            result_lbl.Text = result.ToString();
        }
        else
        {
            Response.Write("<script> alert('Please enter numbers only')</script>");
        }
    }
    protected void Calculate_Age(object sender, CommandEventArgs e)
    {
        HtmlControl age_count = (HtmlControl)Page.FindControl("age_counter");
        string status = age_count.Attributes["hidden"];
        if (status == "hidden")
        {
            age_count.Attributes.Remove("hidden");
        }
        else
        {
            age_count.Attributes.Add("hidden", "hidden");
        }
        if(DateTime.TryParse(datehere.Text,out DateTime birth))
        {
            int age = 0;

            age =DateTime.Now.Year - birth.Year;

            if (DateTime.Now.DayOfYear < birth.DayOfYear)
            {
                age --;
            }
            age_out.Text = age.ToString();
        }
    }
       
}