<%-- 
    Document   : index
    Created on : 04-21-2016, 12:52:55 AM
    Author     : joseph1
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.sv.udb.controlador.PersonaCtrl"%>
<%@page import="com.sv.udb.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>JSP</title>
    <!-- Core CSS - Include with every page -->
    <link href="plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    </head>
    <body>
       <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <center><h1>PERSONA</h1></center>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i>Persona</a>
                    </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
    
	        <div id="page-wrapper">

            
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Persona
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
         <h1>Persona</h1>
        <h1>${mensAler}</h1>
        <form name="EquiposForm" method="POST" action="">    
           
            <input type="hidden" name="CodiPers" value="${CodiPers}"/>
           <div class="form-group">
            <label for="NombPers">Nombre: </label>
            <input class="form-control" type="text" name="NombPers" value="${NombPers}"/><br/>
            </div>
           <div class="form-group">
            <label for="ApelPers">Apellidos: </label>
            <input class="form-control" type="text" name="ApelPers" value="${ApelPers}"/><br/>
            </div>
            
           <div class="form-group">
            <label>Tipo: </label>
             <jsp:useBean id="beanTipoCtrl" class="com.sv.udb.controlador.TipoPersonaCtrl" scope="page"/>
                                                        <select name="cmbTipo" class="form-control">
                                                            <c:forEach items="${beanTipoCtrl.consTodo()}" var="fila">
                                                                <c:choose>
                                                                    <c:when test="${fila.codiTipoPers eq cmbTipo}">
                                                                        <option value="<c:out value="${fila.codiTipoPers}"></c:out>" selected="" ><c:out value="${fila.nombTipoPers}"></c:out></option>
                                                                    </c:when>    
                                                                    <c:otherwise>
                                                                        <option value="<c:out value="${fila.codiTipoPers}"></c:out>"><c:out value="${fila.nombTipoPers}"></c:out></option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </select>
                         
            </div>
            <div class="form-group">
                <label>Genero</label>
                <select name="cmbGenero" class="form-control">
                    <option value="M">Masculino</option>
                    <option value="F">Femenino</option>
                </select>
            </div>
            
           <div class="form-group">
               <label>Fecha Nacimiento</label>
               <input class="form-control" type="date" name="FechNaciPers">
           </div>
           
            <div class="form-group">
                <label>DUI</label>
                <input class="form-control" type="text" name="DuiPers">
            </div>
            
            <div class="form-group">
                <label>NIT</label>
                <input class="form-control" type="text" name="NitPers">
            </div>
                                                        
            <div  class="form-group">
                <label>Tipo de Sangre</label>
                <select name="cmbTipoSangre" class="form-control">
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </div>
             
            <div>
                <label>Ubicacion</label>
                <jsp:useBean id="beanUbicacionCtrl" class="com.sv.udb.controlador.UbicacionCtrl" scope="page"/>
                                                        <select name="cmbUbicacion" class="form-control">
                                                            <c:forEach items="${beanUbicacionCtrl.consTodo()}" var="fila">
                                                                <c:choose>
                                                                    <c:when test="${fila.codiUbic eq cmbUbicacion}">
                                                                        <option value="<c:out value="${fila.codiUbic}"></c:out>" selected="" ><c:out value="${fila.nombUbic}"></c:out></option>
                                                                    </c:when>    
                                                                    <c:otherwise>
                                                                        <option value="<c:out value="${fila.codiUbic}"></c:out>"><c:out value="${fila.nombUbic}"></c:out></option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </select>
                                        </div>
                                        
                                                        
            <input class="btn btn-primary" type="submit" name="cursBton" value="Guardar"/>
            <input class="btn btn-primary" type="submit" name="cursBton" value="Modificar"/>
            <input class="btn btn-primary" type="submit" name="cursBton" value="Eliminar" onclick="return confirm('¿Estas seguro que deseas eliminar este registro?');"/>
            <input class="btn-btn-primary" type="submit" name="cursBton" value="Historial">
        </form>
                          </div>
          </div>
            </div>
       <div class="row">
                <div class="col-lg-12">
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Kitchen Sink
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                            
        </div>
        <script src="plugins/jquery-1.10.2.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="plugins/pace/pace.js"></script>
    <script src="scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="plugins/morris/morris.js"></script>
    <script src="scripts/dashboard-demo.js"></script>
    </body>
</html>





















