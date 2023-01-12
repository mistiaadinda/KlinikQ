<?php
header('Content-Type: application/json; charset=utf-8');

$connection = mysqli_connect("localhost", "root", "", "kelompok_3tie");

$val = (isset($_GET['search'])) ? strtoupper($_GET['search']) : "";

$query = $connection->query("SELECT * FROM tb_klinik where propertiesNama_Klini LIKE'%" . $val . "%'");

while ($row = $query->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data);
