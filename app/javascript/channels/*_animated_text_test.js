const text = document.getElementById("js-text");
const splitText = text.innerText.split(""); // séparer chaque caractère

text.innerHTML = "";
let sum = 0;
// setInterval répète la méthode avec un délai fixé
// entre chaque appel


const AddLetter = () => {
  if (sum < splitText.length) {
    text.innerHTML += splitText[sum];
    sum++;
  }
}
setInterval(AddLetter(),[100]);
// Code test pas encore efficient






export { AddLetter };
