const express = require("express");
const app = express();

app.use("/hls", express.static("public/hls"));

app.get("/", (req, res) => {
  res.send("Radio video stream funcionando");
});

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log("Servidor iniciado");
});