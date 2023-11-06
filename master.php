<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisatakotaatlas";
        $stmt = $pdo->query($sql);
        $wisatakotaatlas = $stmt->fetchAll();
        echo json_encode($wisatakotaatlas);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->Nama) && isset($data->Alamat) && isset($data->Harga)) {
            $sql = "INSERT INTO wisatakotaatlas (Nama, Alamat, Harga) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->Nama, $data->Alamat, $data->Harga]);
            echo json_encode(['message' => 'wisatakotaatlas berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->Id) && isset($data->Nama) && isset($data->Alamat) && isset($data->Harga)) {
            $sql = "UPDATE wisatakotaatlas SET Nama=?, Alamat=?, Harga=? WHERE Id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->Nama, $data->Alamat, $data->Harga, $data->Id]);
            echo json_encode(['message' => 'wisatakotaatlas berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id)) {
            $sql = "DELETE FROM wisatakotaatlas WHERE Id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'wisatakotatlas berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>
