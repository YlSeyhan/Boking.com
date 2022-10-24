/* eslint-disable react/jsx-no-undef */
import * as React from "react";
import { Routes, Route, Link } from "react-router-dom";
import "./App.css";
import Batiment from "./Batiment";

const Routeur = () => {
  return (
    <div className="App">
      <h1>Welcome to React Router!</h1>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="/about" element={<Batiment />} />
      </Routes>
    </div>
  );
};
export default Routeur;
