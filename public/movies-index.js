/* global Vue, axios */

var app = new Vue({
  el: "#app",
  data: function () {
    return {
      message: "Hello from JavaScript!",
      actors: [],
    };
  },
  methods: {
    showMovies: function () {
      axios.get("http://localhost:3000/movies").then(function (response) {
        this.actors = response.data;
        console.log(this.actors);
      });
    },
  },
});
