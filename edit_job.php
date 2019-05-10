<?php 
$mode = $_GET['mode'];
$job_id = $_GET['job_id'];
$submitted = $_POST['submitted'];
    
try {
    $ini = parse_ini_file('app.ini');
    $pdo = new PDO($ini['db_conn_str'], $ini['db_user'], $ini['db_password']);
    $pdo->setAttribute(PDO::ATTR_ERRMODE,
     PDO::ERRMODE_EXCEPTION);
    $output = 'Database connection established.';
    
} catch (PDOException $e) {
    $output = 'Unable to connect to the database server: ' . $e;
    echo $output;
    
}

if($submitted == 'true'){
    
    //deal with new company
    if($_POST['company'] == 'new'){
        $sql = "INSERT INTO company (company_name) VALUES (?)";
        try{
            $stmt= $pdo->prepare($sql);
            $stmt->execute([$new_company_name]);
            $company_id = $pdo->lastInsertId();
            $company_name = $_POST['new_company'];
        } catch (PDOException $e) {
             $output = 'Unable to update Company table ' . $e;
             echo $output;
        }
    } else {
         //$company_id = $_POST['company_id']; //there is no company_id posted, dumbass! company id is in _post['company'];
         $company_id = $_POST['company'];
         $sql = 'SELECT company_name FROM company WHERE company_id = '.$company_id.'ORDER BY company_name';
         $company_list = $pdo->query($sql);
         while ($row = $company_list->fetch()){
            $company_name = row['company_name']; 
         }
        
    }
    
    
        
   
    if($mode == 'new'){
        $data = [
            'company_id' => $company_id,
            'company' => $company_name,
            'job_title' => $_POST['job_title'],
            'job_category' => $_POST['category'],
            'city' => $_POST['city'],
            'state' => $_POST['state'],
            'contact' => $_POST['contact'],
            'referred_by' => $_POST['referred_by'],
            'date_applied' => $_POST['date_applied'],
            'status' => $_POST['status'],
            'phone_screen' => $_POST['phone_screen'],
            'first_interview' => $_POST['first_interview'],
            'second_interview' => $_POST['second_interview'],
            'offer' => $_POST['offer'],
        ];
        $sql = 'INSERT INTO Job (company_id, company, job_title, job_category, city, state, contact, referred_by, date_applied, status, phone_screen, first_interview, second_interview, offer) 
        VALUES(:company_id, :company_name, :job_title, :job_category, :city, :state, :contact, :referred_by, :date_applied, :status, :phone_screen, :first_interview, :second_interview, :offer)';
        try{
            $stmt= $pdo->prepare($sql);
            $stmt->execute($data);
            $job_id = $conn->lastInsertId();     
        } catch (PDOException $e) {
            $output = 'Unable to update Job' . $e;
            echo $output;
        }
        $mode = 'edit';
    } else {
        
        $data = [
            'company_id' => $company_id,
            'company' => $company_name,
            'job_title' => $_POST['job_title'],
            'job_category' => $_POST['category'],
            'city' => $_POST['city'],
            'state' => $_POST['state'],
            'contact' => $_POST['contact'],
            'referred_by' => $_POST['referred_by'],
            'date_applied' => $_POST['date_applied'],
            'status' => $_POST['status'],
            'phone_screen' => $_POST['phone_screen'],
            'first_interview' => $_POST['first_interview'],
            'second_interview' => $_POST['second_interview'],
            'offer' => $_POST['offer'],
            'job_id' => $_POST['job_id'],
        
        ];
        $sql = 'UPDATE job SET 
                    company_id=:company_id,
                    company=:company_name, 
                    job_title=:job_title, 
                    job_category=:job_category, 
                    city=:city, 
                    state=:state, 
                    contact=:contact, 
                    referred_by=:referred_by, 
                    date_applied=:date_applied, 
                    status=:status, 
                    phone_screen=:phone_screen, 
                    first_interview=:first_interview, 
                    second_interview=:second_interview, 
                    offer=:offer
                WHERE job_id=:job_id';
        try{
            $stmt= $pdo->prepare($sql);
            $stmt->execute($data);
            $job_id = $conn->lastInsertId();     
        } catch (PDOException $e) {
            $output = 'Unable to update Job' . $e;
            echo $output;
        }
    }
    
    
}

switch($mode){
    case 'edit':
        $form_title = 'Edit Job Application';
        $sql = 'SELECT job_id, company_id, company, job_title, job_category, city, state, contact, referred_by, date_applied, status, phone_screen, first_interview, second_interview, offer FROM job WHERE job_id = '.$job_id.';';
        $job_detail = $pdo->query($sql);
        while ($row = $job_detail->fetch()){
            $company_id = $row['company_id'];
            $company_name = $row['company'];
            $job_title = $row['job_title'];
            $job_category = $row['job_category'];
            $city = $row['city'];
            $state = $row['state'];
            $contact = $row['contact'];
            $referred_by = $row['referred_by'];
            $date_applied = $row['date_applied'];
            $status = $row['status'];
            $phone_screen = $row['phone_screen'];
            $first_interview = $row['first_interview'];
            $second_interview = $row['second_interview'];
            $offer = $row['offer'];
        }
        break;
    case 'new':
        $form_title = 'New Job Application';
        $company_id = '';
        $company_name = '';
        $job_title = '';
        $job_category = '';
        $city = '';
        $state = '';
        $contact = '';
        $referred_by = '';
        $date_applied = '';
        $status = '';
        $phone_screen = '';
        $first_interview = '';
        $second_interview = '';
        $offer = '';
        break;
        
    default:

}

