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
    
    const [genreState, setGenreState] = useState("Bands")
    return(
      <div>
          <ul className="page-navbar">
            <li className="links"><a  href="/">Home</a></li>
            <li class="dropdown">
              <a href="javascript:void(0)" class="dropbtn">Genre</a>
              <div class="dropdown-content">
                <a onClick={()=>setGenreState("Bands")}>See All Bands</a>
                <a onClick={()=>setGenreState("Folk")}>Folk</a>
                <a onClick={()=>setGenreState("Indie Pop")}>Indie Pop</a>
                <a onClick={()=>setGenreState("Rock")}>Rock</a>
                <a onClick={()=>setGenreState("Indie Rock")}>Indie Rock</a>
                <a onClick={()=>setGenreState("Blues Rock")}>Blues Rock</a>
                <a onClick={()=>setGenreState("Hip Hop")}>Hip Hop</a>
                <a onClick={()=>setGenreState("Punk")}>Punk</a>
              </div>
            </li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by Band..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
          </ul>
          <div className="page-banner">
            <h2>{genreState}</h2>
            
          </div>


          <div className="city-grid">
            
            
             {allBands.map(eachBand=>{
               return (
                <BandCard key={eachBand.id} genreState={genreState} personalProfilePageBands={personalProfilePageBands} setPersonalProfilePageBands={setPersonalProfilePageBands} eachBand={eachBand}/>
              
                
                )})}
        </div>
        </div>
       
        )
}
export default Band;