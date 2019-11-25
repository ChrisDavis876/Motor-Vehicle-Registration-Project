<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Motor_Vehicle_Fitness.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 44%;
            height: 239px;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
            height: 27px;
        }
        .auto-style4 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">TRN</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbTrn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Plate Number</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbReg" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Expiry Date</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbExpDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="ShowData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="494px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    <table class="auto-style4">
                        <tr>
                           <td><%# Eval("fitness_num") %></td>
                    <td><%# Eval("trn") %></td>
                    <td><%# Eval("reg_num") %></td>
                    <td><%# Eval("exp_date") %></td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
