<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="shareNotes.userProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br >
    <br >
    <br >
<div class="row">
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
                           <h3>User Profile</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TxtUsername" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Txtpassword" runat="server" placeholder="Password" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>




</asp:Content>
