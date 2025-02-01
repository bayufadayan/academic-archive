<?php
    include ("koneksi.php");
    $id = $_GET['id'];
    $query = mysqli_query($conn, "SELECT * FROM mahasiswa WHERE id='$id'");
    $data = mysqli_fetch_array($query);

?>

<?php
include "template/header.php";
?>   
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        Form Edit Data
                    </div>
                    <div class="card-body">
                        <form action="update_mahasiswa.php" method="post">
                        <div class="form-group">
                                <label for="">Npm</label>
                                <input type="text" name="npm" value= "<?php echo $data['npm']?>" class="form-control">
                                <input type="hidden" name="id" value=<?= $data['id']?>>
                            </div>
                            <div class="form-group">
                                <label for="">Nama</label>
                                <input type="text" name="nama" value= "<?php echo $data['nama']?>" class="form-control">
                            </div>
                            
                            <div class="form-group">
                                <label for="">Alamat</label>
                                <textarea type="text" name="alamat" class="form-control"><?php echo $data['alamat']?></textarea>
                            </div>

                            <button type="submit" class="btn btn-success">Tambah</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
include "template/footer.php";
?>   