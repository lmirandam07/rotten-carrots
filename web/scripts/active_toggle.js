/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let list = document.getElementsByClassName('sb-item'); // Lista de nodos de sitios en el side bar
let sitios = ['foro', 'admin','tendencia', 'nosotros', 'contacto']; // Sitios que se muestran en el side bar
let url = window.location.href; // URL del sitio web
url = url.split('/').slice(-1)[0].split('.')[0]; // Separa el url para saber en que pagina del sitio se encuentra

for(let i = 0; i < sitios.length; i++) {
    if(url == sitios[i]) { // Si la pagina que se encuentra es alguna de las que estan en la barra izquierda 
        list[i].classList.add('active'); // Se le añade la clase active
        break;
    }
}


