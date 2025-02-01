<?php
include "koneksi.php";

$id = $_POST['id'];
$npm = $_POST['npm'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];

$query = "UPDATE mahasiswa SET npm='$npm', nama='$nama', alamat='$alamat' WHERE id='$id'";

if ($conn->query($query)) {
    echo "Data Berhasil";
    header("location: index.php");
}else{
    echo "Data Gagal";
}
