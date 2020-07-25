/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let carrotsLike = document.getElementsByClassName("btn-carrots");

for (const button of carrotsLike) {
    button.addEventListener("click", () => {
        +button.childNodes[0].childNodes[1].nodeValue ++
        button.disabled = true;

    });
}
