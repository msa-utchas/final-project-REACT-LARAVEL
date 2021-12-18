import React, { useEffect } from "react";
import { Link, useParams } from "react-router-dom";
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
  return (
    <div className="d-flex flex-column justify-content-center">
        <h1 className="text-center m-5">Signup Request Is Accepted</h1>
        <div className="mx-auto">
            <Link to="/moderator/decorator_approval_list">

                <button className="btn-lg btn-primary">
                    Go back to moderator approval list
                </button>

            </Link>
        </div>
    </div>
  );
};

export default Accept;
