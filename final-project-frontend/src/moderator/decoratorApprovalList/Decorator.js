import React, { useEffect } from "react";
import {Link} from "react-router-dom";

const Decorator = (props) => {
  const data = props.data;
  let acceptLink=`/moderator/decorator_approval_list/accept/${data.dapp_id}`;
  let rejectLink=`/moderator/decorator_approval_list/reject/${data.dapp_id}`;
  return (
    <div>
      <div className="p-3 w-25 m-5 bg-primary text-white bg-opacity-75">
        <h3>deco uname: {data.dapp_uname}</h3>
        <h3>deco Name : {data.dapp_password}</h3>

          <Link to={acceptLink}><button className="btn btn-success">accept</button></Link>
        <Link to={rejectLink}><button className="btn btn-danger">reject</button></Link>

      </div>
    </div>
  );
};

export default Decorator;