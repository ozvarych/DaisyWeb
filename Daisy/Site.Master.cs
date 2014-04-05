using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Daisy
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        const string GitHubUrl = "https://github.com/ozvarych";
        const string LinkedInUrl = "http://www.linkedin.com/in/ozvarych";
        const string ResumeUrl = "ResumeTest.pdf";
        const string SendEmailUrl = "mailto:zvarycho@gmail.com";

        protected void Page_Load(object sender, EventArgs e)
        {
            AddContactContent();
        }

        public void AddContactContent()
        {
            HtmlGenericControl contactDiv = new HtmlGenericControl("div");
            contactDiv.Attributes.Add("class", "contSecondary");

            HtmlGenericControl contactContentDiv = new HtmlGenericControl("div");
            contactContentDiv.Attributes.Add("class", "contSecondaryContent");

            HtmlGenericControl gitHubConnect = AddContactEntry(App_GlobalResources.ResourceStrings.ContactDivGithub, "gitHub");
            HtmlGenericControl linkedInConnect = AddContactEntry(App_GlobalResources.ResourceStrings.ContactDivLinkedIn, "linkedIn");
            HtmlGenericControl sendEmailConnect = AddContactEntry(App_GlobalResources.ResourceStrings.ContactDivSendEmail, "sendEmail");
            HtmlGenericControl resumeConnect = AddContactEntry(App_GlobalResources.ResourceStrings.ContactDivResume, "resume");

            contactContentDiv.Controls.Add(gitHubConnect);
            contactContentDiv.Controls.Add(linkedInConnect);
            contactContentDiv.Controls.Add(sendEmailConnect);
            contactContentDiv.Controls.Add(resumeConnect);

            contactDiv.Controls.Add(contactContentDiv);
            phdConnectContent.Controls.Add(contactDiv);
        }

        public HtmlGenericControl AddContactEntry(string label, string category)
        {
            HtmlGenericControl iconDiv = new HtmlGenericControl("div");
            iconDiv.Attributes.Add("class", category + "Icon connectIconLogo");

            HtmlGenericControl iconOnClick = new HtmlGenericControl("a");

            string redirectUrl = string.Empty;
            if(category == "gitHub")
            {
                redirectUrl = GitHubUrl;
            }
            else if (category == "linkedIn")
            {
                redirectUrl = LinkedInUrl;
            }
            else if (category == "resume")
            {
                redirectUrl = ResumeUrl;
            }
            else if (category == "sendEmail")
            {
                redirectUrl = SendEmailUrl;
            }

            iconOnClick.Attributes.Add("href", redirectUrl);

            iconOnClick.Controls.Add(iconDiv);
            return (iconOnClick);
        }

    }
}
