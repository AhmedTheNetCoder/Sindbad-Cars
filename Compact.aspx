<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Compact.aspx.cs" Inherits="Sindbad_Cars.Compact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Include necessary meta tags, CSS, and scripts -->
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Data%20Tables/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <link href="fontawesome/fontawesome/fontawesome-free-6.5.1-web/css/all.css" rel="stylesheet" />
    <link href="css/customstylesheet.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
/* General Page Styling */
.breadcrumb {
    background: transparent;
    padding: 0.5rem 1rem;
    margin-bottom: 40px;
    border-radius: 0.25rem;
}

.page-header {
    color: #333;
    margin-top: 20px;
}

.lead {
    font-size: 1.2rem;
    margin-bottom: 30px;
    text-align: center;
}

/* Styling for Vehicle Cards */
.vehicle-card {
    position: relative;
    margin-bottom: 30px;
    border: 1px solid #ddd;
    overflow: hidden;
    border-radius: 0.5rem;
    background-color: #FFFFFF;
        }

.image-overlay-container {
    position: relative;
}

.image-overlay-container img {
    width: 100%;
    transition: transform 0.5s ease;
}

.image-overlay-container:hover img {
    transform: scale(1.1); /* Slightly enlarges the image on hover */
}

.overlay-info {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: rgba(0, 0, 0, 0.7); /* Dark overlay for readability */
    color: white;
    padding: 20px;
    transform: translateY(100%);
    transition: transform 0.5s ease;
}

.image-overlay-container:hover .overlay-info {
    transform: translateY(0); /* Slides up the overlay on hover */
}

/* Button Styling */
.btn-primary {
    background-color: #0056b3;
    border: none;
    padding: 5px 20px;
    margin-top: 10px;
}

.btn-primary:hover {
    background-color: #004080;
}

/* Tertiary Navigation Links */
.vehicle-card ul {
    list-style-type: none;
    padding-left: 0;
}

.vehicle-card ul li a {
    color: #fff; 
    text-decoration: none;
    padding: 5px 0;
    display: block;
}

.vehicle-card ul li a:hover {
    text-decoration: underline;
}

/* Responsive Design */
@media (max-width: 768px) {
    .page-header, .lead {
        text-align: center;
    }
col-md-6{
    background: #ffffff;
}
.row{
    background: white;
    color: white;
}
.img-fluid{
     background: white;
}
.container{
    background: white;
}

}

    </style>
    <!-- Breadcrumb Trail -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="Ranges.aspx">Ranges</a></li>
            <li class="breadcrumb-item active" aria-current="page">Compact</li>
        </ol>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <h1 class="page-header text-center">Compact Vehicles</h1>
        <p class="lead text-center"> Explore our range of Compact Cars - perfect for city driving with excellent fuel efficiency and stylish designs.</p>

        <!-- Vehicles Display -->
    <div class="row">
        <!-- Toyota Yaris -->
        <div class="col-md-6">
            <div class="vehicle-card">
                <div class="image-overlay-container">
                    <img src="imgs/yaris/Untitled%20design%2033.png" class="img-fluid" alt="Toyota Yaris">
                    <div class="overlay-info">
                        <h3>Toyota Yaris</h3>
                        <p>Starting from OMR 14,000</p>
                        <p>The Toyota Yaris combines fuel efficiency with agility, making it an ideal choice for navigating urban landscapes.</p>
                        <a href="ToyotaYaris.aspx" class="btn btn-primary">View Details</a>
                        <!-- Tertiary Navigation -->
                        <ul class="list-unstyled mt-2">
                            <li><a href="ToyotaYaris.aspx#specsSection">Specifications</a></li>
                            <li><a href="ToyotaYaris.aspx#gallerySection">Gallery</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Honda Civic -->
        <div class="col-md-6">
            <div class="vehicle-card">
                <div class="image-overlay-container">
                    <img src="imgs/subaru/2024-subaru-impreza-16-1668610959.jpg" class="img-fluid" alt="Subaru Impreza">
                    <div class="overlay-info">
                        <h3>Subaru Impreza</h3>
                        <p>Starting from OMR 13,500</p>
                        <p>The Impreza is renowned for its reliability and sporty design, offering an engaging driving experience.</p>
                        <a href="SubaruImpreza.aspx" class="btn btn-primary">View Details</a>
                        <!-- Tertiary Navigation -->
                        <ul class="list-unstyled mt-2">
                            <li><a href="SubaruImpreza.aspx#specsSection">Specifications</a></li>
                            <li><a href="SubaruImpreza.aspx#gallerySection">Gallery</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
