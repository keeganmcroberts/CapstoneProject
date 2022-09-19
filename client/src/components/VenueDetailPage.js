import React, { useState, useEffect} from 'react'
import {useParams} from "react-router-dom";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";



function VenueDetailPage(){
    useEffect( ()=>{
        fetch(`http://localhost:3000/venues/${id}`)
        .then(res => res.json())
        .then(data => {setVenueDetail(data)
        
           
        })
    }, [])
    
    const[bandSearchBar, setBandSearchBar] = useState("")
    const [startDate, setStartDate] = useState(null);
    const [venueDetail, setVenueDetail] = useState({})
    // let navigate = useNavigate();
    const {id} = useParams();
    console.log("venues detail:", venueDetail)
    // function viewConcerts(id){
    //     navigate(`/bands/${id}`)
    // }
    // console.log("all the venues:", bandDetail.venues.length)
        
    function handleingtheSearch(thethingsItypeintotheSearchBar){
        
        setBandSearchBar(thethingsItypeintotheSearchBar)
    
      }
    
    
    if (!venueDetail || !venueDetail.bands || !venueDetail.bands.length )
        return null
            
    else
       return(
       <div>
           <ul className="page-navbar">
            <li className="links"><a href="/">Home</a></li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by Band..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
            <li className="search-right"><DatePicker  selected={startDate} onChange={(date) => setStartDate(date)} /></li>
            <li className="search-right">Choose Date:</li>
          </ul>
        <div className="page-banner">
            <h2>{venueDetail.name}</h2>
            
                
        </div>
        <div className="city-grid">
            { venueDetail.band_concerts.map(eachConcert=>{
            if(eachConcert.concert_band.name.toLowerCase().includes(bandSearchBar.toLowerCase())
            
            ){ 
            if(!startDate)
            return (
        <div className="city-cards">
            <h3 className="band-name">{eachConcert.concert_band.name}</h3>
            <h4>{eachConcert.concert_date.date} live @</h4>
            <h3 className="venue-name">{eachConcert.concert_venue.name}</h3>
            <img src={eachConcert.concert_band.imaage_url}></img>  
            
            
        </div>
            )
            if (startDate && new Date(eachConcert.concert_date.date).getTime() === new Date(startDate).getTime())
            return (
                <div className="city-cards">
                    <h3 className="band-name">{eachConcert.concert_band.name}</h3>
                    <h4>{eachConcert.concert_date.date} live @</h4>
                    <h3 className="venue-name">{eachConcert.concert_venue.name}</h3>
                    <img src={eachConcert.concert_band.imaage_url}></img>  
                    
                    
                </div> )} 
            
            })}
        </div>
      </div>
            
    )
}

export default VenueDetailPage;

{/* <div className="city-grid">
            { cityDetail.band_concerts.map(eachConcert=>{
            if(eachConcert.concert_band.name.toLowerCase().includes(bandSearchBar.toLowerCase())
            
            ){ 
            if(!startDate)
            return (
        <div className="city-cards">
            <h3>{eachConcert.concert_band.name}</h3>
            <h4>{eachConcert.concert_date.date} live @</h4>
            <h3>{eachConcert.concert_venue.name}</h3>
            <img src={eachConcert.concert_band.imaage_url}></img>  
            
            
        </div>
            )
            {console.log("chosen date:", new Date(startDate))}
            {console.log("concert date", new Date(eachConcert.concert_date.date))}
            console.log(new Date(eachConcert.concert_date.date) === new Date(startDate))
            if (startDate && new Date(eachConcert.concert_date.date).getTime() === new Date(startDate).getTime())
            return (
                <div className="city-cards">
                    <h3>{eachConcert.concert_band.name}</h3>
                    <h4>{eachConcert.concert_date.date} live @</h4>
                    <h3>{eachConcert.concert_venue.name}</h3>
                    <img src={eachConcert.concert_band.imaage_url}></img>  
                    
                    
                </div> )} 
            
            })}
        </div> */}