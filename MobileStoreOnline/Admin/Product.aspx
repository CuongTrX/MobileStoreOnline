﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="MobileStoreOnline.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="panel-heading">
        <h4 class="panel-title text-center">Quản lý sản phẩm</h4>
    </div>
    <div class="panel-body">
        <form runat="server" enctype="multipart/form-data">
            <%--Thêm sản phẩm--%>
            <div class="row text-center">
                <asp:Label ID="error" runat="server" Text="" CssClass="small alert-danger" />
            </div>
            <div class="row hidden-xs">
                <div class="col-xs-8">
                    <div class="form-group row">
                        <label class="col-xs-4 text-right">Tên nhà sản xuất:</label>
                        <div class="col-xs-8">
                            <asp:DropDownList ID="TenSX" CssClass="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-xs-4 text-right">Tên sản phẩm:</label>
                        <div class="col-xs-8">
                            <asp:TextBox ID="TenSP" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-xs-4 text-right">Giá bán:</label>
                        <div class="col-xs-8">
                            <asp:TextBox ID="GiaBan" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-xs-4 text-right">Phân loại</label>
                        <div class="col-xs-8">
                            <asp:DropDownList ID="PhanLoai" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0" Text="Hàng phổ thông" />
                                <asp:ListItem Value="1" Text="Smart Phone" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4 text-right">Mô tả chi tiết:</label>
                        <div class="col-xs-8">
                            <textarea id="ChiTiet" name="ChiTiet"></textarea>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#ChiTiet').summernote({
                                    toolbar: [
                                        ['style', ['bold', 'italic', 'underline', 'clear']],
                                        ['font', ['strikethrough', 'superscript', 'subscript']],
                                        ['fontsize', ['fontsize']],
                                        ['color', ['color']],
                                        ['para', ['ul', 'ol', 'paragraph']],
                                        ['height', ['height']],
                                    ]
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h4 class="panel-title text-center">Hình minh họa</h4>
                        </div>
                        <div class="panel-body"></div>
                        <input id="FileUpload" name="FileUpload" type="file" class="file" />
                    </div>
                    <script type="text/javascript">
                        $("#FileUpload").fileinput({
                            'showUpload': false
                        });
                    </script>
                    <div class="text-center">
                        <asp:Button ID="Submit" runat="server" Text="Thêm sản phẩm" CssClass="btn btn-primary" OnClick="Submit_Click" />
                    </div>
                </div>
            </div>
            <%--Thay đổi sản phẩm--%>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <asp:Label ID="lblMessage" runat="Server" ForeColor="Red"></asp:Label><br />
                        <asp:GridView ID="gvSanPham" HeaderStyle-CssClass="info" runat="server" Width="100%" CssClass="table table-responsive table-condensed table-striped table-bordered table-hover" AutoGenerateColumns="false" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true" DataKeyNames="MaSP" EmptyDataText="Hiện không có sản phầm nào." OnRowEditing="EditRecord" OnRowCancelingEdit="CancelRecord" OnRowUpdating="UpdateRecord" OnRowDeleting="DeleteRecord">
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                                <asp:BoundField DataField="TenSX" HeaderText="Nhà sản xuất" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" ReadOnly="true"/>
                                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" ReadOnly="true"/>
                                <asp:BoundField DataField="GiaBan" HeaderText="Giá bán" />
                                <asp:BoundField DataField="PhanLoai" HeaderText="Phân loại" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" ReadOnly="true"/>
                                <asp:BoundField DataField="HinhAnh" HeaderText="File hình ảnh"  HeaderStyle-CssClass="visible-md visible-lg" ItemStyle-CssClass="visible-md visible-lg" />
                                <asp:BoundField DataField="ChiTiet" HeaderText="Chi tiết" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
