
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
        <div className="d-flex flex-column justify-content-center">
            <h1 className="text-center m-5">Refund Request Rejected</h1>
            <div className="mx-auto">
                <Link to="/moderator/refund_request_approval_list">
                    <button className="btn btn-primary mx-5">
                        refund approval list
                    </button>
                </Link>
            </div>
        </div>
    </div>;
};

export default RejectRefundRequest;