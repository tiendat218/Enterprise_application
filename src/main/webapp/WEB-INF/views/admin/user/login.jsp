<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<c:if test="${pageContext.request.userPrincipal.name == null}">
<div class="login-box">
    <div class="login-logo">
        <a href=""><b>Admin</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="card">

        <div class="card-body login-card-body">
            <p class="login-box-msg">Sign in to start your session</p>
            <c:if test="${param.error != null}">
                <div >
                    <div class="alert alert-danger">Invalid username or password.</div>
                </div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div >
                    <div class="alert alert-info">You have been logged out.</div>
                </div>
            </c:if>

            <f:form action="/login" method="post">
                <div class="input-group mb-3">
                    <input type="email" class="form-control" name="username" placeholder="Email">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                    </div>
                    <!-- /.col -->
                </div>
            </f:form>
            <!-- /.social-auth-links -->
            <p class="mb-0">
                <a href="${pageContext.request.contextPath}/register" class="text-center">Register a new membership</a>
            </p>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <a href="${pageContext.request.contextPath}/admin" class="btn btn-primary btn-block">Admin</a>
</c:if>


<script src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/assets/dist/js/adminlte.min.js"></script>
</body>
</html>