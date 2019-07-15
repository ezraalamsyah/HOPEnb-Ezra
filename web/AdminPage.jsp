<%-- 
    Document   : AdminPage
    Created on : Jul 14, 2019, 11:04:07 PM
    Author     : MikyalN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
    <%@page import="Controller.DonationDAO,Model.Donation,Controller.ContactDAO,Model.Contact,Controller.EventsDAO,Model.Events,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
    <!-- table -->
    <div class="main-card mb-3 card">
        <div class="card-header"><i class="header-icon lnr-license icon-gradient bg-plum-plate"> </i>Admin Page
            <div class="btn-actions-pane-right">
                <div class="nav">
                    <a data-toggle="tab" href="#tab-eg2-0" class="btn-pill btn-wide active btn btn-outline-alternate btn-sm">Events</a>
                    <a data-toggle="tab" href="#tab-eg2-1" class="btn-pill btn-wide mr-1 ml-1  btn btn-outline-alternate btn-sm">Donasi</a>
                    <a data-toggle="tab" href="#tab-eg2-2" class="btn-pill btn-wide  btn btn-outline-alternate btn-sm">Pesan</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="tab-content">
                <div class="tab-pane active" id="tab-eg2-0" role="tabpanel">
                    <div class="main-card mb-3 card">
                        
                        <div class="card-body"><h5 class="card-title">Tabel Events</h5>
                            <%
                                List<Events> listEvents = EventsDAO.getAllRecordsE();
                                request.setAttribute("list", listEvents);
                            %>
                            <table class="mb-0 table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Events</th>
                                        <th>Image</th>
                                        <th>Image Alternate</th>
                                        <th>Lokasi Events</th>
                                        <th>Caption</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listPesan}" var="v">
                                        <tr>
                                            <td>${v.getIdE()}</td>
                                            <td>${v.getNamaE()}</td>
                                            <td>${v.getImageE()}</td>
                                            <td>${v.getAltE()}</td>
                                            <td>${v.getLokasiE()}</td>
                                            <td>${v.getCaptE()}</td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab-eg2-1" role="tabpanel">
                    <div class="main-card mb-3 card">
                        <div class="card-body"><h5 class="card-title">Tabel Donasi</h5>
                            <%
                            List<Donation> list = DonationDAO.getAllRecords();
                            request.setAttribute("list", list);
                            %>
                            <table class="mb-0 table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Donatur</th>
                                        <th>E-mail</th>
                                        <th>Jumlah Donasi</th>
                                        <th>Metode Pembayaran</th>
                                        <th>Pesan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${list}" var="u">
                                    <tr>
                                        <td>${u.getIdD()}</td>
                                        <td>${u.getNamaD()}</td>
                                        <td>${u.getEmailD()}</td>
                                        <td>${u.getJumlahD()}</td>
                                        <td>${u.getMetodeD()}</td>
                                        <td>${u.getPesanD()}</td>                                        
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab-eg2-2" role="tabpanel">
                    <div class="main-card mb-3 card">
                        <div class="card-body"><h5 class="card-title">Tabel Pesan</h5>
                            <%
                                List<Contact> listPesan = ContactDAO.getAllRecords();
                                request.setAttribute("list", listPesan);
                            %>
                            <table class="mb-0 table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Subjek</th>
                                        <th>Pesan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listPesan}" var="v">
                                        <tr>
                                            <td>${v.getIdC()}</td>
                                            <td>${v.getNamaC()}</td>
                                            <td>${v.getEmailC()}</td>
                                            <td>${v.getSubjekC()}</td>
                                            <td>${v.getPesanC()}</td>                                        
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-block text-center card-footer">
            <a href="" class="btn-wide text-left btn btn-success">Add Data Events</a>
            <a href="" class="btn-wide text-center btn btn-success">Add Data Donasi</a>
            <a href="" class="btn-wide text-right btn btn-success">Add Data</a>
        </div>
    </div>
    <!-- //table -->
    <script type="text/javascript" src="assets/scripts/main.js"></script>
</body>
</html>