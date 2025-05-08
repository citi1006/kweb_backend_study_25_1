const express = require('express');
const cases = require('./cases.js');
const port = 3000;

const app = express();

app.use(express.urlencoded({ extended: true}));


app.get('/factorial', (req,res) => {
    number = req.query.number;
    if(number){
        res.redirect(`/factorial/${number}`);
    }else{
        res.redirect('/factorial/0');
    }
});
app.get('/factorial/:number', (req,res) => res.send(`${cases.factorial(req.params.number)}`));

app.listen(port, () => console.log(`Server listening on port ${port}!`));