<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myNotes.aspx.cs" Inherits="shareNotes.myNotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Add a new note</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="images/notelogo.png" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="mb-8">
  <label for="formFile" class="form-label ">chose a file </label>
  
                                <asp:FileUpload ID="FileUpload" runat="server" />
</div> </div> 
   

 <div class="row">
                          
     <div class="col-md-2">
                 <div>
                     <br>
                    
                              <label> Title :</label>
  </div>
</div>
                              
                           
                            <div class="col-md-8">
                                
                                <div class="form-group">
                                     <br>
                                    <asp:TextBox CssClass="form-control" ID="txtTitle" runat="server" placeholder="Note title"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col-2">
                                </div>
                            <div class="col-8">
                              
                                <asp:Button ID="btnAdd" class="btn btn-lg btn-block btn-outline-success rounded-pill" runat="server" Text="Add" OnClick="btnAdd_Click" />
                               
                               
                                <asp:Label ID="lblOutput" runat="server"></asp:Label>
                                </div>    
                            
                           
                    
                        </div>


                    </div>
                </div>

              
                <br>

                <div class="card">
                    <div class="card-body">

                        <asp:TextBox CssClass="form-control" ID="TextDelete" runat="server" 
                                        placeholder="Enter file name you want to delete it "></asp:TextBox>
                        <br>
                        <center>
                        <div class="col-8">
                            
                        <asp:Button ID="btnDelete" class="btn btn-lg btn-block btn-outline-danger rounded-pill"
                            runat="server" Text="delete" OnClick="btnDelete_Click" />
                                
                            </div>
                    </center>
                        </div>
                    </div>
                
                
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>My notes</h4>
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
                                   
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="gvNotes" SkinID="UploadsView" runat="server" AutoGenerateColumns="False"
                                    OnSelectedIndexChanged="gvNotes_SelectedIndexChanged1"  
                                    >
                                    
                                    <Columns>
                                        <asp:TemplateField >
                    
                    <ItemTemplate>
                         
                        <asp:HyperLink
                            ID="HyperLink1"
                            class="col-8"
                            Text='<%# Container.DataItem.ToString() %>'
                            runat="server" />

                            </ItemTemplate>
                </asp:TemplateField>
                     
                <asp:TemplateField >
                    
                    <ItemTemplate>
                      <center>
                                   <asp:HyperLink
                            ID="HyperLink"
                            class="btn btn-lg btn-block btn-outline-primary col-6 rounded-pill"
                            NavigateUrl='<%# "~/Uploads/" + Container.DataItem.ToString() %>'
                            Text='open'
                            runat="server" />
                             

                      </center>
                     
                         </ItemTemplate>
                </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                            </div></div></div></div></div></div></div>
     
</asp:Content>
