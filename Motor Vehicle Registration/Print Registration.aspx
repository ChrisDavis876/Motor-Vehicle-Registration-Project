<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Print Registration.aspx.cs" Inherits="Motor_Vehicle_Registration.Print_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left:auto; 
            margin-right:auto;

            
        }
        .auto-style2 {
            border-style: solid;
            border-width: 2px;
            padding: 1px 4px;
        }
        .auto-style3 {
            height: 35px;
            text-align: center;
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #FFDDDD;
        }
        .auto-style4 {
            text-align: center;
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #FFDDDD;
        }
        .newStyle1 {
            background-image: url('Images/bg.jpg');
        }
        .auto-style6 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #FFDDDD;
        }
        .auto-style7 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #FFDDDD;
            width: 104px;
        }
        .auto-style9 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
        }
        .auto-style10 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #FFDDDD;
            height: 77px;
        }
        .auto-style11 {
            width: 100%;
            margin-left: auto;
            margin-right: auto;
            height: 134px;
        }
        .auto-style12 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #FFDDDD;
            height: 30px;
        }
    </style>
</head>
<body style="z-index: 1; width: 1125px; height: 346px; position: absolute; top: 25px; left: 150px">
    <form id="form1" runat="server" class="auto-style9">
        <asp:HyperLink ID="backToHome" runat="server" NavigateUrl="~/Default.aspx"><span class="fa fa-home"> Back to Home</span></asp:HyperLink>
        
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Registration#:&nbsp; <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
        
        <br />
        <br />
        <div>
            <asp:FormView ID="ViewCertificate" runat="server">
                <ItemTemplate>
                     <table class="auto-style1" >
                        <tr>
                            <td class="auto-style10" colspan="5"></td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2">Form Number:</td>
                            <td class="auto-style6">Disc Number: <%#Eval("disc_num") %></td>
                            <td class="auto-style6" colspan="2">Receipt Number: <%#Eval("rcpt_num") %></td>
                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="5">MOTOR VEHICLE REGISTRATION CERTIFICATE</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style4" colspan="3">This is to certify that the vehicle described below has been registered and licensed to the expiry month indicated under in occordance with the Road Traffic Act and Regulatory Body.</td>
                            <td class="auto-style6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2">Owner`s Name: <span style="color:green"><%#Eval("owner_name") %></span></td>
                            <td class="auto-style6" colspan="3">Owner`s Address: <%#Eval("owner_address") %></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Vehicle Type: <%#Eval("veh_type") %><br />
                            </td>
                            <td class="auto-style6">Make: <%#Eval("veh_make") %></td>
                            <td class="auto-style6">Year: <%#Eval("veh_year") %></td>
                            <td class="auto-style6">Colour: <%#Eval("veh_color") %></td>
                            <td class="auto-style6">Body Type: <%#Eval("body_type") %></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Model: <%#Eval("veh_model") %></td>
                            <td class="auto-style6">Seating:</td>
                            <td class="auto-style6">Engine Number: <%#Eval("engine_num") %></td>
                            <td class="auto-style6" colspan="2">Chassis Number:<%#Eval("chassis") %></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">CC Rating:<%#Eval("veh_cc_rating") %><br /></td>
                            <td class="auto-style6">Fuel:<%#Eval("fuel_type") %><br /></td>
                            <td class="auto-style6">Unladen Weight:<%#Eval("unladen_weight") %><br /></td>
                            <td class="auto-style6">Expiry Date: <span style="color:Green"><%#Eval("exp_date") %></span><br />
                            </td>
                            <td class="auto-style6">Fee Paid:<%#Eval("fee") %><br /></td>
                        </tr>
                        <tr>
                            <td class="auto-style2" colspan="5">
                                <table class="auto-style11">
                                    <tr>
                                        <td class="auto-style12">Plate Number:<%#Eval("reg_num") %></td>
                                        <td class="auto-style12">Issue Officer Number: 901EE</td>
                                        <td class="auto-style12">Date Issued: <%#Eval("issue_date") %></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="3">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </ItemTemplate>


            </asp:FormView>
                
        </div>
        <asp:Button ID="printCert" runat="server" BackColor="#FF6600" Font-Bold="True" Font-Names="Batang" Font-Size="Medium" Height="52px" Text="Print" Width="157px" CssClass="auto-style9" />
    </form>
</body>
</html>
