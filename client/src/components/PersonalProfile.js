import React, { useState, useEffect } from 'react'
import DatePicker from "react-datepicker";
import {useNavigate} from 'react-router';


function PersonalProfile({loggedInUser, personalProfilePageBands, personalProfilePageVenues, setPersonalProfilePageBands, setPersonalProfilePageVenues}){
    
    const [viewBands, setViewBands] = useState(true)
    const [viewVenues, setViewVenues] = useState(false)
    const [viewConcerts, setViewConcerts] = useState(false)
    const[bandSearchBar, setBandSearchBar] = useState("")
    const [startDate, setStartDate] = useState(null);

    let navigate = useNavigate();

    function seeVenues(){
        setViewVenues(true)
        setViewConcerts(false)
        setViewBands(false)
    }

    function seeBands(){
        setViewBands(true)
        setViewVenues(false)
        setViewConcerts(false)
    }

    function seeConcerts(){
        setViewConcerts(true)
        setViewBands(false)
        setViewVenues(false)
    }

    function handleingtheSearch(thethingsItypeintotheSearchBar){
        
      setBandSearchBar(thethingsItypeintotheSearchBar)
  
    }

    // function navigateConcerts(id){
    //     navigate(`/bands/${id}`)
    // }

    function unFollowAVenue(id){
    
        fetch(`/unfollowVenue/${id}`,{
            method:'DELETE'
          })
        
          .then(()=>{
            fetch("/user_venues")
            .then(res => res.json())
            .then(data => setPersonalProfilePageVenues(data))    
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

    if (viewBands)
    return(
        <div>
        <ul className="page-navbar">
        <li className="links"><a href="/">Home</a></li>
        <li><a onClick={seeVenues}>View Venues</a></li>
        <li><a onClick={seeConcerts}>View Concerts</a></li>
        
        </ul>
        <div className="page-banner">
            { loggedInUser ?
            <h2>Welcome {loggedInUser.email}!</h2>
            : null }
            <h3>Your Favorite Bands:</h3>
          </div>

      <div className="city-grid">
                { personalProfilePageBands.map(eachBand=>{
                return (
                <div className="city-cards">
                    <h3>{eachBand.band.name}</h3>
                    <button onClick={()=>unFollowABand(eachBand.id)}>Unfollow</button>
                    <img  src={eachBand.band.imaage_url}></img>     
                </div>
                )})}
        </div>
      </div>
      
    )
    if (viewVenues)
    return(
        <div>
        <ul className="page-navbar">
        <li className="links"><a href="/">Home</a></li>
        <li><a onClick={seeBands}>View Bands</a></li>
        <li><a onClick={seeConcerts}>View Concerts</a></li>
        
        </ul>
        <div className="page-banner">
            <h2>Welcome {loggedInUser.email}!</h2>
            <h3>Your Favorite Venues:</h3>
            
          </div>
      <div className="city-grid">
                { personalProfilePageVenues.map(eachVenue=>{
                    console.log("EACHVENUE:", eachVenue)
                return (
                    
                <div className="city-cards">
                    <h3>{eachVenue.venue.name}</h3>
                    <button onClick={()=>unFollowAVenue(eachVenue.id)}>Unfollow</button>
                    <img src={eachVenue.venue.image_url}></img>     
                </div>
                )})}
        </div>
      </div>  
    )

    if (viewConcerts)
    return(
      <div>
        <ul className="page-navbar">
        <li className="links"><a href="/">Home</a></li>
        <li><a onClick={seeBands}>View Bands</a></li>
        <li><a onClick={seeVenues}>View Venues</a></li>
        <li className="search-right"><input type="text" className="search" placeholder="Search by Artist..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
            <li className="search-right"><DatePicker  selected={startDate} onChange={(date) => setStartDate(date)} /></li>
            <li className="search-right">Choose Date:</li>
        
        </ul>
        <div className="page-banner">
            <h2>Welcome {loggedInUser.email}!</h2>
            <h3>Upcoming Shows:</h3>
        </div>
        <div className="city-grid">
        
        {personalProfilePageBands.map(eachBand=>{
          return eachBand.band.band_concerts.map(eachInstance=>{
            
        return(
       <div className="city-cards">
           <h3 className="band-name">{eachInstance.concert_band.name}</h3>
               <h4 >{eachInstance.concert_date.date} live @</h4>
               <h3 className="venue-name">{eachInstance.concert_venue.name}</h3>
               <h4>{eachInstance.concert_city.city}</h4>
               <img src={eachInstance.concert_band.imaage_url}></img>     
  
       </div>
        )
        })
        })}
       </div>


      </div>
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
    
{/* <div className="city-grid">
           
  
            return (
        <div className="city-cards">
            <h3>{eachConcert.concert_band.name}</h3>
                <h4>{eachConcert.concert_date.date} live @</h4>
                <h3>{eachConcert.concert_venue.name}</h3>
                <img onClick={()=>viewVenues(eachConcert.band.id)} src={eachConcert.concert_band.imaage_url}></img>     
            
            )
        </div> */}