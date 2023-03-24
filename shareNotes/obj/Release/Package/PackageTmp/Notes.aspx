<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Notes.aspx.cs" Inherits="pro.Notes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br>
   
    <div class="container">
        <div class="row">
            <div class="col align-self-center">
            
                         <center>
                                        
                                       <img width="900px" height="450px" class="img-fluid" src="images/homepage.jpg" />
                                    </center>

               
                        
                                
                            </div>
                   </div> 
           
        <br >
             

          
                      
                        <div class="row">
                            <div class="col align-self-center">
                                   
                                <asp:GridView class="table table-striped table-bordered" OnSelectedIndexChanged="gvNotes_SelectedIndexChanged1"
                                    ID="gvNotes" SkinID="UploadsView" runat="server" AutoGenerateColumns="False"
                                     
                                    >
                                    
                                    <Columns>
                                        <asp:TemplateField >
                    
                    <ItemTemplate>
                         
                        <asp:HyperLink
                            ID="HyperLink1"
                            class="col-3"
                            Text='<%# Container.DataItem.ToString() %>'
                            runat="server" />

                            </ItemTemplate>
                </asp:TemplateField>
                     
                <asp:TemplateField >
                    
                    <ItemTemplate>
                      <center>
                                   <asp:HyperLink
                            ID="HyperLink"
                            class="btn btn-outline-primary btn-block rounded-pill"
                            NavigateUrl='<%# "~/Uploads/" + Container.DataItem.ToString() %>'
                            Text='     open    '
                            runat="server" />
                             

                      </center>
                     
                         </ItemTemplate>
                </asp:TemplateField>
            


                                      
            


                                    </Columns>
                                </asp:GridView>







                            </div>
                        </div>


                   </div>


            
    



        
                   
</asp:Content>
