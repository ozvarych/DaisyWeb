<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Daisy.Home" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/Home.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Home.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="phdHeaderCoverPhoto" runat="server" ContentPlaceHolderID="phdHeaderCoverPhoto">
    <div class="coverPhoto">
        <div class="nameHeader">
            <h1><asp:literal runat="server" Text="<%$ Resources: ResourceStrings, HomeHeaderNameTitle %>"/></h1>
            <div class="descriptionHeader">
                <h6><asp:literal runat="server" Text="<%$ Resources: ResourceStrings, HomeHeaderDescriptionTitle %>"/></h6>
            </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div class="contPrimary">
        <div class="contPrimaryTitle">
            <h2><asp:literal runat="server" Text="<%$ Resources: ResourceStrings, HomePrimaryContentHeader %>"/></h2>
        </div>
            
            <asp:PlaceHolder runat="server" ID="phdBoxContent"></asp:PlaceHolder>

    </div>
    
</asp:Content>
