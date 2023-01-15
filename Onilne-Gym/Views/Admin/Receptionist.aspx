<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Onilne_Gym.Views.Admin.Receptionist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h4 class="text-primary">Receptionist's Details</h4>

                <div>
                    <label class="form-label" for="RecNameTb">Receptionist's Name</label>
                    <input type="text" id="RecNameTb" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="RGenCb">Receptionist's Gender</label>
                    <asp:DropDownList runat="server" class="form-control" ID="RGenCb">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <label class="form-label" for="CDOBTb">Receptionist's D.O.B</label>
                    <input type="date" id="CDOBTb" class="form-control form-control-lg" runat="server" />
                </div>

                <div>
                    <label class="form-label" for="RPhone">Receptionist's Phone</label>
                    <input type="text" class="form-control" id="Rphone" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="RecAddTb">Receptionist's Address</label>
                    <input type="text" id="RecAddTb" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>
                
                <div>
                    <label class="form-label" for="RecPasswordTb">Receptionist's Password</label>
                    <input type="text" id="RecPasswordTb" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="PasswordTb">Coach's Password</label>
                    <input type="text" id="PasswordTb" class="form-control form-control-lg" runat="server" />
                </div>

                <div class="mb-2">
                    <label class="form-label" for="RecAddTb">Receptionist's Email</label>
                    <input type="text" id="RecEmailTb" class="form-control form-control-lg" runat="server" />
                </div>

                <div class="row">
                    <div class="col d-grid">
                        <asp:Button Text="Edit" Class="btn btn-block btn-warning text-white" runat="server" />
                    </div>
                    <div class="col d-grid">
                        <asp:Button Text="Add" Class="btn btn-block btn-primary" runat="server" />
                    </div>
                    <div class="col d-grid">
                        <asp:Button Text="Delete" Class="btn btn-block btn-danger" runat="server" />
                    </div>
                </div>

                <div class="col-md-9">
                    <asp:GridView runat="server" ID="ReceptionistList" class="table"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
