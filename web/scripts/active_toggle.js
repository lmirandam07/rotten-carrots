/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let list = document.getElementsByClassName('sb-item');
let sitios = ['foro', 'admin','tendencia', 'nosotros', 'contacto'];
let url = window.location.href;
url = url.split('/').slice(-1)[0].split('.')[0];

for(let i = 0; i < sitios.length-1; i++) {
    if(url == sitios[i]) {
        list[i].classList.add('active');
        break;
    }
}


