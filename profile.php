<?php include('header.php');
if(!isset($_SESSION['user']))
{
	header('location:login.php');
}
	$qry2=mysqli_query($con,"select * from movie where movie_id='".$_SESSION['movie']."'");
	$movie=mysqli_fetch_array($qry2);
	?>
<div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="section group">
					<div class="about span_1_of_2">	
						<h3>BOOKINGS</h3>
						<?php include('msgbox.php');?>
<?php
$user = $_SESSION['user'];
$bk=mysqli_query($con,"select * from tickets inner join shows on tickets.show_id = shows.s_id inner join theatre on shows.theatre=theatre.t_id where user='$user'");
// echo '<pre>';
// var_dump($_SESSION);
// var_dump(mysqli_fetch_array($bk));
// echo '</pre>';
if(mysqli_num_rows($bk))
{
?>
<table class="table table-bordered">
<thead>
<th>Booking Id</th>
<th>Movie</th>
<th>Theatre</th>
<th>Show Time</th>
<th>Seats</th>
<th>Amount</th>
</thead>
<tbody>
<?php

while($bkg=mysqli_fetch_array($bk))
{
	$showId = intval($bkg['show_id']);
	

$m=mysqli_query($con,"select * from movie where movie_id=(select movie_id from shows where s_id='".$bkg['show_id']."')");
$mov=mysqli_fetch_array($m);

$st=mysqli_query($con,"select * from show_time where st_id=(select time from shows where s_id='".$bkg['show_id']."')");
$stm=mysqli_fetch_array($st);
?>
<tr>
<td>
<?php echo $bkg['ticket_id'];?>
</td>
<td>
<?php echo $mov['movie_name'];?>
</td>
<td>
<?php echo $bkg['name'];?>
</td>
<td>
<?php echo date('h:i A',strtotime($stm['start_time']));?>
</td>
<td>
<?php echo $bkg['no_seats'];?>
</td>
<td>
Rs <?php echo $bkg['amount'];?>
</td>
</tr>
<?php
}
?></tbody>
</table>
<?php
}
else
{
?>
<h3>No Previous Bookings</h3>
<?php
}
?>
</div>			
<?php include('movie_sidebar.php');?>
				
			</div>
				<div class="clear"></div>		
			</div>
	</div>
</div>
<?php include('footer.php');?>
<script type="text/javascript">
	$('#seats').change(function(){
		var charge=<?php echo $screen['charge'];?>;
		amount=charge*$(this).val();
		$('#amount').html("Rs "+amount);
		$('#hm').val(amount);
	});
</script>