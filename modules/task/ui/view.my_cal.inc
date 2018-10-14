

<?php

include_once 'blade/view.my_cal.blade.inc';

if(!(isset($_GET['showtask'])))
{
 ?>


 <div class="panel panel-default">
    
    <div class="panel-heading">Calender</div>
    
    <div class="panel-body">

<div>

	    
	        <table border='2'>
			       <tr>
				         <td><input style='width:50px;' type='button' value='<' name='previousbutton' onclick="goLastMonth(<?php echo $month.",".$year?>)"></td>
						 <td colspan='5'><?php echo $monthName.", ".$year;?></td>
						 <td><input style='width:50px;' type='button' value='>' name='nextbutton' onclick="goNextMonth(<?php echo $month.",".$year?>)"></td>
				   </tr>
				   <tr>
				         <td width='250px' height='50px'>Sun</td>
						 <td width='250px' height='50px'>Mon</td>
						 <td width='250px' height='50px'>Tue</td>
						 <td width='250px' height='50px'>Wed</td>
						 <td width='250px' height='50px'>Thu</td>
						 <td width='250px' height='50px'>Fri</td>
						 <td width='250px' height='50px' >Sat</td>
				   </tr>
				   <?php
				       echo "<tr>";
				       $day1=date("j");
					   for($i=1;$i<$numDays+1;$i++,$counter++)
					   {


					   	$timeStamp=strtotime("$year-$month-$i");

					   	$presentDate = date("Y-m-d",$timeStamp);
					   	$taskName = "";

					   	for($k=0; $k<sizeof($AllTask); $k++)
					   	{
					   		$task = $AllTask[$k];
					   		if($task->getLastDateOfFinish() == $presentDate)
					   		{
					   			$taskName .= ($task->getTitle()." ,");
					   		}

					   		if(strlen($taskName)>21)
					   		{
					   			$taskName .= "....";
					   			break;
					   		}

					   		$taskName .= " ";

					   	}


						   
						   if($i==1)
						   {
							   $firstDay=date("w",$timeStamp);
						       for($j=0;$j<$firstDay;$j++,$counter++)
							   {
							   echo "<td>&nbsp;</td>"; //blank space
							   }
						   }
						   if($counter %7==0)
						   {
							   echo "</tr><tr>";
						   }

						   if( $timeStamp == strtotime(date("Y-m-d")))
						   {


						   	?>

						   	<td width='250px' height='50px' align='center' bgcolor = "#F0F6FA">
						   	<a href="?showtask=<?php echo $year."-".$month."-".$i; ?>" > <?php echo $i;?> </a>
						   	<br>
						   	<?php echo $taskName;?>
						   </td>



						<?php

						   }
						   else
						   {
						   	?>
						   	<td width='250px' height='50px' align='center' >
						   		<a href="?showtask=<?php echo $year."-".$month."-".$i; ?>" > <?php echo $i ;?> </a>
						   		<br>
						   	<?php echo $taskName;?>
						   		</td>
						   <?php
						   }

						   
					   }
					   
					   echo "</tr>";
				   ?>
			</table>
	 
</div>

<?php
}
elseif(isset($_GET['showtask']))
{
	$currentDate = $_GET['showtask'];

	$currentMonth = date("F", strtotime($currentDate));
	$currentYear = date("Y",strtotime($currentDate));
	$currentDay = date("d",strtotime($currentDate));



	$previousDate = date('Y-m-d', strtotime('-1 day', strtotime($currentDate)));
	$previousDateDay = date("d",strtotime($previousDate));
	$previousDateMonth = date("m",strtotime($previousDate));
	$previousDateYear = date("Y",strtotime($previousDate));

	//echo $previousDateDay;

	$nextDate = date('Y-m-d', strtotime('+1 day', strtotime($currentDate)));
	$nextDateDay = date("d",strtotime($nextDate));
	$nextDateMonth = date("m",strtotime($nextDate));
	$nextDateYear = date("Y",strtotime($nextDate));


?>

<div>
	
</div>

</div>
</div>

<div class="panel panel-default">
    
    <div class="panel-heading">Task Information</div>
    
    <div class="panel-body">


<div class="panel-body">


	<table class="table table-bordered">


	<?php
	

	
	//if DAO access is successful to load all the Roles then show them one by one
	if($result->getIsSuccess()){

		$tasks = $result->getResultObject();

	
	?>
	<tr>
				         <td><input style='width:50px;' type='button' value='<' name='previousDayButton' onclick="goLastDay(<?php echo $previousDateDay.", ".$previousDateMonth.", ".$previousDateYear;?>)"></td>


						 <td colspan='7'><?php echo  $currentDay." ".$currentMonth.", ".$currentYear;?></td>
						 <td><input style='width:50px;' type='button' value='>' name='nextDayButton' onclick="goLastDay(<?php echo $nextDateDay.", ".$nextDateMonth.", ".$nextDateYear; ?>)"></td>
				   </tr>
		<tr>
			<th>Task Name</th>
			
			<th>Assign Date</th>
			<th>Finish Date</th>
			<th>Last Updated Date</th>
			<th>Task Creator</th>

			<th>Assign By</th>
			<th>Progress</th>
			<th></th>
			<th></th>

		</tr>


		<?php
		for($i = 0; $i < sizeof($tasks); $i++) {

			$task = $tasks[$i];

			?>
		    <tr>
		    	<center>
			    <td> <?php echo $task->getTitle(); ?></td>
			   
			    <td> <?php echo $task->getDate(); ?></td>
			    <td> <?php echo $task->getLastDateOfFinish(); ?></td>
			    <td><?php echo $task->getLastDateOfUpdate();?></td>
			    <td> <?php echo $task->getTaskCreator(); ?></td>
			    			   
			    <td> <?php echo $task->getAssignBy();
			    	$progress =$task->getProgress();
			     ?></td>
			    <td> 
			    <a class="btn btn-warning" 
			    		 <?php if($progress<=0){?>
			    		disabled
			    		<?php
			    		} 
			    		else{?>
			    			 href="?progressdown=<?php echo $task->getID(); ?>&&showtask=<?php echo $task->getLastDateOfFinish();?>"
			    			<?php
			    			} 
			    			?>

			     >-</a>
			    
			    <progress style="height:30px; vertical-align: middle; margin-left: 1px; " value="<?php 
			    				echo  $progress;
			    				?>" max="10">
							</progress>
							

							<a class="btn btn-success"
			    		<?php if($progress>=10){?>
			    				disabled
			    				<?php
			    				}
			    				else{?>
			    					 href="?progressup=<?php echo $task->getID(); ?>&&showtask=<?php echo $task->getLastDateOfFinish();?>"
			    				<?php
			    				} 

			    				?>

			    			 >+</a>


				</td>


			    <td><a href="http://localhost/dgted/create_task.php?assignTo=<?php echo $task->getID(); ?>" >Assign Task</a></td>
			    <td><a href="task_details.php?taskDetails=<?php echo $task->getID(); ?>" >Task Details</a></td>
			    </center>
		    </tr>

	    <?php
		}

	}
	else{

		echo $Result->getResultObject(); //giving failure message
	}

	?>
	</table>
	</div>

	<?php
}
	?>


	</div>
	</div>