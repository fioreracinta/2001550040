<?php
header("Content-Type: application/xml; charset=UTF-8");
include 'koneksi.php';

$Alamat = isset($_GET['Alamat']) ? $_GET['Alamat'] : '';
$Harga = isset($_GET['Harga']) ? $_GET['Harga'] : '';

$query = "SELECT * FROM wisatakotaatlas WHERE 1";

if($jenis_kelamin) {
    $query .= " AND Alamat='$Alamat'";
}

if($agama) {
    $query .= " AND Harga='$Harga'";
}

$result = mysqli_query($koneksi, $query);
if (!$result) {
    die('Query error: ' . mysqli_error($koneksi));
}

$xml = new SimpleXMLElement('<data_wisatakotaatlas/>');

while ($row = mysqli_fetch_assoc($result)) {
    $warga = $xml->addChild('wisatakotaatlas');
    $warga->addChild('Id', $row['id']);
    $warga->addChild('Nama', $row['nama']);
    $warga->addChild('Alamat', $row['alamat']);
    $warga->addChild('Harga', $row['Harga']);
}

echo $xml->asXML();
?>