<?php
//include koneksi database
include('koneksi.php');
//get data dari form
$id     = $_POST['id'];
$npm         = $_POST['npm'];
$nama = $_POST['nama'];
$alamat       = $_POST['alamat'];
//query update data ke dalam database berdasarkan ID
$query = "UPDATE tb_mahasiswa SET npm = '$npm', nama = '$nama', alamat = '$alamat' WHERE id = '$id'";
//kondisi pengecekan apakah data berhasil diupdate atau tidak
if($connection->query($query)) {
    //redirect ke halaman index.php 
    header("location: index.php");
} else {
    //pesan error gagal update data
    echo "Data Gagal Diupate!";
}
?>