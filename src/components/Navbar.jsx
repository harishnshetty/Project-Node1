import React from 'react';
import logo from '../assets/logo.svg'; 

const Navbar = () => {
  return (
    <div className="navbar-container">
      <div className="navbar-content">
        <img src={logo} alt="Logo" className="navbar-logo" />
        <h4>Harish N Shetty </h4>
      </div>
    </div>
  );
};

export default Navbar;
