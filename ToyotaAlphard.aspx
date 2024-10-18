<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ToyotaAlphard.aspx.cs" Inherits="Sindbad_Cars.ToyotaAlphard" %>
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

    <!-- for specs part table for admin page
    <link href="Data%20Tables/css/dataTables.dataTables.min.css" rel="stylesheet" />
    <script src="Data%20Tables/js/dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#specificationsTable').DataTable({
                "paging": true,
                "ordering": true,
                "info": true,
                "searching": true
            });
        });
    </script>-->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
.breadcrumb {
    background: #f5f5f5;
    margin-bottom: 20px;
    border-radius: 0.25rem;
}

.vehicle-title {
    margin-top: 20px;
    margin-bottom: 20px;
    text-align: center;
    color: #333;
}

.vehicle-info {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 40px;
}

.vehicle-image {
    max-width: 100%;
    height: auto;
    margin-bottom: 20px;
}

.vehicle-details {
    flex-basis: 50%;
}

.vehicle-details h2 {
    color: #0056b3;
    margin-bottom: 15px;
}

.vehicle-details p {
    margin-bottom: 10px;
}

.btn-primary {
    background-color: #007bff;
    border: none;
    padding: 10px 20px;
}

.btn-primary:hover {
    background-color: #0056b3;
}

.tertiary-nav {
    list-style: none;
    padding: 0;
    text-align: center;
    margin-bottom: 40px;
}

.tertiary-nav li {
    display: inline;
    margin-right: 10px;
}

.tertiary-nav a {
    text-decoration: none;
    color: #007bff;
    padding: 5px 15px;
    border-radius: 0.25rem;
    transition: background-color 0.3s ease;
}

.tertiary-nav a:hover {
    background-color: #e9ecef;
}

