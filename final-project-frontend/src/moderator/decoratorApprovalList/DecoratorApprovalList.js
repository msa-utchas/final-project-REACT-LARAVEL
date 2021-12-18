import React, { useState, useEffect } from "react";
import { Link, Redirect } from "react-router-dom";
import axios from "axios";
import Decorator from "./Decorator";
import Decorators from "./Decorators";

const DecoratorApprovalList = () => {
  const [redirectToLogin, setRedirectToLogin] = useState("");
  const [approvalList, setApprovalList] = useState([]);
  useEffect(() => {
      if (!JSON.parse(localStorage.getItem("moderator"))) {
          setRedirectToLogin(
              <Redirect from="/moderator/home" to="/moderator/login" />
          );
      }
    axios
      .get("/moderator/decorator_signup_request_list")
      .then((res) => {
        setApprovalList(res.data);

      })
      .catch((err) => {
        console.log(err);
      });
  }, []);
  return (
    <div>
      <h1>approval list</h1>
      <Link to="/moderator/home">
        <button className="btn btn-primary">home</button>
      </Link>
        <Decorators approvalList={approvalList} state={setApprovalList}/>
      {redirectToLogin}
    </div>
  );
};

export default DecoratorApprovalList;
