const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Node.js pipeline using Github Actions');
});

app.listen(3000, () => console.log('Server running on port 3000'));