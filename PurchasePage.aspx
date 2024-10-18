<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PurchasePage.aspx.cs" Inherits="Sindbad_Cars.PurchasePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            font-size: x-large;
        }
    </style>
    <script type="text/javascript">
        function showCardDetails() {
            var dropdown = document.getElementById('<%= DropDownList1.ClientID %>');
            var cardDetails = document.getElementById('CardDetails');
            if (dropdown.value === 'Card') {
                cardDetails.style.display = 'block';
            } else {
                cardDetails.style.display = 'none';
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        Purchase Vehicle</p>
    <p class="auto-style7">
        vehicle ID:
    </p>
    <p class="auto-style7">
        <asp:TextBox ID="TextBox1" runat="server" Width="1200px"></asp:TextBox>
    </p>
    <p class="auto-style7">
        Registration Number:</p>
    <p class="auto-style7">
        <asp:TextBox ID="TextBox2" runat="server" Width="1200px"></asp:TextBox>
    </p>
    <p class="auto-style7">
        Price:</p>
    <p class="auto-style7">
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="1200px"></asp:TextBox>
    </p>
    <p class="auto-style7">
        Payment Type:</p>
    <p class="auto-style7">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="1200px">
            <asp:ListItem>Cash</asp:ListItem>
            <asp:ListItem>Card</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="auto-style7">
        Payment Mode:</p>
    <p class="auto-style7">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="1200px">
            <asp:ListItem>Single Payment</asp:ListItem>
            <asp:ListItem>Installements</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="auto-style7">
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    <p class="auto-style7">
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </p>
</asp:Content>
