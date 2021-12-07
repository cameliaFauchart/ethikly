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
      })
    })
  }


}
export { displayShow }
