const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(3000, () => {
  console.log('This REST API is successfully running on port 8080 using Docker, 3000 without using Docker.');
})
