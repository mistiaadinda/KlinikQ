<?php
include "koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bengkel GIS - Team 4</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="../template/assets/vendor/fonts/boxicons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="../template/assets/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="../template/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="../template/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="../template/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

  <link rel="stylesheet" href="../template/assets/vendor/libs/apex-charts/apex-charts.css" />

  <!-- Page CSS -->

  <!-- Helpers -->
  <script src="../template/assets/vendor/js/helpers.js"></script>
  <!-- =======================================================
  * Template Name: NiceAdmin - v2.5.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<!-- Close Header -->

</header><!-- End Header -->

</aside><!-- End Sidebar-->

<main id="main" class="main">
  </div><!-- End Page Title -->

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script language="JavaScript" type="text/javascript" src="https://cdn.jsdelivr.net/npm/ol@v7.1.0/dist/ol.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/ol@v7.1.0/ol.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./style.css">
    <div class="right_col" role="main">
      <style>
        @import "node_modules/ol/ol.css";

        html,
        body {
          margin: 0;
          height: 50%;
        }

        .map {
          height: 100%;
          width: 100%;
        }

        .konten {
          margin: 30px;
          width: 100%;
          height: 150%;
          padding: 50px;
        }

        #result {
          position: absolute;
          width: 100%;
          max-width: 400px;
          cursor: pointer;
          overflow-y: auto;
          max-height: 400px;
          box-sizing: border-box;
          z-index: 1001;
        }

        .link-class:hover {
          background-color: #f1f1f1;
        }
      </style>

      <title>Team 6</title>
  </head>

  <body>
    <nav class="navbar navbar-expand-lg navbar-light shadow">
      <div class="container d-flex justify-content-between align-items-center">

        <a class="navbar-brand text-success logo h1 align-self-center" href="index.php">
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
              <!-- <li class="nav-item">
                            <a class="nav-link" href="klinik.php">Klinik</a>
                        </li> -->
            </ul>
          </div>
        </div>

      </div>
    </nav>

    <div class="row">
      <div style="height:760px;" class="col">
        <div id="map" class="shadow-lg map"></div>
        <div class="ol-popup" id="popup">
          <a href="#" id="popup-closer" class="ol-popup-closer"></a>
          <div id="popup-content"></div>
        </div>
      </div>


      <div class="col" style="max-width: 350px;">
        <br>
        <div style="display: block;">
          <h6>Cari Klinik</h6>
          <div class="row">
            <div class="text-light small fw-semibold">Pilih Rumah Sakit</div>
            <div class="chosen-drop">
              <!-- <div class="chosen-search">
          <input class="chosen-search-input" type="text" autocomplete="off">
        </div> -->

              <?php
              $connection = mysqli_connect("localhost", "root", "", "kelompok_3tie");

              if (mysqli_connect_errno()) {
                echo "Connection Fialed" . mysqli_connect_error();
              }
              $result = mysqli_query($connection, "SELECT * FROM tb_klinik");
              ?>
              <select onchange="goto(this)" id="sel">
                <option id="list-select" value="0.510440,101.438309">-- Pilih Klinik ---</option>

                <?php
                while ($row = mysqli_fetch_array($result)) {
                  echo "<option value='$row[propertiesLatitude_],$row[propertiesLongitude]'>$row[propertiesNama_Klini]</option>";
                }
                ?>
              </select>
              <?php
              mysqli_close($connection);
              ?>


            </div>
            <hr class="m-0" />


            <!-- <div class="row">
              <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                  <input id="search" autocomplete="off" type="text" placeholder="Cari Klinik..." title="Cari Klinik..." class="form-control">
                  <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
              </div>
              <ul class="list-group" id="result"></ul>

              
              <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                  <li class="nav-item d-block d-lg-none">
                    <a class="nav-icon d-none d-lg-inline " href="#">
                      <i class="bi bi-search"></i>
                    </a>
                  </li>

            </div> -->
          </div>
          <br>
          <!-- <script>
                $(document).ready(function() {
                  $.ajaxSetup({
                    cache: false
                  });
                  $('#search').keyup(function() {
                    if ($('#search').val() != "") {
                      $('#result').html('');
                      $('#state').val('');
                      var searchField = $('#search').val();
                      var expression = new RegExp(searchField, "i");
                      $.getJSON('data/dataKlinikQ.json', function(data) {
                        $.each(data, function(key, value) {
                          if (value.Kecamatan.search(expression) != -1) {
                            $('#result').append('<li class="list-group-item link-class"><b>' + value.Kecamatan + '</b> <br>Nama Klinik: <span><b>' + value.Nama_Klini + '</b></span> <br>Fasilitas: <span>' + value.Fasilitas + '</li>');
                          }
                        });
                      });
                    } else $('#result').empty();

                  });

                  $('#result').on('click', 'li', function() {
                    var click_text = $(this).text().split('|');
                    $('#search').val($.trim(click_text[0]));
                    $("#result").html('');
                  });
                });
              </script> -->
          <div style="display: block;">
            <h6>Klinik Di Pekanbaru</h6>
            <div class="row">
              <div class="w-100"></div>
              <div style="padding-top: 4px;" class="col">
                <button style="background-color: rgb(227, 219, 220);" id="btn1" class="btn">Cek Lokasi</button>
              </div>
            </div>
          </div>
          <br>
          <div style="display: block;">
            <h6>Filter</h6>
            <div class="row">
              <div class="w-100"></div>
              <!-- <div style="padding-top: 4px;" class="col">
                <button style="background-color: rgb(227, 219, 220);" id="btn" class="btn">Riau</button>
              </div> -->
            </div>
            <!-- <div class="form-check form-check-flat form-check-primary" id="map">
            <label class="form-check-label">
              <input type="checkbox" id="rawatinap" value="klinikLayer" class="form-check-input">
              Rawat Inap
              <i class="input-helper"></i><label>
          </div>
          <div class="form-check form-check-flat form-check-primary" id="map">
            <label class="form-check-label">
              <input type="checkbox" id="nonrawatinap" value="klinikLayer" class="form-check-input">
              Non Rawat Inap
              <i class="input-helper"></i><label>
          </div> -->


            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='BukitRaya1' class="form-check-input">
                Bukit Raya
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='LimaPuluh1' class="form-check-input">
                Lima Puluh
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='MarpoyanDamai1' class="form-check-input">
                Marpoyan Damai
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='PayungSekaki1' class="form-check-input">
                Payung Sekaki
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='PekanbaruKota1' class="form-check-input">
                Pekanbaru Kota
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='Rumbai1' class="form-check-input">
                Rumbai
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='RumbaiPesisir1' class="form-check-input">
                Rumbai Pesisir
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='Senapelan1' class="form-check-input">
                Senapelan
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='Sukajadi1' class="form-check-input">
                Sukajadi
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='Tampan1' class="form-check-input">
                Tampan
                <i class="input-helper"></i></label>
            </div>

            <div class="form-check form-check-flat form-check-primary">
              <label class="form-check-label">
                <input type="checkbox" id='TenayanRaya1' class="form-check-input">
                Tenayan Raya
                <i class="input-helper"></i></label>
            </div>

          </div>
        </div>

      </div>
    </div>
    <script language="JavaScript" type="text/javascript" src="./main.js"></script>

    <!-- <div class="container-xxl flex-grow-1 container-p-y">
      <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Sebaran Covid Di Faskes Riau</h4>
      <div class="row">



        <div class="col-lg-4 col-md-4 order-1">
          <div class="card mb-4">
            <h5 class="card-header">Sebaran Covid di Faskes Riau</h5>
            <div class="card-body">

              <div class="chosen-drop">
                <div class="text-light small fw-semibold">Pilih Rumah Sakit</div>
                <div class="chosen-search">
                  <input class="chosen-search-input" type="text" autocomplete="off">
                </div> -->
    <?php
    $connection = mysqli_connect("localhost", "root", "", "kelompok_3tie");

    if (mysqli_connect_errno()) {
      echo "Connection Fialed" . mysqli_connect_error();
    }
    $result = mysqli_query($connection, "SELECT * FROM tb_klinik");
    ?>
    <select onchange="goto(this)" id="sel">
      <option id="list-select" value="0.510440,101.438309">-- Pilih Klinik ---</option>

      <?php
      while ($row = mysqli_fetch_array($result)) {
        echo "<option value='$row[propertiesLatitude_],$row[propertiesLongitude]'>$row[propertiesNama_Klini]</option>";
      }
      ?>
    </select>
    <?php
    mysqli_close($connection);
    ?>

    </div>
    <hr class="m-0" />

    </div>
    </div>

    </div>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</main><!-- End #main -->
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.umd.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="../template/assets/vendor/libs/jquery/jquery.js"></script>
<script src="../template/assets/vendor/libs/popper/popper.js"></script>
<script src="../template/assets/vendor/js/bootstrap.js"></script>
<script src="../template/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../template/assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="../template/assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="../template/assets/js/main.js"></script>

<!-- Page JS -->
<script src="../template/assets/js/dashboards-analytics.js"></script>


<!-- Template Main JS File -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />
<script src="assets/js/main_new.js"></script>
<script>
  $("#sel").chosen();
</script>
</body>

</html>