import React, { useState, useEffect } from 'react'
import logo from './logo.svg';
import './App.css';

import NavBar from './components/NavBar';
import HomePage from './components/HomePage';
import Footer from './components/Footer';
import Header from './components/Header';
import City from './components/City';
import Band from './components/Band';
import Venue from './components/Venue';
import Concert from './components/Concert';
import { Routes, Route } from "react-router-dom";
import { BrowserRouter } from "react-router-dom";
import BandDetailPage from './components/BandDetailPage';
import VenueDetailPage from './components/VenueDetailPage';
import CityDetailPage from './components/CityDetailPage';
import Login from './components/Login';
import PersonalProfile from './components/PersonalProfile';


function App() {

  const [loggedInUser, setLoggedInUser] = useState(null)
  const [personalProfilePageBands, setPersonalProfilePageBands] = useState([])
  const [personalProfilePageVenues, setPersonalProfilePageVenues] = useState([])

  useEffect(()=>{
    fetch("/user_bands")
    .then(res => res.json())
    .then(data => {setPersonalProfilePageBands(data)
    
    })}, [loggedInUser])

    useEffect(()=>{
      fetch("/user_venues")
      .then(res => res.json())
      .then(data => {setPersonalProfilePageVenues(data)
      
      })}, [loggedInUser])


      useEffect(
        ()=>{
            fetch("/userInSession")
            .then(r=> r.json())
            .then( setLoggedInUser)
        }
        ,[]
    )
  
  
  // console.log("personal prof page bands:", personalProfilePageBands)
  // console.log("personal prof page venues:", personalProfilePageVenues)
  return (
    <div className="App">
      
        <Header loggedInUser={loggedInUser} setLoggedInUser={setLoggedInUser}/>
        
      <Routes>  
        <Route path="/" element={<HomePage loggedInUser={loggedInUser}/>} ></Route>
        <Route path="/login" element={<Login loggedInUser={loggedInUser} setLoggedInUser={setLoggedInUser}/>}></Route>
        <Route path="/cities" element={<City/>} ></Route>
        <Route path="/bands" element={<Band personalProfilePageBands={personalProfilePageBands} setPersonalProfilePageBands={setPersonalProfilePageBands}/>} ></Route>
        <Route path="/venues" element={<Venue personalProfilePageVenues={personalProfilePageVenues} setPersonalProfilePageVenues={setPersonalProfilePageVenues}/>} ></Route>
        <Route path="/concerts" element={<Concert/>}></Route>
        <Route path="/bands/:id" element={<BandDetailPage/>}></Route>
        <Route path="/venues/:id" element={<VenueDetailPage/>}></Route>
        <Route path="/cities/:id" element={<CityDetailPage/>}></Route>
        <Route path="/personalProfile" element={<PersonalProfile loggedInUser={loggedInUser} personalProfilePageBands={personalProfilePageBands} setPersonalProfilePageBands={setPersonalProfilePageBands} personalProfilePageVenues={personalProfilePageVenues} setPersonalProfilePageVenues={setPersonalProfilePageVenues}/>}></Route>

      </Routes>
        <br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br>
        <Footer> </Footer>
      {/* <Footer/> */}
      
    </div>
  );
}

export default App;
