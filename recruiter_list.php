<?php 
$query_filter_field = $_GET['field'];
$query_filter = $_GET['filter'];
$query_sort - $_GET['sort'];
$where_statement = '';

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

if($_GET['mode'] == 'delete'){
    $sql = 'DELETE FROM recruiter WHERE recruiter_id = '.$_GET['recruiter_id'];
    try{
       $pdo->exec($sql);
       $recruiter_deleted = 'Recruiter Deleted';
    } catch (PDOException $e) {
       $recruiter_deleted = 'Unable to Delete Recruiter' . $e;
    } 
}
         
if ($query_filter_field == 'locations'){
    $where_statement = 'WHERE '. $query_filter_field . ' like "%' . $query_filter. '%" ';
} else if ($query_filter != ''){
    $where_statement = 'WHERE '. $query_filter_field . ' = "' . $query_filter. '" ';
}
if ($query_sort == ''){
    $query_sort = 'last_name';
}
$report_sql = 'SELECT recruiter_id, company, first_name, last_name, phone, email, locations, notes FROM recruiter  ' . $where_statement . 'ORDER BY ' . $query_sort . ';';



?>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel=stylesheet type="text/css" href="jobsearch.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        //$q = jQuery.noConflict();  //this eliminates conflict between other libraries that may use $
        $(document).ready(function() {  
            $("#last_name_filter").change(function () {   //event handler for filter dropdown select inputs
                window.location.href="recruiter_list.php?field=last_name&filter=" + last_name_filter.value;
            })
             $("#company_filter").change(function () {   
                window.location.href="recruiter_list.php?field=company&filter=" + company_filter.value;
            })
            $("#location_filter").change(function () {   
                window.location.href="recruiter_list.php?field=locations&filter=" + location_filter.value;
            })
            $(function() {
                var rows = $('.report_detail');
                rows.filter(":even").css("background", "azure");
                rows.filter(":odd").css("background", "white");
            });
            $('.delete').click(function(){
                if(confirm('Are you sure you want to delete this recruiter?')){
                    return;
                } else {
                    return false;
                }
            });
        });
    </script>
    <meta charset="utf-8" />
    <title></title>
</head>

<body>
<p><div class="notification"><?=$recruiter_deleted?></div>
<table border=0>
    <tr>
        <td colspan=8 class="report_title">Recruiters I Know</td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td class="report_header" nowrap></td>
        <td class="report_header" nowrap></td>
        <td class="report_header" nowrap>First Name</td>
        <td class="report_header" nowrap>Last Name</td>
        <td class="report_header" nowrap>Company</td>
        <td class="report_header" nowrap>Phone</td>
        <td class="report_header" nowrap>Email</td>
        <td class="report_header" nowrap>Locations</td>
        <td class="report_header" nowrap>Notes</td>
    </tr>
    <?php
        echo '<tr>';
        echo '<td></td>';
        echo '<td></td>';
        echo '<td></td>';
        //Last Name Filter
        echo '<td><select id="last_name_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT distinct last_name FROM recruiter ORDER BY last_name';
            $last_name_list = $pdo->query($sql);
            while ($row = $last_name_list->fetch()) {   
                if($query_filter == $row['last_name']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                }
                echo '<option value="'.$row['last_name'].'"'.$filter_selected.' >'.$row['last_name'].'</option>';
             }
             echo '</select></td>';
        //Company Filter
        echo '<td><select id="company_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT distinct company FROM recruiter ORDER BY company';
            $company_list = $pdo->query($sql);
            while ($row = $company_list->fetch()) {   
                if($query_filter == $row['company']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                }
                echo '<option value="'.$row['company'].'"'.$filter_selected.' >'.$row['company'].'</option>';
             }
             echo '</select></td>';
        echo '<td></td>';
        echo '<td></td>';
        //Location Filter
        echo '<td><select id="location_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT state_id, state_name FROM states ORDER BY state_name';
            $location_list = $pdo->query($sql);
            while ($row = $location_list->fetch()) {
                if($query_filter == $row['state_id']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                } 
                echo '<option value='.$row['state_id'].$filter_selected.'>'.$row['state_name'].'</option>';
             }
        echo '</select></td>';
        echo '<td></td>';
        echo '</tr>';
        
        
        $result = $pdo->query($report_sql);
        while ($row = $result->fetch()) { 
            echo '<tr class="report_detail">';
            echo '<td><a href="recruiter_list.php?mode=delete&recruiter_id='.$row['recruiter_id'] .'"><img src="img/delete.png" class="delete" height=12 width=12 alt="Delete Recruiter"></a></td>';
            echo '<td><a href="edit_recruiter.php?mode=edit&recruiter_id='.$row['recruiter_id'] .'"><img src="img/edit_pencil.jpg" height=12 width=12 alt="Edit Recruiter"></a></td>';
            echo '<td>'.$row['first_name'].'</td>';
            echo '<td>'.$row['last_name'].'</td>';
            echo '<td>'.$row['company'].'</td>';
            echo '<td>'.$row['phone'].'</td>';
            echo '<td>'.$row['email'].'</td>';
            echo '<td>'.$row['locations'].'</td>';
            echo '<td>'.$row['notes'].'</td>';
            echo '</tr>';   

        }
    ?>
</table> 
</body>
</html>