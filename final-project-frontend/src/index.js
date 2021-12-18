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
import Home from "./moderator/moderatorHome/home";
import NavBar from "./moderator/navigation/NavBar";
import DecoratorApprovalList from "./moderator/decoratorApprovalList/DecoratorApprovalList";
import Accept from "./moderator/decoratorApprovalList/accept";
import Reject from "./moderator/decoratorApprovalList/Reject";

var token = null;
if(localStorage.getItem('moderator')){
    var obj = JSON.parse(localStorage.getItem('moderator'));
    token = obj.access_token;
}
axios.defaults.baseURL="http://127.0.0.1:8000/api/";
axios.defaults.headers.common["Authorization"] = token;
// console.log(token);
ReactDOM.render(
    <React.StrictMode>
        <Router>

            <Switch>
                <Route exact path='/moderator/signup'> <SignUP/> </Route>
                <Route exact path='/moderator/login'> <Login/> </Route>
                <Route exact path='/moderator/home'><NavBar/> <Home/> </Route>
                <Route exact path='/moderator/decorator_approval_list'><NavBar/><DecoratorApprovalList/> </Route>
                <Route exact path='/moderator/decorator_approval_list/accept/:id'><Accept/> </Route>
                <Route exact path='/moderator/decorator_approval_list/reject/:id'><Reject/> </Route>
            </Switch>
        </Router>
    </React.StrictMode>,
    document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
