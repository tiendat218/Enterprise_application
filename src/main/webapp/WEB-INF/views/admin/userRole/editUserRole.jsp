<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<c:set var="pageTitle" scope="request" value="User Role Manager"/>
<%@include file="../../layout/admin/header.jsp" %>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>User Role Manager</h1>

                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a>Home</a></li>
                        <li class="breadcrumb-item active">User Role Manager</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <!-- general form elements -->
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title">Update user role Account!</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                <i class="fas fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="card-body" style="display: block;">
                        <!-- /.card-header -->
                        <!-- form start -->
                        <f:form action="${pageContext.request.contextPath}/admin/roleUser/updateRoleUser" method="POST" modelAttribute="userRolesEdit">
                        <div class="form-group">
                            <f:input path="id" type="hidden"/>
                            <label>Account:</label>
                            <f:select class="custom-select" path="userId.id">
                                <f:options items="${listUser}"  itemLabel="email" itemValue="id" />
                            </f:select>
                        </div>
                        <div class="form-group">
                            <label>Role:</label>
                            <f:select class="custom-select" path="roleId.id">
                                <f:options items="${listRole}"  itemLabel="name" itemValue="id" />
                            </f:select>
                        </div>
                        <div class="form-group">
                            <div class="form-group">

                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" class="btn btn-info">Update</button>
                            </div>
                            </f:form>
                        </div>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="../../layout/admin/footer.jsp"/>
<%@include file="/WEB-INF/views/layout/admin/infoActionc.jsp" %>