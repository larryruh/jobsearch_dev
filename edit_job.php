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
        $company_name = $_POST['new_company'];
        $sql = 'INSERT INTO company (company_name) VALUES ("'.$company_name.'")';
        try{
            $pdo->exec($sql);
            $stmt = $pdo->prepare('SELECT max(company_id) from Company');
            $stmt->execute();
            $company_id = $stmt->fetchColumn();
        } catch (PDOException $e) {
             $output = 'Unable to update Company table ' . $e;
             echo $output;
        }
    } else {
         $company_id = $_POST['company'];
        try{ 
             $stmt = $pdo->prepare('SELECT company_name FROM company WHERE company_id = '.$company_id.' ORDER BY company_name');
             $stmt->execute();
             $company_name = $stmt->fetchColumn();
        } catch (PDOException $e) {
             $output = 'Unable to update Company table ' . $e;
             echo $output;
        }
    }      
   
    if($mode == 'new'){
        $sql = 'INSERT INTO Job (company_id, company, job_title, job_category, city, state, contact, referred_by, date_applied, status, notes, phone_screen, first_interview, second_interview, offer) 
        VALUES('.$company_id.', "'.$company_name.'", "'.$_POST['job_title'].'", "'.$_POST['job_category'].'", "'.$_POST['city'].'", "'.$_POST['state'].'", "'.$_POST['contact'].'", "'.$_POST['referred_by'].'", str_to_date("'.$_POST['date_applied'].'", "%m/%d/%Y"), "'.$_POST['status'].'", "'.$_POST['phone_screen'].'", "'.$_POST['notes'].'", "'.$_POST['first_interview'].'", "'.$_POST['second_interview'].'", "'.$_POST['offer'].'")';
        try{
           $pdo->exec($sql);
           $stmt = $pdo->prepare('SELECT max(job_id) from job');
           $stmt->execute();
           $job_id = $stmt->fetchColumn();
        } catch (PDOException $e) {
            $output = 'Unable to update Job' . $e;
            echo $output;
        }
        
    } else {
        $job_id = $_POST['job_id'];
        $sql = 'UPDATE job SET 
                    company_id='.$company_id.',
                    company="'.$company_name.'", 
                    job_title="'.$_POST['job_title'].'",
                    job_category="'.$_POST['job_category'].'", 
                    city="'.$_POST['city'].'",
                    state="'.$_POST['state'].'",
                    contact="'.$_POST['contact'].'",
                    referred_by="'.$_POST['referred_by'].'",
                    date_applied=str_to_date("'.$_POST['date_applied'].'", "%m/%d/%Y"),
                    status="'.$_POST['status'].'",
                    notes="'.$_POST['notes'].'",
                    phone_screen="'.$_POST['phone_screen'].'",
                    first_interview="'.$_POST['first_interview'].'",
                    second_interview="'.$_POST['second_interview'].'", 
                    offer="'.$_POST['offer'].'"
                WHERE job_id='.$_POST['job_id'];
        try{
            $pdo->exec($sql);
        } catch (PDOException $e) {
            $output = 'Unable to update Job' . $e;
            echo $output;
        }
    }
    $mode = 'edit';
}

