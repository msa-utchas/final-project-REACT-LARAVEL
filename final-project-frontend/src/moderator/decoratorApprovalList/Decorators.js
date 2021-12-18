import React from 'react';
import Decorator from "./Decorator";

const Decorators = (props) => {
    return (
        <div>
            {
                props.approvalList.map(
                    p=><Decorator key={p.dapp_id} data={p} state={props.state}></Decorator>
                )
            }
        </div>
    );
};

export default Decorators;