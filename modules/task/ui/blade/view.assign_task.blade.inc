<?php
include_once MODULES_TASK.'bao/class.taskbao.inc';
include_once MODULES_USER.'bao/class.userbao.inc';
include_once MODULES_USER.'bao/class.rolebao.inc';
include_once MODULES_USER.'bao/class.positionbao.inc';
include_once MODULES_TASK.'bao/class.assignbao.inc';

	$_DB = DBUtil::getInstance();
	$_Log= LogUtil::getInstance();
	$_Task = new Task();
	$_UserBAO = new UserBAO();
	$_TaskBAO = new TaskBAO();
	$_AssignBAO = new AssignBAO();

	$globalUser = $_SESSION["globalUser"];


	$globalUser = $_SESSION["globalUser"];

	$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject(); //reading the user 
	$userDetails = $_UserBAO->readUserDetails($globalUser)->getResultObject();
	$ID = $userPositions->getID();
	
	$User = new User();
	$User->setID($ID);

	$my_task = $_TaskBAO->findMyTask($User);




	if(isset($_POST['addTask'])){
		$_Task->setId (null);
		$_Task->setTitle ($_DB->secureInput($_POST['taskName']));
		$_Task->setCategory ($_DB->secureInput($_POST['Category']));
		$_Task->setDetails ($_DB->secureInput($_POST['taskDetails']));
		$_Task->setLastDateOfFinish ($_DB->secureInput($_POST['date']));



		$_Task->setAssignDate ($_DB->secureInput(date("Y-m-d")));
		$_Task->setLastDateOfUpdate(date("Y-m-d"));
		
		$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject(); 

		$_Task->setTaskCreator($userPositions->getID());	

		$_Task->setProgress(0);	

		

		$Result = $_TaskBAO->addNewTask($_Task);

		//print_r($Result);		

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:create_task.php");	
		}
			

	}


	if(isset($_POST['updateTask'])){
		$_Task->setID ($_GET['editTask']);
		$_Task->setTitle ($_DB->secureInput($_POST['taskName']));
		$_Task->setCategory ($_DB->secureInput($_POST['Category']));
		$_Task->setDetails ($_DB->secureInput($_POST['taskDetails']));
		$_Task->setLastDateOfFinish ($_DB->secureInput($_POST['date']));
		$_Task->setLastDateOfUpdate(date("Y-m-d"));

		$Result = $_TaskBAO->updateTask($_Task);	

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:create_task.php");	
		}
			

	}


	if(isset($_GET['editTask']))
	{
		$Task = new Task();
		$Task->setId($_GET['editTask']);

		$Result = $_TaskBAO->findTask($Task);

		$_Task = $Result->getResultObject();

		//print_r($_Task);

	}

	if(isset($_GET['deleteTask']))
	{
		$Task = new Task();
		$Task->setId($_GET['deleteTask']);
		$Result=$_TaskBAO->deleteTask($Task);

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:create_task.php");	
		}
	}


	if(isset($_POST['Assign']))
	{
		$Assign = new Assign();
		$Assign->setTaskId($_GET['assignTo']);

		$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject();
		$Assign->setAssignBy($userPositions->getID());

		$userEmail = $_POST['email'];
		$Assign->setAssignTo($userEmail);
		$Assign->setDate(date("Y-m-d"));
		$Assign->setComment($_POST['comment']);

		$result = $_AssignBAO->assignTask($Assign);

		if($result->getIsSuccess()){
	  		 
	  		 header("Location:create_task.php");	
		}
		else
		{
			//print_r($Assign);
		}

	}

	if(isset($_GET['progressdown']))
	{
		$taskId = $_GET['progressdown'];

		$_Task->setID($taskId);
		$_Task->setLastDateOfUpdate(date("Y-m-d"));	

		$Result = $_TaskBAO->prograssDown($_Task);
		

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:create_task.php");	
		}
	}

	if(isset($_GET['progressup']))
	{
		$taskId = $_GET['progressup'];

		$_Task->setID($taskId);
		$_Task->setLastDateOfUpdate(date("Y-m-d"));

		$Result = $_TaskBAO->prograssUp($_Task);
				

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:create_task.php");	
		}
	}

?>