<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@include file="Desktop/JPA/enterprise_application/src/main/webapp/WEB-INF/views/layout/admin/header.jsp" %>

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Category Manager</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a >Home</a></li>
                        <li class="breadcrumb-item active">Category Manager</li>
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
                        <h3 class="card-title">Update Category </h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                <i class="fas fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="card-body" style="display: block;">
                        <!-- /.card-header -->
                        <!-- form start -->
                        <%--@elvariable id="categoryEdit" type=""--%>
                        <f:form action="${pageContext.request.contextPath}/admin/category/updateCategory" method="POST" modelAttribute="categoryEdit">
                            <f:input path="category_id" type="hidden"/>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Category Name</label>
                                <f:input path="category_name" type="text"  class="form-control ${param.errorcategoryname !=null ?'border border-danger':''}" id="exampleInputEmail1"  placeholder="Enter Category Name..."/>
                                <p class="text-danger">${param.errorcategoryname}</p>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Trạng thái:</label>
                                <div class="custom-control custom-radio">
                                    <f:radiobutton class="custom-control-input" path="status" value="1"  id="customRadio1" />
                                    <label for="customRadio1" class="custom-control-label">Show</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <f:radiobutton class="custom-control-input" path="status" value="2" id="customRadio2" />
                                    <label for="customRadio2" class="custom-control-label">Hidden</label>
                                </div>
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

<%@include file="../../layout/admin/footer.jsp" %>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script type="text/javascript">
    $(function () {
        <c:if test="${param.success != null}">
        Swal.fire({
            title: 'Add new success',
            text: "Please confirm to continue!",
            icon: 'success',
        });
        </c:if>
        // Summernote
        $('#description').summernote();
        click();

    })

</script>
</body>
</html>
