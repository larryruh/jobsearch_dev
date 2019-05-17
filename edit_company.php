<?php 
$mode = $_GET['mode'];
$company_id = $_GET['company_id'];
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
        $company = $_POST['new_company'];
    } else {
        $company = $_POST['company'];
    }      
   
    if($mode == 'new'){
        
        $sql = 'INSERT INTO company_watch(company_name, location, contact, email, phone, relationship_notes, last_jobs_check) VALUES ("'.$company.'","'.$_POST['location'].'", "'.$_POST['contact'].'", "'.$_POST['email'].'", "'.$_POST['phone'].'", "'.$_POST['relationship_notes'].'", "'.$_POST['last_jobs_check'].'")';
        try{
           $pdo->exec($sql);
           $stmt = $pdo->prepare('SELECT max(company_id) from company_watch');
           $stmt->execute();
           $company_id = $stmt->fetchColumn();
        } catch (PDOException $e) {
            $output = 'Unable to update company' . $e;
            echo $output;
        }
        
    } else {
        $company_id = $_POST['company_id'];
        $sql = 'UPDATE company_watch SET 
                    company_name="'.$company.'",
                    location="'.$_POST['location'].'",
                    contact="'.$_POST['contact'].'", 
                    phone="'.$_POST['phone'].'",
                    email="'.$_POST['email'].'",
                    relationship_notes="'.$_POST['relationship_notes'].'",
                    last_jobs_check="'.$_POST['last_jobs_check'].'"
                WHERE company_id='.$_POST['company_id'];
        try{
            $pdo->exec($sql);
        } catch (PDOException $e) {
            $output = 'Unable to update company' . $e;
            echo $output;
        }
    }
    $mode = 'edit';
}

switch($mode){
    case 'edit':
        $form_title = 'Edit Company Information';
        $sql = 'SELECT company_name, location, contact, phone, email, relationship_notes, last_jobs_check FROM company_watch WHERE company_id = '.$company_id;
        $company_detail = $pdo->query($sql);
        while ($row = $company_detail->fetch()){
            $company = $row['company_name'];
            $location = $row['location'];
            $contact = $row['contact'];
            $phone = $row['phone'];
            $email = $row['email'];
            $relationship_notes = $row['relationship_notes'];
            $last_jobs_check = $row['last_jobs_check'];
        }

        break;
    case 'new':
        $form_title = 'New company';
        $company = '';
        $location = '';
        $contact = '';
        $phone = '';
        $email = '';
        $relationship_notes = '';
        $last_jobs_check = '';
        break;
        
    default:

}?>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel=stylesheet type="text/css" href="jobsearch.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function() { 
            $('#company').change(function(){
                var company_val = $( "#company option:selected" ).val();
                if(company_val == "new")
                     $('#new_company_field').show();
                else
                    $('#new_company_field').hide();
            });
            $('#company_form').submit (function(event){
                var nameReg = /^[A-Za-z]+$/;
                var numberReg =  /^[0-9]+$/;
                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                var dateReg = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([-.\/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;

                var company = $('#company  option:selected').val();
                var location = $('#location').val();
                var location = $('#contact').val();
                var valid_form = true;

                var inputVal = new Array(company, location, contact, email);

                var inputMessage = new Array('Company', 'Location', 'Contact');

                 $('.error').hide();

                if(inputVal[0] == ""){
                    $('#company').after('<span class="error"> Please select a ' + inputMessage[0] + '</span>');
                    valid_form = false;
                }
                if(inputVal[1] == ""){
                    $('#location').after('<span class="error"> Please enter the ' + inputMessage[1] + '</span>');
                    valid_form = false;
                } 
                if(inputVal[2] == ""){
                    $('#contact').after('<span class="error"> Please enter the ' + inputMessage[2] + '</span>');
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
<?php 
if($submitted == 'true'){
    echo '<p><div class="notification">Company Updated</div></p>';
}?>
<form action="edit_company.php?mode=<?=$mode?>" id="company_form" name="company_form" method="post">   
<table border=0>
    <tr>
        <td colspan=8 class="report_title"><?=$form_title?></td>
    </tr>
    <tr>
        <td><label id="company_label" for="company">Company: </label></td>
        <td><select name="company" id="company">
                <option value="">Select Company</option>
                <option value="new">--NEW COMPANY--</option>
                <?php
                    $sql = 'SELECT distinct company_name FROM company_watch ORDER BY company_name';
                    $company_list = $pdo->query($sql);
                    while ($row = $company_list->fetch()){
                    if($company == $row['company_name']){
                        $filter_selected = ' Selected ';
                    } else {
                        $filter_selected = '';
                    } 
                    echo '<option value="'.$row['company_name'].'"'.$filter_selected.'>'.$row['company_name'].'</option>';
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
        <td><label id="location_label" for="location">Location: </label></td>
        <td><input type="text" id="location" name="location" value="<?=$location?>"> *
        </td>
    </tr>
    <tr>
        <td><label id="contact_label" for="contact">Contact: </label></td>
        <td><input type="text" id="contact" name="contact" value="<?=$contact?>"> *
        </td>
    </tr>
    <tr>
        <td><label id="phone_label" for="phone">Phone: </label></td>
        <td><input type="text" name="phone" id="phone" size="40"  value="<?=$phone?>"></td>
    </tr>
    <tr>
        <td><label id="email_label" for="email">Email: </label></td>
        <td><input type="text" name="email" id="email" size="40"  value="<?=$email?>"></td>
    </tr>
    <tr>
        <td><label id="relationship_notes_label" for="relationship_notes">Relationship Notes: </label></td>
        <td><input type="text" name="relationship_notes" id="relationship_notes" size="40"  value="<?=$relationship_notes?>"></td>
    </tr>
    <tr>
        <td><label id="last_jobs_check" for="last_jobs_check">Last Jobs Check: </label></td>
        <td><textarea rows="3" cols="35" name="last_jobs_check" id="last_jobs_check"><?=$last_jobs_check?></textarea></td>
    </tr>
    <tr>
        <td align="center"><button id="submit_form">Save</button></td>
        <td align="center"></td>
    </tr>
</table> 
<input type="hidden" name="company_id" id="company_id" value="<?=$company_id?>">
<input type="hidden" name="submitted" value="true">
</form>
</body>
</html>
