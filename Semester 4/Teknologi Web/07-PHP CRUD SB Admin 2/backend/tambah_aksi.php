<?php
include "koneksi.php";

$npm = $_POST['npm'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];

$query = "INSERT INTO mahasiswa(npm,nama,alamat) values ('$npm','$nama','$alamat')";

if ($conn->query($query)) {
    echo "Data Berhasil";
    header("location: index.php");
}else{
    echo "Data Gagal";
}
