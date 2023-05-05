<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Introduction</title>
    <link rel="stylesheet" type="text/css" href="index_style.css" />
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
        <div class="infocontainer">
          <table>
            <tr>
                <th>
                    <div class="info">
                        <h1 id="name">Jelly Anne Kaye Mallari</h1>
                        <p>I'm currently on my 2nd year Computer Science student who:
                            <asp:BulletedList id="list" runat="server" BulletStyle="Circle">
                                <asp:ListItem>enjoys creating simple applications</asp:ListItem>
                                <asp:ListItem>is currently taking Web Development and Android Application Development</asp:ListItem>
                                <asp:ListItem>loves designing stuffs</asp:ListItem>
                                <asp:ListItem>studied languages -- Python, C#, C++ and quite literate at C language</asp:ListItem>
                            </asp:BulletedList> 
                        </p>
                    </div>
                    <div id="icon_container">
                        <a href="https://www.instagram.com/yemingie"><img src="instagram.png" alt="ig acc" class="icons"/></a>
                        <a href="https://www.facebook.com/googooos/"><img src="facebook.png" alt="fb acc" class="icons"/></a>
                        <a href="https://github.com/jelliness"><img src="github.png" alt="git acc" class="icons"/></a>
    
                    </div>
                </th>
                <th>
                    <img src="profilepic.jpeg" alt="profile picture" class="profile"/>
                </th>
            </tr>
          </table>
        </div>
        <div id="button1">
            <asp:Button id="section_btn" runat="server" Text="KNOW MORE ABOUT ME" OnClick="Show_More" CausesValidation="false"/>
    </div>
    
    <section id="more_info" hidden="hidden" runat="server">
        <div class="section_1" >
            <h1>Why Computer Science?</h1>
            <br/> 
            <p class="paragraph">Some might think that I took this course because I'm a brainy person when
                it comes at technology or I am good at logic and math, but I actually chose to take
                this program because programming is the only field that I haven't explored much yet. 
                I also quite enjoyed creating simple html websites during junior high school and I 
                also quite remember myself creating a game using a paper. I am quite an artsy type of
                person so, I'm thinking about focusing my career on web development. Watching the 
                kdrama, Start-Up, and playing with ready-made web games are just some stuffs that I 
                enjoyed to do and the reason why I ended up taking Computer Science.
                <br/><br/>
                Listed below are the games from developers that I have studied and tried to customize 
                it (with developer's permission) according to my interests:
                <asp:BulletedList id="list2" runat="server" BulletStyle="Disc" CssClass="paragraph">
                    <asp:ListItem Value="https://drippin-alex.vercel.app"> Watermelon Game (best played in mobile)</asp:ListItem>
                    <asp:ListItem Value="https://drippin-heardle.glitch.me/">Heardle Game (Wordle Spin-Off)</asp:ListItem>

                </asp:BulletedList>
				<br/><br/>
				SHAMELESS PLUG! 
				here's a video of my favorite programmer: 
				<br/><br/>
				<iframe  
				src="https://www.youtube.com/embed/uGrBHohIgQY" 
				title="YouTube video player" frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"/>
            </p>
        </div>
    </section>
    </form>
</body>
</html>
