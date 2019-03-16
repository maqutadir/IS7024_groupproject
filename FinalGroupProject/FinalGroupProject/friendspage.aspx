<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="friendspage.aspx.cs" Inherits="FinalGroupProject.friendspage" %>

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
        <h1>Mickey's Friends</h1>
        <p>Let's meet Mickey's friends</p>
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
    <div class="container">
        <h2>Meet Mickey's Friends</h2>
        <form id="viewform" name="search" method="get" runat="server">
            <div class="form-group form-inline">
                <label for="Name"><strong>Select a friend to view JSON feed: </strong></label>
                <select class="form-control" name="Name" style="margin-left: 8px;">
                    <option>Mickey Mouse</option>
                    <option>Minnie Mouse</option>
                    <option>Goofy</option>
                    <option>Pluto</option>
                    <option>Daisy Duck</option>
                    <option>Donald Duck</option>
                </select>
                <div class="input-group-btn">
                    <asp:Button ID="viewDetails" runat="server" OnClick="viewDetails_Click" Text="View" class="btn btn-basic" Style="margin-left: 8px;" />
                </div>
            </div>
            <div>
                <asp:TextBox ID="jsonOutput" runat="server" TextMode="MultiLine" Visible="False" Width="70%"></asp:TextBox>
            </div>
        </form>
    </div>
    <br />
    <div class="container text-center">
        <div class="row">
            <div class="col-sm-4">
                <p><strong>Mickey Mouse</strong></p>
                <a href="https://mickey.disney.com/mickey">
                    <img src="https://lumiere-a.akamaihd.net/v1/images/ct_mickeymouseandfriends_mickey_ddt-16970_4e99445d.jpeg?region=0%2C0%2C600%2C600" class="friend" alt="Mickey Mouse"/></a>
            </div>
            <div class="col-sm-4">
                <p><strong>Minnie Mouse</strong></p>
                <a href="https://mickey.disney.com/minnie">
                    <img src="https://lumiere-a.akamaihd.net/v1/images/ct_mickeymouseandfriends_minnie_ddt-16970_3_4a2aa999.jpeg?region=0%2C0%2C600%2C600" class="friend" alt="Minnie Mouse"/></a>
            </div>
            <div class="col-sm-4">
                <p><strong>Goofy</strong></p>
                <a href="https://mickey.disney.com/goofy">
                    <img src="https://lumiere-a.akamaihd.net/v1/images/ct_mickeymouseandfriends_goofy_ddt-16970_5d1d64dc.jpeg?region=0%2C0%2C600%2C600" class="friend" alt="Goofy"/></a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <p><strong>Pluto</strong></p>
                <a href="https://mickey.disney.com/pluto">
                    <img src="https://lumiere-a.akamaihd.net/v1/images/ct_mickeymouseandfriends_pluto_ddt-16970_0bf0c3f0.jpeg?region=0%2C0%2C600%2C600" class="friend" alt="Pluto"/></a>
            </div>
            <div class="col-sm-4">
                <p><strong>Donald Duck</strong></p>
                <a href="https://mickey.disney.com/donald">
                    <img src="https://lumiere-a.akamaihd.net/v1/images/ct_mickeymouseandfriends_donald_ddt-16970_d906a15e.jpeg?region=0%2C0%2C600%2C600" class="friend" alt="Donald Duck"/></a>
            </div>
            <div class="col-sm-4">
                <p><strong>Daisy Duck</strong></p>
                <a href="https://mickey.disney.com/daisy">
                    <img src="https://lumiere-a.akamaihd.net/v1/images/ct_mickeymouseandfriends_daisy_ddt-16970_be9d2e77.jpeg?region=0%2C0%2C600%2C600" class="friend" alt="Daisy Duck"/></a>
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
