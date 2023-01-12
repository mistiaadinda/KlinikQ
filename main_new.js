const place = ol.proj.fromLonLat([101.438309, 0.51044]); //untuk manggil koordinat Riau

const riauLayer = new ol.layer.Vector({
  //variable untuk menyimpan data baru
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "polygon_pekanbaru.json",
  }),
});

const klinikLayer = new ol.layer.Vector({
  //variable untuk menyimpan data baru
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "dataKlinikQ.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "fraticon",
      anchorYUnits: "pixels",
      src: "Icon/point.png",
    }),
  }),
});

const BukitRaya = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/BukitRaya.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const LimaPuluh = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/LimaPuluh.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const MarpoyanDamai = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/MarpoyanDamai.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const PayungSekaki = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/PayungSekaki.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const PekanbaruKota = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/PekanbaruKota.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const Rumbai = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/Rumbai.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const RumbaiPesisir = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/RumbaiPesisir.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const Senapelan = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/Senapelan.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const Sukajadi = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/Sukajadi.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const Tampan = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/Tampan.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const TenayanRaya = new ol.layer.Vector({
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/TenayanRaya.json",
  }),
  style: new ol.style.Style({
    image: new ol.style.Icon({
      anchor: [0.5, 46],
      anchorXUnits: "flaticon",
      anchorYUnits: "pixels",
      src: "Icon/point2.png",
    }),
  }),
});

const map = new ol.Map({
  target: "map",
  layers: [
    new ol.layer.Tile({
      source: new ol.source.OSM(),
    }),
    riauLayer,
    klinikLayer,
  ],
  view: new ol.View({
    center: place,
    zoom: 10,
  }),
});

$("#BukitRaya").change(function () {
  if ($("#BukitRaya").is(":checked")) map.addLayer(BukitRaya);
  else map.removeLayer(BukitRaya);
});
$("#LimaPuluh").change(function () {
  if ($("#LimaPuluh").is(":checked")) map.addLayer(LimaPuluh);
  else map.removeLayer(LimaPuluh);
});
$("#MarpoyaDamai").change(function () {
  if ($("#MarpoyanDamai").is(":checked")) map.addLayer(MarpoyaDamai);
  else map.removeLayer(MarpoyaDamai);
});
i;
$("#PayungSekaki").change(function () {
  if ($("#PayungSekaki").is(":checked")) map.addLayer(PayungSekaki);
  else map.removeLayer(PayungSekaki);
});
$("#PekanbaruKota").change(function () {
  if ($("#PekanbaruKota").is(":checked")) map.addLayer(PekanbaruKota);
  else map.removeLayer(PekanbaruKota);
});
$("#Rumbai").change(function () {
  if ($("#Rumbai").is(":checked")) map.addLayer(Rumbai);
  else map.removeLayer(Rumbai);
});
$("#RumbaiPesisir").change(function () {
  if ($("#RumbaiPesisir").is(":checked")) map.addLayer(RumbaiPesisir);
  else map.removeLayer(RumbaiPesisir);
});
$("#Senapelan").change(function () {
  if ($("#Senapelan").is(":checked")) map.addLayer(Senapelan);
  else map.removeLayer(Senapelan);
});
$("#Sukajadi").change(function () {
  if ($("#Sukajadi").is(":checked")) map.addLayer(Sukajadi);
  else map.removeLayer(Sukajadi);
});
$("#Tampan").change(function () {
  if ($("#Tampan").is(":checked")) map.addLayer(Tampan);
  else map.removeLayer(Tampan);
});
$("#TenayanRaya").change(function () {
  if ($("#TenayanRaya").is(":checked")) map.addLayer(TenayanRaya);
  else map.removeLayer(TenayanRaya);
});
// Button Area
// const btn = document.getElementById("btn");
// const btn1 = document.getElementById("btn1");
// const btn2 = document.getElementById("btn2");
// const btn3 = document.getElementById("btn3");
// const btn4 = document.getElementById("btn4");
// const btn5 = document.getElementById("btn5");
// var nl1 = 0;
// nl2 = 0;
// nl3 = 0;
// nl4 = 0;
// nl5 = 0;
// btn.addEventListener("click", function onClick() {
//   if (nl1 == 0) {
//     map.addLayer(klinikLayer);
//     btn.style.backgroundColor = "grey";
//     btn.style.color = "white";
//     nl1 = 1;
//   } else {
//     btn.style.backgroundColor = "rgb(227, 219, 220)";
//     btn.style.color = "black";
//     map.removeLayer(klinikLayer);
//     nl1 = 0;
//   }
// });
// btn1.addEventListener("click", function onClick() {
//   if (nl2 == 0) {
//     map.addLayer(map);
//     btn1.style.backgroundColor = "grey";
//     btn1.style.color = "white";
//     nl2 = 1;
//   } else {
//     btn1.style.backgroundColor = "rgb(227, 219, 220)";
//     btn1.style.color = "black";
//     map.removeLayer(map);
//     nl2 = 0;
//   }
// });

