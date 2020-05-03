using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Escape_Roon.View
{
    public partial class Stage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

     

        protected void Question_2_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String answer = args.Value.ToLower();
            if (answer != "anything that can cause harm")
            {
                args.IsValid = false;
                return; 
            }

            args.IsValid = true;
        }


        protected void Question_4_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "eavesdropping")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void Question_5_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "vpn")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void Question_6_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "searching trash")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

       protected void Question_7_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var answer = question_7.Items;
            if((answer[1].Selected && answer[2].Selected && answer[4].Selected && answer[6].Selected) && (!answer[0].Selected && !answer[3].Selected &&answer[5].Selected))
            {
                args.IsValid = true;
                return;
            }

            args.IsValid = false;    
        }
        
        protected void Question_8_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "frpsxwhu vhfxulwb")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void Question_9_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "monetary value lossed every time a threat is realized")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void Question_10_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "transfer control strategy")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void Question_3_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "confidentiality integrity availability")
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void Question_1_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var answer = question_1.SelectedItem;
            args.IsValid = answer.Value != "3";
           
        }
    }
}