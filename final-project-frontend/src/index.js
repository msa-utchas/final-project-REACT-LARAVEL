import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

import reportWebVitals from './reportWebVitals';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min';
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom'
import SignUP from "./moderator/signUp/SignUP";
import Login from "./moderator/login/Login";
import axios from "axios";

var token = null;
if(localStorage.getItem('user')){
    var obj = JSON.parse(localStorage.getItem('user'));
    token = obj.access_token;
}
axios.defaults.baseURL="http://127.0.0.1:8000/api/";
axios.defaults.headers.common["Authorization"] = token;
ReactDOM.render(
    <React.StrictMode>
        <Router>
            <Switch>
                <Route exact path='/signup'> <SignUP/> </Route>
                <Route exact path='/login'> <Login/> </Route>
            </Switch>
        </Router>
    </React.StrictMode>,
    document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
