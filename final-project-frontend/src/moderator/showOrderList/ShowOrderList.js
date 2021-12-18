import React, { useState, useEffect } from "react";
import { Link, Redirect } from "react-router-dom";
import axios from "axios";

import Orders from "./Orders";

const ShowOrderList = () => {
    const [redirectToLogin, setRedirectToLogin] = useState("");
    const [orderList, setOrderList] = useState([]);
    useEffect(() => {
        if (!JSON.parse(localStorage.getItem("moderator"))) {
            setRedirectToLogin(
                <Redirect to="/moderator/login" />
            );
        }
        axios
            .get("/moderator/order_list")
            .then((res) => {
                setOrderList(res.data);
                console.log(res.data)
            })
            .catch((err) => {
                console.log(err);
            });
    }, []);
    return (
        <div>
            <h1 className="text-center my-3">ALL ORDERS</h1>
            <Orders orderList={orderList}/>
            {redirectToLogin}
        </div>
    );
};

export default ShowOrderList;