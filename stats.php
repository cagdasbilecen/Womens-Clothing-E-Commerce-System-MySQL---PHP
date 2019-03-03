<!DOCTYPE html>
<html>
<?php include 'header.php'?>

	bra
	<p><br><br></p>
	<p><br><br></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<div class="row">
				<div class="col-md-12" id="cart_msg"></div>
			</div>
					<?php 
					//session_start();
					include('dbconnect.php');
					//sql query with inner join , group by and order by // complex query 1 
					$sql="SELECT ui.first_name, ui.user_id,co.p_price FROM 
					customer_order as co INNER JOIN user_info as ui 
					ON co.uid = ui.user_id
					GROUP BY ui.first_name,ui.user_id,co.p_price 
					ORDER BY co.p_price DESC";
					$run_query=mysqli_query($conn,$sql);
					//$row=mysqli_fetch_array($run_query);
					//if(mysqli_num_rows($run_query)){
					echo "BEST SALES OF ALL TIME<br>" ;
					$i = 1;
					while($row=mysqli_fetch_array($run_query)) {
					$product_price=$row['p_price'];
					$user_first_name = $row['first_name'];
					$user_id = $row['user_id'];
					echo "
					<br>
					<br>
			    $i. UserID    : $user_id	 <br> 
					User Name : $user_first_name <br>
					Price     : $product_price $  <br>
					 " ;  
					 $i=$i+1;
					 } 
					 //////////////////////
					 //aggregate function with inner join, group and order by ... complex query 2 
					$sql2="SELECT pid,p_name, 
					(SUM(p_price)) AS Total 
					FROM customer_order as co 
					INNER JOIN products as p ON co.pid = p.product_id
					INNER JOIN user_info as ui ON co.uid = ui.user_id
					GROUP BY p_price 
					ORDER BY p_price DESC ";
					$run_query=mysqli_query($conn,$sql2);
					//$row=mysqli_fetch_array($run_query);
					//if(mysqli_num_rows($run_query)){
					echo " <br><br>BEST PRODUCTS / PRODUCTS AND ITS TOTAL GAINS <br>" ;
					
					while($row=mysqli_fetch_array($run_query)) {
					//$product_price=$row['SUM(p_price)'];
					$product_id = $row['pid'];
					$price_of_product = $row['Total'];
					$pname = $row['p_name'];
					echo "
					<br>
					<br>
			        ProductId    : $product_id	 <br> 
					Product Name : $pname <br>
					Total Price Of Product : $price_of_product $<br>
					
					 " ;  
					
					 }

					// products will be over soon (stock number less than 10 ) // WITH VIEW... VIEW SQL AS FOLLOWS : 
					
					/* CREATE VIEW stock_less_than_10 AS 

				SELECT p.product_id, p.product_title , c.cat_title , p.product_price , p.product_quantity 
				FROM products as p 
				INNER JOIN categories as c ON p.product_cat = c.cat_id 
				WHERE p.product_quantity<10
*/
					
					 $sql3 = "SELECT * FROM stock_less_than_10 " ; 
					 $run_query = mysqli_query($conn,$sql3);
					 echo "<br><br> PRODUCTS WILL BE OVER SOON / PRODUCTS WHICH HAS STOCK LESS THAN 10<br>" ; 
					 while($row=mysqli_fetch_array($run_query)) {
				     $product_id = $row['product_id'];
					 $product_name = $row['product_title'];
				     $product_cat = $row['cat_title'] ; 
					 $product_price = $row['product_price'];
					 $product_quantity = $row['product_quantity'];
					 
					 echo " <br><br> 
					 ProductId : $product_id <br>
					 Product Name : $product_name <br> 
					 Product Stock : $product_quantity <br>
					 Category : $product_cat <br>
					 Product Price : $product_price <br> 
					 " ; 
					 
					 }
					 
					 
					 // Procedure //
					 
					 $i=1;
					 $sql3 = "CALL `getBestCategory`();" ; 
					 $run_query = mysqli_query($conn,$sql3);
					 echo "<br><br> BEST CATEGORIES THAT CHOOSEN BY USERS, AND TOTAL GAIN OF CATEGORY<br>" ; 
					 while($row=mysqli_fetch_array($run_query)) {
				     $cat_title = $row['cat_title'];
					 $total = $row['Total'];
				    
					 
					 echo " <br><br> 
					 $i.Category Name : $cat_title <br>
					 Total Gain of $cat_title : $total <br> 
					 
					 " ; 
					 $i=$i+1;
					 }
			
					 
					 
					 
				
					 
					 
					 
					 
					 
					 ?>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<?php include 'footer.php' ?>
</html>