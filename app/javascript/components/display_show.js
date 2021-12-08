// const picture = document.querySelector(".img-hidden")
// const showCards = document.querySelectorAll(".index-details")


// const displayHidePicture = () => {

//     picture.classList.add("d-none");

// }





// const hideAll = () => {
//   showCards.forEach((card) => {
//     if (!card.classList.contains('d-none')) {
//       card.classList.add('d-none');
//     }
//   })
// }





const displayShow = () => {
   // ------------------- A SUPRIMER CONST ALREADY DEFINE ^ TOP OF THE FILE ---------------------------

  const picture = document.querySelector(".img-hidden")
  const showCards = document.querySelectorAll(".index-details")

 // -------------------  ---------------------------


  const savoirPlus = document.querySelectorAll(".btn-toward-show")
  if (savoirPlus.length > 0) {
    savoirPlus.forEach((btn) => {
      btn.addEventListener("click", (event) => {
        const cardId = event.currentTarget.dataset.showid
        const targetShow = document.querySelector(`#${cardId}`)
        console.log(picture)

        // hideAll(); // hide all cards

 // ------------------- A SUPRIMER MEME CHOSE QUE hideALL() ---------------------------
        showCards.forEach((card) => {
          if (!card.classList.contains('d-none')) {
            card.classList.add('d-none');
          }
        })
 // -------------------  ---------------------------



        targetShow.classList.remove("d-none")
          // picture.classList.toggle("make-hide")
        // displayHidePicture();


 // ------------------- A SUPRIMER MEME CHOSE QUE hideALL() ---------------------------

        picture.classList.add("d-none");
 // -------------------  ---------------------------

      })
    })
  }


}
export { displayShow }

// const newCardId = document.querySelector(`#${cardId}`)
// newCardId.forEach ((offer) => {
//
// })
