<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTEF-8">
<title>DASHMIN - Bootstrap Admin Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

</head>
<body>
	


	<!-- Content Start -->
	<div class="content">
		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
			<a href="/admin/home" class="navbar-brand d-flex d-lg-none me-4">
				<h2 class="text-primary mb-0">
					<i class="fa fa-hashtag"></i>
				</h2>
			</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
				class="fa fa-bars"></i>
			</a>
			<form class="d-none d-md-flex ms-4">
				<input class="form-control border-0" type="search"
					placeholder="Search">
			</form>
			<div class="navbar-nav align-items-center ms-auto">
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"> <i class="fa fa-envelope me-lg-2"></i>
						<span class="d-none d-lg-inline-flex">Message</span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="/img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item text-center">See all message</a>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"> <i class="fa fa-bell me-lg-2"></i>
						<span class="d-none d-lg-inline-flex">Notificatin</span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
						<a href="#" class="dropdown-item">
							<h6 class="fw-normal mb-0">Profile updated</h6> <small>15
								minutes ago</small>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<h6 class="fw-normal mb-0">New user added</h6> <small>15
								minutes ago</small>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<h6 class="fw-normal mb-0">Password changed</h6> <small>15
								minutes ago</small>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item text-center">See all
							notifications</a>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"> <img class="rounded-circle me-lg-2"
						src="/images/user/${isLogin.photo}" alt="" style="width: 40px; height: 40px;">
						<span class="d-none d-lg-inline-flex">${isLogin.fullname}</span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
						<a href="#" class="dropdown-item">My Profile</a> <a href="#"
							class="dropdown-item">Settings</a> <a href="/home/logout"
							class="dropdown-item">Log Out</a>
					</div>
				</div>
			</div>
		</nav>
		<!-- Navbar End -->


<!-- Page wrapper  -->
		<div class="page-wrapper py-2">
			<!-- Container fluid  -->
			<div class="container-fluid">
				<!-- Sales Cards  -->
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<h3 class="alert alert-info">
							Account List <a href="/admin/user/form"
								class="btn btn-success float-right">Add New Account</a>
						</h3>
						<table class="table text-center">
							<thead>
								<tr>
									<th style="font-weight: bolder; font-size: 18px">Username
										</th>
									<th style="font-weight: bolder; font-size: 18px">Password
										</th>
									<th style="font-weight: bolder; font-size: 18px">Image</th>
									<th style="font-weight: bolder; font-size: 18px">Fullname</th>
									<th style="font-weight: bolder; font-size: 18px">Email</th>
									<th style="font-weight: bolder; font-size: 18px">Available</th>
									<th style="font-weight: bolder; font-size: 18px">Role</th>
									<th style="font-weight: bolder; font-size: 18px">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${page.content}">
									<tr>
										<td>${item.username}</td>
										<td>${item.password}</td>
										<td><img src="/images/user/${item.photo}" alt=""
											width=90% /></td>
										<td>${item.fullname}</td>
										<td>${item.email}</td>
										<td>${item.activated?'Còn hoạt động':'Không còn hoạt động'}</td>
										<td>${item.admin?'Admin':'User'}</td>
										<td><a class='btn btn-warning btn-xs'
											style="font-size: 14px" href="/admin/user/edit/${item.username}"> <span
												class="glyphicon glyphicon-edit"></span> Edit
										</a> <a href="/admin/user/delete/${item.username}" style="font-size: 14px"
											class="btn btn-danger btn-xs mt-1"> <span
												class="glyphicon glyphicon-remove"></span> Delete
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<hr />
						<div class="d-grid gap-2 d-md-flex justify-content-md-center mt-4">
							<a class="btn btn-success" href="/admin/user?p=0">First</a> <a
								class="btn btn-success" href="/admin/user?p=${page.number-1}">Previous</a>
							<a class="btn btn-success" href="/admin/user?p=${page.number+1}">Next</a>
							<a class="btn btn-success"
								href="/admin/user?p=${page.totalPages-1}">Last</a>
						</div>
						<hr />
					</div>
				</div>
			</div>
			<!-- End Container fluid  -->
		</div>


		<!-- Footer Start -->
		<div class="container-fluid pt-4 px-4">
			<div class="bg-light rounded-top p-4">
				<div class="row">
					<div class="col-12 col-sm-6 text-center text-sm-start">
						&copy; <a href="#">Your Site Name</a>, All Right Reserved.
					</div>
					<div class="col-12 col-sm-6 text-center text-sm-end">
						<!--/*** This template is free as long as you keep the footer authorâs credit link/attribution link/backlink. If you'd like to use the template without the footer authorâs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a href="https://htmlcodex.com">HTML Codex</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->
	</div>
	<!-- Content End -->

</body>

</html>