<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Sindbad_Cars.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS Links -->
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/customstylesheet.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="Data%20Tables/css/dataTables.dataTables.min.css" rel="stylesheet" />
    <!-- Proper order of JS Scripts -->
    <!-- jQuery full version -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Popper.js -->
    <script src="Bootstrap/js/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="Data%20Tables/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<style type="text/css">
    /* Basic styling */
    .table-responsive {
        margin: 20px 0;
    }

    .table {
        width: 100%;
        margin-bottom: 1rem;
        color: #212529;
    }

    .table th, .table td {
        padding: 0.75rem;
        vertical-align: top;
        border-top: 1px solid #dee2e6;
    }

    /* Enhanced compact table cells */
    .table-sm th, .table-sm td {
        padding: 0.3rem;
    }

    /* Improved responsive design for better viewing on smaller devices */
    @media (max-width: 768px) {
        .table-responsive {
            overflow-x: auto;
        }
    }

    /* Hover effects for rows to improve interactivity */
    .table-hover tbody tr:hover {
        background-color: #f5f5f5;
    }

    /* Header styling for better visibility */
    .table th {
        background-color: #007bff;
        color: white;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header">Clients Registered</div>
                    <div class="card-body">
                        <h5 class="card-title">204</h5>
                        <p class="card-text">New clients this month.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
                    <div class="card-header">Vehicles Sold</div>
                    <div class="card-body">
                        <h5 class="card-title">123</h5>
                        <p class="card-text">Vehicles sold this month.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                    <div class="card-header">Payments Due</div>
                    <div class="card-body">
                        <h5 class="card-title">78</h5>
                        <p class="card-text">Outstanding payments.</p>
                    </div>
                </div>
            </div>
        </div>
    <div class="container mt-5">
        <h2>Vehicle Purchase Records</h2>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Purchase_ID" HeaderText="Purchase ID" SortExpression="Purchase_ID" />
                <asp:BoundField DataField="Client_ID" HeaderText="Client ID" SortExpression="Client_ID" />
                <asp:BoundField DataField="Vehicle_ID" HeaderText="Vehicle ID" SortExpression="Vehicle_ID" />
                <asp:BoundField DataField="Payment_Type" HeaderText="Payment Type" SortExpression="Payment_Type" />
                <asp:BoundField DataField="Payment_Mode" HeaderText="Payment Mode" SortExpression="Payment_Mode" />
                <asp:BoundField DataField="No_Installments" HeaderText="No. of Installments" SortExpression="No_Installments" />
                <asp:BoundField DataField="Final_Price" HeaderText="Final Price" SortExpression="Final_Price" />
            </Columns>
        </asp:GridView>
        </div>

        <div class="container mt-5">
        <h2>Clients</h2>
        <asp:GridView ID="GridViewClients" runat="server" CssClass="table table-striped table-bordered" AutoGenerateEditButton="False" >
            <Columns>
                <asp:BoundField DataField="Client_ID" HeaderText="Client ID" SortExpression="Client_ID" ReadOnly="True" InsertVisible="False" />
                <asp:BoundField DataField="Client_Forename" HeaderText="Forename" SortExpression="Client_Forename" />
                <asp:BoundField DataField="Client_Surname" HeaderText="Surname" SortExpression="Client_Surname" />
                <asp:BoundField DataField="Client_Address_Line1" HeaderText="Address Line 1" SortExpression="Client_Address_Line1" />
                <asp:BoundField DataField="Client_Address_Line2" HeaderText="Address Line 2" SortExpression="Client_Address_Line2" />
                <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                <asp:BoundField DataField="Email_Address" HeaderText="Email Address" SortExpression="Email_Address" />
                <asp:BoundField DataField="Phone_No" HeaderText="Phone No" SortExpression="Phone_No" />
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile No" SortExpression="Mobile_No" />
                <asp:BoundField DataField="Client_Password" HeaderText="Password" SortExpression="Client_Password" />
            </Columns>
        </asp:GridView>
        </div>

        <div class="container mt-5">
            <h2>Model Details</h2>
            <asp:GridView ID="GridViewModels" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Model_ID" HeaderText="Model ID" InsertVisible="False" ReadOnly="True" SortExpression="Model_ID" />
                    <asp:BoundField DataField="Model_Title" HeaderText="Model Title" SortExpression="Model_Title" />
                    <asp:BoundField DataField="Safety_Info" HeaderText="Safety Info" SortExpression="Safety_Info" />
                    <asp:BoundField DataField="Technology_Info" HeaderText="Technology Info" SortExpression="Technology_Info" />
                    <asp:BoundField DataField="Range_ID" HeaderText="Range ID" SortExpression="Range_ID" />
                </Columns>
            </asp:GridView>
        </div>

        <div class="container mt-5">
        <h2>Vehicle Details</h2>
        <asp:GridView ID="GridViewVehicles" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Vehicle_ID" HeaderText="Vehicle ID" InsertVisible="False" ReadOnly="True" SortExpression="Vehicle_ID" />
                <asp:BoundField DataField="Registration_Number" HeaderText="Registration Number" SortExpression="Registration_Number" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Registration_Date" HeaderText="Registration Date" SortExpression="Registration_Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
                <asp:BoundField DataField="Fuel_Type" HeaderText="Fuel Type" SortExpression="Fuel_Type" />
                <asp:BoundField DataField="Fuel_Consumption" HeaderText="Fuel Consumption" SortExpression="Fuel_Consumption" />
                <asp:BoundField DataField="Engine_Capacity" HeaderText="Engine Capacity" SortExpression="Engine_Capacity" />
                <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                <asp:BoundField DataField="Model_ID" HeaderText="Model ID" SortExpression="Model_ID" />
                <asp:BoundField DataField="Range_ID" HeaderText="Range ID" SortExpression="Range_ID" />
            </Columns>
        </asp:GridView>
    </div>
<script>
    $(document).ready(function () {
        $('#purchaseRecords').DataTable({
            "ajax": {
                "url": "Admin.aspx/GetPurchaseData",
                "type": "POST",
                "datatype": "json",
                "dataSrc": function (json) {
                    return JSON.parse(json.d);
                }
            },
            "columns": [
                { "data": "Purchase_ID" },
                { "data": "Client_ID" },
                { "data": "Vehicle_ID" },
                { "data": "Payment_Type" },
                { "data": "Payment_Mode" },
                { "data": "No_Installments" },
                { "data": "Final_Price" },
            ]
        });
    });
</script>
    <script>
        $(document).ready(function () {
            // Initialize DataTables for all tables
            $('table').DataTable({
                "responsive": true,  // Ensuring tables are responsive
                "pagingType": "full_numbers", // Adds pagination
                "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]], // Dropdown for changing number of rows per page
                "language": {
                    "search": "", // Customize the search input placeholder
                    "searchPlaceholder": "Search records..."
                }
            });

            // Customize DataTable search box
            $('.dataTables_filter input[type="search"]').css({
                'width': '200px',
                'display': 'inline-block'
            });

            // Custom styling for pagination
            $('.dataTables_paginate').addClass('btn-group');
        });
    </script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['January', 'February', 'March', 'April'],
                datasets: [{
                    label: '# of Sales',
                    data: [12, 19, 3, 5],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>

</asp:Content>
