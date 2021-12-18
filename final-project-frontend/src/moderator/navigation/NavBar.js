import React, {useEffect, useState} from 'react';
import Logout from "./Logout";
import button from "bootstrap/js/src/button";

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

            <div>
                <Logout/>
            </div>
        );

};

export default NavBar;