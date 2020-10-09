<?php
$host = 'localhost';
$dbname = 'list';
$username = 'mysql';
$password = 'mysql';
$mysql = new mysqli($host, $username, $password, $dbname);
if(!$mysql)  {
    die(mysqli_connect_error());
}

$mainList;
$days = array(
    "2020-10-05" => "Monday",
    "2020-10-06" => "Tuesday",
    "2020-10-07" => "Wednesday",
    "2020-10-08" => "Thursday",
    "2020-10-09" => "Friday",
    "2020-10-10" => "Saturday",
    "2020-10-11" => "Sunday"
);

$result = $mysql->query("SELECT date FROM time_reports GROUP BY date");
if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $date = "'".$row["date"]."'";
        $mainResult = $mysql->query(
        "SELECT  time_reports.hours, time_reports.date, employees.name
        FROM employees
        INNER JOIN time_reports ON time_reports.employee_id = employees.id 
        AND date = ".$date." ORDER BY hours DESC");
        if($mainResult->num_rows > 0) {
            $mainList[$row["date"]] = array();
            while($row = $mainResult->fetch_assoc()) {
                $mainList[$row["date"]][$row["name"]] = $row["hours"];
            }
        }
    }
}

foreach ($days as $keyFirst => $valueFirst) {
    if(isset($mainList[$keyFirst])) {
      $mess = '| '.$valueFirst.' | ';
      $counter = 1;  
      foreach($mainList[$keyFirst] as $keySecond => $valueSecond) {
        $mess = ' '.$mess.$keySecond.' ('.$valueSecond.' hours)';
        if($counter == 3 || count($mainList[$keyFirst]) == $counter) {
        break;
        }else {
            $mess = ' '.$mess.', '; 
        }
        $counter++; 
      }
      var_dump($mess);  
    }else {
        var_dump($valueFirst.' - nothing');
    }
}

?>








        

