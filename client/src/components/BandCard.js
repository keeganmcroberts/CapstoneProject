import React, { useState, useEffect } from 'react'
import {useNavigate} from 'react-router';


function BandCard({eachBand, setPersonalProfilePageBands, personalProfilePageBands}){
    
    const [followBand, setFollowBand] = useState(false)

    let navigate = useNavigate();

    function followABand(band){
        
        setFollowBand(!followBand)
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
    function unFollowABand(band){
        
        setFollowBand(!followBand)

        fetch(`/unfollowBand`,{
            method:'DELETE',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(band)
          })
          .then(r => r.json())
          .then(likedBand=>{
              setPersonalProfilePageBands(likedBand)
          })
    }

    function viewConcerts(id){
        navigate(`/bands/${id}`)
    }



    



    return(
        <div className="city-cards">
            <h3>{eachBand.name}</h3>
            {/* <h2>{eachBand.state}</h2> */}
            {!followBand ? <button onClick={()=>followABand(eachBand)}>Follow</button> : <button className="unfollow-button" onClick={()=>unFollowABand(eachBand)}>Unfollow</button> }
            <img onClick={()=> viewConcerts(eachBand.id)} src={eachBand.imaage_url}></img>
        </div>
    )
}

export default BandCard;