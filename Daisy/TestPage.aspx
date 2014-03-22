<%@ Page Title="Test Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="TestPage.aspx.cs" Inherits="Daisy.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <%--<link href="~/Styles/TestPage.css" rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript">
        WebFontConfig = {
            google: { families: ['Open+Sans:400,300,700:latin'] }
        };
        (function () {
            var wf = document.createElement('script');
            wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
       '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
            wf.type = 'text/javascript';
            wf.async = 'true';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(wf, s);
        })(); </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h1>
        Oksana zvarych
    </h1>
    <h2>
        Find Out More About
    </h2>
    <h3>
        About Me , Contact Me, About The Web
    </h3>
    <h4>
        This page takes a closer look at myself and things I am able to do with web design
    </h4>
    <h5>
        Highlight5
    </h5>
    <h6>
        Highlight6
    </h6>
    <h7>
        Highlight7
    </h7>


    <p>
        Put content here.
    </p>

</asp:Content>
