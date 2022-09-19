import React, { useState, useEffect } from 'react'
import {useNavigate} from 'react-router';


function BandCard({genreState, eachBand, setPersonalProfilePageBands, personalProfilePageBands}){
    
    const [followBand, setFollowBand] = useState(false)

    let navigate = useNavigate();

    function followABand(band){
        
        
        console.log("BAND:", band)
        
        fetch(`/followBand`,{
            method:'POST',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(band)
          })
          .then(r => r.json())
          .then(likedBand=>{
            setPersonalProfilePageBands([likedBand, ...personalProfilePageBands])
        })

    }
   
    function unFollowABand(id){
    
        fetch(`/unfollowBand/${id}`,{
            method:'DELETE'
          })
        
          .then(()=>{
            fetch("/user_bands")
            .then(res => res.json())
            .then(data => setPersonalProfilePageBands(data))    
          })
    }

    function viewConcerts(id){
        navigate(`/bands/${id}`)
    }



    


   if (genreState === eachBand.genre || genreState === "Bands")
    return(
        <div className="city-cards">
             <h3>{eachBand.name}</h3>
            {/* <h2>{eachBand.state}</h2> */}
            {personalProfilePageBands.some(band => band.band.name === eachBand.name) ? <button className="unfollow-button" onClick={()=>unFollowABand(eachBand.id)}>Following</button> : <button onClick={()=>followABand(eachBand)}>Follow</button>}
            <img onClick={()=> viewConcerts(eachBand.id)} src={eachBand.imaage_url}></img>
        </div>
    )
}

export default BandCard;