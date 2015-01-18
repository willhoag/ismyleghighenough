dragDrop = require("drag-drop")

img = document.getElementById("img")
div = document.getElementById("text")

createObjectURL = (blob) ->
  (window.URL || window.webkitURL).createObjectURL(blob)

dragDrop ".dropZone", (files) ->
  img.src = createObjectURL(files[0])
  div.innerHTML = "<h1 id='quote'>NOT GOOD ENOUGH!!!</h1>"
