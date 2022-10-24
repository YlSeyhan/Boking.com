import Navbar from "./components/navbar";
import * as React from "react";
import * as ReactDOM from "react-dom";
import { BrowserRouter } from "react-router-dom";
import "./App.css";
import Acceuil from "./components/acceuil/index";
import Dispo from "./components/dispo/index";
import Bottom from "./components/bottom/index";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Navbar />
        <Acceuil />
        <Dispo />
        <Bottom />
      </BrowserRouter>
    </div>
  );
}

export default App;
