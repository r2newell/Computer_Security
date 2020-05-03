<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stage1.aspx.cs" Inherits="Escape_Roon.View.Stage1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stage 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <!-- Question 1 -->
            <asp:Label runat="server" Text="What is computer security?"></asp:Label>
            <br />
            <br />
            <asp:RadioButtonList runat="server" ID="question_1" AccessKey="1"  >
                <asp:ListItem Value="0"> Computer security is the science of managing malicious intent and behaviour involving information technology and communication.</asp:ListItem>
                <asp:ListItem Value="1"> Computer security is the act of protecting, mitigating and recovering information technology assets from attacks.</asp:ListItem>
                <asp:ListItem Value="2"> Computer security is the securing of ones information technology asset from attacks using communication and information technology.</asp:ListItem>
                <asp:ListItem Value="3"> Computer security is just the security of computer.</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="Question_1_Validator_Required" runat="server" ErrorMessage="You gotta know the definition to be called a computer security specialist" ControlToValidate="question_1" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CustomValidator runat="server" ErrorMessage="You ain't no computer security expert"  OnServerValidate="Question_1_Validator_ServerValidate" ID="Question_1_Validator"></asp:CustomValidator>
            
            <!-- Question 2 -->
            <br />
            <asp:Label runat="server">

                <p style="margin-bottom:0">Threat can be describe in five words.</p>
                <p style="margin-top:0">Hints Below</p>
                
                <asp:BulletedList runat="server" AccessKey="2"  FirstBulletNumber="1" BulletStyle="Numbered">
                    <asp:ListItem Text="Combination of any and thing"></asp:ListItem>
                    <asp:ListItem Text="Thatch doesn’t sound right. See if you can remove some letters"></asp:ListItem>
                    <asp:ListItem Text="Obama’s favourite line I can / We can"></asp:ListItem>
                    <asp:ListItem Text="Correlation doesn’t imply causation"></asp:ListItem>
                    <asp:ListItem Text="Why is it not harmy but army? The army causes harm"></asp:ListItem>
                </asp:BulletedList>
            </asp:Label>
       

            <asp:TextBox runat="server" AccessKey="2" ID ="question_2"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="question_2" ID="Question_2_Validator_Required" ErrorMessage="Hey! Nothing is better than a try!"> </asp:RequiredFieldValidator>
            <asp:CustomValidator ID="Question_2_Validator" runat="server" ControlToValidate="question_2" ErrorMessage="So so close try again" SetFocusOnError="true"   OnServerValidate="Question_2_Validator_ServerValidate"></asp:CustomValidator>
            <br />
            <br /> 
            <br />
            
   
          
            <!-- Question 3 -->
            <asp:Label runat="server" Text="Although we are not a central intelligence agency we still got the acronym. What do we stand for?"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="question_3" AccessKey="3"></asp:TextBox>
            <asp:CustomValidator runat="server"  ID="Question_3_Validator" ControlToValidate="question_3"  OnServerValidate="Question_3_Validator_ServerValidate"></asp:CustomValidator>
            <asp:RequiredFieldValidator ID="Question_3_Required_Validator" runat="server"  ControlToValidate="question_3" ErrorMessage="Come on! This is an easy one. I could do this in my sleep."></asp:RequiredFieldValidator>
            <br /> 
            <br />


            <!-- Question 4 -->
            <asp:Label runat="server">
                <p style="margin-bottom:0">Secure Wi-Fi usage is very important when using public Wi-Fi. </p>
                <p style="margin: 0">What is a main threat on public Wi-Fi?</p>
                <p style="margin-top: 0">Hint: Inadvertly listening to someone conversation</p>
            </asp:Label>
            <asp:TextBox runat="server" AccessKey="4" ID="question_4"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Question_4_Required_Validator" ControlToValidate="question_4" runat="server" ErrorMessage="Hey! Nothing is better than a try!" ></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="Question_4_Validator" runat="server" ControlToValidate="question_4" ErrorMessage="Sneaky listening is as close as it gets" OnServerValidate="Question_4_Validator_ServerValidate"></asp:CustomValidator>
            <br />
           

            <br />
            <br />
            <br />


            <!-- Question 5 -->
            <asp:Label runat="server" Text="Name one way of being secure on public wifi"></asp:Label>
            <br />
            <asp:TextBox runat="server"   AccessKey="5" AutoCompleteType="None" ID="question_5"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="question_5" ID="Question_5_Validator_Required" ErrorMessage="Hey! Nothing is better than a try!"></asp:RequiredFieldValidator>
            <asp:CustomValidator runat="server" ControlToValidate="question_5" ID="Question_5_Validator" OnServerValidate="Question_5_Validator_ServerValidate" ErrorMessage="It's a private network that many people use to be anonymous."></asp:CustomValidator>
           
            
            <!-- Question 6 -->
            <asp:Label  runat="server">
                <p style="margin-bottom:0">Describe dumpster diving in two words.</p>
                <p style="margin: 0">Hint: Reverse the phrase trash searching.</p>
            </asp:Label>
            <asp:TextBox runat="server" ID="question_6" AccessKey="6"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="question_6" runat="server" ID="Question_6_Validator_Required" ErrorMessage="Hey! Nothing is better than a try!"></asp:RequiredFieldValidator>
            <asp:CustomValidator runat="server" ControlToValidate="question_6" ID="Question_6_Validator" OnServerValidate="Question_6_Validator_ServerValidate" ErrorMessage="It's just two words. Dumpster Diving"></asp:CustomValidator>
            <br />


            <!-- Question 7 -->
            <asp:Label runat="server" >
                <p>
                    Social engineering is the tactic used by attackers to solicit confidential information in a social
                    setting. Example I may be trying to login to your account and see your password hint as your
                    favorite pet. I could try social engineering and ask you how many pets have you owned and
                    what’s their names? I would have probably gotten the password using this tactic.
                </p>
            </asp:Label>
                <p>Below is a list of scenarios. You are going to choose if appropriate scenario is social engineering by checking the check box.</p>
                <asp:CheckBoxList runat="server" ID="question_7" AccessKey="7">
                    <asp:ListItem Text="What’s your name?" Value="0"></asp:ListItem>
                    <asp:ListItem Text="We are calling to give away a prize but to collect the prize we need your social security number
                                        along with your name and address for delivery?" Value="1">
                    </asp:ListItem>
                    <asp:ListItem Text="What’s your mothers maiden name? You are asked this question by someone you just met." Value="2"></asp:ListItem>
                    <asp:ListItem Text="What’s your favorite pet?" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Hello, we are calling from XYZ company. Your password has been compromised. We have seen
                                        activity on your account since morning and we would like to verify your account. Could you
                                        tell us that password?" Value="4">
                    </asp:ListItem>
                    <asp:ListItem Text="Where’s your childhood home?" Value="5"></asp:ListItem>
                    <asp:ListItem Text="What’s your birthday? Provide us with the year as well." Value="6" ></asp:ListItem>
                </asp:CheckBoxList>
                <asp:CustomValidator runat="server" ErrorMessage="And I thought you were social" ID="Question_7_Validator"  OnServerValidate="Question_7_Validator_ServerValidate"></asp:CustomValidator>
            <br />
            <br />


            <!-- Question 8 -->
            <asp:Label Text="Use Caesar Shift with a shift of three on Computer Security" runat="server"> </asp:Label>
            <br />
            <asp:TextBox runat="server" ID="question_8" AccessKey="8"></asp:TextBox>

            <asp:RequiredFieldValidator ControlToValidate="question_8" runat="server" ID="Question_8_Validator_Required" ErrorMessage="Hey! Nothing is better than a try!" > </asp:RequiredFieldValidator>
            <asp:CustomValidator  runat="server" ControlToValidate="question_8" ID="Question_8_Validator" OnServerValidate="Question_8_Validator_ServerValidate" ErrorMessage="This one is encrypted"></asp:CustomValidator>
                <br />
            <br />
            
            
            <!-- Question 9 -->
            <asp:Label runat="server">
                <p>Use these words to describe single lost expectancy. Monetary, lossed, every time, a, threat, is, realized, value</p>
            </asp:Label>
            <asp:TextBox runat="server" ID="question_9" AccessKey="9"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" ControlToValidate="question_9" ID="Question_9_Validator_Required" ErrorMessage="Hey! Nothing is better than a try!"></asp:RequiredFieldValidator>
            <asp:CustomValidator ControlToValidate="question_9" ID="Question_9_Validator" runat="server" OnServerValidate="Question_9_Validator_ServerValidate" Error="Pretty easy one"></asp:CustomValidator>
           
            
            
            <!-- Question 10-->
            <br />
            <br />
            
            <asp:Label Text="What control strategy transfers its risk to someone else, another company, another asset?" runat="server"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="question_10"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" ControlToValidate="question_10" ID="Question_10_Validator_Required" ErrorMessage="Hey! Nothing is better than a try!"></asp:RequiredFieldValidator>
            <asp:CustomValidator runat="server" ControlToValidate="question_10" ID="Question_10_Validator" ErrorMessage="Control Strategy. Just put a word before the phrase and you got the answer" OnServerValidate="Question_10_Validator_ServerValidate"></asp:CustomValidator>
            
            <br />
            <br />           
            <asp:Button runat="server"   UseSubmitBehavior="true" CausesValidation="true" ID="submit_btn"  Text="Complete" />
        </div>
    </form>
</body>
</html>
