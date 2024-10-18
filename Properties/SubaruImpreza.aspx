<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SubaruImpreza.aspx.cs" Inherits="Sindbad_Cars.SubaruImpreza" %>
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

}
    </style>
        <!-- Breadcrumb Trail -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item"><a href="Ranges.aspx">Ranges</a></li>
            <li class="breadcrumb-item"><a href="Compact.aspx">Compact</a></li>
            <li class="breadcrumb-item active" aria-current="page">Subaru Impreza</li>
        </ol>
    </nav>
    
    <!-- Vehicle Heading -->
    <div class="container">
        <h1 class="vehicle-title">Subaru Impreza</h1>
    
        <div class="vehicle-info">
            <img src="imgs/subaru/Untitled%20design%2077.png"  class="img-fluid vehicle-image" alt="Subaru Impreza">
            <div class="vehicle-details">
                <h2>Vehicle Overview</h2>
                <p>Starting from OMR 13,500</p>
                <p>Milage: 100 Km</p>
                <p><strong>Fuel type:</strong> Petrol</p>
                <p><strong>Fuel consumption:</strong> 20.2 km/l</p>
                <p><strong>Colour:</strong>Pure Red</p>
                <p><strong>Engine capacity:</strong> 2.5L</p>
                <a href="Purchase.aspx?vehicleId=2" class="btn btn-primary">Purchase</a>
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
                        <p>Displacement: 2,499 cc</p>
                        <p>Number of Cylinders: 4</p>
                        <p>Number of Valves: DOHC 14-valve</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Performance</div>
                    <div class="card-body">
                        <p>Max Output (HP): 182  hp @ 6,600 rpm</p>
                        <p>Max Torque (Nm): 178  Nm @ 6,000 rpm</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Economy & Environment</div>
                    <div class="card-body">
                        <p>Fuel Type: Petrol</p>
                        <p>Fuel Capacity: 45 L</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 detail-card">
                <div class="card">
                    <div class="card-header">Safety & Security</div>
                    <div class="card-body">
                        <p>Subaru EyeSight</p>
                        <p>Pre-Collision Braking</p>
                        <p>Adaptive Cruise Control</p>
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
                    <tr><th>Name</th><td>Subaru Impreza 2.5 RS</td></tr>
                    <tr><th>Body Type</th><td>Hatchback</td></tr>
                    <tr><th>Price</th><td>13,500 OMR</td></tr>
                    <tr><th>Transmission Category</th><td>8-speed GAZOO Racing</td></tr>
                    <tr><th>Engine Size</th><td>2.5 L</td></tr>
                    <tr><th>Number of Cylinders</th><td>4</td></tr>
                    <tr><th>Number of Valves</th><td>14</td></tr>
                    <tr><th>Transmission Type</th><td>CVT</td></tr>
                    <tr><th>Drivetrain</th><td>Standard Symmetrical AWD</td></tr>
                    
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
                <li data-target="#vehicleGalleryCarousel" data-slide-to="10"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="11"></li>
                <li data-target="#vehicleGalleryCarousel" data-slide-to="12"></li>
               
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imgs/subaru/2024-subaru-impreza-16-1668610959.jpg" class="d-block w-100" alt="Impreza Image 1">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-17-1668610957.jpg" class="d-block w-100" alt="Impreza Image 2">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-18-1668610973.jpg" class="d-block w-100" alt="Impreza Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-24-1668611002.jpg" class="d-block w-100" alt="Impreza Image 4">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-25-1668610977.jpg" class="d-block w-100" alt="Impreza Image 5">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-26-1668610984.jpg" class="d-block w-100" alt="Impreza Image 6">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-27-1668610993.jpg" class="d-block w-100" alt="Impreza Image 7">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-30-1668610985.jpg" class="d-block w-100" alt="Impreza Image 8">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-31-1668610991.jpg" class="d-block w-100" alt="Impreza Image 9">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-32-1668610999.jpg" class="d-block w-100" alt="Impreza Image 10">
                </div>
                <div class="carousel-item">
                    <img src="imgs/subaru/2024-subaru-impreza-33-1668610997.jpg" class="d-block w-100" alt="Impreza Image 11">
                </div>
                    <div class="carousel-item">
                        <img src="imgs/subaru/2024-subaru-impreza-35-1668611011.jpg" class="d-block w-100" alt="Impreza Image 12">
                </div>
                    <div class="carousel-item">
                        <img src="imgs/subaru/2024-subaru-impreza-37-1668611017.jpg" class="d-block w-100" alt="Impreza Image 13">
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
