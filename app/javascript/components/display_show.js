const displayShow = () => {
  console.log("Hello")
  const savoirPlus = document.querySelectorAll(".btn-toward-show")
  if (savoirPlus.length > 0) {
    savoirPlus.forEach((btn) => {
      btn.addEventListener("click", (event) => {
        const cardId = event.currentTarget.dataset.showid
        console.log(cardId)
        const targetShow = document.querySelector(`#${cardId}`)
        console.log(targetShow)
        targetShow.classList.toggle("d-none")
        if (document.querySelector(".img-hidden")) {
          const picture = document.querySelector(".img-hidden")
          //picture.style.visibility = "hidden";
          picture.classList.toggle("make-hide")
          console.log(picture)
        }

      })
    })
  }


}
export { displayShow }