//menampilkan pop up
var container = document.getElementById("popup"),
  content_element = document.getElementById("popup-content"),
  closer = document.getElementById("popup-closer");

closer.onclick = function () {
  overlay.setPosition(undefined);
  closer.blur();
  return false;
};

var overlay = new ol.Overlay({
  element: container,
  autoPan: true,
  offset: [0, -15],
});

map.addOverlay(overlay);
var FullScreen = new ol.control.FullScreen();
map.addControl(FullScreen);

map.on("click", function (evt) {
  var feature = map.forEachFeatureAtPixel(evt.pixel, function (feature, layer) {
    return feature;
  });
  if (feature) {
    var geometry = feature.getGeometry();
    var coord = geometry.getCoordinates();
    var content = "Nama Klinik : <h3>" + feature.get("Nama_Klini") + "</h3>";
    content += "Alamat: <br>" + feature.get("Alamat") + "</br>";
    content += "Fasilitas Klinik: <br>" + feature.get("Fasilitas") + "</br>";
    content +=
      '<img src="' +
      feature.get("gambar") +
      '"class = "img" width="200px" height="100px" />';

    content_element.innerHTML = content;
    overlay.setPosition(coord);

    console.info(feature.getProperties());

    // } else {
    //   content += '<h3> Tidak ada data ditemukan </h3>'
    // }
  }
});

$(document).ready(function () {
  $("#search").on("keyup", function () {
    $("#list-container").empty();
    let val = $("#search").val();

    if (val.length > 0) {
      $("#container-search").addClass("activy");

      $.ajax({
        url: `./handler.php?rs=${val}`,
        success: function (response) {
          let len = response.length;
          console.log(len);

          if (len != null) {
            for (let i = 0; i < len; i++) {
              if (len - 1 != i) {
                temp_html = `
                <li class="item" onclick="goto(${response[i].propertieslatitude}, ${response[i].propertieslongitude})">${response[i].propertiesnama_rs}</li>
                <li class="divider"></li>
                `;
              } else {
                temp_html = `
                <li class="item" onclick="goto(${response[i].propertieslatitude}, ${response[i].propertieslongitude})">${response[i].propertiesnama_rs}</li>
                `;
              }

              $("#list-container").append(temp_html);
            }
          } else {
            let temp_html = `<li>There are no result you looking for.</li>`;

            $("#list-container").append(temp_html);
          }
        },
      });
    } else {
      $("#container-search").removeClass("activy");
    }
  });

  $(document).on("click", function () {
    $("#container-search").removeClass("activy");
  });
});

// $(document).ready(function () {
//   initMap();

//   $("#search").on("keyup", function () {
//     $("#list-container").empty();
//     let val = $("#search").val();

//     if (val.length > 0) {
//       $("#container-search").addClass("activy");

//       $.ajax({
//         url: `./koneksi.php?rs=${val}`,
//         success: function (response) {
//           let len = response.length;
//           console.log(len);

//           if (len != null) {
//             for (let i = 0; i < len; i++) {
//               if (len - 1 != i) {
//                 temp_html = `
//                     <li class="item" onclick="goto(${response[i].propertieslatitude}, ${response[i].propertieslongitude})">${response[i].propertiesnama_klini}</li>
//                     <li class="divider"></li>
//                     `;
//               } else {
//                 temp_html = `
//                     <li class="item" onclick="goto(${response[i].propertieslatitude}, ${response[i].propertieslongitude})">${response[i].propertiesnama_klini}</li>
//                     `;
//               }

//               $("#list-container").append(temp_html);
//             }
//           } else {
//             let temp_html = `<li>There are no result you looking for.</li>`;

//             $("#list-container").append(temp_html);
//           }
//         },
//       });
//     } else {
//       $("#container-search").removeClass("activy");
//     }
//   });

//   $(document).on("click", function () {
//     $("#container-search").removeClass("activy");
//   });
// });

// function goto(long, lat) {
//   let proj_lat_long = ol.proj.fromLonLat([lat, long]);

//   map.setView(
//     new ol.View({
//       center: proj_lat_long,
//       zoom: 17,
//     })
//   );
// }
