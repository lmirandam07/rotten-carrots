/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
let carrotsLike = document.getElementById("btn-carrots");

carrotsLike.addEventListener("click", () => {
    +carrotsLike.childNodes[1].nodeValue ++
    carrotsLike.disabled = !carrotsLike.disabled;
    
    
});