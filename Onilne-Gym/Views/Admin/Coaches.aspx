<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Coaches.aspx.cs" Inherits="Onilne_Gym.Views.Admin.Coaches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h4 class="text-primary">Coache's Details</h4>

                <div>
                    <label class="form-label" for="CName">Coach's Name</label>
                    <input type="text" id="CNameTb" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="CGenCb">Coach's Gender</label>
                    <asp:DropDownList runat="server" class="form-control" ID="CGenCb">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <label class="form-label" for="CDOBTb">Coach's D.O.B</label>
                    <input type="date" id="CDOBTb" class="form-control form-control-lg" runat="server" />
                </div>

                <div>
                    <label class="form-label" for="CPhone">Coach's Phone</label>
                    <input type="text" class="form-control" id="PhoneTb" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="CExprience">Coach's Experience</label>
                    <input type="text" id="CExprience" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="CAddTb">Coach's Address</label>
                    <input type="text" id="CAddTb" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="PasswordTb">Coach's Password</label>
                    <input type="text" id="PasswordTb" class="form-control form-control-lg" runat="server" />
                </div>

                <div class="mb-2">
                    <label class="form-label" for="EmailTb">Coach's Email</label>
                    <input type="text" id="EmailTb" class="form-control form-control-lg" runat="server" />
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
                    <asp:GridView runat="server" ID="CoachList" class="table"></asp:GridView>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
