const express = require('express');
const os = require('os');

const app = express()
app.get('/', (req, res) => {
    res.send("HELLO FROM EXPRESS :" + os.hostname)
})
const port = 3000;
app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})
