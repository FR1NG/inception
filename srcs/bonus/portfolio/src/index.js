const express = require('express')
const app = express()
app.use(express.static('public'));
app.get('/', (req, res) => { 
    res.send('Hello World') 
})
app.get('/health', (req, res) => { res.send('I') })
app.listen(1337, () => { console.log("Server up and running") })