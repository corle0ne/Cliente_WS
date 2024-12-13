<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Cliente_WS.Catalogos.Calculadora.Calculadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="containter">

        <div class="row text-center">
            <%--campos de textoK--%>
            <div class="col-4">
                <asp:Label ID="lbla" runat="server" Text="Numero 1"></asp:Label>
                <asp:TextBox ID="txta" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <br />
            <div class="col-4">
                <asp:Label ID="lblb" runat="server" Text="Numero 2"></asp:Label>
                <asp:TextBox ID="txtb" runat="server" TextMode="Number"></asp:TextBox>
            </div>
        </div>

        <div class="row text-center">
            <%--botones--%>
            <asp:Button ID="btnSumar" runat="server" Text="+" OnClick="btnSumar_Click" CssClass="m-5 cool" />
            <asp:Button ID="btRestar" runat="server" Text="-" OnClick="btRestar_Click" CssClass="m-5 cool" />
            <asp:Button ID="btnMultiplicar" runat="server" Text="*" OnClick="btnMultiplicar_Click" CssClass="m-5 cool" />
            <asp:Button ID="btnDividir" runat="server" Text="/" OnClick="btnDividir_Click" CssClass="m-5 cool" />
         </div>

        <div class="row">
            <div class="text-center">
                <h2>
                    <asp:Label ID="lblresultado" runat="server" Text=""></asp:Label>
                </h2>
            </div>
        </div>
    </div>


</asp:Content>
