/**
 * Express API
 * @author Luis Gerardo Leon Ortega
 *
 * IDK if this is necessary but we can get request with JSON params.
 * Maybe in a future to save data inside a database.
 */
const express = require('express');
const bodyParser = require('body-parser');
const multer = require('multer');
const morgan = require('morgan');

const app = express();
const path = require('path');

const PORT = process.env.PORT || 8082;
app.use(morgan('combined'));
app.use(bodyParser.json());

/*
 * Code to implement storage in Express
 */
const Storage = multer.diskStorage({
  destination: './images_ts',
  filename: (req, file, cb) => {
    //Generate a simple token to identify the image.
    const fileName =
      file.originalname.split('.')[0] +
      '-' +
      Date.now() +
      path.extname(file.originalname);
    cb(null, fileName);
  },
});

const upload = multer({
  limits: 10 * 1024 * 1024,
  storage: Storage,
}).single('image');

/**
 * Routing
 */
app.post('/upload', (req, res) => {
  upload(req, res, err => {
    if (err) {
      return res.status(500).json({ message: err.message });
    }
    const p = req.file.path
      .split(path.sep)
      .slice(1)
      .join('/');

    res.status(200).json({ path: p });
  });
  /**
   * Here we need implement TS image classificator.
   */
});

app.listen(PORT, err => {
  if (err) {
    console.log(`Error: ${err}`);
  } else {
    console.log(`🚀 BACKEND RUNNING AT PORT ${PORT}`);
  }
});
