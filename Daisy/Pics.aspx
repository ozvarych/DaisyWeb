<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Pics.aspx.cs" Inherits="Daisy.Pics" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/Pics.css" rel="stylesheet" type="text/css" />
   

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
     <div class="contPrimary">
        <div class="contPrimaryTitle">
            <h2><asp:literal runat="server" Text="<%$ Resources: ResourceStrings, AboutTitle %>"/></h2>
        </div>

        <div class="myPhotograph"></div>
        <p><asp:literal ID="Literal1" runat="server" Text="<%$ Resources: ResourceStrings, AboutContentHeader %>"/></p>

    </div>
</asp:Content>
