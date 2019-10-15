<script runat="server">

    Private Price As Integer
    Private Tax As Double = 0.055
    Private TaxOutput As Double
    Private Qty As Integer
    Private Subtotal As Double
    Private GrandTotal As Double
    Private ProductID As Integer

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        ProductID = Convert.ToInt32(TextBox1.Text)
        Price = Convert.ToInt32(TextBox2.Text)
        Qty = Convert.ToInt32(TextBox3.Text)

        Subtotal = Price * Qty
        TextBox4.Text = FormatCurrency(Subtotal)

        TaxOutput = Subtotal * Tax
        TextBox5.Text = FormatCurrency(TaxOutput)

        GrandTotal = Subtotal + TaxOutput
        TextBox6.Text = FormatCurrency(GrandTotal)
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""

        Price = 0
        Qty = 0
        Subtotal = 0
        GrandTotal = 0
        TaxOutput = 0




    End Sub

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CS3870 - FALL 2019 - PROGRAM 2</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    
        <!--
    <style type="text/css">
        #Button1
        {
            z-index: 1;
            left: 550px;
            top: 100px;
            position: relative;
            width: 66px;
        }
    </style>
            -->

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 334px;
            text-align: center;
        }
        .auto-style3 {
            width: 335px;
            text-align: center;
        }
        .auto-style4 {
            width: 334px;
            text-align: center;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            width: 335px;
            height: 23px;
            text-align: center;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">

    <h1 class="CS3870Title">Web Protocols, Technologies and Applications</h1>
    <h2 class="CS3870Name">Derek Schultz</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label 
                        ID="Label4" 
                        runat="server" 
                        style="text-align: center">Product ID</asp:Label>
                    <br />
                    <asp:TextBox 
                        ID="TextBox1" 
                        runat="server"
                        
                        ></asp:TextBox>
                        
                    <br />
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator4" 
                        runat="server" 
                        ErrorMessage="ID cannot be empty!" 
                        ControlToValidate="TextBox1">
                    </asp:RequiredFieldValidator>
                </td>
                <td style="text-align: center">
                    <asp:Label 
                        ID="Label2" 
                        runat="server" 
                        style="text-align: center" 
                        Text="Price">

                    </asp:Label>
                    <br />
                    <asp:TextBox 
                        ID="TextBox2" 
                        runat="server"
                        style="text-align: right">
                    </asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator5" 
                        runat="server"
                        ErrorMessage="Price cannot be empty!" 
                        ControlToValidate="TextBox2">

                    </asp:RequiredFieldValidator>
                </td>
                <td style="text-align: center" class="auto-style3">
                    <asp:Label 
                        ID="Label3" 
                        runat="server" 
                        style="text-align: center" 
                        Text="Quantity">

                    </asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox3" 
                        runat="server"
                        style="text-align: right"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Quantity cannot be empty!" 
                        ControlToValidate="TextBox3">

                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator 
                        ID="CompareValidator3" 
                        runat="server" 
                        ErrorMessage="Value cannot be negative!" 
                        ControlToValidate="TextBox3"
                        Operator="GreaterThan"
                        Type="Integer"
                        ValueToCompare="0"
                        >
                       
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Sub Total"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" style="text-align: right"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Tax"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" style="text-align: right"></asp:TextBox>
                    </td>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Grand Total"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" style="text-align: right"></asp:TextBox>
                    </td>
            </tr>
        </table>


     <ul class="navbar">
        <li> <a href="Default.aspx">Start Page </a></li>

        <li> <a href="OrderingProduct.aspx">Order Form </a></li>
    </ul>


    <p style="text-align:center">
        <asp:Button ID="Button2" runat="server" Text="Compute" Width="76px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Reset" Width="76px" OnClick="Button3_Click" CausesValidation="False" />
        </p>


        <br />
    <p>
        &nbsp;</p>
              </form>
              </body>
</html>
