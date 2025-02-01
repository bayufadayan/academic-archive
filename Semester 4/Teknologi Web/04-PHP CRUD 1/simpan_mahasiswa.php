<?php
//include koneksi database
include('koneksi.php');
//get data dari form
$npm = $_POST['npm'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
//query insert data ke dalam database
$query = "INSERT INTO tb_mahasiswa (npm, nama, alamat) VALUES ('$npm', '$nama', '$alamat')";
//kondisi pengecekan apakah data berhasil dimasukkan atau tidak
if ($connection->query($query)) {
    //redirect ke halaman index.php
    header("location: index.php");
} else {
    //pesan error gagal insert data
    echo "Data Gagal Disimpan!";
}
