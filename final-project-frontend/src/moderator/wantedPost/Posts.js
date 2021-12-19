import React from 'react';
import Order from "../showOrderList/Order";
import Post from "./Post";

const Posts = (props) => {
    return (
        <div>
            {props.postList.map((p) => (
                <Post key={p.wp_id} data={p}></Post>
            ))}
        </div>
    );
};

export default Posts;