import React, { useState, useEffect } from "react";
import { Link, Redirect } from "react-router-dom";
import axios from "axios";
import Profile from "./profile";
const ProfileData = () => {
    const [redirectToLogin, setRedirectToLogin] = useState("");
    const [profileData, setProfileData] = useState([]);
    var obj = JSON.parse(localStorage.getItem('moderator'));

    useEffect(() => {
        if (!JSON.parse(localStorage.getItem("moderator"))) {
            setRedirectToLogin(
                <Redirect from="/moderator/home" to="/moderator/login" />
            );
        }
        axios
            .get(`/moderator/profiledata/${obj.userId}`)
            .then((res) => {
                setProfileData(res.data);
                console.log(res.data);

            })
            .catch((err) => {
                console.log(err);
            });
    }, []);
    return (
        <div>
            <h1 className="text-center mt-5 text-danger">PROFILE INFORMATION</h1>
            <Profile data={profileData}/>
            {redirectToLogin}
        </div>
    );
};

export default ProfileData;