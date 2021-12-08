const picture = document.querySelector(".img-hidden")
const showCards = document.querySelectorAll(".index-details")


const displayHidePicture = () => {

  showCards.forEach((card) => {
    if (!card.classList.contains('d-none')) {

    }
    picture.classList.add("d-none");

});
}





const hideAll = () => {
  showCards.forEach((card) => {
    if (!card.classList.contains('d-none')) {
      card.classList.add('d-none');
    }
  })
}





const displayShow = () => {
  console.log("Hello")
  const savoirPlus = document.querySelectorAll(".btn-toward-show")
  if (savoirPlus.length > 0) {
    savoirPlus.forEach((btn) => {
      btn.addEventListener("click", (event) => {
        const cardId = event.currentTarget.dataset.showid
        const targetShow = document.querySelector(`#${cardId}`)
        hideAll(); // hide all cards
        targetShow.classList.remove("d-none")
          // picture.classList.toggle("make-hide")
        displayHidePicture();

      })
    })
  }


}
export { displayShow }

// const newCardId = document.querySelector(`#${cardId}`)
// newCardId.forEach ((offer) => {
//
// })
