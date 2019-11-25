<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Renew.aspx.cs" Inherits="Motor_Vehicle_Registration.Renew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 54%; height: 174px">
    <tr>
        <td class="modal-sm" style="width: 257px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="2" style="height: 67px">Customer Motor Registration Renewal</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 257px">Vehicle Plate Number:</td>
        <td>
            <asp:Label ID="lblMsg1" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 257px">
            <asp:TextBox ID="tbPlateNum" runat="server" Height="39px" Width="174px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="lblMsg2" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 257px">
            <asp:Button ID="btnRenew" runat="server" Height="36px" OnClick="btnRenew_Click" Text="Renew" Width="93px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
