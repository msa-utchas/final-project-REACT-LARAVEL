import React, { useEffect, useState } from "react";
import {Link, Redirect} from "react-router-dom";

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
      <Link to="/moderator/decorator_approval_list"><button className=" btn-lg btn-primary w-100 m-3 py-3 ">moderator approval list</button></Link>
      <Link to="/moderator/refund_request_approval_list"><button className=" btn-lg btn-primary w-100 m-3 py-3 ">refund approval list</button></Link>
      </div>
      {redirectToLogin}
    </div>
  );
};

export default Home;