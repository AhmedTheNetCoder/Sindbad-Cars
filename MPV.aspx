<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MPV.aspx.cs" Inherits="Sindbad_Cars.MPV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS Links -->
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/customMPV.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">

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

.vehicle-card {
    position: relative;
    margin-bottom: 30px;
    border: 1px solid #ddd;
    overflow: hidden;
    border-radius: 0.5rem;
}

.image-overlay-container {
    position: relative;
}

.image-overlay-container img {
    width: 100%;
    transition: transform 0.5s ease;
}

.image-overlay-container:hover img {
    transform: scale(1.1); 
}

.overlay-info {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: rgba(0, 0, 0, 0.7);
    color: white;
    padding: 20px;
    transform: translateY(100%);
    transition: transform 0.5s ease;
}

.image-overlay-container:hover .overlay-info {
    transform: translateY(0); 
}

.btn-primary {
    background-color: #0056b3;
    border: none;
    padding: 5px 20px;
    margin-top: 10px;
}

.btn-primary:hover {
    background-color: #004080;
}
.vehicle-card ul {
    list-style-type: none;
    padding-left: 0;
}

.vehicle-card ul li a {
    color: #ffffff; 
    text-decoration: none;
    padding: 5px 0;
    display: block;
}

.vehicle-card ul li a:hover {
    text-decoration: underline;
}
@media (max-width: 768px) {
    .page-header, .lead {
        text-align: center;
    }

}

    </style>
    <!-- Breadcrumb Trail -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="Ranges.aspx">Ranges</a></li>
            <li class="breadcrumb-item active" aria-current="page">MPV</li>
        </ol>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <h1 class="page-header text-center">MPV Vehicles</h1>
        <p class="lead text-center">Explore our Multi-Purpose Vehicles - perfect for family and group travels with enhanced safety and comfort.</p>

        <!-- Vehicles Display -->
        <div class="row">
            <!-- Toyota Alphard -->
            <div class="col-md-6">
                <div class="vehicle-card">
                    <div class="image-overlay-container">
                        <img src="imgs/Alphard%20imgs/toyota-alphard-2024-1-1687324619.jpg" class="img-fluid" alt="Toyota Alphard">
                        <div class="overlay-info">
                            <h3>Toyota Alphard</h3>
                            <p>Starting from OMR 70,000</p>
                            <p>If you have your eyes set on Toyota’s plush van, ready your bank accounts: The all-new Toyota Alphard has just been revealed.</p>
                            <a href="ToyotaAlphard.aspx" class="btn btn-primary">View Details</a>
                            <!-- Tertiary Navigation -->
                            <ul class="list-unstyled mt-2">
                                <li><a href="ToyotaAlphard.aspx#specsSection">Specifications</a></li>
                                <li><a href="ToyotaAlphard.aspx#gallerySection">Gallery </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- GAC Trumpchi M8 -->
            <div class="col-md-6">
                <div class="vehicle-card">
                    <div class="image-overlay-container">
                        <img src="imgs/random/gac-m8-2024-ph-launch-03-1707993767.jpg" class="img-fluid" alt="GAC Trumpchi M8">
                        <div class="overlay-info">
                            <h3>GAC Trumpchi M8</h3>
                            <p>Starting from OMR 30,000</p>
                            <p>This MPV offers luxury and functionality in perfect harmony, with a spacious interior, premium materials, making it ideal for modern need</p>
                            <a href="GACM8.aspx" class="btn btn-primary">View Details</a>
                            <!-- Tertiary Navigation -->
                            <ul class="list-unstyled mt-2">
                                <li><a href="GACM8.aspx#specsSection">Specifications</a></li>
                                <li><a href="GACM8.aspx#gallerySection">Gallery</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
