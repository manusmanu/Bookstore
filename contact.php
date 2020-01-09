<?php
  $title = "Contact";
  require_once "./template/header.php";
?>
    <div class="row">
        <div class="col-md-3"></div>
		<div class="col-md-6 text-center">
			<form class="form-horizontal" method="post" action="contact_insert.php">
			  	<fieldset>
				    <legend>Contact</legend>
				    <p class="lead">We love to hear from you! Complete the form to send me an email!!</p>
				    <div class="form-group">
				      	<label class="col-lg-2 control-label">Name</label>
				      	<div class="col-lg-10">
				        	<input type="text" class="form-control" placeholder="Name" name="name">
				      	</div>
				    </div>
				    <div class="form-group">
				      	<label for="inputEmail" class="col-lg-2 control-label">Email</label>
				      	<div class="col-lg-10">
				        	<input type="text" class="form-control"  placeholder="email" name="email">
				      	</div>
				    </div>
				    <div class="form-group">
				      	<label class="col-lg-2 control-label">Textarea</label>
				      	<div class="col-lg-10">
				        	<textarea class="form-control" rows="3" name="message"></textarea>
				        	<!-- <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span> -->
				      	</div>
				    </div>
				    <div class="form-group">
				      	<div class="col-lg-10 col-lg-offset-2">
				        	<button type="reset" class="btn btn-default">Cancel</button>
				        	<button type="submit" class="btn btn-primary" value="submit">Submit</button>
				      	</div>
				    </div>
			  	</fieldset>
			</form>
		</div>
		<div class="col-md-3"></div>
    </div>
<?php
  require_once "./template/footer.php";
?>