 <%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master"
AutoEventWireup="true" CodeFile="index.aspx.cs"
Inherits="consultar_radicados.pages.index" %>
<asp:content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Consultar Radicados
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/style.css">
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server" id="idFormulario">
        <main class="container-fluid">
            <div class="container-lg container-md containerPrincipal">
                <div class="classContainerLogos">
                    <img src="../assets/imgs/LogoGobierno.png"
                        alt="Colombia potencia de vida">
                    <img src="../assets/imgs/logoDNDA.jpg" alt="Logo DNDA">
                </div>
                <div class="classContainerDatos">
                    <p class="classApreciado">Apreciado Ciudadanos</p>
                    <p class="classBienvenido">Bienvenido, puede buscar el
                        estado de su tramite por cualquier de los siguientes
                        filtros, <strong>solamente se puede escoger una opción para buscar.</strong></p>
                    <div class="classRadio">
                        <div>
                            <input class="form-check-input" type="radio"
                                name="consultar" id="idDocumento">
                            <label for="idDocumento">Número de
                                Documento.</label>
                        </div>
                        <div>
                            <input class="form-check-input" type="radio"
                                name="consultar" id="idRadicado">
                            <label for="idRadicado">Número de Radicado.</label>
                        </div>
                        <div>
                            <input class="form-check-input" type="radio"
                                name="consultar" id="idCorreo">
                            <label for="idCorreo">Correo Electronico.</label>
                        </div>
                    </div>
                    <div class="classForm">
                        <div class="classElementsForm">
                            <div class="classDato">
                                <label for="idDocumento2">Número de
                                    Documento:</label>
                                    <asp:TextBox ID="idDocumento2" runat="server" CssClass="classFiltroInput form-control idDocumento2" TextMode="Number" min="0" max="9999999999999" required="true" Enabled="false"></asp:TextBox>
                                </div>
                            <div class="classDato">
                                <label for="idRadicado2">Número de
                                    Radicado:</label>
                                <asp:TextBox ID="idRadicado2" runat="server" CssClass="classFiltroInput form-control idRadicado2" required="true" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="classDato">
                                <label for="idCorreo2">Correo
                                    Electronico:</label>
                                <asp:TextBox ID="idCorreo2" runat="server" CssClass="classFiltroInput form-control idCorreo2" TextMode="Email" required="true" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="classBtn">

                            <asp:button runat="server"
                                CssClass="btn btn-primary idBtnConsultar" ID="idBtnConsultar"
                                Text="Consultar" OnClick="btnSelectRadicados_Click" Enabled="false"/>
                        </div>
                    </div>
                    <h2 class="classTitulo">Listado de Trámites</h2>

                    <asp:GridView ID="gridTramites" runat="server" CssClass="table table-hover " AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="NumeroRadicado" HeaderText="NÚMERO DE RADICADO" />
                            <asp:BoundField DataField="FechaRadicado" HeaderText="FECHA DE RADICADO" />
                            <asp:BoundField DataField="Estado" HeaderText="ESTADO" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </main>
    </form>
    <script src="js/habilitarBoton.js"></script>
</asp:content>
