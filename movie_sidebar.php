

 			
					<h3>Book Now</h3>
			
					
					<?php
          	 $today=date("Y-m-d");
			  $qry2=mysqli_query($con,"select * from  tbl_movie where status='0'");?>
			  <div class="card-deck">
				  
				  <?php
				  function truncate($text, $chars = 25) {
					if (strlen($text) <= $chars) {
						return $text;
					}
					$text = $text." ";
					$text = substr($text,0,$chars);
					$text = substr($text,0,strrpos($text,' '));
					$text = $text."...";
					return $text;
				}
			
				
          	  while($m=mysqli_fetch_array($qry2))
                   {
					?>
			<a href="about.php?id=<?php echo $m['movie_id'];?>">		
				<div class="card border-dark mb-3" style="max-width: 20rem; border-top-right-radius:20px; border-top-left-radius:10px;">
					<img class="rounded-bottom" style="height:300px; border-radius:10px;" src="<?php echo $m['image'];?>" class="card-img-top" alt="">
					<div class="card-body">
						<h5 class="card-title"><?php echo $m['movie_name'];?></h5>
						<p class="card-text"><?php echo truncate($m['desc'],150);?></p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Release Date:<?php echo $m['release_date'];?></li>
						<li class="list-group-item">Cast:<Span class="data"><?php echo $m['cast'];?></li>
						</ul>
				</div>
				   </a>
				<?php
				   }
  	    	?>
			</div>
			  	    
					
					
				
				
					
					
				
				
				
			
			
