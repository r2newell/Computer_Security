<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stage3.aspx.cs" Inherits="Escape_Roon.View.Stage3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stage 3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Question 1-->
            <asp:Label runat="server">
                <p>Data classification tags data according to its type, sensitivity and value to the organization if altered, stolen or destroyed.</p>
                <p>Enter two security models that have classification level etc.</p>
            </asp:Label>
            <br />
            <asp:TextBox runat="server" ID="question_1" AccessKey="1"></asp:TextBox>
            <asp:CustomValidator runat="server" ID="Question_1_Validator" ControlToValidate="question_1" OnServerValidate="Question_1_Validator_ServerValidate"></asp:CustomValidator>
            <br />
            <br />

            <!--Question 2-->
            <asp:Label runat="server" Text="Describe Data Sharing"></asp:Label>
            <br />
            <asp:TextBox TextMode="MultiLine" runat="server" ID="question_2" AccessKey="2"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="question_2" ID="Question_2_Validator"></asp:RegularExpressionValidator>
            <br />
            
            <!-- Question 3 -->
            <asp:Label runat="server" Text="Give the name of common attack on a database."></asp:Label>
            <br />
            <asp:TextBox runat="server" AccessKey="3" ID="question_3"></asp:TextBox>
            <br />

            <!-- Question 4-->
            <asp:Label runat="server" Text="How do we stop the above attack. Two words!!"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="question_4"></asp:TextBox>

            <br />
            <!-- Question 5-->
            <asp:Label runat="server" Text="Ideal hash functions have four main properties. Select those functions below"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
