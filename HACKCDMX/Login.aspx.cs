using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace HACKCDMX
{
    public partial class Login1 : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {

            Response.Redirect("Habilidades.aspx");
        }
    }
}