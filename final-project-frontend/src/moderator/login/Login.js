import React, {useEffect, useState} from "react";

import axios from "axios";
import {Redirect} from "react-router-dom";

const Login = () => {
  let [token, setToken] = useState("");
  let [email, setEmail] = useState("");
  let [password, setPassword] = useState("");
  let [redirectToHome, setRedirectToHome] = useState("");

    useEffect(() => {
        if (JSON.parse(localStorage.getItem("moderator"))) {
            var token1 = null;
            var obj = JSON.parse(localStorage.getItem('moderator'));
            token1 = obj.access_token;

            axios.defaults.baseURL="http://127.0.0.1:8000/api/";
            axios.defaults.headers.common["Authorization"] = token1;
            console.log(`token1 ${token1}`)
            setRedirectToHome(
                <Redirect to="/moderator/home" from="/moderator/login" />
            );
        }

    }, []);
  const loginSubmit = () => {
    let obj = {
      m_email: "utchas@gmail.com",
      m_password: "123456",
    };

    axios
      .post("/moderator/login", obj)
      .then((resp) => {
        var token = resp.data;
        //console.log(token);
        var user = { userId: token.userid, access_token: token.token };
        localStorage.setItem("moderator", JSON.stringify(user));
        // console.log(localStorage.getItem("moderator"));
        setRedirectToHome(<Redirect from="/moderator/login" to="/moderator/home"/>)
          var token1 = null;
              var obj = JSON.parse(localStorage.getItem('moderator'));
              token1 = obj.access_token;

          axios.defaults.baseURL="http://127.0.0.1:8000/api/";
          axios.defaults.headers.common["Authorization"] = token1;
          console.log(token1);
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div>


      <form>
          <label htmlFor="ma_email">Email: </label>
        <input
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          type="text"
          placeholder="Email"
        />
        <label htmlFor="ma_password">Password: </label>
        <input
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          type="password"
        />
        <input type="button" onClick={loginSubmit} value="log in" />
      </form>
        {redirectToHome}
    </div>
  );
};

export default Login;
