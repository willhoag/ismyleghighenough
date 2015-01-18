dragDrop = require("drag-drop")

img = document.getElementById("img")
div = document.getElementById("text")
body = document.getElementsByTagName("body")[0]

createObjectURL = (blob) ->
  (window.URL || window.webkitURL).createObjectURL(blob)

dragDrop ".dropZone", (files) ->
  img.src = createObjectURL(files[0])
  div.innerHTML = "<h1 id='quote'>NOT GOOD ENOUGH!!!</h1>"
  body.setAttribute('class', 'done')
