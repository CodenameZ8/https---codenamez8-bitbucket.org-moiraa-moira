<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Project</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    
   <?php
    
    
    require('template.html');
    ?>

    <style>
        #form   
        {
           color:black;
           
        }
        #fo
        {
            padding-top: 2cm;
        }
    </style>
</head>
  
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 
			 
		<div class="col-md-12 column">
            
		<form id="fo" action="teams.php" id="attributeForm" method="post" class="form-horizontal" 
						data-bv-message="This value is not valid"
						data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
						data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
						data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
						<br/>
						<br/>
		<center><h4>Create team</h4></center>
		<div class="form-group">
			<label class="col-sm-3 control-label"><strong>Team name</strong></label>
			<div class="col-sm-5">
				<input class="form-control" name="rollno" type="text" placeholder="Team name"
					data-bv-notempty="true" data-bv-notempty-message="The team name is required and cannot be empty"/>
			</div>
		</div>
            
            <div class="form-group">
        <label class="col-sm-3 control-label"><strong>Guide</strong></label>
        <div class="col-sm-5">
                <select name="year">
                    <option value="1" >I</option>
                    <option value="2" >II</option>
                    <option value="3" >III</option>
                    <option value="4" >IV</option>
                </select>
                
            
        </div>
    </div>
	
		<div class="form-group">
        <label class="col-sm-3 control-label"><strong>Advisor</strong></label>
        <div class="col-sm-5">
                <select name="year">
                    <option value="1" >I</option>
                    <option value="2" >II</option>
                    <option value="3" >III</option>
                    <option value="4" >IV</option>
                </select>
                
            
        </div>
    </div>
            
		<div class="form-group">
			<label class="col-sm-3 control-label"><strong>Project name</strong></label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="proj_name" placeholder="project name"
					data-bv-notempty="true" data-bv-notempty-message="Project name is required and cannot be empty"
					  />
			</div>
			
		</div>
            <div class="form-group">
                <label class="col-sm-5 control-label"><strong> </strong></label>
                <div class="col-sm-3">
            <button type="submit" class="btn btn-success" name="submit">Save</button>
                </div>
            </div>
		</form>
      </div>
</div>

		</div>
	</div>
</div>