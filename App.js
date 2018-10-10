import React, { Component } from 'react';
import logo from './onan_ilas_ray.jpg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Hello shrunken world!
	  </p>
        </header>
      </div>
    );
  }
}

export default App;