switch($mode){
    case 'edit':
        $form_title = 'Edit Job Application';
        $sql = 'SELECT job_id, company_id, company, job_title, job_category, city, state, contact, referred_by, date_format(date_applied,"%m/%d/%Y") date_applied, status, notes, phone_screen, first_interview, second_interview, offer FROM job WHERE job_id = '.$job_id;
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
            $notes = $row['notes'];
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
        $notes = '';
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
            $('#job_form').submit (function(event){
                var nameReg = /^[A-Za-z]+$/;
                var numberReg =  /^[0-9]+$/;
                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                var dateReg = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([-.\/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;

                var date_applied = $('#date_applied').val();
                var company = $('#company  option:selected').val();
                var job_title = $('#job_title').val();
                var job_category = $('#job_category option:selected').val();
                var city = $('#city').val();
                var state = $('#state option:selected').val();
                var status = $('#status option:selected').val();
                var valid_form = true;

                var inputVal = new Array(date_applied, company, job_title, job_category, city, state, status);

                var inputMessage = new Array('Date Applied', 'Company', 'Job Title', 'Job Category', 'City', 'State', 'Status');

                 $('.error').hide();

                if(inputVal[0] == ""){
                    $('#date_applied').after('<span class="error"> Please enter the ' + inputMessage[0] + '</span>');
                    valid_form = false;
                } 
                //this is not working correctly, Issue #24 entered.
                /*else if(!dateReg.test(date_applied)){
                    $('#date_applied').after('<span class="error"> Date format (mm/dd/yyyy)</span>');
                    valid_form = false;
                }*/

                if(inputVal[1] == ""){
                    $('#company').after('<span class="error"> Please select a ' + inputMessage[1] + '</span>');
                    valid_form = false;
                }

                if(inputVal[2] == ""){
                    $('#job_title').after('<span class="error"> Please enter your ' + inputMessage[2] + '</span>');
                    valid_form = false;
                } 

                if(inputVal[3] == ""){
                    $('#job_category').after('<span class="error"> Please enter the ' + inputMessage[3] + '</span>');
                    valid_form = false;
                } 

                if(inputVal[4] == ""){
                    $('#city').after('<span class="error"> Please enter the ' + inputMessage[4] + '</span>');
                    valid_form = false;
                }    

                if(inputVal[5] == ""){
                    $('#state').after('<span class="error"> Please enter the ' + inputMessage[5] + '</span>');
                    valid_form = false;  
                } 
                
                if(inputVal[6] == ""){
                    $('#status').after('<span class="error"> Please enter the ' + inputMessage[6] + '</span>');
                    valid_form = false;
                }     

                if(valid_form == false)
                   event.preventDefault();
            });
        }); 
        
    </script>
    <meta charset="utf-8" />
    <title></title>
</head>

<body>
<form action="edit_job.php?mode=<?=$mode?>" id="job_form" name="job_form" method="post">   
<table border=0>
    <?php 
    if($submitted == 'true'){
        echo '<p><div class="notification">Application Updated</div></p>';
    }?>
    <tr>
        <td colspan=8 class="report_title"><?=$form_title?></td>
    </tr>
    <tr>
        <td><label id="date_applied_label" for="date_applied">Date Applied: </label></td>
        <td><input type="text" id="date_applied" name="date_applied" value="<?=$date_applied?>"> *
        </td>
    </tr>
    <tr>
        <td><label id="company_label" for="company">Company: </label></td>
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
            </select> *
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
        <td><label id="job_title_label" for="job_title">Job Title: </label></td>
        <td><input type="text" name="job_title" id="job_title" size="40"  value="<?=$job_title?>"> *</td>
    </tr>
    <tr>
        <td><label id="job_category_label" for="category">Job Category: </label></td>
        <td><select name="job_category" id="job_category">
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
            </select> *
        </td>
    </tr>
    <tr>
        <td><label id="city_label" for="city">City: </label></td>
        <td><input type="text" name="city" id="city" value="<?=$city?>"> *</td>
    </tr>
    <tr>
        <td><label id="state_label" for="state">State: </label></td>
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
            </select> *
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
        <td><label id="status_label" for="status">Status: </label></td>
        <td><select name="status" id="status">
            <option value="">Select Status</option>
            <option value="Applied" <?php if($status=='Applied'){ echo ' Selected ';}?>>Applied</option>
            <option value="Closed" <?php if ($status=='Closed'){ echo ' Selected ';} ?>>Closed</option>
            <option value="Pending" <?php if ($status=='Pending'){ echo ' Selected ';}?>>Pending</option>
            </select> *
        </td>
    </tr>
    <tr>
        <td><label for="notes">Notes: </label></td>
        <td><textarea rows="3" cols="35" name="notes" id="notes"><?=$notes?></textarea></td>
    </tr>
    <tr>
        <td><label for="phone_screen">Phone Screen: </label></td>
        <td><input type="text" name="phone_screen" id="phone_screen" value="<?=$phone_screen?>" autocomplete="off"> 
        </td>
    </tr>
    <tr>
        <td><label for="first_interview">First Interview: </label></td>
        <td><input type="text" name="first_interview" id="first_interview" value="<?=$first_interview?>" autocomplete="off"> 
        </td>
    </tr>
    <tr>
        <td><label for="second_interview">Second Interview: </label></td>
        <td><input type="text" name="second_interview" id="second_interview" value="<?=$second_interview?>" autocomplete="off"> 
        </td>
    </tr>
    <tr>
        <td><label for="offer">Offer: </label></td>
        <td><input type="text" name="offer" id="offer" size=40 value="<?=$offer?>"> 
        </td>
    </tr>
    <tr>
        <td align="center"><button id="submit_form">Save</button></td>
        <td align="center"></td>
    </tr>
</table> 
<input type="hidden" name="job_id" id="job_id" value="<?=$job_id?>">
<input type="hidden" name="submitted" value="true">
</form>
</body>
</html>
