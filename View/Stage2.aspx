<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stage2.aspx.cs" Inherits="Escape_Roon.View.Stage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Stage 2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Question 1-->
            <asp:Label runat="server" AccessKey="1" Text="Create a secure password"></asp:Label>
            <br />
            <asp:TextBox runat="server" TextMode="Password" ID="question_1"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="question_1" ErrorMessage="You must can come up with a password" ID="Question_1_Validate"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="Question_1_Validator_Regex" runat="server" ControlToValidate="question_1" ErrorMessage="Follow the tips below to get a strong password" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&amp;\*])(?=.{8,})"></asp:RegularExpressionValidator>
            
            <!-- Make the paragraph below only appear if the user clicks on a button requesting more information on passwords-->
            <p>
                Passwords are used as one of the main ways of gaining access to any resource. 
                It helps to keep that resource secure and it only allows access to those who know the password. 
                Essentially, password is something the user know and hackers want. To stop 
                hackers/attackers from getting your password you should follow these steps below. 
            <asp:BulletedList runat ="server" BulletStyle="Numbered" FirstBulletNumber="1">
                <asp:ListItem>
                    Make a strong password. The longer the password the better. At least choose a password above 10 characters. 
                    It should contain uppercase and lowercase letters, numerals, symbols. The chosen password shouldn't be a dictionary word because
                    if it is you'll be susceptible to dictionary attacks or rainbow table attacks. 
                    The password should have a special meaning to you but not so easy that someone can figure it out. 
                </asp:ListItem>
                <asp:ListItem>
                    Change password frequently. Probably like every couple of months. 
                </asp:ListItem>
                <asp:ListItem>
                    Don't reuse old passwords or variations of the same password. 
                </asp:ListItem>
                <asp:ListItem>
                    Look out for social engineering because this is a common method of soliciting confidential information like passwords.
                </asp:ListItem>
            </asp:BulletedList>
            </p>

            <br />
            <br />


            <!-- Question 2 -->
            <asp:Label runat="server" Text="Access control has four (4) main components what are those?"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="question_2"  AccessKey="2"></asp:TextBox>
            <asp:CustomValidator  ID="Question_2_Validator" ControlToValidate="question_2" runat="server" OnServerValidate="Question_2_Validator_ServerValidate" ErrorMessage="You got this. IAAA is the acronym!"></asp:CustomValidator>

            <br />
            <br />

            <!--Question 3-->
            <asp:Label runat="server">
                <p>Authenthication can work in three ways. What are those three ways?</p>
            </asp:Label>
            <asp:TextBox runat="server" ID="question_3" AccessKey="3"></asp:TextBox>
            <asp:CustomValidator runat="server" ControlToValidate="question_3" ID="Question_3_Validator"  OnServerValidate="Question_3_Validator_ServerValidate" ErrorMessage="IHK is the acronym"> </asp:CustomValidator>

            <!--Question 4-->
            <br /> 
            <br />
               <asp:TextBox runat="server" ID="question_4" Text="Three words"></asp:TextBox>
                <p>Hints:</p>
                <asp:BulletedList runat="server" BulletStyle="LowerRoman">
                    <asp:ListItem Text="A move used in basketball."></asp:ListItem>
                    <asp:ListItem Text="When you get something wrong you have made an ____."></asp:ListItem>
                    <asp:ListItem Text="Interest _____."></asp:ListItem>
                </asp:BulletedList>
            <asp:CustomValidator runat="server"   ControlToValidate="question_4" ID="Question_4_Validator"  OnServerValidate="Question_4_Validator_ServerValidate" ErrorMessage="Call me the riddler"></asp:CustomValidator>


            <!--Question 5-->
            <br />
            <br />
            <asp:Label runat="server">
                <p>Use the alternate table below to get the ciphertext for Asymmetric Encryption</p>
                <table border="1">
                    <tr>
                        <td>A</td>
                        <td>B</td>
                        <td>C</td>
                        <td>D</td>
                        <td>E</td>
                        <td>F</td>
                        <td>G</td>
                        <td>H</td>
                        <td>I</td>
                        <td>J</td>
                        <td>K</td>
                        <td>L</td>
                        <td>M</td>
                        <td>N</td>
                        <td>O</td>
                        <td>P</td>
                        <td>Q</td>
                        <td>R</td>
                        <td>S</td>
                        <td>T</td>
                        <td>U</td>
                        <td>V</td>
                        <td>W</td>
                        <td>X</td>
                        <td>Y</td>
                        <td>Z</td>
                    </tr>

                    <tr>
                        <td>E</td>
                        <td>F</td>
                        <td>G</td>
                        <td>H</td>
                        <td>I</td>
                        <td>A</td>
                        <td>B</td>
                        <td>C</td>
                        <td>D</td>
                        <td>Q</td>
                        <td>R</td>
                        <td>S</td>
                        <td>T</td>
                        <td>u</td>
                        <td>V</td>
                        <td>W</td>
                        <td>X</td>
                        <td>Y</td>
                        <td>Z</td>
                        <td>J</td>
                        <td>K</td>
                        <td>L</td>
                        <td>M</td>
                        <td>N</td>
                        <td>O</td>
                        <td>P</td>
                    </tr>
                </table>
            </asp:Label>


            <br /> 
            <br />
            <asp:TextBox runat="server" AccessKey="5" ID="question_5"></asp:TextBox>
            <asp:CustomValidator runat="server" ControlToValidate="question_5" ErrorMessage="Why is everything encrypted or encrusted?"  ID="Question_5_Validator" OnServerValidate="Question_5_Validator_ServerValidate"> </asp:CustomValidator>


            <!-- Question 6-->
            <br />
            <br />
            <asp:Label runat="server" Text="A Trojan horse that runs it malicious code only when a certain condition is met"> </asp:Label>
            <br />
            <br />
            <asp:TextBox runat="server" AccessKey="6" ID="question_6"></asp:TextBox>
            <asp:CustomValidator runat="server" ControlToValidate="question_6"  ID="Question_6_Validator" OnServerValidate="Question_6_Validator_ServerValidate" ErrorMessage="Virus Virus Virus"></asp:CustomValidator>
            <br />
            <br />

            <!-- Question 7-->
            <asp:Label runat="server" Text="Virus or worm that self-replicates without bounds to exhaust some resource"> </asp:Label>
            <br />
            <br />
            <asp:TextBox runat="server" AccessKey="7" ID="question_7"></asp:TextBox>
            <asp:CustomValidator runat="server" ControlToValidate="question_7"  ID="Question_7_Validator" OnServerValidate="Question_7_Validator_ServerValidate" ErrorMessage="Animal that the fibonacci sequence models"> </asp:CustomValidator>
            <br />
            <br />

            <!--Question 8-->
            <asp:Label runat="server">
                <p>
                    Phishing emails are emails sent by attackers that try to solicit confidential information. Phishing
                    emails fall under social engineering.
                </p>
                <p>Below is a list of scenarios and you are going to choose which one represents phishing emails.</p>
            </asp:Label>
            <asp:CheckBoxList runat="server" ID="question_8" AccessKey="8">
                <asp:ListItem Text="An email from NCB saying your account has been compromised. To get it back you must click on the link."></asp:ListItem>
                <asp:ListItem Text="An email saying that you won the lotto and to claim you must click on the link."></asp:ListItem>
                <asp:ListItem Text="An email requesting you to visit a site and sign up with personal information."></asp:ListItem>
                <asp:ListItem Text="An email confirmation email."></asp:ListItem>
                <asp:ListItem Text="An email that uses urgency and a high level of risk for you to act immediately without rationalizing the situation."></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <asp:CustomValidator runat="server" ErrorMessage="Phishing relies on panic from victim" ID="Question_8_Validator" OnServerValidate="Question_8_Validator_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <!-- Question 9-->
        <asp:Label runat="server" Text="What are the two keys used in asymmetric encryption? "></asp:Label>
        <br />
        <br />
        <asp:TextBox runat="server" AccessKey="9" ID="question_9"></asp:TextBox>
        <asp:CustomValidator runat="server"  ControlToValidate="question_9" ErrorMessage="Asymmetric Encryption" ID="Question_9_Validator" OnServerValidate="Question_9_Validator_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        
        <!-- Question 10 -->
        <asp:Label runat="server" Text="What's your name?"></asp:Label>
        <br />
        <br />
        <asp:TextBox runat="server" ID="question_10"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server"  ControlToValidate="question_10" ID="Question_10_Validate"></asp:RequiredFieldValidator>
    
        <br />
        <br />
        <asp:Button runat="server"    UseSubmitBehavior="true" CausesValidation="true" ID="submit_btn"  Text="Complete"  />

    </form>
</body>
</html>
