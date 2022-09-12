import React, { useState, useEffect } from 'react'

import {useNavigate} from 'react-router';
import VenueCard from './VenueCard';




function Venue({setPersonalProfilePageVenues, personalProfilePageVenues}){

    useEffect( ()=>{
        fetch("http://localhost:3000/venues")
        .then(res => res.json())
        .then(data => {setAllVenues(data)
            setVenueSearchBar(data)
                         
           
        })
    }, [])

    const [allVenues, setAllVenues] = useState([])
    const [venueSearchBar, setVenueSearchBar] = useState([])

    function handleingtheSearch(thethingsItypeintotheSearchBar){
        let resultofSearch= venueSearchBar.filter((whatItype)=> {
          if(whatItype.name.toLowerCase().includes(thethingsItypeintotheSearchBar.toLowerCase())){
            return whatItype
          }
        })
        setAllVenues(resultofSearch)
    
      }



    let navigate = useNavigate();

    function viewConcerts(id){
        navigate(`/venues/${id}`)
    }


    return(
        <div>
            <ul className="page-navbar">
            <li className="links"><a href="/">Home</a></li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by Venue..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
          </ul>
        <div className="page-banner">
            <h2>Venues</h2>
        </div>
        <div className="city-grid">
            {allVenues.map(eachVenue=>{
                return(
                   <VenueCard personalProfilePageVenues={personalProfilePageVenues} setPersonalProfilePageVenues={setPersonalProfilePageVenues} eachVenue={eachVenue}/>
                )})}
        </div>
        </div>
       
        )
}
export default Venue;