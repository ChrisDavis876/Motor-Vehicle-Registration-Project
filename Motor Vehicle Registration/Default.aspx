<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Motor_Vehicle_Registration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
     <br />
     <br />

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="Images/s1.jpg" alt="Chania">
                <div class="carousel-caption">
                    <h3 style="color:darkorange">Drive with confidence</h3>
                    <p style="color:dodgerblue">Renew on the go!</p>
                </div>
            </div>

            <div class="item">
                <img src="Images/s2.jpg" alt="Chicago">
                <div class="carousel-caption">
                    <h3 style="color:darkorange">Anytime, Anywhere</h3>
                    <p style="color:black">Never miss another renewal date!</p>
                </div>
            </div>

            <div class="item">
                <img src="Images/s3.jpg" alt="New York">
                <div class="carousel-caption">
                    <h3 style="color:darkorange">No Long Lines</h3>
                    <p style="color:dodgerblue">More convenience renewing your vehicle registration!</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</asp:Content>
