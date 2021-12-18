import React, { useEffect, useState } from "react";

import axios from "axios";
import { Redirect } from "react-router-dom";

const Login = () => {
  let [token, setToken] = useState("");
  let [email, setEmail] = useState("");
  let [password, setPassword] = useState("");
  let [redirectToHome, setRedirectToHome] = useState("");
    const [redirectToLogin, setRedirectToLogin] = useState("");

  useEffect(() => {
      if (JSON.parse(localStorage.getItem("moderator"))) {

          var token1 = null;
          var obj = JSON.parse(localStorage.getItem('moderator'));
          token1 = obj.access_token;
          if(obj.access_token)
          {
              axios.defaults.baseURL="http://127.0.0.1:8000/api/";
              axios.defaults.headers.common["Authorization"] = token1;
              console.log(`token1 ${token1}`)
              setRedirectToHome(
                  <Redirect to="/moderator/home" from="/moderator/login" />
              );
          }

      }

  }, []);
  const loginSubmit = () => {
    let obj = {
      m_email: email,
      m_password: password,
    };

    axios
      .post("/moderator/login", obj)
      .then((resp) => {
        var token = resp.data;
        //console.log(token);
        // console.log(token.status);
        if (token.token) {
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
        } else {
            alert("email or password is invalid")
           // setRedirectToLogin(<Redirect from="/moderator/signup" to="/moderator/login" />);
        }
        // var user = { userId: token.userid, access_token: token.token };
        // localStorage.setItem("moderator", JSON.stringify(user));
        // // console.log(localStorage.getItem("moderator"));
        // setRedirectToHome(<Redirect from="/moderator/login" to="/moderator/home"/>)
        //   var token1 = null;
        //       var obj = JSON.parse(localStorage.getItem('moderator'));
        //       token1 = obj.access_token;
        //
        //   axios.defaults.baseURL="http://127.0.0.1:8000/api/";
        //   axios.defaults.headers.common["Authorization"] = token1;
        //   console.log(token1);
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div>
      <form className="d-flex flex-column w-50 mx-auto m-5 p-5">
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
          placeholder="Password"
        />
        <input
          className="btn btn-primary my-3"
          type="button"
          onClick={loginSubmit}
          value="log in"
        />
      </form>
      {redirectToHome}
        {redirectToLogin}
    </div>
  );
};

export default Login;
