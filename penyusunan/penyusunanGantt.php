<?php

$nama_project  =$_REQUEST['nama_project'];

?>
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <iframe src="./gantt/index.php?nama_project=<?php echo $nama_project; ?>" width="101%" style="height: 51vw; position: absolute; margin-left: -17px" ></iframe>
                    </div>
                </div>
            </div>
