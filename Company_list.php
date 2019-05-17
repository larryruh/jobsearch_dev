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
    $sql = 'DELETE FROM company_watch WHERE company_id = '.$_GET['company_id'];
    try{
       $pdo->exec($sql);
       $company_deleted = 'Company Deleted';
    } catch (PDOException $e) {
       $company_deleted = 'Unable to Delete Company' . $e;
    } 
}
         
if ($query_filter_field == 'location'){
    $where_statement = 'WHERE '. $query_filter_field . ' like "%' . $query_filter. '%" ';
} else if ($query_filter != ''){
    $where_statement = 'WHERE '. $query_filter_field . ' = "' . $query_filter. '" ';
}
if ($query_sort == ''){
    $query_sort = 'company_name';
}
$report_sql = 'SELECT company_id, company_name, location, contact, email, phone, relationship_notes, last_jobs_check FROM company_watch  ' . $where_statement . 'ORDER BY ' . $query_sort . ';';
?>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel=stylesheet type="text/css" href="jobsearch.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        //$q = jQuery.noConflict();  //this eliminates conflict between other libraries that may use $
        $(document).ready(function() {  
            //event handler for filter dropdown select inputs
            $("#company_filter").change(function () {   
                window.location.href="company_list.php?field=company_name&filter=" + company_filter.value;
            })
             $("#location_filter").change(function () {   
                window.location.href="company_list.php?field=location&filter=" + location_filter.value;
            })
            $(function() {
                var rows = $('.report_detail');
                rows.filter(":even").css("background", "azure");
                rows.filter(":odd").css("background", "white");
            });
            $('.delete').click(function(){
                if(confirm('Are you sure you want to delete this company?')){
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
<p><div class="notification"><?=$company_deleted?></div>
<table border=0>
    <tr>
        <td colspan=8 class="report_title">Companies I'm Watching</td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td class="report_header" nowrap></td>
        <td class="report_header" nowrap></td>
        <td class="report_header" nowrap>Company</td>
        <td class="report_header" nowrap>Location</td>
        <td class="report_header" nowrap>Contact</td>
        <td class="report_header" nowrap>Phone</td>
        <td class="report_header" nowrap>Email</td>
        <td class="report_header" nowrap>Notes</td>
        <td class="report_header" nowrap>Last Jobs Check</td>
    </tr>
    <?php
        echo '<tr>';
        echo '<td></td>';
        echo '<td></td>';
        //Company Filter
        echo '<td><select id="company_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT distinct company_name FROM company_watch ORDER BY company_name';
            $company_list = $pdo->query($sql);
            while ($row = $company_list->fetch()) {   
                if($query_filter == $row['company_name']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                }
                echo '<option value="'.$row['company_name'].'"'.$filter_selected.' >'.$row['company_name'].'</option>';
             }
             echo '</select></td>';
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
        echo '<td></td>';
        echo '<td></td>';
        echo '<td></td>';
        echo '</tr>';
        
        
        $result = $pdo->query($report_sql);
        while ($row = $result->fetch()) { 
            echo '<tr class="report_detail">';
            echo '<td><a href="company_list.php?mode=delete&company_id='.$row['company_id'] .'"><img src="img/delete.png" class="delete" height=12 width=12 alt="Delete Company"></a></td>';
            echo '<td><a href="edit_Company.php?mode=edit&company_id='.$row['company_id'] .'"><img src="img/edit_pencil.jpg" height=12 width=12 alt="Edit Company"></a></td>';
            echo '<td>'.$row['company_name'].'</td>';
            echo '<td>'.$row['location'].'</td>';
            echo '<td nowrap>'.$row['contact'].'</td>';
            echo '<td>'.$row['phone'].'</td>';
            echo '<td>'.$row['email'].'</td>';
            echo '<td>'.$row['relationship_notes'].'</td>';
            echo '<td>'.$row['last_jobs_check'].'</td>';
            echo '</tr>';   

        }
    ?>
</table> 
</body>
</html>