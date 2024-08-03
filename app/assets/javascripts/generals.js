(function () {
  var clipButton = document.getElementById("clip_button");

  clipButton?.addEventListener("click", () => {
    navigator.clipboard.writeText("something copied")
  });
})();
