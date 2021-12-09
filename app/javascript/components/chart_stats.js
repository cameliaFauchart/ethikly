
const initChart = () => {
  if(document.querySelector("#global-chart")) {


    anychart.onDocumentReady(function () {

      // add the data
      var data = anychart.data.set([
        ['Ecologie', 34],
        ['Economie', 21],
        ['Social', 15]
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

      // initiate chart drawing
      chart.draw();
      document.querySelector(".anychart-credits").classList.add("d-none");

    });
  }
}

export { initChart };
