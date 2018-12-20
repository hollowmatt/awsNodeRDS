import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

let mysql = require('mysql');

let connection = mysql.createConnection({
  host      : 'host',
  user      : 'username',
  password  : 'password'
});

connection.connect(function(err) {
  if(err) {
    console.error('Database Connection Failed: ' + err.stack);
    return;
  }
  console.log('Connected to database');
});

connection.end();

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </header>
      </div>
    );
  }
}

export default App;
