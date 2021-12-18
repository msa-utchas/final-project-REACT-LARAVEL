import React, { useState } from "react";
import axios from "axios";
import ErrorMessage from "./ErrorMessage";
import { Redirect } from "react-router-dom";

const SignUp = () => {
  const [name, setName] = useState("");
  const [userName, srtUserName] = useState("");
  const [password, setPassword] = useState("");
  const [phone, setPhone] = useState("");
  const [email, setEmail] = useState("");
  const [dob, setDoB] = useState("");
  const [gender, setGender] = useState("");
  const [address, setAddress] = useState("");
  const [reason, setReason] = useState("");
  const [validationErrorMessage, setValidationErrorMessage] = useState([]);
  const [redirectToLogin, setRedirectToLogin] = useState("");

  const signUpAction = () => {
    const data = {
      ma_name: name,
      ma_uname: userName,
      ma_password: password,
      ma_phone: phone,
      ma_email: email,
      ma_dob: dob,
      ma_gender: gender,
      ma_address: address,
      ma_reason: reason,
    };
    console.log(data);
    axios.post("/moderator/signup", data).then((res) => {
      if (res.data.validation_errors) {
        const errors = res.data.validation_errors;
        let errorMessage = [];
        for (const error in res.data.validation_errors) {
          errorMessage.push(errors[error]);
        }
        console.log(errorMessage);
        setValidationErrorMessage(errorMessage);
      } else {
        setRedirectToLogin(<Redirect from="/moderator/signup" to="/moderator/login" />);
      }
    });
  };

  return (
    <div>
      <div className="w-50 bg-danger text-black bg-opacity-50 mx-auto m-5">
        <ErrorMessage messeges={validationErrorMessage} />
      </div>
      <form>
        <div className="w-50 d-flex flex-column mx-auto my-2">
          <label htmlFor="ma_name">Full Name: </label>
          <input
            value={name}
            onChange={(e) => setName(e.target.value)}
            type="text"
            placeholder="Name"
          />

          <label htmlFor="ma_uname"> User name: </label>
          <input
            value={userName}
            onChange={(e) => srtUserName(e.target.value)}
            type="text"
            placeholder="User name"
          />

          <label htmlFor="ma_password">Password: </label>
          <input
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            type="password"
          />

          <label htmlFor="ma_phone">Phone Number: </label>
          <input
            value={phone}
            onChange={(e) => setPhone(e.target.value)}
            type="text"
            placeholder="Phone Number"
          />

          <label htmlFor="ma_email">Email: </label>
          <input
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            type="text"
            placeholder="Email"
          />

          <label htmlFor="ma_dob">Birth Date:</label>
          <input
            value={dob}
            onChange={(e) => setDoB(e.target.value)}
            type="date"
          />

          <label htmlFor="ma_gender">Select Gender: </label>
          <select
            onChange={(e) => setGender(e.target.value)}
            defaultValue={''}
            className="form-select"
          >
            <option value=''>Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="others">Others</option>
          </select>

          <label htmlFor="ma_address">Address: </label>
          <input
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            type="text"
            placeholder="Full Address"
          />

          <label htmlFor="ma_reason">Reason: </label>
          <input
            value={reason}
            onChange={(e) => setReason(e.target.value)}
            type="text"
            placeholder="Describe Reason"
          />
          <input
            type="button"
            className="btn btn-success my-2"
            value="Sign Up"
            onClick={signUpAction}
          />
        </div>
      </form>
      {redirectToLogin}
    </div>
  );
};

export default SignUp;
