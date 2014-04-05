using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Daisy
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateContentFields();
        }

        public void PopulateContentFields()
        {
            CreateContentBox(App_GlobalResources.ResourceStrings.HomeContentBoxAboutTitle, App_GlobalResources.ResourceStrings.HomeContentBoxAboutContent, "about");
            CreateContentBox(App_GlobalResources.ResourceStrings.HomeContentBoxWebTitle, App_GlobalResources.ResourceStrings.HomeContentBoxWebContent, "web");
            CreateContentBox(App_GlobalResources.ResourceStrings.HomeContentBoxPicsTitle, App_GlobalResources.ResourceStrings.HomeContentBoxPicsContent, "pics");
            CreateContentBox(App_GlobalResources.ResourceStrings.HomeContentBoxContactTitle, App_GlobalResources.ResourceStrings.HomeContentBoxContactContent, "contact");
        }

        public void CreateContentBox(string title, string content, string category)
        {           
            HtmlGenericControl primaryItem = new HtmlGenericControl("div");
            primaryItem.Attributes.Add("class", "contPrimaryItem");

            HtmlGenericControl contIcon = new HtmlGenericControl("div");
            contIcon.Attributes.Add("class", category + "Colour contIcon");

            HtmlGenericControl icon = new HtmlGenericControl("div");
            icon.Attributes.Add("class", category + "ContIcon");

            contIcon.Controls.Add(icon);

            HtmlGenericControl contDescription = new HtmlGenericControl("div");
            contDescription.Attributes.Add("class", "contDescription");
            contDescription.Attributes.Add("id", category + "Content");

            HtmlGenericControl contTitle = new HtmlGenericControl("h3");
            HtmlGenericControl titleLink = new HtmlGenericControl("a");

            if (category == "about")
            {
                titleLink.Attributes.Add("href", "About.aspx");
                contIcon.Attributes.Add("onclick", "~/About.aspx");
            }
            else if (category == "web")
            {
                titleLink.Attributes.Add("href", "Web.aspx");
                contIcon.Attributes.Add("onclick", "/Web.aspx");
            }
            else if (category == "pics")
            {
                titleLink.Attributes.Add("href", "Pics.aspx");
                contIcon.Attributes.Add("onclick", "/Pics.aspx");
            }
            else if (category == "contact")
            {
                titleLink.Attributes.Add("href", "Contact.aspx");
                contIcon.Attributes.Add("onclick", "/Contact.aspx");
            }
            titleLink.InnerHtml = title;
            contTitle.Controls.Add(titleLink);
            HtmlGenericControl contContent = new HtmlGenericControl("h4");
            contContent.InnerHtml = content;
            
            contDescription.Controls.Add(contTitle);
            contDescription.Controls.Add(contContent);
            
            primaryItem.Controls.Add(contIcon);
            primaryItem.Controls.Add(contDescription);            
            phdBoxContent.Controls.Add(primaryItem);

        }
    }
}
