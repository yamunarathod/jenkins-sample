const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello from Node.js running on Kubernetes!');
});

app.listen(port, () => {
    console.log(`App is running on port ${port}`);
});
