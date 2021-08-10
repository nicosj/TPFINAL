
  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems);
    var select = document.querySelectorAll('select');
    var instancess = M.FormSelect.init(select);
    var drop = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(drop);
    var mod = document.querySelectorAll('.modal');
    var instances = M.Modal.init(mod);
  });


function elimina(){

  var elem = document.getElementById("todo");
  elem.remove()
  }
function calcula(){
            var fechauno =document.getElementById("desde");
             var fechados =document.getElementById("hasta");
             var elem= fechados.diff(fechauno,'days');
             document.getElementById('price').innerHTML=elem;
}