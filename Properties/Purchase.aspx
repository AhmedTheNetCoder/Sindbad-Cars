<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="Sindbad_Cars.Purchase" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS Links -->
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/customstylesheet.css" rel="stylesheet" />
    <!-- Proper order of JS Scripts -->
    <!-- jQuery full version -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Popper.js -->
    <script src="Bootstrap/js/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="Bootstrap/js/bootstrap.min.js"></script>
     <style type="text/css">
        body {
            padding-top: 20px;
            background-color: #f8f9fa; /* A light grey background */
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1); /* Adding a subtle shadow to your form container */
        }
        .form-control {
            border-radius: 0.25rem; /* Ensuring form controls are nicely rounded */
        }
        .form-group label {
            font-weight: bold; /* Making labels bold */
        }
        .btn-primary, .btn-success, .btn-secondary {
            margin-top: 10px; /* Adding some top margin to buttons for better spacing */
        }
        .btn {
            box-shadow: 0 2px 5px rgba(0,0,0,0.2); /* Adding a slight shadow to buttons for better UI */
        }
        #CardDetailsPanel, #InstallmentDetails {
            margin-top: 15px; /* Adding top margin to card details and installment panels */
        }
        .alert {
            margin-top: 20px; /* Space above alerts for clarity */
        }
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
        <script type="text/javascript">
            function showInstallmentDetails() {
                var dropdown = document.getElementById('<%= DropDownList2.ClientID %>');
                var detailsDiv = document.getElementById('InstallmentDetailsJS');
                detailsDiv.style.display = dropdown.value === 'Installments' ? 'block' : 'none';
            }
        </script>
      <script>
            function calculateInstallments() {
                const price = parseFloat(document.getElementById('price').value);
                const numberOfMonths = parseInt(document.getElementById('numberOfMonths').value);
                const monthlyPaymentInput = document.getElementById('monthlyPayment');
                const totalPriceInput = document.getElementById('totalPrice');

                let interestRate;
                let monthInstallment;
                let totalPrice;

                if (numberOfMonths > 0 && numberOfMonths <= 12) {
                    interestRate = 0.025; // 2.5% interest rate for the first 12 months
                    totalPrice = price + (price * interestRate);
                    monthInstallment = totalPrice / numberOfMonths;
                } else if (numberOfMonths > 12 && numberOfMonths <= 24) {
                    interestRate = 0.039; // 3.9% interest rate for months beyond 12 up to 24
                    totalPrice = price + (price * interestRate);
                    monthInstallment = totalPrice / numberOfMonths;
                } else {
                    // Display an error message if the number of months is out of the allowed range
                    totalPriceInput.value = "Maximum number of months for paying EMI is 24.";
                    monthlyPaymentInput.value = "";
                    return;
                }

                // Display the calculated monthly payment and total price
                monthlyPaymentInput.value = monthInstallment.toFixed(2);
                totalPriceInput.value = totalPrice.toFixed(2);
            }
        </script>
    <script>
        function validateCardDetails() {
            var cardNumber = document.getElementById('<%= txtCardNumber.ClientID %>').value;
            var cvv = document.getElementById('<%= txtCVV.ClientID %>').value;
            var cardNumberRegex = /^[0-9]{16}$/; // Assuming a 16-digit card number
            var cvvRegex = /^[0-9]{3,4}$/; // CVV could be 3 or 4 digits depending on the card

            if (!cardNumberRegex.test(cardNumber)) {
                alert('Please enter a valid 16-digit card number.');
                return false;
            }

            if (!cvvRegex.test(cvv)) {
                alert('Please enter a valid CVV (3 or 4 digits).');
                return false;
            }

            return true;
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="mt-4 mb-4">Purchase Vehicle</h1>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Vehicle ID:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Registration Number:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Price:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Payment Type:</label>
            <div class="col-sm-10">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                    <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <asp:Panel ID="CardDetailsPanel" runat="server" CssClass="form-group row" Visible="false">
            <div class="col-sm-10 offset-sm-2">
                Card Number<br />
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" Placeholder="Card Number" MaxLength="16" TextMode="Number"></asp:TextBox>
                <!-- Label for displaying card number errors -->
                <asp:Label ID="lblCardNumberError" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                <br />
                CVV<br />
                <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" Placeholder="CVV" MaxLength="3" TextMode="Number"></asp:TextBox>
                <!-- Label for displaying CVV errors -->
                <asp:Label ID="lblCVVError" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                <br />
            </div>
        </asp:Panel>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Payment Mode:</label>
            <div class="col-sm-10">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem>Single Payment</asp:ListItem>
                    <asp:ListItem>Installments</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <asp:Panel ID="InstallmentDetails" runat="server" CssClass="form-group row" Visible="false">
            <div class="col-sm-10 offset-sm-2">
                Number of Months<br />
                <asp:TextBox ID="txtNumberOfMonths" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Number of Months"></asp:TextBox>
                <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
                <br />
                Total Price<br />
                <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Total Price" ReadOnly="True"></asp:TextBox>
                <br />
                Monthly Payment:<br />
                <asp:TextBox ID="txtMonthlyPayment" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Monthly Payment" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Button ID="Calculate" runat="server" CssClass="btn btn-primary" Text="Calculate" OnClick="Calculate_Click" />
            </div>
        </asp:Panel>

        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <asp:Button ID="ButtonBuy" runat="server" CssClass="btn btn-success" Text="Buy" OnClick="ButtonBuy_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-secondary" Text="Cancel" />
            </div>
        </div>
    </div>
</asp:Content>