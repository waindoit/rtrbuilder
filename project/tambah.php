<?php
include 'conn.php';



$queryEdit = "SELECT *
                FROM project
                LEFT OUTER JOIN CODES
                    ON jenis_project = codesCodes AND codesHeads != 0
                WHERE no_project  ='$_REQUEST[no_project]'";

$resultEdit = mysqli_query($koneksi, $queryEdit);
$data  = mysqli_fetch_array($resultEdit);

// echo $data['codesDesc1'];


?>
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6" style="margin-left: 300px;">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2">Input Project</h3>
                                        </div>
                                        <hr>
                                        <form method="post" action="project/simpan.php" novalidate="novalidate">
                                            <div class="form-group has-success">
                                                <input id="no_project" name="no_project" type="hidden" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $data['no_project']; ?>">
                                                <label class="control-label mb-1">Jenis</label>
                                                <select name="jenis_project" id="jenis_project" class="form-control">
                                                    <?php
                                                        echo "<option value='" . $data['codesCodes'] . "'>" .$data['codesDesc1'] . "</option>";

                                                        $queryJenis= "SELECT * FROM CODES WHERE codesHeads = 1 AND  codesCodes != 0";
                                                        $tampilJenis=mysqli_query($koneksi, $queryJenis) or die(mysqli_error());
                                                        while($dataJenis=mysqli_fetch_array($tampilJenis))
                                                        {
                                                            echo "<option value='" . $dataJenis['codesCodes'] . "'>" .$dataJenis['codesDesc1'] . "</option>";
                                                        }


                                                    ?>

                                                    </select>

                                            </div>
                                            <div class="form-group">
                                                <label for="cc-payment" class="control-label mb-1">Nama Project</label>
                                                <input id="nama_project" name="nama_project" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $data['nama_project']; ?>" >
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-number" class="control-label mb-1">Tanggal Rencana</label>
                                                <input id="tanggal_rencana" name="tanggal_rencana" type="date" class="form-control" value="<?php echo $data['tanggal_rencana']; ?>">
                                                <span class="help-block" ></span>
                                            </div>

                                            <div class="form-group">
                                                <input id="simpan" name="simpan" type="hidden" class="form-control" aria-required="true" aria-invalid="false">
                                                <div class="col-lg-offset-2 col-lg-10">
                                                <?php

                                                    $hal = $_REQUEST['hal'];
                                                    // echo $hal;

                                                    if ($hal == 'delete') {
                                                        echo "<button type='submit' id='btnDelete' class='btn btn-primary' onclick='return confirm_alert(this);'>Delete</button>";
                                                     }
                                                     else if($hal == 'add'){
                                                        echo "<button type='submit' id='btnTambah' class='btn btn-primary'>Simpan</button>";
                                                    }
                                                     else if($hal == 'edit'){
                                                        echo "<button type='submit' id='btnEdit' class='btn btn-primary'>Simpan</button>";
                                                    }

                                                ?>
                                                <button type="button" class="btn btn-default btn-success" onclick="history.back();" >Batal </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<?php
// echo $hal;
$hal = $_REQUEST['hal'];

echo "<script type='text/javascript'>";
if ($hal == 'delete') {
    echo "$(document).ready(function(){
                $('#btnDelete').click(function(){
                    document.getElementById('simpan').value='delete';
                });
            });";
 }
 else if($hal == 'add'){
    echo "$(document).ready(function(){
                $('#btnTambah').click(function(){
                    document.getElementById('simpan').value='add';
                });
            });";
}
 else if($hal == 'edit'){
    echo "$(document).ready(function(){
                $('#btnEdit').click(function(){
                    document.getElementById('simpan').value='edit';
                });
            });";
}
echo "</script>";

?>
