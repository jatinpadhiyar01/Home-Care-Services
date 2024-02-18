 <%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Pre_project01.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-white">
        <div class="row p-4">
            <div class="col-lg-12 text-center banner-header">
                <h2><b>Search Service, Make an Appointment</b></h2>
                <h5 class="form-check">Discover the best service, city nearest to you.</h5>
            </div>
            
            <div class="row justify-content-center align-items-center">
                <div class="col-6">
                    <div class="input-group">
                        <span class="input-group-text">search service</span>
                        <asp:DropDownList ID="dropcity" runat="server" CssClass="col-lg-40 dropdown w-25 form-control">
                            <asp:ListItem>Select Service</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-12">
                    <img src="images/home_page.jpg" class="home-img-height w-100" />
                    <div class="text-center">
                        <h3 class="p5">Service and Service provider</h3>
                    </div>
                    <p class="text-center p-3">Home care service helps people to save their time and helps customers to find the best services.</p>
                </div>
            </div>
            
            <div class="row bg-light">
                <div class="col-lg-3 col-md-6">
                    <div class="text-capitalize">
                        <b>
                            Book Our Services
                        </b> 
                        <p class="palce-font-color">Find Service and Book Online Appointments</p><br />
                        HOME CARE SERVICE helps people to save their time and helps customers to take digital appointments. Customers can add their requirement here also, so it shows to his service provider directly. With this, we can save paper and make our INDIA a green country. If not required, don't take paper from the service provider.<br /><br />
                        <asp:Button ID="Button1" runat="server" Text="Read More.." class="btn btn-info" />
                    </div>
                </div>
                <%-- card --%>
             
                    <%-- card items --%>
                    <div class="col-lg-3 col-md-6 p-5">

                    <div class="card" style="width: 18rem;">
                        <img src="images/painter_service.jpg" class="card-img-top"/>
                         <div class="card-body">
                       <h5 class="card-title">Card title</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="findservices.aspx" class="btn btn-info w-100">BOOK NOW</a>
                     </div>
                    </div>
                    </div>

                    <%-- card 2 --%>
                    <div class="col-lg-3 col-md-6 p-5">

                    <div class="card" style="width: 18rem;">
                        <img src="images/car_wash.jpg" class="card-img-top"/>
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="findservices.aspx" class="btn btn-info w-100">BOOK NOW</a>
  </div>
</div>
                    </div>
                    <%-- card 3 --%>
                    <div class="col-lg-3 col-md-6 p-5">

                    <div class="card" style="width: 18rem;">
                        <img src="images/ac_repair.jpg"  class="card-img-top"/>
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="findservices.aspx" class="btn btn-info w-100">BOOK NOW</a>
  </div>
</div>
   </div>
              
            </div>
        </div>
    </div>
</asp:Content>
