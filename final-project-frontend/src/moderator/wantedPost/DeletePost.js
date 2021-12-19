import React, { useEffect } from "react";
import {Link, useParams} from "react-router-dom";
import axios from "axios";
const DeletePost = () => {

    const dId = useParams();

    useEffect(() => {
        axios
            .post(`moderator/wanted_post/${dId.id}`)
            .then((res) => {
                console.log(res.data);
            })
            .catch((err) => console.log(err));
    });
    return <div>
        <div className="d-flex flex-column justify-content-center">
            <h1 className="text-center m-5">Post Deleted</h1>
            <div className="mx-auto">
                <Link to="/moderator/wantedpost">
                    <button className="btn btn-primary mx-5">
                        Go Back TO Wanted Post List
                    </button>
                </Link>
            </div>
        </div>
    </div>;
};

export default DeletePost;