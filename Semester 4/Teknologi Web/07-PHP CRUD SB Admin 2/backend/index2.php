<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container" style="margin-top: 80px">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Mahasiswa
                    </div>
                    <div class="card-body">
                        <a href="tambah_mahasiswa.php" class="btn btn-md btn-success">Tambah Data</a>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>No</td>
                                    <td>NPM</td>
                                    <td>Nama Lengkap</td>
                                    <td>Alamat</td>
                                    <td>Aksi</td>
                                </tr>
                            </thead>
                            <?php 
                            include "koneksi.php";
                            $no = 1;
                            $query = mysqli_query($conn, "SELECT * FROM mahasiswa");
                            while($data = mysqli_fetch_array($query)){
                            ?>

                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?php echo $data['npm']?></td>
                                <td><?php echo $data['nama']?></td>
                                <td><?php echo $data['alamat']?></td>
                                <td>
                                    <a href="edit_mahasiswa.php?id=<?php echo $data['id']?>" class="btn btn-sm btn-primary">Edit </a>
                                    <a href="" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>

                            <?php } ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>