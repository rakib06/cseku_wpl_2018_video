<?php

include_once 'blade/view.VideoComment.blade.inc';
include_once COMMON.'class.common.inc';
include_once COMMON.'class.common.video.inc';
?>

<div class="panel panel-default"> <?php //1st div >  ?>
	

	<div class="container">
			<div class="well well-sm">
      <!-- Portfolio Item Heading -->
      <h7 class="my-4">Video Viewer
        <small>-Khulna University </small>
      </h7>
  </div>

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-8">
         

         <!-- <img class="img-fluid" src="http://placehold.it/750x500" alt="">  -->
        
				
	<!-- <div class="panel-heading">Video Tutorial Viewer</div>  <?php // 2nd div >  ?> -->

	 			
	 <div  style="overflow: auto;padding: -100px 100px;  >  <?php //3rd div >  ?>
	 	 <div id="video">  <?php //4th div >  ?>


	 	 		

	 	 	<?php
				$id = 'http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
				$Video2 = substr($id, -38);
				$Result1 = $_VideoCommentBAO->readvideo($Video2);
				//if DAO access is successful to load all the comments then show them one by one
				if($Result1->getIsSuccess()){ // 1st if start 
				$Vedio = $Result1->getResultObject();
			?> 
			<div class= "well well-sm" >
              	<h5 ><?php echo "Video Title : ".$Vedio->getTitle(); ?></h5>
			</div>
			<div>
				<?php
					$front = '<iframe width="750" height="500" src="https://www.youtube.com/embed/' ;
					$back = '" frameborder="0" allowfullscreen></iframe>';
					$link = $Vedio->getLink();
					//$link2= substr($link);
					$Link=$front.$link.$back;
					echo $Link; 
				?>
			</div>
			<?php
				}
				else{
				echo $Result->getResultObject(); //giving failure message //1st if close 
				}
			?>
		</br>
				</div>
			</div>

			<!--playlis div start-->
				<div class="col-md-4" style = "max-width: 500px;height:500px;position: relative;">
					<div class="well well-sm" style ="max-width: 600px;height:50px;" >
          	<h7 class="my-3" >Playlist </h7>
          			 </div>
          		<div class="col-md-4" style = "min-width: 500px ; max-width : 500px;height:500px;position: relative; overflow-x: hidden">	 

          		 <ul>	 	
          			 		
            <iframe width="144" height="100"
						src="https://www.youtube.com/embed/0IAPZzGSbME">
					</iframe>
			<h6>  Introduction to Algorithms  </h6>
				 
            <iframe width="144" height="100"
						src="https://www.youtube.com/embed/-JTq1BFBwmo">
					</iframe>
					<h6>  Priori Analysis and Posteriori Testing</h6>

				
            <iframe width="144" height="100"
						src="https://www.youtube.com/embed/FbYzBWdhMb0">
					</iframe>
					<h6> Characteristics of Algorithm </h6>
											<iframe width="144" height="100"
						src="https://www.youtube.com/embed/1U3Uwct45IY">
					</iframe>
					<h6> Frequency Count Method </h6>
					
				<iframe width="144" height="100"
						src="https://www.youtube.com/embed/9TlHvipP5yA">
					</iframe>
				<h6>  Time Complexity #1</h6>

				
				
           </ul>
					
				</div>
				
					 
					

		</div>  <!--playlist div end -->

		</div> 













		<?Php // 4th div close  // video div end comment box start ; //comment correction 17-09
//https://www.facebook.com/Rk.romankhan.903/videos/1001166663388200/
//https://www.facebook.com/toidicode/videos/543922712725727/
?>


