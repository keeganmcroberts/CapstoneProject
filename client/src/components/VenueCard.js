import React, { useState, useEffect } from 'react'
import {useNavigate} from 'react-router';


function VenueCard({eachVenue, setPersonalProfilePageVenues, personalProfilePageVenues}){
   
    const [followVenue, setFollowVenue] = useState(false)

    let navigate = useNavigate();

    function followAVenue(venue){
        setFollowVenue(!followVenue)

        fetch(`/followVenue`,{
            method:'POST',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(venue)
          })
          .then(r => r.json())
          .then(likedVenue=>{
            setPersonalProfilePageVenues([likedVenue, ...personalProfilePageVenues])
        })
    }
    function unfollowVenue(venue){
        setFollowVenue(!followVenue)

        fetch(`/unfollowVenue`,{
            method:'DELETE',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(venue)
          })
          .then(r => r.json())
          .then(console.log)
    }

    function viewConcerts(id){
        navigate(`/venues/${id}`)
    }

 
    



    return(
        <div className="city-cards">
        <h3>{eachVenue.name}</h3>
        <h4>{eachVenue.city.city}</h4>
        {!followVenue ? <button onClick={()=>followAVenue(eachVenue)}>Follow</button> : <button className="unfollow-button" onClick={()=>unfollowVenue(eachVenue)}>Unfollow</button>}
        <img onClick={()=>viewConcerts(eachVenue.id)}src={eachVenue.image_url}></img>
    </div>
    )
}

export default VenueCard;