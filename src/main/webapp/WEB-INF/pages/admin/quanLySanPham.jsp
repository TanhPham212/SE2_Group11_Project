<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Product</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.modal-open {
	overflow: scroll;
}
</style>
</head>
<body>
	<jsp:include page="template/header.jsp"></jsp:include>
	<jsp:include page="template/sidebar.jsp"></jsp:include>

	<div class="col-md-9 animated bounce">
		<h3 class="page-header">Manage Product</h3>

		<div class="form-group form-inline">
			<label for="sel1">Add Product (In Category): </label> <select
				id="danhMucDropdown" class="form-control">
				<c:forEach var="danhMuc" items="${listDanhMuc}">
					<option value="${danhMuc.id }">${danhMuc.tenDanhMuc }</option>
				</c:forEach>
			</select>
		</div>
		<hr>

		<form class="form-inline" id="searchForm" name="searchObject">
			<div class="form-group">
				<select class="form-control" name="danhMucId" id="danhMuc">
					<c:forEach var="danhMuc" items="${listDanhMuc }">
						<option value="${danhMuc.id}">${danhMuc.tenDanhMuc}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<select class="form-control" name="hangSXId" id="hangSanXuat">
					<option value="">All Brands</option>
					<c:forEach var="nhanHieu" items="${listNhanHieu }">
						<option value="${nhanHieu.id}">${nhanHieu.tenHangSanXuat}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<select class="form-control" name="donGia" id="price">
					<option value="">All Prices</option>
					<option value="duoi-2-trieu">Under 2m</option>
					<option value="2-trieu-den-4-trieu">2m - 4m</option>
					<option value="4-trieu-den-6-trieu">4m - 6m</option>
					<option value="6-trieu-den-10-trieu">6 m - 10 m</option>
					<option value="tren-10-trieu">Over 10 m</option>
				</select>
			</div>

			<div class="form-group">
				<select class="form-control" name="sapXepTheoGia">
					<option value="asc">From lowest- highest</option>
					<option value="desc">From highest- lowest</option>
				</select>
			</div>

			&nbsp;&nbsp;
			<button type="button" class="btn btn-primary" id="btnDuyetSanPham">Sort</button>
		</form>

		<div class="form-group form-inline"
			style="float: right; margin-right: 10px; top: -33px; position: relative;"">
			<input class="form-control" type="text" id="searchById"
				placeholder="quick searching"> <span
				class="glyphicon glyphicon-search" aria-hidden="true"
				style="left: -30px; top: 4px;"></span>
		</div>

		<hr />
		<table class="table table-hover sanPhamTable "
			style="text-align: center;">
			<thead>
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>Category</th>
					<th>Brand</th>
					<th>Price</th>
					<th>Quantity</th>
				</tr>
			</thead>
			<tbody>
			</tbody>

		</table>

		<ul class="pagination">
		</ul>
	</div>

	<div class="row col-md-6">
		<form id="lapTopForm" class="lapTopForm">
			<div class="modal fade lapTopModal" tabindex="-1" role="dialog"
				data-keyboard="false" data-backdrop="static">
				<div class="modal-dialog modal-lg" role="document"
					style="width: 60%;">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add/Update Laptop</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div>
									<input type="hidden" class="form-control" name="danhMucId"
										id="idDanhMucLaptop">
								</div>
								<div>
									<input type="hidden" class="form-control" name="id"
										id="idSanPhamLapTop" readonly>
								</div>
								<div class="form-group col-md-7">
									<label for="inputPassword4">Product Name</label> <input
										type="text" class="form-control" name="tenSanPham">
								</div>
								<div class="form-group col-md-5">
									<label for="inputPassword4">Price</label> <input
										type="number" class="form-control" name="donGia" min="0"
										value="0" id="test">
								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-4">
									<label for="inputState">Brand</label> <select
										name="nhaSXId" class="form-control" id="nhaSXId">
										<c:forEach var="nhanHieu" items="${listNhanHieu }">
											<option value="${nhanHieu.id}">${nhanHieu.tenHangSanXuat}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">OS</label> <input
										type="text" class="form-control" name="heDieuHanh">
								</div>

								<div class="form-group col-md-4">
									<label for="inputEmail4">Ram</label> <input type="text"
										class="form-control" name="ram" required="required">
								</div>

							</div>

							<div class="row">

								<div class="form-group col-md-4">
									<label for="inputPassword4">Monitor</label> <input type="text"
										class="form-control" name="manHinh" required="required">
								</div>
								<div class="form-group col-md-4">
									<label for="inputEmail4">CPU</label> <input type="text"
										class="form-control" name="cpu">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">Design</label> <input type="text"
										class="form-control" name="thietKe" required="required">
								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-12">
									<label for="inputPassword4">Overall</label>
									<textarea class="form-control" name="thongTinChung"
										placeholder="" rows="2" required="required"></textarea>
								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-4">
									<label for="inputEmail4">Battery</label> <input
										type="text" class="form-control" name="dungLuongPin"
										required="required">
								</div>
								<div class="form-group col-md-4">
									<label for="inputEmail4">Warranty</label> <input
										type="text" class="form-control" name="thongTinBaoHanh"
										required="required">
								</div>

								<div class="form-group col-md-4">
									<label for="inputPassword4">Quantity</label> <input
										type="number" class="form-control" name="donViKho" min="0"
										required="required" value="0" id="test2">
								</div>
							</div>
							<div>
								<label for="inputEmail4">Image</label> <input type="file"
									class="form-control" id="inputEmail4" name="hinhAnh">
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cancel</button>
							<input class="btn btn-primary" id="btnSubmit" type="button"
								value="Confirm" />
						</div>

					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
		</form>
	</div>


	<div class="row col-md-6">
		<form class="otherForm" id="otherForm">
			<div class="modal fade otherModal" tabindex="-1" role="dialog">
				<div class="modal-dialog modal-lg" role="document"
					style="width: 60%;">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"></h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div>
									<input type="hidden" class="form-control" name='danhMucId'
										id="idDanhMucKhac">
								</div>
								<div>
									<input type="hidden" class="form-control" name="id"
										id="idSanPhamKhac" readonly="true">
								</div>
								<div class="form-group col-md-12">
									<label for="inputPassword4">Name</label> <input
										type="text" class="form-control" name="tenSanPham">
								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-6">
									<label for="inputState">Brand</label> <select
										name="nhaSXId" id="nhaSXIdKhac" class="form-control">
										<c:forEach var="nhanHieu" items="${listNhanHieu }">
											<option value="${nhanHieu.id }">${nhanHieu.tenHangSanXuat}
											</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Price</label> <input
										type="number" class="form-control" name="donGia" min="0"
										value="0" id="donGiaKhac">
								</div>
							</div>

							<div class="row">
								<div class="form-group col-md-12">
									<label for="inputPassword4">Overall</label>
									<textarea class="form-control" id="inputPassword4"
										placeholder="" rows="2" name="thongTinChung"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Warranty</label> <input
										type="text" class="form-control" id="inputEmail4"
										name="thongTinBaoHanh">
								</div>

								<div class="form-group col-md-6">
									<label for="inputPassword4">Quantity</label> <input
										type="number" class="form-control" name="donViKho" min="0"
										value="0">
								</div>
							</div>
							<div>
								<label for="inputEmail4">Image</label> <input type="file"
									class="form-control" name="hinhAnh">
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cancel</button>
							<button class="btn btn-primary" id="btnSubmit" type="submit">Confirm</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
		</form>
	</div>

	<div class="row col-md-10">
		<form class="chiTietForm">
			<div class="modal fade" id="chiTietModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog " role="document" style="width: 60%">
					<div class="modal-content">
						<div class="modal-header">
							<h3 class="title" style="text-align: center; font-weight: bolder;">Detail</h3>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
								<div class="card">
									<div class="container-fliud">
										<div class="wrapper row">
											<div class="preview col-md-6">

												<div class="preview-pic tab-content">
													<div class="tab-pane active" id="pic-1">
														<img style="width: 350px; height: 350px" class="hinhAnh" />
													</div>
												</div>
											</div>
											<div class="details col-md-6" style="font-size: 16px">
												<p class="maSanPham"></p>
												<p class="tenSanPham"></p>
												<p class="hangSangXuat"></p>
												<p class="cpu"></p>
												<p class="ram"></p>
												<p class="thietKe"></p>
												<p class="heDieuHanh"></p>
												<p class="manHinh"></p>
												<p class="dungLuongPin"></p>
												<p class="thongTinChung"></p>
												<p class="baoHanh"></p>
												<p class="donGia"></p>
												<p class="donViKho"></p>
												<p class="donViBan"></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	</div>


	<jsp:include page="template/footer.jsp"></jsp:include>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.serializeJSON/2.9.0/jquery.serializejson.js"></script>
	<script src="<c:url value='/js/sanPhamAjax.js'/>"></script>
</body>
</html>