import React, { useEffect } from "react";
import {Link, useParams} from "react-router-dom";
import axios from "axios";

const Accept = () => {
  const dId = useParams();
  useEffect(() => {
    axios
      .post(`/moderator/approve_decorator_signup_request/${dId.id}`)
      .then((res) => {
        console.log(res.data);
      })
      .catch((err) => console.log(err));
  });
  return <div>
    <Link to="/moderator/decorator_approval_list"><button className="btn btn-primary">go back to moderator approval list</button></Link>
  </div>;
};

export default Accept;
