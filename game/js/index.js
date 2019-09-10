var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function(){
  if (this.readyState == 4 && this.status == 200) {
    document.write(this.response);
  }
};
xhttp.open("GET", "../server/viewQue.php", true);
xhttp.send();