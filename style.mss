Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
  
}

#base {
  raster-opacity:0.4;
}

#provincias [NPROVINCIA = "GUANACASTE"][zoom >= 6][zoom <= 7] {
  line-color:#255;
  line-width:3;
  text-face-name: "Arial Bold";
  text-name: "[NPROVINCIA]";
  
}

#cantones[NPROVINCIA = "GUANACASTE"][zoom >= 8][zoom <=9]{
  line-color:#0000FF;
  line-width:2;
  text-face-name: "Arial Bold";
  text-size: 8.5; 
  text-name: "[NCANTON]";
}


#distritos[PROVINCIA = "GUANACASTE"][zoom >= 10][zoom <=11] {
  line-color:#000;
  line-width:1.5;
  text-face-name: "Arial Bold";
  text-name: "[NDISTRITO]";
}

#distritos[PROVINCIA = "GUANACASTE"][zoom >= 12] {
  line-color:#000;
  line-width:0.8;
}

#carreteras[PROVINCIA = "GUANACASTE"][zoom >= 12][zoom <= 13] {
  
  [TIPO ="CARRETERA NACIONAL"]{ 
      line-width:8;
      line-color:#b88b5c;
      text-face-name: "Arial Bold";
      text-name: "[TIPO]";
      text-placement: line;
  }
  
  [TIPO ="CARRETERA CANTONAL"]{ 
      line-width:8;
      line-color:#908c44;
      text-face-name: "Arial Bold";
      text-name: "[TIPO]";
      text-placement: line;
  }
}

#rios [zoom >= 12][zoom <= 13]  {
  line-width:9;
  line-color:#bceeff;
  text-face-name: "Arial Bold";
  text-name: "[NOMBRE]";
  text-placement: line;
}

#carreteras[PROVINCIA = "GUANACASTE"][zoom >= 13] {
  
  [TIPO ="CARRETERA NACIONAL"]{ 
      line-width:1.5;
      line-color:#8d4925;
  }
  
  [TIPO ="CARRETERA CANTONAL"]{ 
      line-width:1.5;
      line-color:#908c44;
  }
}

#rios [zoom >= 13]  {
  line-width:3;
  line-color:#168;
}


//puntos sin etiquetas
#bancos [PROVINCIA = "GUANACASTE"][zoom >= 11][zoom <= 18]{
  marker-file: url('icons/bank.svg');
  marker-width:15;
  marker-fill:#026842;
  marker-line-color:#000;
  marker-allow-overlap:true;
}


#clinicas[PROVINCIA = "GUANACASTE"][zoom >= 11][zoom <= 18] {
  marker-file: url('icons/hospital-JP.svg');
  marker-width:15;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


#escuelas [PROVINCIA = "GUANACASTE"][zoom >= 11][zoom <= 18]{
  marker-file: url('icons/college.svg');
  marker-width:15;
  marker-fill:#000;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


#hospitales [PROVINCIA = "GUANACASTE"][zoom >= 11][zoom <= 18]{
  marker-file: url('icons/doctor.svg');
  marker-width:20;
  marker-fill:#0000FF;
  marker-line-color:#813;
  marker-allow-overlap:true;

}

#gasolineras [zoom >= 11][zoom <= 18] {
  marker-file: url('icons/charging-station.svg');
  marker-width:15;
  marker-fill:#000;
  marker-line-color:#813;
  marker-allow-overlap:true;
}

#hoteles[zoom >= 11][zoom <= 18]  {
  marker-width:15;
  marker-file: url('icons/lodging.svg');
  marker-fill:#000;
  marker-line-color:#813;
  marker-allow-overlap:true;
}

//puntos con etiquetas
#bancos [PROVINCIA = "GUANACASTE"][zoom >= 18]{
  text-face-name: "Arial Bold";
  text-name: [BANCO];
  marker-file: url('icons/bank.svg');
  marker-width:5;
  marker-fill:#026842;
  marker-line-color:#000;
  marker-allow-overlap:true;
  
}


#clinicas[PROVINCIA = "GUANACASTE"][zoom >= 18] {
  text-face-name: "Arial Bold";
  text-name: [NOMBRE];
  marker-file: url('icons/hospital-JP.svg');
  marker-width:5;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  
}


#escuelas [PROVINCIA = "GUANACASTE"][zoom >= 18]{
  text-face-name: "Arial Bold";
  text-name: [NOMBRE];
  marker-file: url('icons/college.svg');
  marker-width:5;
  marker-fill:#000;
  marker-line-color:#813;
  marker-allow-overlap:true;
  
}


#hospitales [PROVINCIA = "GUANACASTE"][zoom >= 18]{
  text-face-name: "Arial Bold";
  text-name: [NOMBRE];
  marker-file: url('icons/doctor.svg');
  marker-width:10;
  marker-fill:#0000FF;
  marker-line-color:#813;
  marker-allow-overlap:true;
  
}

#gasolineras [zoom >= 18] {
  text-face-name: "Arial Bold";
  text-name: [NOMBRE_REC];
  marker-file: url('icons/charging-station.svg');
  marker-width:5;
  marker-fill:#000;
  marker-line-color:#813;
  marker-allow-overlap:true;
}

#hoteles[zoom >= 18]  {
  text-face-name: "Arial Bold";
  text-name: [NOMBRE];
  marker-width:5;
  marker-file: url('icons/lodging.svg');
  marker-fill:#000;
  marker-line-color:#813;
  marker-allow-overlap:true;
}
