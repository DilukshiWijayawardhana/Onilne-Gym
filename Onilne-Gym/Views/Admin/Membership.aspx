<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="Onilne_Gym.Views.Admin.Membership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

        <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h4 class="text-primary">Membership's Details</h4>

                <div>
                    <label class="form-label" for="MNameTb">Membership's Name</label>
                    <input type="text" id="MNameTb" class="form-control form-control-lg" runat="server" autocomplete="off" />
                </div>

                <div>
                    <label class="form-label" for="DurationTb">Membership's Duration</label>
                    <input type="text" class="form-control" id="DurationTb" runat="server" autocomplete="off" />

                </div>

                <div>
                    <label class="form-label" for="GoalTb">Membership's Goal</label>
                    <input type="text" id="GoalTb" class="form-control form-control-lg" runat="server" />
                </div>

                <div>
                    <label class="form-label" for="CostTb">Membership's Cost</label>
                    <input type="text" class="form-control" id="CostTb" runat="server" autocomplete="off" />
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
                    <asp:GridView runat="server" ID="MembershipList" class="table"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
