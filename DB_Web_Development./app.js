const express = require('express');
const path = require('path');


require('custom-env').env('localhost');

/* ROUTES and how to import routes */


const organization = require('./routes/organization');
const program = require('./routes/program');
const ppr = require('./routes/ppr');
const pop = require('./routes/pop');
const project = require('./routes/project');
/* end of ROUTES and how to import routes */

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(express.static(path.join(__dirname, 'public')));
app.set('view engine', 'ejs');
app.set('views', 'views');



/* Routes used by the project */


app.use('/organization', organization);
app.use('/program', program);
app.use('/ppr', ppr);
app.use('/pop', pop)
app.use('/project', project)

/* End of routes used by the project */

// In case of an endpoint does not exist must return 404.html
app.use((req, res, next) => { res.status(404).render('404.ejs', { pageTitle: '404' }) })

module.exports = app;