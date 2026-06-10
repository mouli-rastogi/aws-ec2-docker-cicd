const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('If you are seeing this, EC2 deployment succeeded.');
});

app.get('/', (req, res) => {
  res.status(200).json({
    status: 'healthy'
  });
});

app.listen(3000, () => console.log('Server running on port 3000'));