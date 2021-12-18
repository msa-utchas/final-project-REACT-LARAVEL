import React, { useEffect } from "react";
import { Link } from "react-router-dom";

const Decorator = (props) => {
  const data = props.data;
  let acceptLink = `/moderator/decorator_approval_list/accept/${data.dapp_id}`;
  let rejectLink = `/moderator/decorator_approval_list/reject/${data.dapp_id}`;
  return (
    <div className="w-50 mx-auto  p-5 bg-primary bg-opacity-25 m-5">
      <div>
        <div className="d-flex">
          <div className="w-75 mx-auto">
            <h4>decorator id: {data.dapp_id}</h4>
            <h4>decorator  User Name : {data.dapp_uname}</h4>
            <h4>decorator  Name : {data.dapp_name}</h4>
            <h4>decorator  Password : {data.dapp_password}</h4>
          </div>
          <div className="w-75 mx-auto">
            <h4>decorator  Phone : {data.dapp_phone}</h4>
            <h4>decorator  Email : {data.dapp_email}</h4>
            <h4>decorator  Address : {data.dapp_address}</h4>
            <h4>decorator  Experience : {data.dapp_yoe} Years</h4>
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

export default Decorator;
