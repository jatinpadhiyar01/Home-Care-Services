<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="service_provider_registration.aspx.cs" Inherits="Pre_project01.service_provider_registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5 mb-5">
   
         <%-- service provider reg      --%>
       

             <div class="card bg-light mx-auto" style="width: 50rem;">
                 <div class="card-body">
              <div class="row">
                  <%-- 1st card --%>
                     <div class="col-lg-4 ft">
                         <div>
                         <img src="images/LOGO.png" class="img-fluid"/>
                         </div>
                     </div>


                     <%-- 2nd card --%>

               <div class="col-lg-6 col-md-8">
              <h5 class="card-title">
                    Service Provider Register</h5>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The name field is required." ForeColor="Red" ControlToValidate="spname"></asp:RequiredFieldValidator>
                  
                   <%-- label inside textbox with the help of form-group and form-focus  --%>
                     <div class="form-floating mb-3">
                         <asp:TextBox ID="spname" runat="server" class="form-control" placeholder="name"></asp:TextBox>
                         <label for="custname">Name</label>
                     </div> 

                     <%-- email and vlidation --%>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" runat="server" ErrorMessage="The email must be a valid email address." ControlToValidate="spemail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The email field is required." ControlToValidate="spemail" Display="Dynamic" ForeColor="Red" ValidateRequestMode="Inherit"></asp:RequiredFieldValidator>
                     <div class="form-floating mb-3">
                         <asp:TextBox ID="spemail" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                         <label for="custemail">Email Address</label>
                     </div>

                     <%-- mobile number and validation --%>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="The mobile no field is required." ControlToValidate="spmno" Display="Dynamic"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ErrorMessage="Enter 10 degit mobile no." Display="Dynamic" ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="spmno"></asp:RegularExpressionValidator>
                     <div class="form-floating mb-3">
                         <asp:TextBox ID="spmno" runat="server" class="form-control" placeholder="Mobile no" TextMode="Number"></asp:TextBox>
                         <label for="custcont">Mobile no</label>
                     </div>

                     <%-- username and validation --%>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="The username field is required." ControlToValidate="spuname" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br /> <asp:Label ID="lbluserexist" runat="server" ForeColor="#CC0000"></asp:Label>
                       <div class="form-floating mb-3">
                           <asp:TextBox ID="spuname" runat="server" class="form-control" placeholder="Username" TextMode="SingleLine"></asp:TextBox>
                         <label for="custuname">Username</label>
                     </div>

                     <%-- passward and validation --%>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="sppwd" ForeColor="Red" ErrorMessage="The passward field is required."></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" runat="server" ErrorMessage="Passward must contain a-z A-Z  0-9 and special character." ControlToValidate="sppwd" Display="Dynamic" ValidationExpression="^((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])|(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[^a-zA-Z0-9])|(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])).{8,}$"></asp:RegularExpressionValidator>
                     <div class="form-floating mb-3">
                         <asp:TextBox ID="sppwd" runat="server" class="form-control" placeholder="Passward" TextMode="Password"></asp:TextBox>
                         <label for="custpwd">Passward</label>
                     </div>

                     <%-- confirm and validation --%>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="The confirm passward field is required." ForeColor="Red" ControlToValidate="spcpwd" Display="Dynamic"></asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passward must be same." ForeColor="Red" ControlToCompare="sppwd" ControlToValidate="spcpwd" Display="Dynamic"></asp:CompareValidator>
                     <div class="form-floating mb-3">
                         <asp:TextBox ID="spcpwd" runat="server" class="form-control" placeholder="Confirm Passward" TextMode="Password"></asp:TextBox>
                         <label for="custcpwd" class="form-label">Confirm Passward</label>
                     </div>

                     <%-- login link --%>
                     <div class="text-end mb-3">
                         Already have an account?<a href="#">Login</a>
                     </div>
                     <div class="mb-3">
                         <asp:Button ID="Button1" runat="server" Text="Signup" class="btn btn-info w-100" OnClick="Button1_Click" />
                     </div>
                     </div>
                 </div>
             </div>
         </div>
        
         </div>
</asp:Content>
