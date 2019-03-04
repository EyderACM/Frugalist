import express from 'express';
import bodyParser from 'body-parser';

const app = express();

const PORT = process.env.PORT || 8080;

app.use(bodyParser.json());

app.listen(PORT, err => {
  if (err) {
    console.log(`Error: ${err}`);
  } else {
    console.log(`👽 SERVER RUNNING AT PORT ${PORT}`);
  }
});
