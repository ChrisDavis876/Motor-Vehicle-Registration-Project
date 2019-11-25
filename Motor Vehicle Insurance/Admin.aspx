<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Motor_Vehicle_Insurance.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
            position: relative;
            left: 0px;
            top: 0px;
            height: 261px;
        }
        .auto-style4 {
            height: 30px;
            text-align: center;
            border-style: ridge;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #F0FFFF;
        }
        .auto-style5 {
            text-align: center;
            border-style: ridge;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #F0FFFF;
        }
        .auto-style6 {
            width: 778px;
        }
        .auto-style7 {
            text-align: center;
            border-style: ridge;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #F0FFFF;
            height: 61px;
        }
        .auto-style8 {
            text-align: center;
            border-style: ridge;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #F0FFFF;
            height: 84px;
        }
        .auto-style9 {
            height: 50px;
            text-align: center;
            border-style: ridge;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #F0FFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">TRN</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbTRN" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Plate#</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbReg" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Expiry Date</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbExp" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="btnUpdate" runat="server" BackColor="#FF9966" Text="Update" OnClick="btnUpdate_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
