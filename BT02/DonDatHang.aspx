<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="BT02.DonDatHang" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="text-center">
        <div class="container text-center w-50 mt-3 border border-info rounded-lg" >

            <div class="bg-light">
                <asp:Label ID="lblheader" runat="server" Text="DON DAT HANG" CssClass="h1 text-success"></asp:Label>

            </div>
            <div class="row mb-2">
                <div class=" col-2 text-right  mt-2">
                    <asp:Label ID="lblHoTen" runat="server" Text="Khach Hang:"></asp:Label>
                </div>
                <div class="col-8 text-right">
                    <asp:TextBox ID="txtHoTen" Width="100%" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ForeColor="Red" ErrorMessage="(*)ten khong duoc trong" ControlToValidate="txthoten"></asp:RequiredFieldValidator>
                </div>
            </div>
              <div class="row mb-2">
                <div class=" col-2 text-right  mt-2" id="txthoten">
                    <asp:Label ID="lblDiaChi" runat="server" Text="Dia Chi:"></asp:Label>

                </div>
                <div class="col-8 text-right">
                    <asp:TextBox ID="txtDiaChi" Width="100%" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvfdiachi" runat="server" ForeColor="Red" ErrorMessage="(*)dia chi khong duoc trong" ControlToValidate="txtDiaChi"></asp:RequiredFieldValidator>

                </div>
            </div>
              <div class="row mb-2">
                <div class=" col-2 text-right  mt-2">
                    <asp:Label ID="lblThue" runat="server" Text="Ma So Thue :"></asp:Label>
                </div>
                <div class="col-8 text-right">
                    <asp:TextBox ID="txtThue" Width="100%" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvThue" runat="server" ErrorMessage="(*)Vui long nhap dung kieu du lieu!!" ForeColor=""  Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtThue"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvthue" runat="server" ForeColor="Red" ErrorMessage="(*)MST khong duoc trong" ControlToValidate="txtThue"></asp:RequiredFieldValidator>

                </div>
            </div>
              <div class="row mb-2">
                <div class=" col-6 text-center  mt-2 border border-info">
                    <asp:Label ID="Label1" runat="server" Text="Chon cac loai banh:"  CssClass="h3 text-success"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:DropDownList ID="ddlbanh" Width="100%"  runat="server"></asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="So luong" ></asp:Label>
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoLuong" runat="server" ControlToValidate="txtsoluong"
                        ErrorMessage="(*)Số lượng không được để trống." Display="Dynamic" ForeColor="Red" />
                    <asp:RegularExpressionValidator ID="revSoLuong" runat="server" ControlToValidate="txtsoluong"
                        ErrorMessage="(*)Số lượng phải là số nguyên dương." Display="Dynamic" ForeColor="Red"
                        ValidationExpression="^\d+$" />
                      <asp:Label ID="Label3" CssClass="w-50" runat="server" Text="cai" ></asp:Label>

                    <br />
                    <asp:Button ID="btnchuyen" runat="server" Text=">" OnClick="btnchuyen_Click" />

                </div>
               
           
              <div class=" col-6 text-center  mt-2 border border-info">
                    <asp:Label ID="Label4" runat="server" Text="Danh sach banh duoc dat:"  CssClass="h3 text-success"></asp:Label>
                    <br />
                    <br />
                    <br />
                  <asp:ListBox CssClass="w-100" ID="lstbanh" runat="server" AutoPostBack="True"></asp:ListBox>
                   
                 
                    <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />

                </div>
                   </div>
             <div class="row mb-2">
                <div class=" col text-center  mt-2">
                    <asp:Button CssClass="btn btn-info" ID="btnin" runat="server" Text="In don dat hang" OnClick="btnin_Click" />
                   
                </div>
            </div>

        </div>
       <div id="orderDetails" runat="server" class="card border-info mb-3">
    <h5 class="card-header bg-info text-white">Thông tin đơn hàng</h5>
    <div class="card-body text-info">
        <p class="card-text">Khách hàng: <asp:Label ID="lblCustomerName" runat="server" Text=""></asp:Label></p>
        <p class="card-text">Địa chỉ: <asp:Label ID="lblCustomerAddress" runat="server" Text=""></asp:Label></p>
        <p class="card-text">Mã số thuế: <asp:Label ID="lblTaxID" runat="server" Text=""></asp:Label></p>
        <p class="card-text">Loại bánh đã đặt:</p>
        <ul class="list-group" id="orderedItems" runat="server"></ul>
    </div>
</div>



    </form>
</body>
</html>

