
<!DOCTYPE html>
<html>

<!----<body> <--->
	<?php include 'header.php' ?>
	<br><br><br><br><br><br>
	 <div align="center" width="20px" height="30px" class="one-time">
	    <div><img src="assets/images/test.jpg"></div>
	    <div><img src="assets/images/test.jpg"></div>
	    <div><img src="assets/images/test.jpg"></div>
		<div><img src="assets/images/test.jpg"></div>
		<div><img src="assets/images/test.jpg"></div>
  	</div>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2">
			<div id="get_cat"></div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Categories</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div>-->
				<div id="get_brand"></div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Brands</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div>-->
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12" id="cartmsg">
					</div>
				</div>
				
				
				<div class="panel panel-info">
					<div class="panel-heading text-center">--Featured Products--
							<div class='pull-right'>
								Sort: &nbsp;&nbsp;&nbsp;<a href="#" id='price_sort'>Price</a> | <a href="#" id='pop_sort'>Popularity</a>
							</div>
					</div>
					<div class="panel-body">
					<div id="get_product"></div>
						<!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body"><img src="assets/prod_images/samsung_galaxy.jpg"></div>
								<div class="panel-heading">$500.00
								<button class="btn btn-danger btn-xs" style="float:right;">Add to Cart</button>
								</div>
							</div>
						</div>-->
					</div>
					<div class="panel-footer">&copy; 2018</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<center>
					<ul class='pagination' id='pageno'>
					</ul>
				</center>
			</div>
				<div class="modal fade" id="prod_detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">Product Details</h4>
				      </div>
				      <div class="modal-body" id='dynamic_content'>
				        ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>

			 <!-- Modal ends-->
		</div>
	</div>
	<?php include 'footer.php'?>
</html>
