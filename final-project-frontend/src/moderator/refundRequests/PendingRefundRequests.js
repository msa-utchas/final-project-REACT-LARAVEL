import React, { useState, useEffect } from "react";
import { Link, Redirect } from "react-router-dom";
import axios from "axios";
import RefundRequests from "./RefundRequests";


const PendingRefundRequests = () => {
    const [redirectToLogin, setRedirectToLogin] = useState("");
    const [refundRequestList, setRefundRequestList] = useState([]);
    useEffect(() => {
        if (!JSON.parse(localStorage.getItem("moderator"))) {
            setRedirectToLogin(
                <Redirect from="/moderator/home" to="/moderator/login" />
            );
        }
        axios
            .get("/moderator/refund_requests")
            .then((res) => {
                setRefundRequestList(res.data);

            })
            .catch((err) => {
                console.log(err);
            });
    }, []);
    return (
        <div>
            <h1>refund approval list</h1>
            <Link to="/moderator/home">
                <button className="btn btn-primary">home</button>
            </Link>
            <RefundRequests approvalList={refundRequestList}/>
            {redirectToLogin}
        </div>
    );
};

export default PendingRefundRequests;