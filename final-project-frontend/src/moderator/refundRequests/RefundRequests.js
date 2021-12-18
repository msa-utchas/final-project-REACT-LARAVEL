import React from 'react';
import RefundRequest from "./RefundRequest";


const RefundRequests = (props) => {
    return (
        <div>
            {
                props.approvalList.map(
                    p=><RefundRequest key={p.r_id} data={p}></RefundRequest>
                )
            }
        </div>
    );
};

export default RefundRequests;