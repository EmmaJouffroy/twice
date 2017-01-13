var search = {
  notions: [],
  find: function(query) {
    if (query == ""){
      for(var i=0; i<this.notions.length; i++){
        var notion = this.notions[i];
        notion.style.display = "inline";
      }
    }
    else {
      var name = removeDiacritics(query).replace(/[^\w\s]/i,".", "i");
      var pattern = new RegExp(name);
      console.log(name);
      for(var i=0; i<this.notions.length; i++){
        var notion = this.notions[i];
        console.log(pattern);
        if (notion.getAttribute("data-name").match(pattern)){
          notion.style.display = "inline";
        }
        else {
          notion.style.display = "none";
        }
      }
    }
  }
}

window.addEventListener("load",function(){
  var input = document.querySelector("#search");
  if (input) {
    search.notions = document.querySelectorAll(".notions a");
    input.addEventListener("keydown", function(){
      setTimeout(function(){
        search.find(input.value);
      },1);
    });
    }
});
