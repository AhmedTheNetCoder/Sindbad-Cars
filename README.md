# Sindbad Cars Web Application

## Introduction
Sindbad Cars is an e-commerce platform for car retail, developed using **ASP.NET**, **HTML**, **CSS**, and **JavaScript**. This web application offers a fully responsive interface using **Bootstrap**, with integrated **DataTables** for enhanced data management and **Font Awesome** for improved navigation and visual appeal.

## Features
- **Responsive Design**: Optimized with Bootstrap for smooth display on all device types.
- **Data Management**: Uses DataTables for sorting, searching, and paginating vehicle data.
- **Icon Integration**: Includes Font Awesome for better UI/UX and scalable icons.
- **Secure**: Designed with best practices for secure data handling and protection.
- **Cross-Browser Compatibility**: Tested for smooth operation on major browsers (Chrome, Firefox, Safari, Edge, etc.).

## Technologies Used
- **ASP.NET (C#)**
- **HTML, CSS, JavaScript**
- **Bootstrap**
- **DataTables**
- **Font Awesome**

## Installation

### Prerequisites
To run this project, you'll need the following tools:
- **Visual Studio 2019/2022** or **Visual Studio Code**
- **.NET Framework 4.x**
- **SQL Server** (or **LocalDB**)
- **NuGet Package Manager**

### Steps to Install
1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>

2. Open the solution file (Sindbad Cars.sln) in Visual Studio.
3. Restore NuGet packages:
    dotnet restore
4. Update the connection string in Web.config:
connectionStrings
  add name="DefaultConnection" 
       connectionString="Server=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\SindbadCars.mdf;Integrated Security=True;" 
       providerName="System.Data.SqlClient" />
/connectionStrings
5. Ensure that SQL Server is running and that the .mdf file is attached properly.
6. Build and run the project from Visual Studio.
