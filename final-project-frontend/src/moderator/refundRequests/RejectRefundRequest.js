
import React, { useEffect } from "react";
import {Link, useParams} from "react-router-dom";
import axios from "axios";

const RejectRefundRequest = () => {
    const dId = useParams();
    useEffect(() => {
        axios
            .post(`/moderator/reject_refund_requests/${dId.id}`)
            .then((res) => {
                console.log(res.data);
            })
            .catch((err) => console.log(err));
    });
    return <div>
        <h1>refund rejected</h1>
        <Link to="/moderator/refund_request_approval_list"><button className="btn btn-primary mx-5">refund approval list</button></Link>
    </div>;
};

export default RejectRefundRequest;