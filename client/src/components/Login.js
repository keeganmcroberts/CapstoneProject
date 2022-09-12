import React, {useState, useEffect} from 'react'
import {useNavigate} from 'react-router-dom'
import Header from './Header'


function Login({loggedInUser, setLoggedInUser}) {
    const [account, setAccount] = useState({
        email:'',
        password:''
    })
    const [errors, setErrors] = useState([])
    // const [loggedInUser, setLoggedInUser] = useState(null)
    const [showHeader, setShowHeader] = useState(false)
    const [toggleForLogin, setToggleForLogin] = useState(true)
    const navigate = useNavigate()

    const {email, password} = account
    


    useEffect(
        ()=>{
            fetch("/userInSession")
            .then(r=> r.json())
            .then( setLoggedInUser)
        }
        ,[]
    )



    function onSubmit(e){
        e.preventDefault()
        
        // Logs in user
        fetch("/login",{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(account)
        })
        .then(r => r.json())
        .then(ourUser=>{
            console.log(ourUser)
            setLoggedInUser(ourUser)
            
        
            if(ourUser.email){
            navigate("/")
        }

            if(!ourUser.email){
                alert("Username or Password incorrect")
            }
           
        })
            
        //     {
        //     if(res.ok){
        //         res.json().then(user => {
        //             navigate(`/`)
        //         })
        //     }else {
        //         res.json().then(json => setErrors(json.errors))
        //     }
        // })
       
    }
    console.log("logged in user", loggedInUser)
    
    const handleChange = (e) => {
        
        const { name, value } = e.target
        setAccount({ ...account, [name]: value })
      }
    return (
        
        <div className="app-form">
        <div className="login-form">
          <div className="title">Sign In</div>
          <div className="login"> 
          <>{loggedInUser ? `Welcome ${loggedInUser.email}` : null}</>
              <form onSubmit={onSubmit}>
              <div className="input-container">
                  <label>Email </label>
                  <input type="text" name="email" value={email} onChange={handleChange} required />
           
              </div>
              <div className="input-container">
                  <label>Password </label>
                  <input type="password" name="password" value={password} onChange={handleChange} required />
           
              </div>
              <div className="button-container">
                  <input type="submit" />
              </div>
              </form>
          </div>
        </div>
      </div>
      )
    
}

export default Login
