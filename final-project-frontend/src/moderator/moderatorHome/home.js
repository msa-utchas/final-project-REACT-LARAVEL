import React, { useEffect, useState } from "react";
import { Link, Redirect } from "react-router-dom";

const Home = () => {
  const [redirectToLogin, setRedirectToLogin] = useState("");
  useEffect(() => {
    if (JSON.parse(localStorage.getItem("moderator"))) {
      console.log(JSON.parse(localStorage.getItem("moderator")));
    } else {
      setRedirectToLogin(
        <Redirect from="/moderator/home" to="/moderator/login" />
      );
    }
  }, []);
  return (
    <div className="d-flex justify-center align-items-center">
      <div className="mx-auto my-5">
        <Link to="/moderator/decorator_approval_list">
          <button className=" btn-lg btn-primary w-100 m-3 py-3 ">
            Moderator Approval List
          </button>
        </Link>
        <Link to="/moderator/refund_request_approval_list">
          <button className=" btn-lg btn-primary w-100 m-3 py-3 ">
            Refund Approval List
          </button>
        </Link>
        <Link to="/moderator/orderlist">
          <button className=" btn-lg btn-primary w-100 m-3 py-3 ">
            View All Orders
          </button>
        </Link>
        <Link to="/moderator/wantedpost">
          <button className=" btn-lg btn-primary w-100 m-3 py-3 ">
            View Wanted Post
          </button>
        </Link>
        <Link to="/moderator/profile">
          <button className=" btn-lg btn-primary w-100 m-3 py-3 ">
            View Profile
          </button>
        </Link>
      </div>
      {redirectToLogin}
    </div>
  );
};

export default Home;
