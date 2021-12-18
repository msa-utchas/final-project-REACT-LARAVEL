import React from 'react';
import {Link} from "react-router-dom";

const Order = (props) => {
    const data = props.data;

    return (
        <div className="w-75 mx-auto  p-5 bg-primary bg-opacity-75 m-5 text-light">
            <div>
                <div className="d-flex">
                    <div className="w-75 mx-auto">
                        <h4>Order ID: {data.o_id}</h4>
                        <h4>Name : {data.o_name}</h4>
                        <h4>Type : {data.o_type}</h4>
                        <h4>Cost : {data.o_price}</h4>

                    </div>
                    <div className="w-75 mx-auto">
                        <h4>Order By: : {data.o_ordered_by}</h4>
                        <h4>Posted by : {data.o_posted_by}</h4>
                        <h4>Order time : {data.o_time}</h4>

                    </div>
                </div>
                <div className="d-flex">
                    <h5 className="mt-4"> <h3>Description :</h3>  {data.o_description}</h5>
                </div>
            </div>
        </div>
    );
};

export default Order;