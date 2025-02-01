<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>Mahasiswa</title>
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
              <a href="tambah_mahasiswa.php" class="btn btn-md btn-success" style="margin-bottom: 10px">TAMBAH DATA</a>
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th scope="col">NO.</th>
                    <th scope="col">NIK</th>
                    <th scope="col">NAMA LENGKAP</th>
                    <th scope="col">ALAMAT</th>
                    <th scope="col">AKSI</th>
                  </tr>
                </thead>
                <tbody>
                <?php 
    // Menginclude file koneksi.php yang berisi informasi koneksi ke database
    include('koneksi.php');
    // Inisialisasi variabel $no untuk nomor urut
    $no = 1;
    // Melakukan query untuk mengambil data mahasiswa dari tabel tb_mahasiswa
    $query = mysqli_query($connection,"SELECT * FROM tb_mahasiswa");
    // Melakukan loop untuk menampilkan setiap data mahasiswa dalam tabel
    while($row = mysqli_fetch_array($query)){
?>

                  <tr>
                      <td><?php echo $no++; // nomor urut?></td>
                      <td><?php echo $row['npm']; //menampilkan NPM yang ada di field database?></td>
                      <td><?php echo $row['nama']; //menampilkan nama yang ada di field database ?></td>
                      <td><?php echo $row['alamat']; //menampilkan alamat yang ada di field database ?></td>
                      <td class="text-center">
        <!-- Tombol Edit yang mengarah ke halaman edit_mahasiswa.php dengan menyertakan id mahasiswa -->
        <a href="edit_mahasiswa.php?id=<?php echo $row['id'] ?>" class="btn btn-sm btn-primary">EDIT</a>
        <!-- Tombol Hapus yang mengarah ke halaman hapus_mahasiswa.php dengan menyertakan id mahasiswa -->
        <a href="hapus_mahasiswa.php?id=<?php echo $row['id'] ?>" class="btn btn-sm btn-danger">HAPUS</a>
    </td>
                  </tr>

                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
      </div>
    </div>
  </body>
</html>