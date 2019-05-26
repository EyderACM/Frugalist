/**
 * Express API
 * @author Luis Gerardo Leon Ortega
 *
 * IDK if this is necessary but we can get request with JSON params.
 * Maybe in a future to save data inside a database.
 * 
 * @todo 
 * 1. Improve the modules.
 * 2. Link the image token that get the server to filePath of the image that is predicted. 
 * 3. Improve the performance deleting unused requires.  
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

async function predict(imageURL, res) {
  // [START automl_vision_predict]
  const automl = require('@google-cloud/automl').v1beta1;
  const fs = require('fs');

  // Create client for prediction service.
  const client = new automl.PredictionServiceClient({
    projectId: 'sleek-ad28e',
    keyFilename: './key_frugalist.json',
  });
  console.log(imageURL);
  /**
   * TODO(developer): Uncomment the following line before running the sample.
   */
  const projectId = "sleek-ad28e";
  const computeRegion = "us-central1";
  const modelId = "ICN5373316204429827447";
  const filePath = `./images_ts/${imageURL}`;
  const scoreThreshold = "0.5";

  // Get the full path of the model.
  const modelFullId = client.modelPath(projectId, computeRegion, modelId);

  // Read the file content for prediction.
  const content = fs.readFileSync(filePath, 'base64');

  const params = {};

  if (scoreThreshold) {
    params.score_threshold = scoreThreshold;
  }

  // Set the payload by giving the content and type of the file.
  const payload = {};
  payload.image = {imageBytes: content};

  // params is additional domain-specific parameters.
  // currently there is no additional parameters supported.
  const [response] = await client.predict({
    name: modelFullId,
    payload: payload,
    params: params,
  });

  let resultado = "nothing"
  response.payload.forEach(result => {
    resultado = `Predicted class name: ${result.displayName}`;
  });
  console.log("RESULTADO FINAL: "+resultado)
  res.status(200).send({path: resultado});
}
app.post('/upload', (req, res) => {
  upload(req, res, err => {
    if (err) {
      return res.status(500).json({ message: err.message });
    }
    const p = req.file.path
      .split(path.sep)
      .slice(1)
      .join('/');

    predict(p,res)
    
  });
});

app.listen(PORT, err => {
  if (err) {
    console.log(`Error: ${err}`);
  } else {
    console.log(`🚀 BACKEND RUNNING AT PORT ${PORT}`);
  }
});