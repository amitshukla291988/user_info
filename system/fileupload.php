<?php

$target_dir = "personnal/";

$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
	echo "amit";
	echo $_FILES["fileToUpload"]["name"] ;
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

?>
<!DOCTYPE html>
<html>
<body>

<form action="fileupload.php" method="post" enctype="multipart/form-data">
    Select image to upload:<br><br>
    <input type="file" name="fileToUpload" id="fileToUpload"><br><br><br>
    <input type="submit" value="Upload Image" name="submit">
</form>

</body>
</html>