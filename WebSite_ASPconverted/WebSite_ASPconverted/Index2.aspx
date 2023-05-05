<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PORTFOLIO</title>
	<link rel="stylesheet" type="text/css" href="Index2_style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu">
			<div>
                <a href="Index.aspx" target="_self"><p>BIO</p></a>
            </div> 
            <div>
                <a href="Index2.aspx" target="_self"><p>PORTFOLIO</p></a>
            </div>
		</div>
		<h1 id="portfolio_title">CHOOSE AN APP</h1>
		<div class="icon_container" runat="server">
			<div class="icon_holder">
				<asp:ImageButton id="btn1" runat="server" CssClass="icon_img"  ImageUrl="~/iconcalcu.png" CausesValidation="false" OnCommand="Show_Calculator"/>	
			</div>
			<div class="icon_holder">
				<asp:ImageButton id="btn2" runat="server" CssClass="icon_img" ImageUrl="~/iconcalendar.png" CausesValidation="false" OnCommand="Show_AgeCalcu" />	
			</div>
			<div class="icon_holder">
				<asp:ImageButton id="btn3" runat="server" CssClass="icon_img" ImageUrl="~/iconvid.png" CausesValidation="false" OnCommand="Show_Video" />	
			</div>
		</div>
		<section id="calculator" runat="server">
		<div class="app_container">
			<div class="info">
				<h1 class="app_title">ADDITION CALCULATOR</h1>
			<p class="text-info">Addition Calculator: Add Two Numbers <br/><br/>
				Math Addition Calculator, add two numbers together to <br/>
				get a result. In simple addition calculator example, <br/>
				car loan payment and rent are added together. Car <br/>
				payment is $400 and house payment is $1,600. You will <br/>
				add 400 and 1,600 then carry over two zeroes and answer <br/>
				is 2,000.</p>
			</div>
			
			<table class="app_here">
				<tr>
					<td><h1>&nbsp;</h1></td>
					<td>
						<asp:TextBox runat="server" id="addend1" CssClass="textbox" Enabled="true" ></asp:TextBox><br />
						<asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="addend1"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter numbers only" ValidationExpression="^[0-9]\d*(\.\d+)?$"  ControlToValidate="addend1"></asp:RegularExpressionValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style1"><h1 id="sumSymbol">+</h1></td>
					<td class="auto-style1">
						<asp:TextBox runat="server" id="addend2" CssClass="textbox" Enabled="true"></asp:TextBox><br />
						<asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="addend2"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter numbers only" ValidationExpression="^[0-9]\d*(\.\d+)?$"  ControlToValidate="addend2"></asp:RegularExpressionValidator>
					</td>
				</tr>
				<tr>
					<td class="answer_line" id="sum" colspan="2">
					<asp:Label id="result_lbl" CssClass="answer_line"  runat="server" text=""></asp:Label>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="btn_line">
						<div class="button1">
							<asp:Button id="calculate_sum" CssClass="btn_design" text="SOLVE" OnCommand="Add_num" runat="server" />
						</div>
						
					</td>
				</tr>
			</table>
		</div>
	</section>
		<section id="age_counter" hidden="hidden" runat="server">
		<div class="app_container">
			<div class="info">
				<h1 class="app_title">AGE COUNTER</h1>
			<p class="text-info">Calculate the age of a person, place or thing. <br/>
				The age calculator calculates age given a date of birth in years, month and day. <br/>
				You can also use this calculator to find length of time between two dates. <br/><br/>

				The age calculator finds the age time span in years only.</p>
			</div>
			
			<table class="app_here" id="agecountapp">
				<tr>
					<th id="birthtitle">Enter your birthday: </th>
				</tr>
				<tr>
					<td colspan="2">
						<asp:TextBox id="datehere" runat="server" type="date" CssClass="textbox"></asp:TextBox>
						</td>
				</tr>
				<tr>
					<td class="answer_line" id="age_output" colspan="2">
						<asp:Label id="age_out" CssClass="answer_line"  runat="server" text=""></asp:Label>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="btn_line">
						<div class="button1">
							<asp:Button id="Age_count" CssClass="btn_design" text="GET AGE" OnCommand="Calculate_Age" CausesValidation="false" runat="server" />
						</div>
						
					</td>
				</tr>
			</table>
			
		</div>
	</section>
		<section id="video_stream" hidden="hidden" runat="server">
		<div class="app_container">
			<div class="info" id="about_video">
				<h1 class="app_title"> PONYO (2008)</h1>
			<p class="text-info" >Perfect for audiences of all ages, Ponyo centers on 
				the friendship between five-year-old Sosuke and a magical 
				goldfish named Ponyo, the young daughter of a 
				sorcerer father and a sea-goddess mother. After a 
				chance encounter, Ponyo yearns to become a human 
				so she can be with Sosuke. As to be expected with 
				Miyazaki, the film is awash in pure unbridled 
				imagination and visual wonder — but it is the tender 
				love, humor, and devotion exhibited by Ponyo 
				and Sosuke that form the emotional heart of the film.</p>
			</div>
			
			<div class="info">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/qV1Mzw9Gir8" 
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
					clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"></iframe>
			</div>
			
		</div>
	</section>
    </form>
</body>
</html>
