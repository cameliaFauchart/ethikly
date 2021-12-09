const initChart = () => {
  if(document.querySelector("#global-chart")) {

    const ecoScore = document.querySelector("#global-chart").dataset.ecoScore;
    const envScore = document.querySelector("#global-chart").dataset.envScore;
    const socialScore = document.querySelector("#global-chart").dataset.socialScore;
    const nbOfWish = document.querySelector("#global-chart").dataset.numberOfWish;

    anychart.onDocumentReady(function () {
      // add the data
      var data = anychart.data.set([
        ['Ecologie', envScore],
        ['Economie', ecoScore],
        ['Social', socialScore]
      ]);

      // create pie chart with passed data
      var chart = anychart.pie(data)

        // set chart radius
        .innerRadius('55%');
      // set chart title text settings
      chart
        .title('La disparité de vos critères')

      // set container id for the chart
      chart.container('global-chart');
      // set the position of labels
      chart.labels().position("outside");
      // initiate chart drawing
      chart.draw();
      document.querySelector(".anychart-credits").classList.add("d-none");

    });
  }
}

export { initChart };
