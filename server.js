'use strict';

// Application dependencies
const cors = require('cors');
const pg = require('pg');
const express = require('express');
const app = express();

// Application setup
const PORT = process.env.PORT;
const CLIENT_URL = process.env.CLIENT_URL;

// Database setup
const client = new pg.Client(process.env.DATABASE_URL);
client.connect();
client.on('error', err => console.error(err));

// Application middleware
app.use(cors());

// API endpoints
app.get('/', (req, res) => res.redirect(CLIENT_URL));
app.get('/test/', (req, res) => res.send('Welcome to our data'));

app.get('/api/v1/books', (req, res) => {
  client.query('SELECT * FROM books')
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.get('/api/v1/books/:id', (req, res) => {
  client.query(`SELECT * FROM books WHERE id =${req.params.id}`)
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.post('/api/v1/books', (req, res) => {
  console.log('I come from the post');
  let insert = `INSERT INTO books (title, author, isbn, image_url, description) VALUES ($1, $2, $3, $4, $5, $6)`;
  let values = [req.body.title,
    req.body.author,
    req.body.isbn,
    req.body.image_url,
    req.body.description];

  client.query(insert, values)
    .then(results => res.json(results))
    .catch(err => {
      console.error(err);
      res.sendStatus(500).send('error');
    });
});

// app.put()

app.get('*', (req, res) => res.redirect('404 service not found'));

app.listen(PORT, () => console.log(`Listening on port: ${PORT}`));
