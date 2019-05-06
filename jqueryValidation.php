<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        $q = jQuery.noConflict();  //this eliminates conflict between other libraries that may use $
        $q(document).ready(function() {  
            $q("#click-me-button").click(function () {   //event handler for button
                $q("#my-div").css("width", "300").css("height", "300");  //resize my-div
            })
        })


        $q('.submit').click(function(){
            validateForm();   
        });

        function validateForm(){

            var nameReg = /^[A-Za-z]+$/;
            var numberReg =  /^[0-9]+$/;
            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

            var names = $('#nameInput').val();
            var company = $('#companyInput').val();
            var email = $('#emailInput').val();
            var telephone = $('#telInput').val();
            var message = $('#messageInput').val();

            var inputVal = new Array(names, company, email, telephone, message);

            var inputMessage = new Array("name", "company", "email address", "telephone number", "message");

             $('.error').hide();

                if(inputVal[0] == ""){
                    $('#nameLabel').after('<span class="error"> Please enter your ' + inputMessage[0] + '</span>');
                } 
                else if(!nameReg.test(names)){
                    $('#nameLabel').after('<span class="error"> Letters only</span>');
                }

                if(inputVal[1] == ""){
                    $('#companyLabel').after('<span class="error"> Please enter your ' + inputMessage[1] + '</span>');
                }

                if(inputVal[2] == ""){
                    $('#emailLabel').after('<span class="error"> Please enter your ' + inputMessage[2] + '</span>');
                } 
                else if(!emailReg.test(email)){
                    $('#emailLabel').after('<span class="error"> Please enter a valid email address</span>');
                }

                if(inputVal[3] == ""){
                    $('#telephoneLabel').after('<span class="error"> Please enter your ' + inputMessage[3] + '</span>');
                } 
                else if(!numberReg.test(telephone)){
                    $('#telephoneLabel').after('<span class="error"> Numbers only</span>');
                }

                if(inputVal[4] == ""){
                    $('#messageLabel').after('<span class="error"> Please enter your ' + inputMessage[4] + '</span>');
                }       
        }   
    </script>
    <!--<script language="javascript">
        

        function validateMe() {
            //alert("Here");
            if (document.getElementById("title").value == "") {
                alert("Job Title is Required");
                document.searchparams.title.focus();
                return false;
            }

            alert(document.getElementById("monster").checked);
            alert(document.getElementById("post_age").value);
            //return true;
        }
    </script>-->
    <meta charset="utf-8" />
    <title></title>
</head>

<body onload="imhere();">
    <img id="workingman" width="150" height="150" src="/img/workingman.jpg" alt="Get a Job!" />
    <h1>Job Search Form</h1>
    <form id="searchparams" name="searchparams" method="post" action="searchResults.php" target="resultsframe">
        <table border="0">
            <tr>
                <td align="right">
                    <h3>Job Title:</h3>
                </td>
                <td><input id="title" name="title" type="text" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h3>Search Engine:</h3>
                </td>
                <td>
                    <input id="monster" name="monster" type="checkbox" value="monster" checked /> Monster.com<br />
                    <input id="dice" name="dice" type="checkbox" value="dice" checked /> Dice.com
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h3>Location:</h3>
                </td>
                <td>
                    <input id="omaha" name="omaha" type="checkbox" value="NE" checked /> Omaha, NE<br />
                    <input id="manhattan" name="manhattan" type="checkbox" value="KS" checked /> Manhattan, KS<br />
                    <input id="kc" name="kc" type="checkbox" value="MO" checked /> Kansas City, MO<br />
                    <input id="florida" name="florida" type="checkbox" value="FL" checked /> Florida<br />
                    <input id="texas" name="texas" type="checkbox" value="TX" checked /> Texas<br />
                    <input id="vegas" name="vegas" type="checkbox" value="NV" checked /> Las Vegas, NV<br />
                    <input id="arizona" name="arizona" type="checkbox" value="AZ" checked /> Arizona<br />
                    <input id="georgia" name="georgia" type="checkbox" value="GA" checked /> Georgia
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h3>Posting Range:</h3>
                </td>
                <td>
                    <select name="post_age">
                        <option value="60">Last 60 Days</option>
                        <option value="30" selected>Last 30 Days</option>
                        <option value="14">Last 2 Weeks</option>
                        <option value="60">Last 1 Week</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2"><button onclick=validateMe()>Validate</button></td>
            </tr>
        </table>
    </form>
</body>

</html>