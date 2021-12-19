import React, {useEffect, useState} from 'react';
import {Redirect} from "react-router-dom";
import axios from "axios";
import Posts from "./Posts";


const PostList = () => {
    const [redirectToLogin, setRedirectToLogin] = useState("");
    const [postList, setPostList] = useState([]);
    useEffect(() => {
        if (!JSON.parse(localStorage.getItem("moderator"))) {
            setRedirectToLogin(
                <Redirect to="/moderator/login" />
            );
        }
        axios
            .get("/moderator/wanted_post")
            .then((res) => {
                setPostList(res.data);
                console.log(res.data)
            })
            .catch((err) => {
                console.log(err);
            });
    }, []);
    return (
        <div>
            <h1 className="text-center my-3">ALL Wanted Post</h1>
            <Posts postList={postList}/>
            {redirectToLogin}
        </div>
    );
};

export default PostList;