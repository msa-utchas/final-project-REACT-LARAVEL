import React from 'react';
import {Link} from "react-router-dom";

const RefundRequest = (props) => {
    const data = props.data;
    let acceptLink=`/moderator/refund_request_approval_list/accept/${data.r_id}`;
    let rejectLink=`/moderator/refund_request_approval_list/reject/${data.r_id}`;
    return (
        <div>
            <div className="p-3 w-25 m-5 bg-primary text-white bg-opacity-75">
                <h3>deco uname: {data.r_id}</h3>
                <h3>deco Name : {data.r_addname}</h3>

                <Link to={acceptLink}><button className="btn btn-success">accept</button></Link>
                <Link to={rejectLink}><button className="btn btn-danger">reject</button></Link>

            </div>
        </div>
    );
};

export default RefundRequest;