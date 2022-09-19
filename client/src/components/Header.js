import {useNavigate} from 'react-router';




function Header({loggedInUser, setLoggedInUser}){


    let navigate = useNavigate();
    function returnHome(){
        navigate("/")
    }

    function loginUser(){
        navigate ("/login")
    }

    function logoutUser(){
        fetch ("/logout",{
            method: "DELETE"
        })
        .then( res => res.json())
        .then (response=>{
            setLoggedInUser(null)

            navigate("/login")
        })
        alert("You've been Logged out")
        
        
    }

    function viewProfile(){
        navigate("/personalProfile")
    }

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
        <div class="header">
            <h1 className="header-text">🎶Concert Legend🎶</h1>
            <div class="hamburger-menu">
                    <input id="menu__toggle" type="checkbox" />
                    <label class="menu__btn" for="menu__toggle">
                        <span></span>
                    </label>

                    <ul class="menu__box">
                        <li><button onClick={returnHome} className="home-button">Home</button></li>
                        <li><button onClick={viewCities} className="home-button">View Cities</button></li>
                        <li><button onClick={viewVenues} className="home-button">View Venues</button></li>
                        <li><button onClick={viewBands} className="home-button">View Bands</button></li>
                        <li><button onClick={viewProfile} className="navButton1" >Personal Profile</button></li>
                        {
                        loggedInUser
                         ?
                        <li><button onClick={logoutUser} className="logoutLink">Logout</button></li>
                        : 
                        <li><button onClick={loginUser} className="logoutLink">Login</button></li>
        
                    }
                        
                        
                    </ul>
                </div>
            <p></p>
        </div>
    )
    
 
    
}
export default Header;