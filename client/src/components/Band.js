import React, { useState, useEffect } from 'react'
import BandCard from './BandCard';

import {useNavigate} from 'react-router';


function Band({setPersonalProfilePageBands, personalProfilePageBands}){
    useEffect( ()=>{
        fetch("http://localhost:3000/bands")
        .then(res => res.json())
        .then(data => {setAllBands(data)
        setBandSearchBar(data)
                         
           
        })
    }, [])

    const [allBands, setAllBands] = useState([])
    const [bandSearchBar, setBandSearchBar] = useState([])
    const [followBand, setFollowBand] = useState(false)

    function handleingtheSearch(thethingsItypeintotheSearchBar){
        let resultofSearch= bandSearchBar.filter((whatItype)=> {
          if(whatItype.name.toLowerCase().includes(thethingsItypeintotheSearchBar.toLowerCase())){
            return whatItype
          }
        })
        setAllBands(resultofSearch)
    
      }
    let navigate = useNavigate();

   

   
    function returnHome(){
        navigate("/")
    }

    function followABand(){
      setFollowBand(!followBand)
    }

    return(
        <div>
          <ul className="page-navbar">
            <li className="links"><a  href="/">Home</a></li>
            <li class="dropdown">
              <a href="javascript:void(0)" class="dropbtn">Genre</a>
              <div class="dropdown-content">
                <a href="#">Folk</a>
                <a href="#">Indie Pop</a>
                <a href="#">Rock</a>
                <a href="#">Indie Rock</a>
                <a href="#">Blues Rock</a>
                <a href="#">Hip Hop</a>
                <a href="#">Punk</a>
              </div>
            </li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by Band..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
          </ul>
          <div className="page-banner">
            <h2>Bands</h2>
            
          </div>

          <div className="city-grid">
            
             {allBands.map(eachBand=>{
               return (
                <BandCard personalProfilePageBands={personalProfilePageBands} setPersonalProfilePageBands={setPersonalProfilePageBands} eachBand={eachBand}/>
              
                
                )})}
        </div>
        </div>
       
        )
}
export default Band;