?>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel=stylesheet type="text/css" href="jobsearch.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
       
        //$q = jQuery.noConflict();  //this eliminates conflict between other libraries that may use $
        $(document).ready(function() { 
            $(function() {
                $('#date_applied').datepicker();
                $('#phone_screen').datepicker();
                $('#first_interview').datepicker();
                $('#second_interview').datepicker();
            } );
            $('#company').change(function(){
                var company_val = $( "#company option:selected" ).val();
                if(company_val == "new")
                     $('#new_company_field').show();
                else
                    $('#new_company_field').hide();
            });
        });     
    </script>
    <meta charset="utf-8" />
    <title></title>
</head>

<body>
<form action="edit_job.php?mode=<?=$mode?>" name="job_form" method="post">   
<table border=0>
    <?php 
    if($submitted == 'true'){
        echo '<h1 class="notification">Application Updated</h1>';
    }?>
    <tr>
        <td colspan=8 class="report_title"><?=$form_title?></td>
    </tr>
    <tr>
        <td><label for="datepicker">Date Applied: </label></td>
        <td><input type="text" id="date_applied" name="datepicker" value="<?=$date_applied?>"> 
        </td>
    </tr>
    <tr>
        <td><label for="company">Company: </label></td>
        <td><select name="company" id="company">
                <option value="">Select Company</option>
                <option value="new">--NEW COMPANY--</option>
                <?php
                    $sql = 'SELECT company_id, company_name FROM company ORDER BY company_name';
                    $company_list = $pdo->query($sql);
                    while ($row = $company_list->fetch()){
                    if($company_id == $row['company_id']){
                        $filter_selected = ' Selected ';
                    } else {
                        $filter_selected = '';
                    } 
                    echo '<option value="'.$row['company_id'].'"'.$filter_selected.'>'.$row['company_name'].'</option>';
                }?>
            </select> 
        </td>
    </tr>
    <tr>
        <td colspan=2>
            <div id="new_company_field" style="display:none">
            <table>
                <tr>
                    <td><label for="new_company">New Company: </label></td>
                    <td><input type="text" name="new_company" id="new_company"></td>
                </tr>
            </table>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="job_title">Job Title: </label></td>
        <td><input type="text" name="job_title" id="job_title" size="40"  value="<?=$job_title?>"></td>
    </tr>
    <tr>
        <td><label for="category">Job Cateogory: </label></td>
        <td><select name="category" id="category">
                <option value="">Select Category</option>
                <?php 
                $sql = 'SELECT distinct job_category FROM job ORDER BY job_category';
                $category_list = $pdo->query($sql);
                while ($row = $category_list->fetch()){
                    if($job_category == $row['job_category']){
                        $filter_selected = ' Selected ';
                    } else {
                        $filter_selected = '';
                    } 
                    echo '<option value="'.$row['job_category'].'"'.$filter_selected.'>'.$row['job_category'].'</option>';
                }?>
            </select> 
        </td>
    </tr>
    <tr>
        <td><label for="city">City: </label></td>
        <td><input type="text" name="city" id="city" value="<?=$city?>"></td>
    </tr>
    <tr>
        <td><label for="state">State: </label></td>
        <td><select name="state" id="state">
                <option value="">Select State</option>
                <?php 
                $sql = 'SELECT state_id, state_name FROM States ORDER BY state_name';
                $state_list = $pdo->query($sql);
                while ($row = $state_list->fetch()){
                    if($state == $row['state_id']){
                        $filter_selected = ' Selected ';
                    } else {
                        $filter_selected = '';
                    } 
                    echo '<option value="'.$row['state_id'].'"'.$filter_selected.'>'.$row['state_name'].'</option>';
                }?>
            </select> 
        </td>
    </tr>
    <tr>
        <td><label for="referred_by">Referred By: </label></td>
        <td><input type="text" name="referred_by" id="referred_by" value="<?=$referred_by?>"></td>
    </tr>

    <tr>
        <td><label for="contact">Contact: </label></td>
        <td><input type="text" name="contact" id="contact" value="<?=$contact?>"></td>
    </tr>
    <tr>
        <td><label for="status">Status: </label></td>
        <td><textarea rows="3" cols="35" name="status" id="status"><?=$status?></textarea></td>
    </tr>
    <tr>
        <td><label for="phone_screen">Phone Screen: </label></td>
        <td><input type="text" name="phone_screen" id="phone_screen" name="datepicker" value="<?=$phone_screen?>" autocomplete="off"> 
        </td>
    </tr>
    <tr>
        <td><label for="first_interview">First Interview: </label></td>
        <td><input type="text" name="first_interview" id="first_interview" name="datepicker" value="<?=$first_interview?>" autocomplete="off"> 
        </td>
    </tr>
    <tr>
        <td><label for="second_interview">Second Interview: </label></td>
        <td><input type="text" name="second_interview" id="second_interview" name="datepicker" value="<?=$second_interview?>" autocomplete="off"> 
        </td>
    </tr>
    <tr>
        <td><label for="offer">Offer: </label></td>
        <td><input type="text" name="offer" id="offer" size=40 value="<?=$offer?>"> 
        </td>
    </tr>
    <tr>
        <td align="center"><input type="submit" value="Save"></td>
        <td align="center"><button id="back_button" onClick="window.history.go(-1);">Back to Report</button></td>
    </tr>
</table> 
<input type="hidden" name="job_id" id="job_id" value="<?=$job_id?>">
<input type="hidden" name="submitted" value="true">
</form>
</body>
</html>
