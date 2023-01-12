const place = ol.proj.fromLonLat([101.438309, 0.51044]); //untuk manggil koordinat Riau

const riauLayer = new ol.layer.Vector({
  //variable untuk menyimpan data baru
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/polygon_pekanbaru.json",
  }),
});

const klinikLayer = new ol.layer.Vector({
  //variable untuk menyimpan data baru
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/dataKlinikQ.json",
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

const btn = new ol.layer.Vector({
  //variable untuk menyimpan data baru
  source: new ol.source.Vector({
    format: new ol.format.GeoJSON(),
    url: "data/dataKlinikQ.json",
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
  ],
  view: new ol.View({
    center: place,
    zoom: 10,
  }),
});

// Button Area
const btn1 = document.getElementById("btn1");
const BukitRaya1 = document.getElementById("BukitRaya1");
const LimaPuluh1 = document.getElementById("LimaPuluh1");
const MarpoyanDamai1 = document.getElementById("MarpoyanDamai1");
const PayungSekaki1 = document.getElementById("PayungSekaki1");
const PekanbaruKota1 = document.getElementById("PekanbaruKota1");
const Rumbai1 = document.getElementById("Rumbai1");
const RumbaiPesisir1 = document.getElementById("RumbaiPesisir1");
const Senapelan1 = document.getElementById("Senapelan1");
const Sukajadi1 = document.getElementById("Sukajadi1");
const Tampan1 = document.getElementById("Tampan1");
const TenayanRaya1 = document.getElementById("TenayanRaya1");
var nl1 = 0;
nl2 = 0;
nl3 = 0;
nl4 = 0;
nl5 = 0;
btn1.addEventListener("click", function onClick() {
  if (nl1 == 0) {
    map.addLayer(btn);
    btn1.style.backgroundColor = "grey";
    btn1.style.color = "white";
    nl1 = 1;
  } else {
    btn1.style.backgroundColor = "rgb(227, 219, 220)";
    btn1.style.color = "black";
    map.removeLayer(btn);
    nl1 = 0;
  }
});
BukitRaya1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(BukitRaya);
    BukitRaya1.style.backgroundColor = "grey";
    BukitRaya1.style.color = "white";
    nl2 = 1;
    '<img src="' +
      feature.get("gambar") +
      '"class = "img" width="200px" height="100px" />';
  } else {
    BukitRaya1.style.backgroundColor = "rgb(227, 219, 220)";
    BukitRaya1.style.color = "black";
    map.removeLayer(BukitRaya);
    nl2 = 0;
  }
});
LimaPuluh1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(LimaPuluh);
    LimaPuluh1.style.backgroundColor = "grey";
    LimaPuluh1.style.color = "white";
    nl2 = 1;
  } else {
    LimaPuluh1.style.backgroundColor = "rgb(227, 219, 220)";
    LimaPuluh1.style.color = "black";
    map.removeLayer(LimaPuluh);
    nl2 = 0;
  }
});
MarpoyanDamai1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(MarpoyanDamai);
    MarpoyanDamai1.style.backgroundColor = "grey";
    MarpoyanDamai1.style.color = "white";
    nl2 = 1;
  } else {
    MarpoyanDamai1.style.backgroundColor = "rgb(227, 219, 220)";
    MarpoyanDamai1.style.color = "black";
    map.removeLayer(MarpoyanDamai);
    nl2 = 0;
  }
});
PayungSekaki1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(PayungSekaki);
    PayungSekaki1.style.backgroundColor = "grey";
    PayungSekaki1.style.color = "white";
    nl2 = 1;
  } else {
    PayungSekaki1.style.backgroundColor = "rgb(227, 219, 220)";
    PayungSekaki1.style.color = "black";
    map.removeLayer(PayungSekaki);
    nl2 = 0;
  }
});
PekanbaruKota1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(PekanbaruKota);
    PekanbaruKota1.style.backgroundColor = "grey";
    PekanbaruKota1.style.color = "white";
    nl2 = 1;
  } else {
    PekanbaruKota1.style.backgroundColor = "rgb(227, 219, 220)";
    PekanbaruKota1.style.color = "black";
    map.removeLayer(PekanbaruKota);
    nl2 = 0;
  }
});
Rumbai1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(Rumbai);
    Rumbai1.style.backgroundColor = "grey";
    Rumbai1.style.color = "white";
    nl2 = 1;
  } else {
    Rumbai1.style.backgroundColor = "rgb(227, 219, 220)";
    Rumbai1.style.color = "black";
    map.removeLayer(Rumbai);
    nl2 = 0;
  }
});
RumbaiPesisir1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(RumbaiPesisir);
    RumbaiPesisir1.style.backgroundColor = "grey";
    RumbaiPesisir1.style.color = "white";
    nl2 = 1;
  } else {
    RumbaiPesisir1.style.backgroundColor = "rgb(227, 219, 220)";
    RumbaiPesisir1.style.color = "black";
    map.removeLayer(RumbaiPesisir);
    nl2 = 0;
  }
});
Senapelan1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(Senapelan);
    Senapelan1.style.backgroundColor = "grey";
    Senapelan1.style.color = "white";
    nl2 = 1;
  } else {
    Senapelan1.style.backgroundColor = "rgb(227, 219, 220)";
    Senapelan1.style.color = "black";
    map.removeLayer(Senapelan);
    nl2 = 0;
  }
});
Sukajadi1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(Sukajadi);
    Sukajadi1.style.backgroundColor = "grey";
    Sukajadi1.style.color = "white";
    nl2 = 1;
  } else {
    Sukajadi1.style.backgroundColor = "rgb(227, 219, 220)";
    Sukajadi1.style.color = "black";
    map.removeLayer(Sukajadi);
    nl2 = 0;
  }
});
Tampan1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(Tampan);
    Tampan1.style.backgroundColor = "grey";
    Tampan1.style.color = "white";
    nl2 = 1;
  } else {
    Tampan1.style.backgroundColor = "rgb(227, 219, 220)";
    Tampan1.style.color = "black";
    map.removeLayer(Tampan);
    nl2 = 0;
  }
});
TenayanRaya1.addEventListener("click", function onClick() {
  if (nl2 == 0) {
    map.addLayer(TenayanRaya);
    TenayanRaya1.style.backgroundColor = "grey";
    TenayanRaya1.style.color = "white";
    nl2 = 1;
  } else {
    TenayanRaya1.style.backgroundColor = "rgb(227, 219, 220)";
    TenayanRaya1.style.color = "black";
    map.removeLayer(TenayanRaya);
    nl2 = 0;
  }
});

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
  // initMap();

  $("#search").on("keyup", function () {
    $("#list-container").empty();
    let val = $("#search").val();

    if (val.length > 0) {
      $("#container-search").addClass("activy");

      $.ajax({
        url: `./koneksi.php?rs=${val}`,
        success: function (response) {
          let len = response.length;
          console.log(len);

          if (len != null) {
            for (let i = 0; i < len; i++) {
              if (len - 1 != i) {
                temp_html = `
                    <li class="item" onclick="goto(${response[i].propertieslatitude}, ${response[i].propertieslongitude})">${response[i].propertiesnama_klini}</li>
                    <li class="divider"></li>
                    `;
              } else {
                temp_html = `
                    <li class="item" onclick="goto(${response[i].propertieslatitude}, ${response[i].propertieslongitude})">${response[i].propertiesnama_klini}</li>
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

// function goto(long, lat) {
//   let proj_lat_long = ol.proj.fromLonLat([lat, long]);

//   map.setView(
//     new ol.View({
//       center: proj_lat_long,
//       zoom: 17,
//     })
//   );
// }
function goto(e) {
  let val = e.value.split(",");
  let lat = val[0];
  let long = val[1];
  let proj_lat_ling = ol.proj.fromLonLat([long, lat]);

  map.setView(
    new ol.View({
      center: proj_lat_ling,
      zoom: 20,
    })
  );
}
