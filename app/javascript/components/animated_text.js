const text = document.getElementById("js-text");
 // séparer chaque caractère
const splitText = text ? text.innerText.split("") : "";
if (text) {

  text.innerHTML = "";
}
let sum = 0;


const AddLetter = () => {
  if (text) {
    console.log(sum);
    if (sum < splitText.length) {
      text.innerHTML += splitText[sum];
      sum++;
    }
  }
}

// // Code test pas encore efficient

export { AddLetter };
