<?php 
$result = $this->conn->query($query);

$data = array();
//tra ve ketb qua
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}
?>

