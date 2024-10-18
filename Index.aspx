<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Sindbad_Cars.Index" %>
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
    <style type="text/css">/* Basic Resets */
* {
.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

.row {
    margin: 0 -15px;
}

.car-card {
    margin: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    transition: transform .3s ease;
    background: #fff;
}

.car-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}

.text-center {
    text-align: center;
}

.img-fluid {
    max-width: 100%;
    height: auto;
    border-radius: 4px;
}

.justify-content-center {
    justify-content: center;
}

h5 {
    margin-top: 10px;
}

p {
    margin-top: 10px;
    color: #666;
    font-size: 16px;
}
.car-card h3 {
    margin-bottom: 15px;
    color: #007bff; /* Color that matches the site theme */
    font-size: 24px;
}
.carousel-item img {
    width: 100%;  /* Ensures the image is responsive and scales with the container */
    max-height: 500px; /* Adjust this value based on your preference */
    object-fit: cover; /* Ensures images cover the area appropriately without distortion */
}
.carousel-caption {
    background-color: rgba(0, 0, 0, 0.5); /* Adds a semi-transparent black background */
    border-radius: 10px; /* Optional: rounds the corners of the caption background */
    padding: 10px; /* Adds some padding inside the caption box */
}
.carousel-caption h5 {
    color: white; /* Ensures the heading is in white */
    font-size: 24px; /* Increases the size of the font for visibility */
    font-weight: bold; /* Makes the font bold */
}

.carousel-caption p {
    color: white; /* Ensures the paragraph is in white */
    font-size: 16px; /* Appropriate size for the descriptive text */
}
.col-12{
    background: #fff;
}
}

</style>

<section>
   
<div id="promoCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#promoCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#promoCarousel" data-slide-to="1"></li>
        <li data-target="#promoCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="imgs/random/toyota-alphard-2024-1-1687324619.jpg" alt="Toyota Alphard">
            <div class="carousel-caption d-none d-md-block">
                <h5>Toyota Alphard - Luxury on Wheels</h5>
                <p>Starting at OMR 70,000. Experience supreme comfort and advanced technology.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="imgs/random/gac-m8-2024-ph-launch-03-1707993767.jpg" alt="GAC Trumpchi">
            <div class="carousel-caption d-none d-md-block">
                <h5>GAC Trumpchi - Designed for the Journey</h5>
                <p>Get it for just OMR 30,000. Spacious interiors and cutting-edge safety features.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="imgs/subaru/2024-subaru-impreza-16-1668610959.jpg" alt="Subaru Outback">
            <div class="carousel-caption d-none d-md-block">
                <h5>Subaru Outback - Built to Take You Anywhere</h5>
                <p>Adventure starts at OMR 25,000. Ready for any road with all-wheel drive and more.</p>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="carousel-control-prev" href="#promoCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#promoCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span the="sr-only">Next</span>
    </a>
</div>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 text-center">
                    <h2>Ranges</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <!-- Compact Cars Section -->
                <div class="col-md-4 car-card text-center">
                    <h3>Compact</h3> <!-- Label for Compact -->
                    <a href="Compact.aspx">
                        <img src="imgs/random/besttiresforsmallcarschevybolt-ezgif.com-webp-to-jpg-converter.jpg" alt="Compact Cars" class="img-fluid">
                    </a>
                    <h5>Sleek and Stylish Compact Cars</h5>
                    <p>Embark on your urban adventures with our range of compact cars, offering agile handling and fuel-efficient performance. From stylish city cruisers to practical hatchbacks, find the perfect blend of form and function to complement your lifestyle.</p>
                </div>
                <!-- MPV Section -->
                <div class="col-md-4 car-card text-center">
                    <h3>MPV</h3> <!-- Label for MPV -->
                    <a href="MPV.aspx">
                        <img src="imgs/random/em-1-ezgif.com-webp-to-jpg-converter.jpg" alt="MPV Cars" class="img-fluid">
                    </a>
                    <h5>Spacious and Versatile MPVs</h5>
                    <p>Elevate your family journeys with our lineup of MPVs, designed to provide spacious interiors and flexible seating configurations. Whether you're navigating city streets or embarking on road trips, our MPVs offer comfort, versatility, and peace of mind for every passenger.</p>
                </div>
            </div>
        </div>
    </section>

    <script>
        $(document).ready(function () {
            $('#promoCarousel').carousel({
                interval: 3000  // Changes the speed of the carousel (3000 milliseconds between slides)
            });
        });
    </script>

</asp:Content>

