import React, { useEffect, useState } from "react";
import Logout from "./Logout";
import button from "bootstrap/js/src/button";
import { Link } from "react-router-dom";
import axios from "axios";

const NavBar = () => {
  // let [loginState,setLoginState]=useState(false);
  // useEffect(()=>{
  //         if (localStorage.getItem('moderator'))
  //         {
  //             setLoginState(true);
  //         }
  //         else{
  //             setLoginState(false);
  //         }
  //     }
  // ,[])
  const [profileData, setProfileData] = useState([]);
  let obj = JSON.parse(localStorage.getItem('moderator'));
  useEffect(()=>{
    axios
        .get(`/moderator/profiledata/${obj.userId}`)
        .then((res) => {

          setProfileData(res.data);

        })
        .catch((err) => {
          console.log(err);
        });
  },[])



  return (
    <div className="position-sticky top-0">
      <div className="d-flex justify-content-evenly bg-primary bg-opacity-100 p-2">
        <h1 className="text-center text-danger mx-4 text-uppercase">
          DreamDesign
        </h1>
        <h1>Moderator Dashboard</h1>
        <div className="d-flex flex-row justify-content-evenly p-2">
          <Link to="/moderator/home">
            <button className="btn btn-success mx-3">home</button>
          </Link>
          <div>
            <h4 className="text-light mx-3">Welcome Back, {profileData.m_name}</h4>
          </div>
          <div>
            <Logout />
          </div>

        </div>
      </div>
    </div>
  );
};

export default NavBar;