import React, { useState, useEffect, useNavigate } from 'react'
import {useParams} from "react-router-dom";

import DatePicker from "react-datepicker"; 

// import "react-datepicker/dist/react-datepicker.css";

function BandDetailPage(){
    useEffect( ()=>{
        fetch(`http://localhost:3000/bands/${id}`)
        .then(res => res.json())
        .then(data => {setBandDetail(data)
       
        
           
        })
    }, [])

    // console.log("DATE:",(startDate))
    
    
    
    
    const [startDate, setStartDate] = useState(null);
    const [bandDetail, setBandDetail] = useState({})
    const[bandSearchBar, setBandSearchBar] = useState("")
  
    const {id} = useParams();
    


    function handleingtheSearch(thethingsItypeintotheSearchBar){
        
        setBandSearchBar(thethingsItypeintotheSearchBar)
    
      }
        
    
    
    
    if (!bandDetail || !bandDetail.venues || !bandDetail.venues.length )
        return null
            
    else
       return(
        <div>
        <ul className="page-navbar">
            <li className="links"><a href="/">Home</a></li>
            <li className="search-right"><input type="text" className="search" placeholder="Search by Venue..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
            <li className="search-right"><DatePicker  selected={startDate} onChange={(date) => setStartDate(date)} /></li>
            <li className="search-right">Choose Date:</li>
          </ul>
        <div className="page-banner">
            <h2>{bandDetail.name}</h2>
          
            
        </div>
            <div className="city-grid">
                { bandDetail.band_concerts.map(eachConcert=>{
                    console.log(eachConcert)
                if(eachConcert.concert_venue.name.toLowerCase().includes(bandSearchBar.toLowerCase())
                
                ){ 
                if(!startDate)
                return (
            <div className="city-cards">
                <h4>{eachConcert.concert_date.date} live @</h4>
                <h3 className="venue-name">{eachConcert.concert_venue.name}</h3>
                <h4>{eachConcert.concert_city.city}</h4>
                <img src={eachConcert.concert_venue.image_url}></img>
                
                
            </div>
                )
                if (startDate && new Date(eachConcert.concert_date.date).getTime() === new Date(startDate).getTime())
                return (
                    <div className="city-cards">
                        <h3>{eachConcert.concert_date.date} live @</h3>
                        <h3>{eachConcert.concert_venue.name}</h3>
                        <h4>{eachConcert.concert_city.city}</h4>
                        <img src={eachConcert.concert_venue.image_url}></img>
                        
                        
                    </div> )} 
                
                })}
            </div>
        
        </div>
        )
}
export default BandDetailPage;







{/* <div className="city-grid">
            {allBands.map(eachBand=>{
                return(
                    <div className="city-cards">
                        <h3>{eachBand.name}</h3>
                        <h2>{eachBand.state}</h2>
                        <img onClick={()=> viewConcerts(eachBand.id)} src={eachBand.imaage_url}></img>
                    </div>
                )})}
        </div> */}
       