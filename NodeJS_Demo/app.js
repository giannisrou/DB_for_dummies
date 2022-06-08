const express = require('express');
const path = require('path');


require('custom-env').env('localhost');

/* ROUTES and how to import routes */

const layout = require('./routes/layout');
const organization = require('./routes/organization');
const program = require('./routes/program');
const ppr = require('./routes/ppr');
const pop = require('./routes/pop');
const project = require('./routes/project');
const researcher = require('./routes/researcher');
const executive = require('./routes/executive');
const query1 = require('./routes/query1');
const query3 = require('./routes/query3');
const query5 = require('./routes/query5');
const query6 = require('./routes/query6');
const query7 = require('./routes/query7');
const query8 = require('./routes/query8');
const workson = require('./routes/workson');
const telephones = require('./routes/telephones');
const deliverable = require('./routes/deliverable');
const create = require('./routes/create');
const field = require('./routes/field');
/* end of ROUTES and how to import routes */

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(express.static(path.join(__dirname, 'public')));
app.set('view engine', 'ejs');
app.set('views', 'views');




/* Routes used by the project */

app.use('/', layout);
app.use('/organization', organization);
app.use('/program', program);
app.use('/ppr', ppr);
app.use('/pop', pop)
app.use('/project', project)
app.use('/researcher', researcher)
app.use('/executive', executive)
app.use('/query5', query5)
app.use('/query6', query6);
app.use('/query7', query7);
app.use('/query8', query8);
app.use('/workson', workson);
app.use('/telephones', telephones);
app.use('/deliverable', deliverable);
app.use('/create', create);
app.use('/query1', query1)
app.use('/query3', query3)
app.use('/field', field)

/* End of routes used by the project */

// In case of an endpoint does not exist must return 404.html
app.use((req, res, next) => { res.status(404).render('404.ejs', { pageTitle: '404' }) })

module.exports = app;