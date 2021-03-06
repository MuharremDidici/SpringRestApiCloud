<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel | Yönetim Sayfası</title>
<c:import url="/admin/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<c:import url="/admin/header"></c:import>
		<c:import url="/admin/menu"></c:import>
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Product <small>Product Page</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href='<s:url value="/admin/dashboard"></s:url>'><i
							class="fa fa-dashboard"></i> Dashboard</a></li>
					<li class="active">Product</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">

					<div class="col-xs-12">
						<a href='<s:url value="/admin/productAdd"></s:url>' class="btn btn-app pull-right"> <i class="fa fa-plus"></i>
							Add
						</a>
					</div>

					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">Product List</h3>

								<div class="box-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input id="ara" name="ara" type="text" name="table_search"
											class="form-control pull-right" placeholder="Search">

									<div class="input-group-btn">
			                          <button  onclick="pageProductSearch('0')" type="submit" class="btn btn-default">
			                          <i class="fa fa-search"></i>
				                      </button>
	                                       </div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							
							
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<tbody>
										<tr id="rows">
											<th style="width: 40px">ID</th>
											<th>Company Name</th>
											<th>Title</th>
											<th>Category</th>
											<th>Description</th>
											<th>Detail</th>
											<th>Price</th>
											<th>Type</th>
											<th>Campaign Name</th>
											
										
											
											
											<th style="width: 200px;">operation</th>
										</tr>
										
										<c:if test="${ not empty ls }">
										
											<c:forEach items="${ ls }" var="item">
												<tr id="${ item.getProductid() }" role="sil">
												    <td>${ item.getProductid() }</td>
													<td>${ item.getCompanyname() }</td>
													<td>${ item.getProducttitle() }</td>
													<td>${ item.getCategorytitle()}</td>
													<td>${ item.getProductdescription()}</td>
													<td>${ item.getProductdetail()}</td>
													<td>${ item.getProductprice()}</td>
													<td>${ item.getProducttype()}</td>
													<td>${ item.getCampaigntitle()}</td>
													
													
													<td>
														<button onclick="fncDelete(${ item.getProductid() }, 'productid' ,'products')" type="button" class="btn btn-danger btn-sm">Delete</button>
														<a href='<s:url value="/admin/productUpdate/${item.getProductid()}"></s:url>' type="submit" class="btn btn-primary btn-sm">Edit</a>
														<a href='<s:url value="/admin/imageupload/${item.getProductid()}"></s:url>' type="submit" class="btn btn-primary btn-sm">Img</a>
													</td>
												</tr>
											</c:forEach>
											
										</c:if>
										
									</tbody>
								</table>
							</div>
							
							<!-- /.box-body -->

							<div class="box-footer clearfix">
								<ul class="pagination pagination-sm no-margin pull-right"  id="pages">
									
								</ul>
							</div>

							<c:if test="${ empty ls }">
									<div style="text-align: center; padding: 10px;">Burada Data Yok !</div>
							</c:if>
						</div>
						<!-- /.box -->
					</div>
				</div>


			</section>
		</div>
		<c:import url="/admin/footer"></c:import>
		<c:import url="/admin/sidebar"></c:import>
	</div>
	<c:import url="/admin/js"></c:import>
	<script src='<s:url value="/resources/adminJS/product.js"></s:url>'></script>
</body>
</html>

