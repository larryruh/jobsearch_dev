<?php 
//color every other line on report
$(function() {
	var rows = $("tr");
	rows.filter(":even").css("background", "red");
	rows.filter(":odd").css("background", "blue");
});

//Changing an image
//<img id="my_image" src="first.jpg"/>
//Then you can change the src of your image with jQuery like this:

$("#my_image").attr("src","second.jpg");
//To attach this to a click event, you could write:

$('#my_image').on({
    'click': function(){
        $('#my_image').attr('src','second.jpg');
    }
});
//To rotate the image, you could do this:

$('img').on({
    'click': function() {
         var src = ($(this).attr('src') === 'img1_on.jpg')
            ? 'img2_on.jpg'
            : 'img1_on.jpg';
         $(this).attr('src', src);
    }
});

try {
    $pdo = new PDO('mysql:host=localhost:8889;dbname=jobsearch;
    charset=utf8', 'lruh', 'Asdfasdf1');
    $pdo->setAttribute(PDO::ATTR_ERRMODE,
     PDO::ERRMODE_EXCEPTION);
    $output = 'Database connection established.';
    
    $sql = 'SELECT * FROM job order by date_applied';
    echo $sql;
    $result = $pdo->query($sql);
    while ($row = $result->fetch()) { 
        echo $row['company'] .'<br>';
        $company[] = $row['company'];
    }
} catch (PDOException $e) {
    $output = 'Unable to connect to the database server: ' . $e;
}


/*while($row = $results->fetch_object()) {
	$records[] = $row;
	echo $mysqli_num_rows($results);
}*/
/*while($row = mysql_fetch_assoc($results))
{
   echo $row['company']." ";
   echo $row['job_title']." ";
}*/
echo $output;

echo "end of code";
?>
