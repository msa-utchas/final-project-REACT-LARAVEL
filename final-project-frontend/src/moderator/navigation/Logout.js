import React, { useEffect, useState } from "react";
import { Redirect } from "react-router-dom";
import axios from "axios";

const Logout = () => {
  const [redirectToLogin, setRedirectToLogin] = useState("");
  let logoutAction = () => {
    axios
      .post("/moderator/logout")
      .then((resp) => {
        var token = resp.data;
        localStorage.removeItem("moderator");
        console.log(token);
        setRedirectToLogin(<Redirect to="/moderator/login" />);
      })
      .catch((err) => {
        console.log(err);
      });
  };
  return (
    <div>
      <button className="btn btn-danger" onClick={logoutAction}>
        logout
      </button>
      {redirectToLogin}
    </div>
  );
};

export default Logout;