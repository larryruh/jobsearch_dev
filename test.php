<?php 

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
