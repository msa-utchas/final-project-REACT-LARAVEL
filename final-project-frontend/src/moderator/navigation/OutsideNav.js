import React from "react";
import { Link } from "react-router-dom";

const OutsideNav = () => {
  return (
    <div className="d-flex justify-content-evenly bg-primary bg-opacity-50" >
        <h1 className="text-center text-danger mx-4 text-uppercase">DreamDesign</h1>
      <div>
        <Link to="/moderator/signup">
          <button className="btn btn-primary mx-5 my-3">signup</button>
        </Link>
        <Link to="/moderator/login">
          <button className="btn btn-primary mx-5">login</button>
        </Link>
      </div>
    </div>
  );
};

export default OutsideNav;