const express = require('express');

const port = 3000;
const app = express();
app.set('views', `${__dirname}/views`);
app.set('view engine','pug');
app.use(express.urlencoded({ extended: true }));

const stringfy = (obj) => {return Object.keys(obj).map(k => `${k}: ${obj[k]}`).join('\n');};

app.get('/',(req,res) => res.render('login.pug'));
app.post('/login', (req,res) =>{
    res.send(stringfy(req.body));
})

app.listen(port, () => console.log(`Server listening on port ${port}!`));