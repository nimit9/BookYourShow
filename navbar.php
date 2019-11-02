<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <nav>
      <a class="navbar-brand" href="index.php"><img src="images/book-show.png" alt=""/></a>
</nav>
<!--Search Bar -->
  <nav>
  <form class="form-inline" action="process_search.php" id="reservation-form" method="post" onsubmit="myFunction()">
  <input class="form-control mr-sm-2"type="text" placeholder="Search Movies Here..." style="width:500px"  required id="search111" name="search">
                     
                      
    <button class="btn btn-success" type="submit">Search</button>
  </form>
</nav>
  <!-- Links -->

  <nav style="float:right;">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.php">Home</a>
    </li>
   

    <!-- Dropdown --> 
       <li class="nav-item dropdown mr-5">
    <?php if(isset($_SESSION['user'])){
			  		   $us=mysqli_query($con,"select * from user where username='".$_SESSION['user']."'");
       					$user=mysqli_fetch_array($us);?>
      <a class="nav-link dropdown-toggle; text-capitalize" href="profile.php" id="navbardrop" data-toggle="dropdown">
      <?php echo $user['name'];?>
      </a>
      <div class="dropdown-menu">
      <a class="dropdown-item" href="profile.php">Profile</a>
        <a class="dropdown-item" href="logout.php">Logout</a>
      </div>
    <?php }
      else{?><a class="nav-link" href="login.php">Login</a><?php }?>
    </li>
  </ul>
</nav>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>