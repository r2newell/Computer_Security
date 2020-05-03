using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Escape_Roon.View
{
    public partial class Stage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Question_2_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if(answer != "identification authentication authorization accounting")
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void Question_3_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "is has know")
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void Question_4_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "crossover error rate")
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void Question_5_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "ezottijydg iugywjdvu")
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void Question_6_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "logic bomb")
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void Question_7_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string answer = args.Value.ToLower();
            if (answer != "rabbit")
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void Question_8_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var answer = question_8.Items;
            if ((answer[0].Selected && answer[1].Selected && answer[2].Selected && answer[4].Selected) && (!answer[3].Selected))
            {
                args.IsValid = true;
                return;
            }

            args.IsValid = false;
        }

        protected void Question_9_Validator_ServerValidate(object source, ServerValidateEventArgs args)
        {

            string answer = args.Value.ToLower();
            if (answer != "public private" || answer != "private public")
            {
                args.IsValid = false;
                return;
            }

     

            args.IsValid = false;
        }
    }
}