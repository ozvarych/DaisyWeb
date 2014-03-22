<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Daisy.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/Home.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Home.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="phdHeaderCoverPhoto" runat="server" ContentPlaceHolderID="phdHeaderCoverPhoto">
    <div class="coverPhoto">
        <div class="nameHeader">
            <h1>Oksana Zvarych</h1>
            <div class="descriptionHeader">
            <h6>Software & Web Developer</h6>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="contPrimary">
        <div class="contPrimaryTitle"><h2>Find Out More</h2></div>

            <div class="contPrimaryItem">
                <div class="contIcon aboutColour">
                    <div class="contIconAbout"> </div>
                </div>
                <div class="contDescription" id="aboutContent">
                    <h3>About Me</h3>
                    <h4> 
                        Stuff about me Stuff about me Stuff about me Stuff about me Stuff about me 
                        Stuff about me Stuff about me Stuff about me Stuff about me Stuff about me
                    </h4>
                </div>
            </div>
            <div class="contPrimaryItem">
                <div class="contIcon webColour">
                    <div class="contIconWeb"> </div>
                </div>
                <div class="contDescription" id="Div1">
                    <h3>Web Dev</h3>
                    <h4> 
                        Add a resume clickable link Resume Knowladge Resume Knowladge Resume Knowladge Resume
                        Knowladge Resume Knowladge Resume Knowladge Resume Knowladge Resume Knowladge Resume
                    </h4>
                </div>
            </div>
            <div class="contPrimaryItem">
                <div class="contIcon picsColour">
                    <div class="contIconPics"> </div>
                </div>
                <div class="contDescription" id="Div2">
                    <h3>Crafts</h3>
                    <h4> 
                        Crafts Pictures Crafts Pictures Crafts Pictures Crafts Pictures Crafts Pictures 
                        Crafts Pictures Crafts Pictures Crafts Pictures Crafts Pictures Crafts Pictures 
                    </h4>
                </div>
            </div>
            <div class="contPrimaryItem">
                <div class="contIcon contactColour">
                    <div class="contIconContact"> </div>
                </div>
                <div class="contDescription" id="Div3">
                    <h3>Contact</h3>
                    <h4> 
                        Contact Contact Contact Contact Contact Contact Contact Contact Contact
                        Contact Contact Contact Contact Contact Contact Contact Contact Contact
                        Contact Contact Contact Contact Contact Contact Contact Contact Contact
                    </h4>
                </div>
            </div>
    </div>
    
    <div class="contSecondary">
        secondary
    </div>
    
    
</asp:Content>
