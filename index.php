<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
	</style>
</head>
<body>


	<div class="col-sm-4 col-sm-offset-4" style="margin-top:50px;">
		<div class="well">
			<form action="" method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<label for="pwd">SELECT FILE</label>
					<input type="file" class="form-control" name="pdf">
				</div>
				<div class="checkbox">
					<label><input type="checkbox" name="save" value="1"> Save pdf in server directory /pdfs </label>
					<label><input type="checkbox" name="save_db" value="1"> Save pdf text to database </label>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>


			<div>
				<?php  

				$servername = "localhost";
				$username = "root";
				$password = "";
				$dbname = "pdftotext";

				

				if(isset($_FILES["pdf"])){
					include "vendor/autoload.php";

					$fullfile = $_FILES['pdf']['tmp_name'];
					$content = '';
					$out = '';
					$parser = new \Smalot\PdfParser\Parser();

					$document = $parser->parseFile($fullfile);
					$pages    = $document->getPages();
					$page     = $pages[0];
					$content  = $page->getText();
					$out      = $content;

					if(isset($_POST["save_db"])){
						
						$conn = mysqli_connect($servername, $username, $password, $dbname);
						if (!$conn) {
							echo "<h1>UNABLE TO CONNECT DATABASE.</h1>";
						}else{
							$out = mysqli_real_escape_string($conn,$out);
							$sql = "INSERT INTO pdf_data set text='$out',file_name='".$_FILES['pdf']["name"]."'";
							if (mysqli_query($conn, $sql)) {
								echo "<h1> PDF TEXT SAVED IN DATABASE</h1>";
							} else {
								echo "<h1>UNABLE TO INSERT INTO DATABASE.</h1>";
							}
							mysqli_close($conn);
						}
					}

					echo '<p>' . $out . '</p>';



					if(isset($_POST["save"])){
						move_uploaded_file($_FILES['pdf']['tmp_name'],"pdfs/".$_FILES['pdf']["name"]);
					}
					
				} 
				?>
			</div>
		</div>
	</div>

</body>
</html>
