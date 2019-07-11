<html>
<head>
    <title>Multiple Delete</title>
    <style>
        table {
            border-collapse: collapse;
        }
        table, td, th {
            border: 1px solid black;
        }
    </style>
 <!-- Load librari/plugin jquery nya -->
    <script src="<?php echo base_url('assets/jquery.min.js'); ?>"></script> 
</head>
<body>
    <h1><?php echo ucwords('Data Pegawai');?></h1>
    <hr>
    <form method="post" action="<?php echo base_url('pegawai/delete') ?>" id="form-delete">
        <?php if (!empty($sSQL)&&($num_results<>0)): ?>
            <table class="table table-striped table-bordered" cellspacing="0">
                <thead class="panel panel-primary">
                    <tr>
                        <th><input type="checkbox" id="check-all"></th>
                        <th>NIP</th>
                        <th>Nama Pegawai</th>
                        <th style="width:70px;">Gender</th>
                        <th>Tempat Tgl Lahir</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($sSQL->result() as $row): ?>
                    <tr>
                        <?php echo "<td><input type='checkbox' class='check-item' name='pegawai_id[]' value='".$row->pegawai_id."'></td>"; ?>
                        <td><?= ($row->nip);?></td>
                        <td><?= ($row->nama_pegawai);?></td>
                        <td>
                        <?php
                            if ($row->jenis_kelamin==1){
                                echo 'Laki-laki';
                            }elseif ($row->jenis_kelamin==2){
                                echo 'Perempuan';
                            }else{
                                echo '--not-set--';
                            }
                        ?>
                        </td>
                        <td>
                            <?php 
                            if (empty($row->tempat_lahir)){
                                echo '---not-set---,';
                            }else{
                                echo $row->tempat_lahir;
                            }
                            if (($row->tanggal_lahir)=="0000-00-00"){
                                echo ' ---not-set---';
                            }else{
                                echo ' '.date("d M Y",strtotime($row->tanggal_lahir));
                            }
                            ?>
                        </td>
                    </tr>
                    <?php endforeach ?>
                </tbody>

                <tfoot>
                    <tr>
                        <th>Action</th>
                        <th>NIP</th>
                        <th>Nama Pegawai</th>
                        <th>Gender</th>
                        <th>Tempat Tgl Lahir</th>
                    </tr>
                </tfoot>
            </table>
        <?php else: ?>
            <h3> <i class="fa fa-ban"></i> No record found !</h3> 
        <?php endif ?>
        <?php if (!empty($sSQL)&&($num_results<>0)): ?>
            <?php 
                    if (strlen($pagination)) {
                        echo $pagination;
                    }
                ?>
        <?php endif ?>
        <hr>
        <button type="button" id="btn-delete">DELETE</button>
    </form>
    
<script>
    $(document).ready(function(){ // Ketika halaman sudah siap (sudah selesai di load)
        $("#check-all").click(function(){ // Ketika user men-cek checkbox all
            if($(this).is(":checked")) // Jika checkbox all diceklis
                $(".check-item").prop("checked", true); // ceklis semua checkbox siswa dengan class "check-item"
            else // Jika checkbox all tidak diceklis
                $(".check-item").prop("checked", false); // un-ceklis semua checkbox dengan class "check-item"
        });

        $("#btn-delete").click(function(){ // Ketika user mengklik tombol delete
            var confirm = window.confirm("Apakah Anda yakin ingin menghapus data-data ini?"); // Buat sebuah alert konfirmasi
            if(confirm) // Jika user mengklik tombol "Ok"
                $("#form-delete").submit(); // Submit form
        });
    });
</script>
</body>
</html>
