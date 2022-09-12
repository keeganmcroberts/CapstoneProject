// import { useNavigate } from 'react-router';
import { Routes, Route } from "react-router-dom";
import City from "./City";
import Band from "./Band";
import Venue from "./Venue";
import {useNavigate} from 'react-router';






function HomePage(){

    let navigate = useNavigate();
    
    function viewCities(){
        navigate("/cities")
    }

    function viewVenues(){
        navigate("/venues")
    }

    function viewBands(){
        navigate("/bands")
    }


    return(
        <div>
        <ul className="page-navbar">
            <li className="links"><a href="default.asp">Home</a></li>
          </ul>
        <div class="row">
            <div class="column">
                <h4>Cities</h4>     
                <img onClick={viewCities} className="home-image" src="https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb" alt="cities"></img>
            </div>
            <div class="column">
                <h4>Venues</h4>
                <img onClick={viewVenues}  className="home-image" src="https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,f_jpg,h_900,q_65,w_640/v1/clients/denver/Red_Rocks_Concert_Credit_Colorado_eba595ac-bd15-4c2c-898e-38b325ee61a3.jpg" alt="venues"></img>
            </div>
            <div class="column">
                <h4>Bands</h4>
                <img onClick={viewBands}  className="home-image" src="https://media.gq.com/photos/5d5d51edf535760008d2cb5c/3:4/w_841,h_1122,c_limit/Bon-Iver-II-GQ-2019-082119.jpg" alt="bands"></img>
            </div>
        </div>
        </div>
    )
}
export default HomePage;

{/* <div class="row">
  <div class="column">
    <h4>Cities</h4>     
    <img onClick={viewCities} className="home-image" src="https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb" alt="cities"></img><img src="img_snow.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <h4>Venues</h4>
    <img onClick={viewVenues}  className="home-image" src="https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,f_jpg,h_900,q_65,w_640/v1/clients/denver/Red_Rocks_Concert_Credit_Colorado_eba595ac-bd15-4c2c-898e-38b325ee61a3.jpg" alt="venues"></img>
  </div>
  <div class="column">
    <h4>Bands</h4>
    <img onClick={viewBands}  className="home-image" src="https://media.gq.com/photos/5d5d51edf535760008d2cb5c/3:4/w_841,h_1122,c_limit/Bon-Iver-II-GQ-2019-082119.jpg" alt="bands"></img>
  </div>
</div> */}


