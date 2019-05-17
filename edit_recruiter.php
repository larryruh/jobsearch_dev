<?php 
$mode = $_GET['mode'];
$recruiter_id = $_GET['recruiter_id'];
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
        
        $sql = 'INSERT INTO recruiter(company, first_name, last_name, phone, email, locations, notes) VALUES("'.$company.'","'.$_POST['first_name'].'", "'.$_POST['last_name'].'", "'.$_POST['phone'].'", "'.$_POST['email'].'", "'.$_POST['locations'].'", "'.$_POST['notes'].'")';
        try{
           $pdo->exec($sql);
           $stmt = $pdo->prepare('SELECT max(recruiter_id) from recruiter');
           $stmt->execute();
           $recruiter_id = $stmt->fetchColumn();
        } catch (PDOException $e) {
            $output = 'Unable to update Recruiter' . $e;
            echo $output;
        }
        
    } else {
        $recruiter_id = $_POST['recruiter_id'];
        $sql = 'UPDATE recruiter SET 
                    company="'.$company.'",
                    first_name="'.$_POST['first_name'].'",
                    last_name="'.$_POST['last_name'].'", 
                    phone="'.$_POST['phone'].'",
                    email="'.$_POST['email'].'",
                    locations="'.$_POST['locations'].'",
                    notes="'.$_POST['notes'].'"
                WHERE recruiter_id='.$_POST['recruiter_id'];
        try{
            $pdo->exec($sql);
        } catch (PDOException $e) {
            $output = 'Unable to update Recruiter' . $e;
            echo $output;
        }
    }
    $mode = 'edit';
}

switch($mode){
    case 'edit':
        $form_title = 'Edit Recruiter Information';
        $sql = 'SELECT recruiter_id, company, first_name, last_name, phone, email, locations, notes FROM recruiter WHERE recruiter_id = '.$recruiter_id;
        $recruiter_detail = $pdo->query($sql);
        while ($row = $recruiter_detail->fetch()){
            $company = $row['company'];
            $first_name = $row['first_name'];
            $last_name = $row['last_name'];
            $phone = $row['phone'];
            $email = $row['email'];
            $locations = $row['locations'];
            $notes = $row['notes'];
        }
        break;
    case 'new':
        $form_title = 'New Recruiter';
        $company = '';
        $first_name = '';
        $last_name = '';
        $phone = '';
        $email = '';
        $locations = '';
        $notes = '';
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
            $('#recruiter_form').submit (function(event){
                var nameReg = /^[A-Za-z]+$/;
                var numberReg =  /^[0-9]+$/;
                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                var dateReg = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([-.\/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;

                var first_name = $('#first_name').val();
                var last_name = $('#last_name').val();
                var company = $('#company  option:selected').val();
                var valid_form = true;

                var inputVal = new Array(first_name, last_name, company);

                var inputMessage = new Array('First Name', 'Last Name', 'Company');

                 $('.error').hide();

                if(inputVal[0] == ""){
                    $('#first_name').after('<span class="error"> Please enter the ' + inputMessage[0] + '</span>');
                    valid_form = false;
                } 
                if(inputVal[1] == ""){
                    $('#last_name').after('<span class="error"> Please enter the ' + inputMessage[1] + '</span>');
                    valid_form = false;
                } 
                if(inputVal[2] == ""){
                    $('#company').after('<span class="error"> Please select a ' + inputMessage[2] + '</span>');
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
    echo '<p><div class="notification">Recruiter Updated</div></p>';
}?>
<form action="edit_recruiter.php?mode=<?=$mode?>" id="recruiter_form" name="recruiter_form" method="post">   
<table border=0>
    <tr>
        <td colspan=8 class="report_title"><?=$form_title?></td>
    </tr>
    <tr>
        <td><label id="first_name_label" for="first_name">First Name: </label></td>
        <td><input type="text" id="first_name" name="first_name" value="<?=$first_name?>"> *
        </td>
    </tr>
    <tr>
        <td><label id="last_name_label" for="last_name">Last Name: </label></td>
        <td><input type="text" id="last_name" name="last_name" value="<?=$last_name?>"> *
        </td>
    </tr>
    <tr>
        <td><label id="company_label" for="company">Company: </label></td>
        <td><select name="company" id="company">
                <option value="">Select Company</option>
                <option value="new">--NEW COMPANY--</option>
                <?php
                    $sql = 'SELECT distinct company FROM recruiter ORDER BY company';
                    $company_list = $pdo->query($sql);
                    while ($row = $company_list->fetch()){
                    if($company == $row['company']){
                        $filter_selected = ' Selected ';
                    } else {
                        $filter_selected = '';
                    } 
                    echo '<option value="'.$row['company'].'"'.$filter_selected.'>'.$row['company'].'</option>';
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
        <td><label id="phone_label" for="phone">Phone: </label></td>
        <td><input type="text" name="phone" id="phone" size="40"  value="<?=$phone?>"></td>
    </tr>
    <tr>
        <td><label id="email_label" for="email">Email: </label></td>
        <td><input type="text" name="email" id="email" size="40"  value="<?=$email?>"></td>
    </tr>
    <tr>
        <td><label id="locations_label" for="locations">Locations: </label></td>
        <td><input type="text" name="locations" id="locations" size="40"  value="<?=$locations?>"></td>
    </tr>
    <tr>
        <td><label for="notes">Notes: </label></td>
        <td><textarea rows="3" cols="35" name="notes" id="notes"><?=$notes?></textarea></td>
    </tr>
    <tr>
        <td align="center"><button id="submit_form">Save</button></td>
        <td align="center"></td>
    </tr>
</table> 
<input type="hidden" name="recruiter_id" id="recruiter_id" value="<?=$recruiter_id?>">
<input type="hidden" name="submitted" value="true">
</form>
</body>
</html>
