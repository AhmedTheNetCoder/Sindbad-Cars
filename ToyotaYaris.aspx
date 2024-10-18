<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ToyotaYaris.aspx.cs" Inherits="Sindbad_Cars.ToyotaYaris" %>
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

.section-header {
    color: #0056b3;
    margin-bottom: 20px;
}

.container.mt-5 {
    padding: 40px;
    background-color: #f8f8f8;
    border-radius: 0.25rem;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    margin-bottom: 40px;
}

.text-center {
    text-align: center;
}

.scroll-to-section {
    cursor: pointer;
    transition: color 0.3s ease;
}

.scroll-to-section:hover {
    color: #0056b3; 
}
.detail-card {
    color: #f8f8f8; /* Match the background color with the .breadcrumb class */
    /* Add any other styling you need for this section */
}

}
    </style>
        <!-- Breadcrumb Trail -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="Ranges.aspx">Ranges</a></li>
            <li class="breadcrumb-item"><a href="Compact.aspx">Compact</a></li>
            <li class="breadcrumb-item active" aria-current="page">Toyota Yaris</li>
        </ol>
    </nav>
    
    <!-- Vehicle Heading -->
    <div class="container">
        <h1 class="vehicle-title">Toyota Yaris</h1>
        
        <div class="vehicle-info">
            <img src="imgs/yaris/2024-Toyota-Yaris1-2048x1536.jpg" class="img-fluid vehicle-image" alt="Toyota Yaris">
            <div class="vehicle-details">
                <h2>Vehicle Overview</h2>
                <p>Starting from OMR 14,000</p>
                <p>Milage: 1200 Km</p>
                <p><strong>Fuel type:</strong> Petrol</p>
                <p><strong>Fuel consumption:</strong> 24.3 km/l</p>
                <p><strong>Colour:</strong> Neptune Blue Bi-tone </p>
                <p><strong>Engine capacity:</strong> 1.5 L</p>
                <a href="Purchase.aspx?vehicleId=1" class="btn btn-primary">Purchase</a>
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
            <div class="detailsSection">
                <div class="card">
                    <div class="card-header">Engine Details</div>
                    <div class="card-body">
                        <p>Engine Size: 1.5 L</p>
                        <p>Displacement: 1,490 cc</p>
                        <p>Number of Cylinders: 3</p>
                        <p>Number of Valves: DOHC 12-valve</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="card">
                    <div class="card-header">Performance</div>
                    <div class="card-body">
                        <p>Max Output (HP): 130 hp @ 5,500 rpm</p>
                        <p>Max Torque (Nm): 120 Nm @ 3,600 rpm</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Economy & Environment</div>
                    <div class="card-body">
                        <p>Fuel Type: Hybrid</p>
                        <p>Fuel Capacity: 36 L</p>
                        <p>Battery Capacity: 0.7 kWh</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Safety & Security</div>
                    <div class="card-body">
                        <p>Toyota Safety Sence</p>
                        <p>Driving assistance</p>
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
                    <tr><th>Name</th><td>Toyota Yaris Premiere Edition</td></tr>
                    <tr><th>Body Type</th><td>Hatchback</td></tr>
                    <tr><th>Price</th><td>14,000 OMR</td></tr>
                    <tr><th>Transmission Category</th><td>8-speed GAZOO Racing</td></tr>
                    <tr><th>Engine Size</th><td>2.5 L</td></tr>
                    <tr><th>Number of Cylinders</th><td>3</td></tr>
                    <tr><th>Number of Valves</th><td>12</td></tr>
                    <tr><th>Transmission Type</th><td>Automatic</td></tr>
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
              
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imgs/yaris/2024-Toyota-Yaris1-2048x1536.jpg" class="d-block w-100" alt="Yaris Image 1">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris3-1024x768.jpg" class="d-block w-100" alt="Yaris Image 2">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris5-1024x768.jpg" class="d-block w-100" alt="Yaris Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris7-1024x768.jpg" class="d-block w-100" alt="Yaris Image 4">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris8-1024x768.jpg" class="d-block w-100" alt="Yaris Image 5">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris11-1024x685.jpg" class="d-block w-100" alt="Yaris Image 6">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris12-1024x768.jpg" class="d-block w-100" alt="Yaris Image 7">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris17-1024x683.jpg" class="d-block w-100" alt="Yaris Image 8">
                </div>
                <div class="carousel-item">
                    <img src="imgs/yaris/2024-Toyota-Yaris18-1024x683.jpg" class="d-block w-100" alt="Yaris Image 9">
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
