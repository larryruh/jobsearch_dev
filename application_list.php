<?php 
$query_filter_field = $_GET['field'];
$query_filter = $_GET['filter'];
$query_sort - $_GET['sort'];
$where_statement = '';
if ($query_filter != ''){
    $where_statement = 'WHERE '. $query_filter_field . ' = "' . $query_filter. '" ';
}
if ($query_sort == ''){
    $query_sort = 'date_applied';
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
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        //$q = jQuery.noConflict();  //this eliminates conflict between other libraries that may use $
        $(document).ready(function() {  
            $("#company_filter").change(function () {   //event handler for filter dropdown select inputs
                window.location.href="application_list.php?field=company_id&filter=" + company_filter.value;
            })
            $("#category_filter").change(function () {   
                window.location.href="application_list.php?field=job_category&filter=" + category_filter.value;
            })
            $("#city_filter").change(function () {   
                window.location.href="application_list.php?field=city&filter=" + city_filter.value;
            })
            $("#state_filter").change(function () {   
                window.location.href="application_list.php?field=state&filter=" + state_filter.value;
            })
            $("#status_filter").change(function () {   
                window.location.href="application_list.php?field=status&filter=" + status_filter.value;
            })
            //$q("#interview_filter").change(function () {   
            //    window.location.href="application_list.php?//field=phone_screen&filter=" + interview_filter.value;
            //})
            $(function() {
                var rows = $('.report_detail');
                rows.filter(":even").css("background", "azure");
                rows.filter(":odd").css("background", "white");
            });
        })
        function hideMenu(header){
            element = document.getElementById(header);
            if(element.style.display!="none"){
                element.style.display="none";
            }
            else{
                element.style.display="block";
            }
        }
    </script>
    <meta charset="utf-8" />
    <title></title>
</head>

<body>
<table border=0>
    <tr>
        <td colspan=8 class="report_title">Jobs I've Applied For</td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td class="report_header" nowrap></td>
        <td class="report_header" nowrap>Company Name</td>
        <td class="report_header" nowrap>Job Title</td>
        <td class="report_header" nowrap>City</td>
        <td class="report_header" nowrap>State</td>
        <td class="report_header" nowrap>Date Applied</td>
        <td class="report_header" nowrap>Status</td>
        <td class="report_header" nowrap>Interview</td>
    </tr>
    <?php
        echo '<tr>';
        echo '<td></td>';
        //Company Filter
        echo '<td><select id="company_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT company_id, company_name FROM Company ORDER BY company_name';
            $company_list = $pdo->query($sql);
            while ($row = $company_list->fetch()) {   
                if($query_filter == $row['company_id']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                }
                echo '<option value="'.$row['company_id'].'"'.$filter_selected.' >'.$row['company_name'].'</option>';
             }
             echo '</select></td>';
        //Job Category Filter
        echo '<td><select id="category_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT distinct job_category FROM job ORDER BY job_category';
            $category_list = $pdo->query($sql);
            while ($row = $category_list->fetch()) { 
                if($query_filter == $row['job_category']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                }
                echo '<option value="'.$row['job_category'].'"'.$filter_selected.'>'.$row['job_category'].'</option>';
             }
             echo '</select></td>';
        //City Filter
        echo '<td><select id="city_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT distinct city FROM job ORDER BY city';
            $city_list = $pdo->query($sql);
            while ($row = $city_list->fetch()) {
                if($query_filter == $row['city']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                }
                echo '<option value="'.$row['city'].'"'.$filter_selected.'>'.$row['city'].'</option>';
             }
             echo '</select></td>'; 
        //State Filter
        echo '<td><select id="state_filter">';
        echo '<option value="">--All--</option>';
            $sql = 'SELECT distinct state FROM job ORDER BY state';
            $state_list = $pdo->query($sql);
            while ($row = $state_list->fetch()) {
                if($query_filter == $row['state']){
                    $filter_selected = ' Selected ';
                } else {
                    $filter_selected = '';
                } 
                echo '<option value='.$row['state'].$filter_selected.'>'.$row['state'].'</option>';
             }
        echo '</select></td>';
        echo '<td></td>';
        //Status Filter
        echo '<td><select id="status_filter">';
        echo '<option value="">--All--</option>';
        echo    '<option value="Applied">Applied</option>';
        echo    '<option value="Closed">Closed</option>';
        echo    '<option value="Pending">Pending</option>';
        echo '</select></td>';
        //Interview Filter
        echo '<td><select id="interview_filter">';
            echo '<option value="">--All--</option>';
            echo '<option value="Yes">Yes</option>';
            echo '<option value="No">No</option>';
            echo '</select></td>'; 
        echo '</tr>';
        
        
        $result = $pdo->query($report_sql);
        while ($row = $result->fetch()) { 
            echo '<tr class="report_detail">';
            echo '<td><a href="edit_job.php?mode=edit&job_id='.$row['job_id'] .'"><img src="img/edit_pencil.jpg" height=12 width=12></a></td>';
            echo '<td>'.$row['company'].'</td>';
            echo '<td>'.$row['job_title'].'</td>';
            echo '<td>'.$row['city'].'</td>';
            echo '<td>'.$row['state'].'</td>';
            echo '<td>'.$row['date_applied'].'</td>';
            echo '<td>'.$row['status'].'</td>';
            echo '<td align="center"><input type="checkbox" disabled ';
                if($row['phone_screen'] != '' || $row['first_interview'] != ''){
                    echo 'checked';
                }
                echo '></td>';
            echo '</tr>';   

        }
    ?>
</table> 
</body>
</html>