<?php /* problem 
 <iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Ftoidicode%2Fvideos%2F543922712725727%2F&show_text=0&width=560" width="560" height="315" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>
<iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FRk.romankhan.903%2Fvideos%2F1001166663388200%2F&show_text=0&width=560" width="560" height="420" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>
*/
?>

		<div id = comment-box> <?php //1st cmnt post box div > ?>
			
		 	<form method="post" class="panel panel-info" >
		 		<input type='text' name ="txtvideo" value="<?php echo $Video2 ; ?>" placeholder="<?php echo $Video2 ; ?>"" style="display : none" />

		 		<div id = "comment"class="panel-heading" style="display: block;">Add a public comment</div>
		 		<div id ="txtcomment" class="panel-body">
					<textarea class="form-control" name="txtComment" 
					value="<?php if(isset($_GET['edit'])) echo $getROW->getVideo();  ?>" >
					</textarea>
					<input type="hidden" name="CreatorID" value="<?php if(isset($_GET['edit'])) echo $getROW->getCreatorID();  ?>" />
					</br>
					<input class="btn btn-success btn-sm"  type="submit" id="savebutton"  name="save" value="Comment">
				</div>


				<div id = "reply" class= "panel-heading" style="display: none;" >Add a public reply</div>
				<div id =reply_txt style="display: none;" class="panel-body">
					<textarea class="form-control" name="txtComment" 
					value="<?php if(isset($_GET['edit'])) echo $getROW->getVideo();  ?>" >
					</textarea>
					<input type="hidden" name="CreatorID" value="<?php if(isset($_GET['edit'])) echo $getROW->getCreatorID();  ?>" />
					</br>
					<input class="btn btn-success btn-sm"  type="submit" id="replysavebutton"  name="save" value="Reply">
				</div>
			</form>
		</div> <?php //1st cmnt post box end ?>




<script>
function myFunction() {
    var x = document.getElementById("reply");
    var y=document.getElementById("reply_txt");
    var c1=document.getElementById("comment");
    var c2=document.getElementById("txtcomment");
    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display="block";
        c1.style.display = "none";
        c2.style.display="none";
    } else {
        x.style.display = "none";
        y.style.display = "none";
        c1.style.display = "block";
        c2.style.display="block";
    }
}
</script>












		<div class="panel panel-success"> <?php // rc div 1 ?>
      		<div class="panel-heading">Recent comments</div> 
		</div>  <?php // rc div 1 end ?>

		<?php 
			//all comment fetch 
			$id = 'http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
			$Video2 = substr($id, -38);
			//echo $Video2;	
			$Result1 = $_VideoCommentBAO->readVideoComment($Video2);
			//if DAO access is successful to load all the comments then show them one by one
			if($Result1->getIsSuccess()){
				$VideoList = $Result1->getResultObject();
						for($i = 0; $i < sizeof($VideoList); $i++) {
							$Video = $VideoList[$i];
							if($i%2==0){
		?> 
		<div class="panel panel-danger" style="border-style:solid;background-color: white">
		<?php
										}
		else{ 
		?>
			<div class="panel panel-danger" style="border-style:solid;background-color: white">

		<?php 
		//upore div er oita 2 bar silo , 1bar kore disi
			}
		?>								
				<div class="panel-heading" style="font-size:12px;font-weight:bold ;position: relative; left: 0px; width:545px;">						

		<?php 
			$id= $Video->getCreatorID();
			$Result5 = $_VideoCommentBAO->readCreator($id);
			if ($Result5->getIsSuccess()) {
				$user = $Result5->getResultObject();
				echo $user->getFirstName().' '.$user->getLastName().'';
							    			} 
		?>		</div>
				<div style ="position: relative; left: 10px; width:1000px;"  class="panel panel-danger">
					<?php echo $Video->getComment();
					//calss.common.forum.inc er last a ase  
					?>
					<button type="button" onclick="myFunction()" class="btn btn-link">Reply</button> 
				</div>

				<div style ="position: relative; left: 50px; width:500px;font-weight:bold ;"  class="panel-heading">Md Rakibul Hasan Molla</div> 
									<div style ="position: relative; left: 50px; width:970px;"  class="panel panel-danger">Thank you <button type="button" onclick="myFunction()" class="btn btn-link">Reply</button> </div> 
										
									<div style ="position: relative; left: 100px; width:500px;font-weight:bold ;"  class="panel-heading">Tamim Iqbal </div> 
									<div style ="position: relative; left: 100px; width:970px;"  class="panel panel-danger">This is a test reply  <button type="button" onclick="myFunction()" class="btn btn-link">Reply</button></div>
		
						<?php		

							} // comment for loop end

							} // comment sucess if end 
							else
							{
								echo $Result->getResultObject();
							}


						
								?>
									 


		</div> <?php //comment box er div ?>



		</div>
</div>  <?php //panel body er div ?>

</div> <?php //last panel er div ?> 



