import React from 'react';
import {Link} from "react-router-dom";

const RefundRequest = (props) => {
    const data = props.data;
    let acceptLink=`/moderator/refund_request_approval_list/accept/${data.r_id}`;
    let rejectLink=`/moderator/refund_request_approval_list/reject/${data.r_id}`;
    return (
        // <div>
        //     <div className="p-3 w-25 m-5 bg-primary text-white bg-opacity-75">
        //         <h3>deco uname: {data.r_id}</h3>
        //         <h3>deco Name : {data.r_addname}</h3>
        //
        //
        //
        //     </div>
        // </div>
        <div className="w-50 mx-auto  p-5 bg-primary bg-opacity-25 m-5">
            <div>
                <div className="d-flex">
                    <div className="w-75 mx-auto">
                        <h4>Report id: {data.r_id}</h4>
                        <h4>report From  User Name : {data.r_from}</h4>
                        <h4>Report To : {data.r_to}</h4>
                        <h4>Advertisement Name : {data.r_addname}</h4>
                    </div>
                    <div className="w-75 mx-auto">
                        <h4>Price : {data.r_addprice}</h4>
                        <h4>Advertisement Type : {data.r_addtype}</h4>
                        <h4>Advertisement description : {data.r_adddescription}</h4>
                        <h4>Reason For Refund : {data.r_reason}</h4>
                    </div>
                </div>
                <div className="d-flex">

                    <Link to={acceptLink}>
                        <button className="btn btn-success px-5 mx-2">accept</button>
                    </Link>
                    <Link to={rejectLink}>
                        <button className="btn btn-danger px-5 mx-2">reject</button>
                    </Link>
                </div>
            </div>
        </div>
    );
};

export default RefundRequest;