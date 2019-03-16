<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parksview.aspx.cs" Inherits="FinalGroupProject.parksview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mickey Fans</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <div id="header" class="jumbotron text-center">
        <h1>Disney Parks</h1>
        <p>Where you can meet Mickey Mouse in person!</p>
    </div>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand " href="/index.aspx">Home</a>
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
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h4 class="text-info"><strong>What is the weather like at Disney?</strong></h4>
                    <div class="form-group">
                        <asp:RadioButtonList ID="CityName" runat="server" RepeatLayout="Flow">
                            <asp:ListItem Value="Orlando" Selected="true"> Walt Disney World</asp:ListItem>
                            <asp:ListItem Value="Chiba">Disney Resorts Tokyo</asp:ListItem>
                            <asp:ListItem Value="Anaheim">Disneyland</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                        <asp:Button runat="server" class="btn btn-info" Text="Show Weather" OnClick="Button" />
                    <br />
                    <br />
                        <asp:Label ID="Weather_ser" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <div class="container-fluid text-center bg-grey parks">
        <div class="row text-center">
            <div class="col-sm-4">
                <div class="img-thumbnail img-responsive">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Walt_Disney_World_Logo_2018.svg/330px-Walt_Disney_World_Logo_2018.svg.png" class="parks" alt="Walt Disney World Logo" />
                    <a href="https://disneyworld.disney.go.com/">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Magic_Kingdom_-_Cinderella_Castle_panorama_-_by_mrkathika.jpg/330px-Magic_Kingdom_-_Cinderella_Castle_panorama_-_by_mrkathika.jpg" class="disneyparks" alt="Walt Disney World" /></a>
                    <p><strong>WALT DISNEY WORLD</strong></p>
                    <p>Founded on October 1, 1971
                        <br />
                        Located in Lake Buena Vista, Florida USA</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="img-thumbnail img-responsive">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/2/22/Tokyo_Disney_Resort_picture_logo.svg/330px-Tokyo_Disney_Resort_picture_logo.svg.png" class="parks" alt="Tokyo Disney Logo" />
                    <a href="https://www.tokyodisneyresort.jp/top.html">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/A8_Tokyo_Disneyland.jpg/330px-A8_Tokyo_Disneyland.jpg" class="disneyparks" alt="Tokyo Disney" /></a>
                    <p><strong>DISNEY RESORTS TOKYO</strong></p>
                    <p>Founded on April 15, 1983
                        <br />
                        Located in Urayasu, Chiba Japan</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="img-thumbnail img-responsive">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Disneyland_Resort_logo.svg/330px-Disneyland_Resort_logo.svg.png" class="parks" alt="Disneyland Logo" />
                    <a href="https://disneyland.disney.go.com/">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Sleeping_Beauty_Castle_DLR.jpg/330px-Sleeping_Beauty_Castle_DLR.jpg" class="disneyparks" alt="Disneyland" /></a>
                    <p><strong>DISNEYLAND</strong></p>
                    <p>Founded on July 17, 1955
                        <br />
                        Located in Anaheim, California, USA</p>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div id="footer" class="container-fluid text-center">
        Mickey Mouse is a trademark of Disney Enterprises Inc.<br />
        <img id="footericon" src="http://www.stickpng.com/assets/images/59fca8fb7468e4bdbe0b1409.png" alt="mini Mickey hand icon"/>
    </div>
</body>
</html>
