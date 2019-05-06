<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel=stylesheet type="text/css" href="jobsearch.css">
    <script language="javascript">
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
    <title>Jobsearch Menu</title>
</head>

<body onload="imhere();">
    <img id="workingman" width="150" height="150" src="img/workingman.jpg" alt="Get a Job!" />
    <h1>Job Search HQ</h1>
    <table border="0">
        <tr>
            <td>
                <a href="javascript:hideMenu('app_sub_menu')"><div class="top_menu"><img id="app_expand" src="img/expand.png" height="10" width="10"> Job Applications</div></a>
            </td>
        </tr>   
    </table>
    <div id="app_sub_menu" style="display:none" class="sub_menu">
    <table border=0>   
        <tr>
            <td>
                 <a href="application_list.php" target="results_frame">Search</a><br>
                <a href="application_edit.php?mode=new" target="results_frame">Add New</a>
            </td>
        </tr>
    </table>
    </div>
    <table border="0">
        <tr>
            <td>
                <a href="javascript:hideMenu('rec_sub_menu')"><div class="top_menu"><img id="rec_expand" src="img/expand.png" height="10" width="10"> Recruiters</div></a>
            </td>
        </tr>   
    </table>
    <div id="rec_sub_menu" style="display:none" class="sub_menu">
    <table border=0>   
        <tr>
            <td>
                 <a href="application_list.php" target="results_frame">Search</a><br>
                <a href="application_edit.php?mode=new" target="results_frame">Add New</a>
            </td>
        </tr>
    </table>
    </div>
    <table border="0">
        <tr>
            <td>
                <a href="javascript:hideMenu('com_sub_menu')"><div class="top_menu"><img id="company_expand" src="img/expand.png" height="10" width="10"> Companies to Watch</div></a>
            </td>
        </tr>   
    </table>
    <div id="com_sub_menu" style="display:none" class="sub_menu">
    <table border=0>   
        <tr>
            <td>
                 <a href="application_list.php" target="results_frame">Search</a><br>
                <a href="application_edit.php?mode=new" target="results_frame">Add New</a>
            </td>
        </tr>
    </table>
    </div>
</body>

</html>