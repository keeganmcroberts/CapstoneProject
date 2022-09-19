import React, { useState, useEffect } from 'react'
import {useParams} from "react-router-dom";
import {useNavigate} from 'react-router';
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";

function CityDetailPage(){
    useEffect( ()=>{
        fetch(`http://localhost:3000/cities/${id}`)
        .then(res => res.json())
        .then(data => {setCityDetail(data)
        
           
        })
    }, [])
    
    const[bandSearchBar, setBandSearchBar] = useState("")
    const [startDate, setStartDate] = useState(null);
    const [cityDetail, setCityDetail] = useState({})
    const [showConcerts, setShowConcerts] = useState(false)
    let navigate = useNavigate();
    const {id} = useParams();
    console.log("cities detail:", cityDetail)
    
    
    function viewVenues(id){
        navigate(`/venues/${id}`)
    }
    // console.log("all the venues:", bandDetail.venues.length)


    function changeView(){
        setShowConcerts(!showConcerts)
    }
    function handleingtheSearch(thethingsItypeintotheSearchBar){
        
        setBandSearchBar(thethingsItypeintotheSearchBar)
    
      }
        
    

    
    if (!cityDetail || !cityDetail.venues || !cityDetail.venues.length )
        return null
            
    if (cityDetail && !showConcerts)
       return(
        <div>
             <ul className="page-navbar">
            <li className="links"><a href="/">Home</a></li>
            <li><a onClick={changeView}>View Concerts</a></li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by Venue..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
          </ul>
            <div className="page-banner">
                <h2>{cityDetail.city}</h2>
                
            </div>
            <div className="city-grid">
                { cityDetail.venues.map(eachVenue=>{
                return (
                <div className="city-cards">
                    <h3>{eachVenue.name}</h3>
                    <img onClick={()=>viewVenues(eachVenue.id)} src={eachVenue.image_url}></img>     
                </div>
                )})}
            </div>
        </div>
            )
            
    if (showConcerts)
        return(
        <div>
            <ul className="page-navbar">
            <li className="links"><a href="/">Home</a></li>
            <li><a onClick={changeView}>View Venues</a></li>
            
            <li className="search-right"><input type="text" className="search" placeholder="Search by Artist..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
            <li className="search-right"><DatePicker  selected={startDate} onChange={(date) => setStartDate(date)} /></li>
            <li className="search-right">Choose Date:</li>
          </ul>
        <div className="page-banner">
            <h2>{cityDetail.city}</h2>
           
            
        </div>
        
        <div className="city-grid">
            { cityDetail.band_concerts.map(eachConcert=>{
            if(eachConcert.concert_band.name.toLowerCase().includes(bandSearchBar.toLowerCase())
            
            ){ 
            if(!startDate)
            return (
        <div className="city-cards">
            <h3 className="band-name">{eachConcert.concert_band.name}</h3>
                <h4>{eachConcert.concert_date.date} live @</h4>
                <h3 className="venue-name">{eachConcert.concert_venue.name}</h3>
                <img onClick={()=>viewVenues(eachConcert.band.id)} src={eachConcert.concert_band.imaage_url}></img>     
            
            
        </div>
            )
            if (startDate && new Date(eachConcert.concert_date.date).getTime() === new Date(startDate).getTime())
            return (
                <div className="city-cards">
                    <h3>{eachConcert.concert_band.name}</h3>
                <h4>{eachConcert.concert_date.date} live @</h4>
                <h3>{eachConcert.concert_venue.name}</h3>
                <img onClick={()=>viewVenues(eachConcert.band.id)} src={eachConcert.concert_band.imaage_url}></img>     
                    
                    
                </div> )} 
            
            })}
        </div>
        </div>
            )
}
export default CityDetailPage;


