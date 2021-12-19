import React from "react";
import { Link } from "react-router-dom";

const Post = (props) => {
  //
  const data = props.data;
  let rejectLink = `/moderator/wantedpost/delete/${data.wp_id}`;
  return (
    <div className="w-50 mx-auto  p-5 bg-primary bg-opacity-75 m-5 text-light">
      <div>
        <div className="d-flex">
          <div className="w-75 mx-auto">
            <h4>Post ID: {data.wp_id}</h4>
            <h4>Post Buget : {data.wp_budget}</h4>
            <h4>Post Description : {data.wp_description}</h4>
            <h4>Wanted Post Posted BY : {data.wp_posted_by}</h4>
            <h4>Type : {data.wp_type}</h4>
            <Link to={rejectLink}>
              <button className="btn btn-danger px-5 mx-2">Delete</button>
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Post;