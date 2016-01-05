<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets/styles/site.css" rel="stylesheet" />
    <title>MIFA</title>
    <meta name="description" content="MIFA" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper-section">
        <div class="row">
            <div class="col-xs-4">
                <div class="section-box">
                    <h4 class="section-name"><a class="text-uppercase color-1" href="san-pham.aspx">sản phẩm y tế</a></h4>
                    <a href="san-pham.aspx" class="section-img"><img class="reflect corner" src="assets/images/images-1.jpg" alt=""/></a>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="section-box">
                    <h4 class="section-name"><a class="text-uppercase color-2" href="san-pham.aspx">sản phẩm y tế</a></h4>
                    <a href="san-pham.aspx" class="section-img"><img class="reflect corner" src="assets/images/images-2.jpg" alt=""/></a>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="section-box">
                    <h4 class="section-name"><a class="text-uppercase color-3" href="san-pham.aspx">sản phẩm y tế</a></h4>
                    <a href="san-pham.aspx" class="section-img"><img class="reflect corner" src="assets/images/images-3.jpg" alt=""/></a>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPopup" Runat="Server">
</asp:Content>

