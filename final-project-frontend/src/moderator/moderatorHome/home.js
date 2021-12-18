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
    <div>
      <h1>home</h1>
      <Link to="/moderator/decorator_approval_list"><button className="btn btn-primary">moderator approval list</button></Link>
      {redirectToLogin}
    </div>
  );
};

export default Home;