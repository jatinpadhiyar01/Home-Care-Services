<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="customer_registration.aspx.cs" Inherits="Pre_project01.customer_registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row justify-content-center align-items-center p-5">
            
            <%-- reg      --%>
            <div class="col-lg-6">
                <div class="card bg-light" style="width: 30rem;">
                    <div class="card-body">
                 <h5 class="card-title mb-4">
                       Customer Register</h5>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The name field is required." ForeColor="Red" ControlToValidate="custname"></asp:RequiredFieldValidator>
                        <%-- label inside textbox with the help of form-group and form-focus  --%>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="custname" runat="server" class="form-control" placeholder="name"></asp:TextBox>
                            <label for="custname">Name</label>
                        </div> 

                        <%-- email and vlidation --%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" runat="server" ErrorMessage="The email must be a valid email address." ControlToValidate="custemail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The email field is required." ControlToValidate="custemail" Display="Dynamic" ForeColor="Red" ValidateRequestMode="Inherit"></asp:RequiredFieldValidator>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="custemail" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                            <label for="custemail">Email Address</label>
                        </div>

                        <%-- mobile number and validation --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="The mobile no field is required." ControlToValidate="custmno" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ErrorMessage="Enter 10 degit mobile no." Display="Dynamic" ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="custmno"></asp:RegularExpressionValidator>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="custmno" runat="server" class="form-control" placeholder="Mobile no" TextMode="Number"></asp:TextBox>
                            <label for="custcont">Mobile no</label>
                        </div>

                        <%-- username and validation --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="The username field is required." ControlToValidate="custuname" ForeColor="Red"></asp:RequiredFieldValidator>
                          <div class="form-floating mb-3">
                            <asp:TextBox ID="custuname" runat="server" class="form-control" placeholder="Username" TextMode="SingleLine"></asp:TextBox>
                            <label for="custuname">Username</label>
                        </div>

                        <%-- passward and validation --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="custpwd" ForeColor="Red" ErrorMessage="The passward field is required."></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" runat="server" ErrorMessage="Passward must contain a-z A-Z  0-9 and special character." ControlToValidate="custpwd" Display="Dynamic" ValidationExpression="^((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])|(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[^a-zA-Z0-9])|(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])).{8,}$"></asp:RegularExpressionValidator>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="custpwd" runat="server" class="form-control" placeholder="Passward" TextMode="Password"></asp:TextBox>
                            <label for="custpwd">Passward</label>
                        </div>

                        <%-- confirm and validation --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="The confirm passward field is required." ForeColor="Red" ControlToValidate="custcpwd" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passward must be same." ForeColor="Red" ControlToCompare="custpwd" ControlToValidate="custcpwd" Display="Dynamic"></asp:CompareValidator>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="custcpwd" runat="server" class="form-control" placeholder="Confirm Passward" TextMode="Password"></asp:TextBox>
                            <label for="custcpwd" class="form-label">Confirm Passward</label>
                        </div>

                        <%-- login link --%>
                        <div class="text-end mb-3">
                            Already have an account?<a href="login.aspx" class="link-info">login</a>
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
