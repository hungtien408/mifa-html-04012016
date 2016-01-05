<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content5" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=vi"></script>
    <script src="assets/js/google-maps.js" type="text/javascript"></script>
    <title>MIFA</title>
    <meta name="description" content="MIFA" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="head head-line">
        <h2 class="title">Liên hệ</h2>
    </div>
        <div class="contact"> 
            <!--address-->               
            <div class="address-company lineb">
                <div class="addess-box">
                    <p><span class="icon fa fa-map-marker"></span>Địa chỉ: 8 Vạn Kiếp, P.10, Quận 5, Tp. Hồ Chí Minh</p>
                    <p><span class="icon fa fa-phone"></span>Phone: +84 - 08 - 38554517 - Hotline: 0918 844 408 (Mr. Quang)</p>
                    <p><span class="icon fa fa-envelope-o"></span>Email: <a href="mailto:dntnminhphat1994@yahoo.com.vn">dntnminhphat1994@yahoo.com.vn</a></p>
                </div>
            </div>
            <!--sendmail map-->
            <div class="cart-form lineb">
                <div class="send-mail">
                    <h2>Gửi thư</h2>
                    <div class="node">Donec sit amet diam sed ligula elementum ultrices. Morbi as molestie a nunc sed faucibus equat mauris</div>
                    <div class="form-input">
                        <label class="form-lb">Họ và tên<span class="error">*</span></label>
                        <div class="form-text">
                            <asp:TextBox CssClass="input-text corner" ID="txtHoTen" runat="server" Text="Nhập họ tên..."></asp:TextBox> 
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                ValidationGroup="SendEmail" ControlToValidate="txtHoTen" ErrorMessage="Thông tin bắt buộc!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>      
                    <div class="form-input">
                        <label class="form-lb">Điện thoại<span class="error">*</span></label>
                        <div class="form-text">
                                <asp:TextBox CssClass="input-text corner" ID="txtPhone" runat="server" Text="Nhập điện thoại..."></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" Display="Dynamic" runat="server"
                                ControlToValidate="txtPhone" ValidationGroup="SendEmail" ErrorMessage="Thông tin bắt buộc!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-input">
                        <label class="form-lb">Email<span class="error">*</span></label>
                        <div class="form-text">
                            <asp:TextBox CssClass="input-text corner" ID="txtEmail" runat="server" Text="Nhập email..."></asp:TextBox>
                            <asp:RegularExpressionValidator  CssClass="lb-error" ID="RegularExpressionValidator1" runat="server" ValidationGroup="SendEmail"
                                ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server" ValidationGroup="SendEmail"
                                ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!" Display="Dynamic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>      
                    <div class="form-input">
                        <label class="form-lb">Nội dung<span class="error">*</span></label>
                        <div class="form-text">
                            <asp:TextBox CssClass="input-area corner" ID="txtNoiDung" runat="server" TextMode="MultiLine"  Text="Nhập nội dung..."></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server" ValidationGroup="SendEmail"
                                Display="Dynamic" ControlToValidate="txtNoiDung" ErrorMessage="Thông tin bắt buộc!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-input">
                        <label class="form-lb">Mã xác nhận<span class="error">*</span></label>
                        <div class="form-text">
                        <div class="codes">
                            <asp:TextBox ID="txtVerifyCode" CssClass="input-code corner" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                Enabled="True" WatermarkText="Mã xác nhận" TargetControlID="txtVerifyCode">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="SendEmail"
                                runat="server" Display="Dynamic" 
                                ErrorMessage="Mã xác nhận: không chính xác." CaptchaLinkButtonText="Refesh" 
                                CssClass="capcha" EnableRefreshImage="True">
                                <CaptchaImage RenderImageOnly="True" Width="125" Height="38" BackgroundNoise="High" BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" />
                            </asp:RadCaptcha>
                        </div>
                        </div>
                    </div>
                    <div class="form-input">
                        <div class="wrap-btn">
                            <asp:Button ID="btGui" CssClass="btn-a corner" runat="server" Text="gửi mail" ValidationGroup="SendEmail" OnClick="btGui_Click" />
                            <div class="node"><span class="error">*</span> Thông tin bắt buộc</div>
                        </div>
                    </div>
                    <div class="form-input">
                        <asp:Label runat="server" ID="lblMessage" ForeColor="red"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="map-wrap">
            <i>Nhập đỉa chỉ của bạn bên dưới để tìm đường đi</i>
            <div class="search-map">
                <div class="search-text"><input id="start" type="text" value="48 Nguyễn Tuyển , Quận 2, Tp HCM" /></div>
                <input id="getdiretion" class="getdiretion" type="button" onclick="calcRoute();" value="Tìm đường đi"/>
            </div>
            <div class="mapwrap">
                <div id="map">
                </div>
            </div>
            <div id="directionsPanel">
                <i>Kéo đường màu xanh trên bản đồ để thay đổi tuyến
                    đường</i>
            </div>
        </div>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" Runat="Server">
</asp:Content>

