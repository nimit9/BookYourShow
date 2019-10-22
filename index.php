<html>
	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>	
<?php
include('header.php');
?>

<div class="content">
	<div class="wrap">
	<h2 class="w3-center">UPCOMING MOVIES</h2>

<!-- <div class="w3-content w3-display-container"> 
  <img class="mySlides" src="admin/news_images/housefull.jpg" style="width:100%; height:400px;">
  <img class="mySlides" src="admin/news_images/aankh.jpg" style="width:100%; height:400px;">
  <img class="mySlides" src="admin/news_images/china.jpg" style="width:100%; height:400px;">
  <img class="mySlides" src="admin/news_images/terminator.jpg" style="width:100%; height:400px;">

  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div> -->
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