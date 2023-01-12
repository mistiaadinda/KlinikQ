<!DOCTYPE html>
<html>
<head>
	<title>Data Klinik</title>
</head>
<body>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <title>KlinikQ</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>

    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                KlinikQ
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <li class="nav-item">
                            <a class="nav-link" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.php">Team Member</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="lokasi.php">Lokasi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="klinik.php">Klinik</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <section class="bg-success py-5">
        <div class="container">

      
       
                <div class="card">
                    <div class="card-body">
 
	<br/>
    <table class="table table-striped table-bordered data">
	<table border="1">
		<tr>
			<th>NO</th>
			<th>Kode Klinik</th>
			<th>Nama Klinik</th>
			<th>Alamat</th>
            <th>No HP</th>
			<th>Fasilitas</th>
			<th>Pelayanan</th>
		</tr>
		<?php 
		include 'koneksi2.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from tb_klinik");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['kode_klinik']; ?></td>
				<td><?php echo $d['nama_klinik']; ?></td>
				<td><?php echo $d['alamat']; ?></td>
                <td><?php echo $d['no_hp']; ?></td>
				<td><?php echo $d['fasilitas']; ?></td>
				<td><?php echo $d['pelayanan']; ?></td>
			</tr>
			<?php 
		}
		?>
	</table>
    
</body>
</html>