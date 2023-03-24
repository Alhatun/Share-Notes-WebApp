<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="shareNotes.userLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bsCss/CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="bsCss/CSS/jquery.dataTables.min.css" rel="stylesheet" />

    <script src="bsCss/js/jquery-3.3.1.slim.min.js"></script>
    <script src="bsCss/js/popper.min.js"></script>
    <script src="bsCss/js/bootstrap.min.js"></script>
</head>
<body>
    <br>
    <br>
    <br>
    <form id="form1" runat="server">
        <div>
            <div class="row " >

                      <img width="740px" height="550px"  src="images/loginimg.jpg" />
                
         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="images/userProfile.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row" >
                     
                     
                     <div class="col">
                         <div class="was-validated">
                        <label>Username</label>
                        <div class="form-group " >
                           <asp:TextBox Class="form-control is-invalid" ID="TxtUsername" runat="server" placeholder="Username" required ></asp:TextBox>
           
                              <div class="invalid-feedback">
                                Please provide a valid username.
                              </div>
                            
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtUsername" 
                                  ErrorMessage="username must consists of 3-8 characters" ForeColor="red" SetFocusOnError="True" ValidationExpression="[a-zA-Z]{3,8}$"> </asp:RegularExpressionValidator>
                         <br>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control is-invalid" ID="Txtpassword" runat="server" placeholder="Password" required></asp:TextBox>
                            <div class="invalid-feedback">
                                    Please provide a valid Password.
                                    </div>
                        </div>

                        
                          <asp:Label ID="lblErrorMessege" runat="server" Text=" incrroect,please try again" ForeColor="gray"></asp:Label>

                        
                          </div>
               
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="Btnlogin" runat="server" Text="LOGIN" OnClick="BtnLogin_Click" />
                        </div></div>
                          

 <br />
     
                        
                    
                  </div>
               </div>
            </div>
            
         </div> 
   </div> </div>
        </div>
    </form>
</body>
</html>
