<%@ Page Title="Ranges" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ranges.aspx.cs" Inherits="Sindbad_Cars.Ranges" %>
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
.card {
    transition: transform .3s ease, box-shadow .3s ease; /* Smooth transformation and shadow on hover */
}

.card:hover {
    transform: scale(1.03); /* Slightly enlarge cards on hover */
    box-shadow: 0 5px 15px rgba(0,0,0,.2); /* Add shadow for 3D effect */
}

.breadcrumb {
    background: #f8f9fa; /* Light background for breadcrumb for better visibility */
    padding: .75rem 1rem; /* Padding for aesthetic spacing */
    margin-bottom: 20px; /* Space below breadcrumb */
}

.container mt-3, .container mt-4 {
    margin-top: 20px; /* Consistent top margin for spacing */
}

.display-4 {
    font-size: 2.5rem; /* Larger font size for headings */
}

.lead {
    font-size: 1.25rem; /* Slightly larger font size for introductory text */
}
.col-md-6{
    background: #ffffff;
}
}


    </style>
    <!-- Breadcrumb and Two-Part Header -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Ranges</li>
        </ol>
    </nav>

    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <!-- Visual Component -->
            <div class="col-md-8">
                <img src="imgs/random/go-ultra-low-plug-in-cars-in-uk.jpg" class="img-fluid" alt="Car Range">
            </div>
            <!-- Information Component -->
            <div class="col-md-4 bg-dark text-white d-flex align-items-center">
                <div class="p-4">
                    <h1 class="display-4">Discover Our Ranges</h1>
                    <p class="lead">Explore the variety of models tailored to meet every need, from compact city cars to spacious family MPVs.</p>
                    <a href="ContactUs.aspx" class="btn btn-light mt-3">Contact Us</a>
                </div>
            </div>
        </div>
    


    <!-- Cards for Each Range -->
    <div class="container mt-4">
        <div class="row">
            <!-- Compact Range Card -->
            <div class="col-md-6">
                <div class="card">
                    <img src="imgs/random/Untitled%20design%202.png" class="card-img-top" alt="Compact Cars">
                    <div class="card-body">
                        <h5 class="card-title">Compact Cars</h5>
                        <p class="card-text">Perfect for city driving, our Compact cars are both fuel-efficient and stylish. Explore models like the Yaris and Camry.</p>
                        <a href="Compact.aspx" class="btn btn-primary">Explore Compact</a>
                    </div>
                </div>
            </div>
            <!-- MPV Range Card -->
            <div class="col-md-6">
                <div class="card">
                    <img src="imgs/random/Screen_Shot_2020-03-27_at_2.47.24_PM.png"  class="card-img-top" alt="MPV Cars">
                    <div class="card-body">
                        <h5 class="card-title">MPVs</h5>
                        <p class="card-text">Ideal for families and group travels, our MPVs offer space, comfort, and versatility. Check out models like the Innova and Sienna.</p>
                        <a href="MPV.aspx" class="btn btn-primary">Explore MPVs</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>