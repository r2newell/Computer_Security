using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Escape_Roon.View
{
    public partial class Stage3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Question_1_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if(answer != "biba bela-pidula")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }
    }
}