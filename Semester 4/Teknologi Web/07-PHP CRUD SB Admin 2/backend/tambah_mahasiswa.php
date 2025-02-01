<?php
include "template/header.php";
?>   
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        Form Tambah Data
                    </div>
                    <div class="card-body">
                        <form action="tambah_aksi.php" method="post">
                        <div class="form-group">
                                <label for="">Npm</label>
                                <input type="text" name="npm" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Nama</label>
                                <input type="text" name="nama" class="form-control">
                            </div>
                            
                            <div class="form-group">
                                <label for="">Alamat</label>
                                <textarea type="text" name="alamat" class="form-control"></textarea>
                            </div>

                            <button type="submit" class="btn btn-success">Tambah</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <?php
include "template/footer.php";
?>   