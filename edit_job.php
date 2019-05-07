<?php 
$mode = $_GET['mode'];
$job_id = $_GET['job_id'];
echo $mode;
switch($mode){
    case 'edit':
        // Code to be executed if n=label1
        $form_title = 'Edit Job';
        break;
    case 'new':
        // Code to be executed if n=label2
        $form_title = 'New Job';
        break;
        
    default:
        // Code to be executed if n is different from all labels
}


$report_sql = 'SELECT job_id, company, job_title, job_category, city, state, date_applied, status, phone_screen, first_interview FROM job ' . $where_statement . 'ORDER BY ' . $query_sort . ';';

try {
    $ini = parse_ini_file('app.ini');
    $pdo = new PDO($ini['db_conn_str'], $ini['db_user'], $ini['db_password']);
    $pdo->setAttribute(PDO::ATTR_ERRMODE,
     PDO::ERRMODE_EXCEPTION);
    //$output = 'Database connection established.';
    
} catch (PDOException $e) {
    $output = 'Unable to connect to the database server: ' . $e;
    echo $output;
    
}

?>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel=stylesheet type="text/css" href="jobsearch.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
       
        $q = jQuery.noConflict();  //this eliminates conflict between other libraries that may use $
        $q(document).ready(function() { 
            $( function() {
                $("#datepicker").datepicker();
            } );    
           
        });
    </script>
    <meta charset="utf-8" />
    <title></title>
</head>

<body>
<form action="edit_job.php" method="post">   
<table border=0>
    <tr>
        <td colspan=8 class="report_title"><?=$form_title?></td>
    </tr>
    <tr>
        <td><label for="date">Date:</label></td>
        <td><input type="text" id="datepicker" name="datepicker"> 
        </td>
    </tr>
    <tr>
        <td><label for="company">Company</label></td>
        <td><select name="company" id="company">
                <option value="">Select Company</option>
                <option value="new">--NEW COMPANY--</option>
                <?php 
                $sql = 'SELECT company_id, company_name FROM company ORDER BY company_name';
                $company_list = $pdo->query($sql);
                while ($row = $company_list->fetch()){
                    echo '<option value="'.$row['company_id'].'">'.$row['company_name'].'</option>';
                }?>
            </select> 
        </td>
    </tr>
    <tr>
        <td colspan=2>
            <div id="new_company_field" style="display:none">
            <table>
                <tr>
                    <td><label for="new_company">New Company</label></td>
                    <td><input type="text"></td>
                </tr>
            </table>
            </div>
        </td>
    </tr>
    <tr><td colpan=2><input type="submit" value="Submit"></td></tr>
    

</table> 
</form>
</body>
</html>