import React, {useEffect, useState} from 'react';
import Logout from "./Logout";
import button from "bootstrap/js/src/button";
import {Link} from "react-router-dom";

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
        return (

            <div className="d-flex justify-content-evenly bg-primary bg-opacity-50 p-2">
                <h1 className="text-center text-danger mx-4 text-uppercase">DreamDesign</h1>
                <h1>Moderator Dashboard</h1>
                <div className="d-flex flex-row justify-content-evenly p-2">
                    <Link to="/moderator/home">
                        <button className="btn btn-primary mx-3">home</button>
                    </Link>
                    <div>
                    <Logout/>
                    </div>

                </div>

            </div>
        );

};

export default NavBar;