 <%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master"
AutoEventWireup="true" CodeFile="index.aspx.cs"
Inherits="consultar_radicados.pages.index" %>
<asp:content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Consultar Radicados
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server" id="idFormulario">
        <main class="container-fluid">
            <div class="container-lg container-md containerPrincipal">
                <div class="classContainerLogos">
                    <img src="assets/imgs/LogoGobierno.png"
                        alt="Colombia potencia de vida">
                    <img src="assets/svgs/logoDNDA.svg" alt="Logo DNDA">
                    
                </div>
                <div class="classContainerDatos">
                    <p class="classApreciado">CONSULTAR ESTADO DE TRÁMITE</p>
                    <p class="classBienvenido">Le invitamos a consultar el estado de su trámite, escogiendo uno de los siguientes filtros: 
                    <div class="classRadio">
                        <div>
                            <input class="form-check-input" type="radio"
                                name="consultar" id="idDocumento">
                            <label for="idDocumento">Número de
                                documento.</label>
                        </div>
                        <div>
                            <input class="form-check-input" type="radio"
                                name="consultar" id="idRadicado">
                            <label for="idRadicado">Número de radicado.</label>
                        </div>
                        <div>
                            <input class="form-check-input" type="radio"
                                name="consultar" id="idCorreo">
                            <label for="idCorreo">Correo electrónico.</label>
                        </div>
                    </div>
                    <div class="classForm">
                        <div class="classElementsForm">
                            <div class="classDato">
                                <label for="idDocumento2">Número de
                                    documento:</label>
                                    <asp:TextBox ID="idDocumento2" runat="server" CssClass="classFiltroInput form-control idDocumento2" TextMode="Number" min="0" max="9999999999999" required="true" Enabled="false"></asp:TextBox>
                                </div>
                            <div class="classDato">
                                <label for="idRadicado2">Número de
                                    radicado:</label>
                                <asp:TextBox ID="idRadicado2" runat="server" CssClass="classFiltroInput form-control idRadicado2" required="true" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="classDato">
                                <label for="idCorreo2">Correo
                                    electrónico:</label>
                                <asp:TextBox ID="idCorreo2" runat="server" CssClass="classFiltroInput form-control idCorreo2" TextMode="Email" required="true" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="classBtn">

                            <asp:button runat="server"
                                CssClass="btn btn-secondary idBtnConsultar " ID="idBtnConsultar"
                                Text="Consultar" OnClick="btnSelectRadicados_Click" Enabled="false"/>
                        </div>
                    </div>
                    <h2 class="classTitulo">Listado de trámites</h2>
                    
                    <div class="classContainerTable">
                        <asp:GridView ID="gridTramites" runat="server" CssClass="table table-hover" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="NUMERO_RADICADO" HeaderText="NÚMERO DE RADICADO" />
                                <asp:BoundField DataField="FECHA_RADICADO" HeaderText="FECHA DE RADICADO" />
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ItemStyle-CssClass="claseEtsadoTable" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </main>
    </form>
    <script src="js/habilitarBoton.js"></script>
    <script src="js/addUrl.js"></script>
</asp:content>
