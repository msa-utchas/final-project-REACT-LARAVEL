import React, { useState } from "react";

import axios from "axios";

const Login = () => {
  let [token, setToken] = useState("");
  let [name, setName] = useState("");
  let [password, setPassword] = useState("");

  const loginSubmit = () => {
    let obj = {
        "m_email": "utchas@gmail.com",
        "m_password":"123"
    };
    axios
      .post("/login", obj)
      .then((resp) => {
        var token = resp.data;
        console.log(token);
        var user = { userId: token.userid, access_token: token.token };
        localStorage.setItem("moderator", JSON.stringify(user));
        console.log(localStorage.getItem("moderator"));
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div>
      <input type="button" onClick={loginSubmit} value="log in" />
    </div>
  );
};

export default Login;
