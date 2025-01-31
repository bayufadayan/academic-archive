<?php 
require 'function.php';
$tugasphpawal = query("SELECT * FROM tugasphpawal");

?>
<!DOCTYPE html>
<html>
<head>
    <title>Halaman Admin</title>
</head>
<body>
    <h1>Daftar Mahasiswa</h1>

    <a href="tambah.php">Tambah data mahasiswa</a>
    <br> </br>

    <table border="1" cellpadding="10" cellspacing="0">

    <tr>
        <th>No.</th>
        <th>Aksi</th>
        <th>Nama</th>
        <th>NPM</th>
        <th>Jurusan</th>
    </tr>
    <?php $i = 1;?>
    <?php foreach ($tugasphpawal as $row) : ?>
    <tr>
        <td><?= $i ?></td>
        <td>
            <a href="">ubah</a> |
            <a href="delete.php?id=<?= $row["id"]; ?>"onclick="return confirm('Apakah anda ingin menghapus data?');">hapus<a>
        </td>
        <td><?= $row["nama"]; ?></td>
        <td><?= $row["npm"]; ?></td>
        <td><?= $row["jurusan"]; ?></td>
    </tr>
    <?php $i++ ?>
    <?php endforeach; ?>

    </table>
    
</body>
</html>