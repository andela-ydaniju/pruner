//= require materialize

(function () {
  const clipButton = document.getElementById("clip_button");

  clipButton?.addEventListener("click", () => {
    M.toast({
      html: "Link copied to Clipboard",
      displayLength: 3000,
      classes: "blue white-text squared",
    });
  });
})();
