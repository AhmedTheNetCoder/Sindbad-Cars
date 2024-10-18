<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GACM8.aspx.cs" Inherits="Sindbad_Cars.GACM8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS Links -->
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/customstylesheet.css" rel="stylesheet" />
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
            <li class="breadcrumb-item active" aria-current="page">GAC M8</li>
        </ol>
    </nav>
    
    <!-- Vehicle Heading -->
    <div class="container">
        <h1 class="vehicle-title">GAC M8</h1>
        
        <!-- Vehicle Image and Description -->
        <div class="vehicle-info">
            <img src="imgs/GAC%20M8/gac-m8-2024-ph-launch-03-1707993767.jpg" class="img-fluid vehicle-image" alt="GAC M8">
            <div class="vehicle-details">
                <h2>Vehicle Overview</h2>
                <p>Starting from OMR 30,000</p>
                <p>Milage: 5000 Km</p>
                <p><strong>Fuel type:</strong> Petrol</p>
                <p><strong>Fuel consumption:</strong> 10 km/l</p>
                <p><strong>Colour:</strong> Pearl White</p>
                <p><strong>Engine capacity:</strong> 2.0 L</p>
                <a href="Purchase.aspx?vehicleId=4" class="btn btn-primary">Purchase</a>
            </div>
        </div>
        
        <ul class="tertiary-nav">
            <li><a href="#detailsSection" class="scroll-to-section">Details</a></li>
            <li><a href="#specsSection" class="scroll-to-section">Specifications</a></li>
            <li><a href="#gallerySection" class="scroll-to-section">Gallery</a></li>
        </ul>
       
        <!-- Detailed Features Section for GAC M8 -->
        <div id="detailsSection" class="section-container">
            <h2 class="section-header">GAC M8 Detailed Features</h2>
            <div class="row">
                <!-- Comfort & Convenience -->
                <div class="col-md-6 col-lg-3 detail-card">
                    <div class="card">
                        <div class="card-header">Comfort & Convenience</div>
                        <div class="card-body">
                            <p><strong>Climate Control:</strong> Dual-Zone Automatic</p>
                            <p><strong>Infotainment:</strong> Touchscreen with Apple CarPlay and Android Auto</p>
                            <p><strong>Seating:</strong> 7-Seater, Premium Leather</p>
                        </div>
                    </div>
                </div>
                <!-- Performance -->
                <div class="col-md-6 col-lg-3 detail-card">
                    <div class="card">
                        <div class="card-header">Performance</div>
                        <div class="card-body">
                            <p><strong>Engine:</strong> 2.0L Turbocharged Gasoline</p>
                            <p><strong>Horsepower:</strong> 248 hp at 5250 RPM</p>
                            <p><strong>Torque:</strong> 400 Nm at 1750-4000 RPM</p>
                        </div>
                    </div>
                </div>
                <!-- Safety Features -->
                <div class="col-md-6 col-lg-3 detail-card">
                    <div class="card">
                        <div class="card-header">Safety Features</div>
                        <div class="card-body">
                            <p><strong>Airbag System:</strong> Front, Side, Curtain</p>
                            <p><strong>Braking System:</strong> ABS, EBD, Brake Assist</p>
                            <p><strong>Driving Aids:</strong> Adaptive Cruise Control, Lane Keeping, Blind Spot Monitor</p>
                        </div>
                    </div>
                </div>
                <!-- Dimensions -->
                <div class="col-md-6 col-lg-3 detail-card">
                    <div class="card">
                        <div class="card-header">Dimensions</div>
                        <div class="card-body">
                            <p><strong>Length:</strong> 5212 mm</p>
                            <p><strong>Width:</strong> 1893 mm</p>
                            <p><strong>Height:</strong> 1823 mm</p>
                            <p><strong>Wheelbase:</strong> 3070 mm</p>
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
                    <tr><th>Name</th><td>GAC Trumpchi M8</td></tr>
                    <tr><th>Body Type</th><td>Minivan</td></tr>
                    <tr><th>Price</th><td>30,000 OMR</td></tr>
                    <tr><th>Transmission Category</th><td>Automatic</td></tr>
                    <tr><th>Engine Size</th><td> 2.0 L </td></tr>
                    <tr><th>Displacement</th><td>1,991 ccc</td></tr>
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
                <li data-target="#vehicleGalleryCarousel" data-slide-to="4"></li>

            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imgs/GAC%20M8/gac-m8-2024-ph-launch-03-1707993767.jpg" class="d-block w-100" alt="GAC Image 1">
                </div>
                <div class="carousel-item">
                    <img src="imgs/GAC%20M8/gac-m8-2024-ph-launch-09-1707993769.jpg" class="d-block w-100" alt="GAC Image 2">
                </div>
                <div class="carousel-item">
                    <img src="imgs/GAC%20M8/gac-m8-2024-ph-launch-04-1707993767.jpg" class="d-block w-100" alt="GAC Image 3">
                </div>
                <div class="carousel-item">
                    <img src="imgs/GAC%20M8/gac-m8-2024-ph-launch-05-1707993768.jpg" class="d-block w-100" alt="GAC Image 4">
                </div>
                <div class="carousel-item">
                    <img src="imgs/GAC%20M8/gac-m8-2024-ph-launch-10-1707993769.jpg" class="d-block w-100" alt="GAC Image 5">
                </div>
                <div class="carousel-item">
                    <img src="imgs/GAC%20M8/intelligent-technology-for-safety-pic4.jpg" class="d-block w-100" alt="GAC Image 6">
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

