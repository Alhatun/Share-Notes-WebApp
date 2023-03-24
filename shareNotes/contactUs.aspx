<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="shareNotes.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <br>
    <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Contact Us</h3>
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
                        <label>From -Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtSenderEmail" runat="server" placeholder="Your Email"></asp:TextBox>
                        </div>
                         
                        <label>Subject</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TxtSubject" runat="server" placeholder="Subject" ></asp:TextBox>
                        </div>
                         <label>Message</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextMessage" runat="server" TextMode="MultiLine" Height="103px" ></asp:TextBox>
                        </div>
                                       <asp:Label ID="lbloutput" runat="server"  ForeColor="gray"></asp:Label>

                         
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnSendMailViaMailMgr" runat="server" Text="Send" OnClick="BtnSend_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
   </div>
</asp:Content>
