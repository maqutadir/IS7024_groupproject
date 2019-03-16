<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FinalGroupProject.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Mickey Fans</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div id="header" class="jumbotron text-center">
        <h1>Mickey Mouse Fan Page</h1>
        <p>This page is dedicated for Mickey fans!</p>
    </div>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="/index.aspx">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/friendspage.aspx">Mickey's Friends</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/parksview.aspx">Parks</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3">
                <h2>About Mickey</h2>
                <img class="img-thumbnail img-responsive" src="https://wallpaperbrowse.com/media/images/a7642e7f254404405915f19323418e39.jpg" alt="Mickey Mouse photo" />
                <p>
                    <small>Mickey Mouse is a funny animal cartoon character and the mascot of The Walt Disney Company.
                        He was created by Walt Disney and Ub Iwerks at the Walt Disney Studios in 1928.
                    </small>
                </p>
                <div class="container">
                    <h2>Disney attractions</h2>
                    <label><strong>Select a ride: </strong></label>
                    <form id="Name" name="search" runat="server">
                        <div>
                            <asp:DropDownList ID="DropDownRide" class="btn-block dropdown" runat="server" DataSourceID="RideDataSource" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                            <asp:ObjectDataSource ID="RideDataSource" runat="server" SelectMethod="GetMyRides" TypeName="FinalGroupProject.GetRides"></asp:ObjectDataSource>
                            <div class="input-group-btn" style="margin-top: 10px">
                                <asp:Button ID="BtnGetRides" class="btn btn-info btn-block" runat="server" OnClick="BtnGetRides_Click" Text="Search" />
                            </div>
                            <br />
                            <div>
                                <asp:Label ID="NameLabel" Style="font-weight: bold;" runat="server" Text="Name:" Visible="False"></asp:Label>
                                <asp:TextBox ID="NameOutput" Style="border: hidden;" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="ShortNameLabel" Style="font-weight: bold;" runat="server" Text="Short Name:" Visible="False"></asp:Label>
                                <asp:TextBox ID="ShortNameOutput" Style="border: hidden;" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="LinkLabel" Style="font-weight: bold;" runat="server" Text="Link" Visible="False"></asp:Label>
                                <asp:TextBox ID="LinkOutput" Style="border: hidden;" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <h3>Learn More</h3>
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="https://www.disney.com/">The Official Disney Site</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://www.thewaltdisneycompany.com/">The Walt Disney Company</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://www.shopdisney.com/">Shop Disney Store</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-9">
                <h2>Happy Birthday Mickey!</h2>
                <h5>Mickey Mouse just turned 90. November 18, 2018</h5>
                <img class="pics" src="https://i.pinimg.com/originals/e2/f7/a7/e2f7a7d097b6df1375e1d9a4cb006ee7.jpg" alt="Mickey">
                <p>
                    The world is wishing a happy birthday to the one and only Mickey Mouse. The iconic cartoon character turns 90 Sunday.
                    Mickey made his debut in 1928 in the animated short 'Steamboat Willie', which premiered at the Colony Theater in New York City.
                    He's been refered to as Walt Disney's alter ego - and is said to represent the world of animation.
                </p>
                <br>
                <h2>Fun facts about Mickey Mouse</h2>
                <h5>Mickey is full of surprises. November 16, 2018</h5>
                <img class="pics" src="http://i.imgur.com/xPpci9N.jpg" alt="Mickey">
                <ol>
                    <li>Mickey became an instant hit on November 18, 1928, with the release of Steamboat Willie, the first ever cartoon with synchronized sound. At that time, most other studios were still producing silent films and shorts while Disney adopted sound and raised the standard.</li>
                    <li>Walt originally wanted to call Mickey "Mortimer Mouse", and it was changed to "Mickey Mouse" when Walt's wife Lillian said she felt that "Mortimer" sounded too pompous and suggested another name that personified the qualities of fun and humbleness.</li>
                    <li>Mickey became the first cartoon character to have a star on the Hollywood Walk of Fame on November 18, 1978, in honour of his 50th anniversary. The star is located on 6925 Hollywood Boulevard.</li>
                    <li>One of the most iconic Mickey Mouse products of all time is the Mickey Mouse wristwatch. The first one was produced by the Ingersoll-Waterbury company in 1933, and it was sold for USD2.95. The company presented Walt Disney with the 25-millionth Mickey Mouse watch in 1957. Later, it became the foundation company for the brand now known as Timex.</li>
                    <li>Mickey Mouse' feature film debut in Fantasia in 1940 as the Sorcerer's Apprentice was one of his most famous roles ever. The film introduced stereophonic sound to motion pictures through a special sound system called Fantasound and cost US$2.28 million to make.</li>
                    <li>In 1955, Mickey made his debut on television in The Mickey Mouse Club television show.</li>
                </ol>
            </div>
        </div>
    </div>
    <hr />
    <div id="footer" class="container-fluid text-center">
        Mickey Mouse is a trademark of Disney Enterprises Inc.<br />
        <img id="footericon" src="http://www.stickpng.com/assets/images/59fca8fb7468e4bdbe0b1409.png" alt="mini Mickey hand icon" />
    </div>
</body>
</html>
