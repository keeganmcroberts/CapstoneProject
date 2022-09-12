import React, { useState, useEffect } from 'react'

import {useNavigate} from 'react-router';

function Concert(){
    useEffect( ()=>{
        fetch(`http://localhost:3000/concerts`)
        .then(res => res.json())
        .then(data => {setAllConcerts(data)
                         
           
        })
    }, [])

    const [allConcerts, setAllConcerts] = useState([])
    // let navigate = useNavigate();

    // function viewConcerts(id){
    //     navigate(`/concerts/${id}`)
    // }

    return(
        <div className="city-grid">
            {allConcerts.map(eachConcert=>{
                return(
                    <div className="city-cards">
                        <h3>{eachConcert.name}</h3>
                        <h2>{eachConcert.state}</h2>
                        <img src={eachConcert.imaage_url}></img>
                    </div>
                )})}
        </div>
       
        )
}
export default Concert;