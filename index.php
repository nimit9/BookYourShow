<html>
	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>	
<?php
include('header.php');
?>

<div class="content">
	<div class="wrap">
	<h2 class="w3-center">UPCOMING MOVIES</h2>


<?php include('upcoming.php');?>	
<hr> 
<?php include('movie_sidebar.php');?>
</div>
<?php include('footer.php');?>
</div>


<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>