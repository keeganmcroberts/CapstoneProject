import React, { useState, useEffect } from 'react'

import {useNavigate} from 'react-router';


function City(){

    useEffect( ()=>{
        fetch("http://localhost:3000/cities")
        .then(res => res.json())
        .then(data => {setAllCities(data)
        setCitySearchBar(data)
           
        })
    }, [])

    const [allCities, setAllCities] = useState([])
    const [citySearchBar, setCitySearchBar] = useState([])

    function handleingtheSearch(thethingsItypeintotheSearchBar){
        let resultofSearch= citySearchBar.filter((whatItype)=> {
          if(whatItype.city.toLowerCase().includes(thethingsItypeintotheSearchBar.toLowerCase())){
            return whatItype
          }
        })
        setAllCities(resultofSearch)
    
      }


    let navigate = useNavigate();
    function viewVenues(id){
        navigate(`/cities/${id}`)
    }



    return(
        <div>
            <ul className="page-navbar">
            <li className="links"><a href="/">Home</a></li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by City..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
          </ul>
        <div className="page-banner">
            <h2>Cities</h2>
        </div>
        <div className="city-grid">
            {allCities.map(eachCity=>{
                return(
                    <div key={eachCity.id} className="city-cards">
                        <h2>{eachCity.city},</h2>
                        <h3>{eachCity.state}</h3>
                        <img onClick={()=>viewVenues(eachCity.id)}src={eachCity.image_url}></img>
                    </div>
                )})}
        </div>
        </div>
       
        )
}
export default City;
