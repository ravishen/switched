console.log("heoo");
$('document').ready(function(){

  var select = document.getElementById("checkbox1");
  console.log(select);
  var select_hash = document.getElementById("hash").innerText.split('"')[1];
  console.log(select_hash);
  var url = "http://localhost:3000/checks/"+select_hash+".json"
  console.log(url);
  $.getJSON(url,function(data){
    console.log(data);
  });
});
