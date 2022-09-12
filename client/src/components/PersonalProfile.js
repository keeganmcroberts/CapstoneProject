import React, { useState, useEffect } from 'react'

import {useNavigate} from 'react-router';






function PersonalProfile({personalProfilePageBands, personalProfilePageVenues}){
    
    const [viewBands, setViewBands] = useState(true)

    function changeView(){
        setViewBands(!setViewBands)
    }


    return(
        <ul className="page-navbar">
        <li className="links"><a href="/">Home</a></li>
        <li><a onClick={changeView}>View Concerts</a></li>
      </ul>
    )
    


    
}
export default PersonalProfile;


// if(viewBands)
//     personalProfilePageBands.map(eachBand=>{
//     return(
//         <div className="city-grid">
//         <div className="city-cards">
//         <h3>{eachBand.band.name}</h3>
//         {/* <h2>{eachBand.state}</h2>
//         {!followBand ? <button onClick={()=>followABand(eachBand)}>Follow</button> : <button className="unfollow-button" onClick={()=>unFollowABand(eachBand)}>Unfollow</button> }
//         <img onClick={()=> viewConcerts(eachBand.id)} src={eachBand.imaage_url}></img> */}
//     </div>
//     </div>
//     )})
    