/* Responsive layout for smaller screens */
@media (max-width: 768px) {
    .vehicle-info {
        flex-direction: column;
    }

    .vehicle-details {
        flex-basis: 100%;
    }

.gallery-container {
    margin-top: 40px;
    margin-bottom: 40px;
}

.carousel-indicators li {
    background-color: #333;
}

.carousel-control-prev-icon,
.carousel-control-next-icon {
    background-color: #333;
    padding: 10px;
    border-radius: 50%;
}
/* Section Headers */
.section-header {
    color: #0056b3;
    margin-bottom: 20px;
}

/* Section Content Styling */
.container.mt-5 {
    padding: 40px;
    background-color: #f8f8f8;
    border-radius: 0.25rem;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    margin-bottom: 40px;
}

/* Centered Text Section Headers */
.text-center {
    text-align: center;
}

/* Ensure smooth transition on all 'scroll-to-section' class anchors */
.scroll-to-section {
    cursor: pointer;
    transition: color 0.3s ease;
}

.scroll-to-section:hover {
    color: #0056b3; /* Highlight color when hovering over the link */
}


.section-container {
    background: #f9f9f9;
    padding: 20px;
    margin-top: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.section-header {
    text-align: center;
    color: #0056b3;
}

.table {
    width: 100%;
    margin-bottom: 1rem;
    color: #212529;
}

.table th {
    width: 30%;
    background-color: #e9ecef;
    color: #333;
}

.table td {
    background-color: #ffffff;
}

.table-responsive {
    margin-bottom: 20px;
}

.section-container {
    padding: 20px;
    margin-top: 20px;
    background-color: #f8f8f8;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.section-header {
    text-align: center;
    color: #007bff;
    margin-bottom: 20px;
}

.detail-card .card {
    margin-bottom: 20px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.15);
}

.card-header {
    background-color: #007bff;
    color: white;
    font-size: 18px;
    padding: 10px;
    text-align: center;
}

.card-body {
    padding: 15px;
    font-size: 14px;
    line-height: 1.6;
    background-color: white;
}

@media (max-width: 767px) {
    .detail-card {
        flex: 0 0 100%;
        max-width: 100%;
    }
}
}
    </style>
    <!-- Breadcrumb Trail -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="Ranges.aspx">Ranges</a></li>
            <li class="breadcrumb-item"><a href="MPV.aspx">MPV</a></li>
            <li class="breadcrumb-item active" aria-current="page">Toyota Alphard</li>
        </ol>
    </nav>
    
    <!-- Vehicle Heading -->
    <div class="container">
        <h1 class="vehicle-title">Toyota Alphard</h1>
        
        <div class="vehicle-info">
            <img src="imgs/Alphard%20imgs/toyota-alphard-2024-1-1687324619.jpg" class="img-fluid vehicle-image" alt="Toyota Alphard">
            <div class="vehicle-details">
                <h2>Vehicle Overview</h2>
                <p>Starting from OMR 70,000</p>
                <p>Milage: 4500 Km</p>
                <p><strong>Fuel type:</strong> Hybrid</p>
                <p><strong>Fuel consumption:</strong> 12 km/l</p>
                <p><strong>Colour:</strong> Precious Leo-Blond</p>
                <p><strong>Engine capacity:</strong> 2.5L</p>
                <a href="Purchase.aspx?vehicleId=3" class="btn btn-primary">Purchase</a>
            </div>
        </div>

        <ul class="tertiary-nav">
            <li><a href="#detailsSection" class="scroll-to-section">Details</a></li>
            <li><a href="#specsSection" class="scroll-to-section">Specifications</a></li>
            <li><a href="#gallerySection" class="scroll-to-section">Gallery</a></li>
        </ul>
        
        
    <!-- Details Section -->
    <div id="detailsSection" class="section-container">
        <h2 class="section-header">Detailed Features</h2>
        <div class="row">
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Engine Details</div>
                    <div class="card-body">
                        <p>Engine Size: 2.5 L</p>
                        <p>Displacement: 2,487 cc</p>
                        <p>Number of Cylinders: 4</p>
                        <p>Number of Valves: 16</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Performance</div>
                    <div class="card-body">
                        <p>Max Output (HP): 247 hp @ 6,000 rpm</p>
                        <p>Max Torque (Nm): 233 Nm @ 4,300 rpm</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Economy & Environment</div>
                    <div class="card-body">
                        <p>Fuel Type: Hybrid</p>
                        <p>Fuel Capacity: 60 L</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Safety & Security</div>
                    <div class="card-body">
                        <p>Driver's Airbag, Front Passenger's Airbag</p>
                        <p>Anti-lock Brake System (ABS)</p>
                        <p>Electronic Stability Control</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Specifications Section -->
    <div id="specsSection" class="section-container">
        <h2 class="section-header">Specifications</h2>
        <div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr><th>Name</th><td>Toyota Alphard 2.5 HEV CVT</td></tr>
                    <tr><th>Body Type</th><td>Minivan</td></tr>
                    <tr><th>Price</th><td>70,000 OMR</td></tr>
                    <tr><th>Transmission Category</th><td>CVT</td></tr>
                    <tr><th>Engine Size</th><td>2.5 L</td></tr>
                    <tr><th>Displacement</th><td>2,487 cc</td></tr>
                    <tr><th>Number of Cylinders</th><td>4</td></tr>
                    <tr><th>Number of Valves</th><td>16</td></tr>
                    <tr><th>Transmission Type</th><td>Continuously Variable Transmission</td></tr>
                    <tr><th>Drivetrain</th><td>Front-Wheel Drive</td></tr>
                    
                </tbody>
            </table>
        </div>
    </div>

        <!-- Gallery Section -->
    <div id="gallerySection" class="container gallery-container">
        <h2 class="text-center">Vehicle Gallery</h2>
        <div id="vehicleGalleryCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#vehicleGalleryCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="1"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="2"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="3"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="4"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="5"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="6"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="7"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="8"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="9"></li>
                
            </ol>
            
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-6-1687328869.jpg" class="d-block w-100" alt="Alphard Image 1">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-7-1687328869.jpg" class="d-block w-100" alt="Alphard Image 2">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-8-1687328870.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-9-1687328871.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-10-1687328872.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-10-1687328872.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-11-1687328872.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-3-1687328868.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-4-1687328868.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/Alphard%20imgs/toyota-alphard-2024-5-1687328869.jpg" class="d-block w-100" alt="Alphard Image 3">
                </div>
                
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#vehicleGalleryCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#vehicleGalleryCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
        </div>
<script>
    $(document).ready(function () {
        // smooth scrolling 
        $("a.scroll-to-section").on('click', function (event) {
            if (this.hash !== "") {
                event.preventDefault();
                var hash = this.hash;
                $('html, body').animate({
                    scrollTop: $(hash).offset().top - 50 
                }, 800, function () {
                    window.location.hash = hash;
                });
            }
        });
    });
</script>


</asp:Content>