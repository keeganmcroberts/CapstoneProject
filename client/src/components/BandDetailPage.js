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

    const [startDate, setStartDate] = useState(null);
    console.log("DATE:",(startDate))
    
  
    
  
    const [bandDetail, setBandDetail] = useState({})
    const[bandSearchBar, setBandSearchBar] = useState("")
    // let navigate = useNavigate();
    const {id} = useParams();
    console.log("bands detail:", bandDetail)
    console.log("search bar band:", bandSearchBar)
    // function viewConcerts(id){
    //     navigate(`/bands/${id}`)
    // }
    // console.log("all the venues:", bandDetail.venues.length)


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
            {/* <li><DatePicker className="date-picker" selected={startDate} onChange={(date) => setStartDate(date)} /></li> */}
            <li className="search-right"><input type="text" className="search" placeholder="Search by Venue..."
                    onChange={(synthEvent)=> handleingtheSearch(synthEvent.target.value)}/></li>
          </ul>
        <div className="page-banner">
            <h2>{bandDetail.name}</h2>
          
            
        </div>
            <div className="city-grid">
                { bandDetail.band_concerts.map(eachConcert=>{
                if(eachConcert.concert_venue.name.toLowerCase().includes(bandSearchBar.toLowerCase())
                
                ){ 
                if(!startDate)
                return (
            <div className="city-cards">
                <h3>{eachConcert.concert_date.date} live @</h3>
                <h3>{eachConcert.concert_venue.name}</h3>
                <img src={eachConcert.concert_venue.image_url}></img>
                
                
            </div>
                )
                if (startDate && new Date(eachConcert.concert_date.date).getTime() === new Date(startDate).getTime())
                return (
                    <div className="city-cards">
                        <h3>{eachConcert.concert_date.date} live @</h3>
                        <h3>{eachConcert.concert_venue.name}</h3>
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
       