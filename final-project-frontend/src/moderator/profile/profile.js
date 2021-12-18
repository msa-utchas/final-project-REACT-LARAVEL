import React from 'react';

const Profile = (props) => {
    let data=props.data;
    console.log(data.m_name);
    return (
        <div className="d-flex flex-column justify-content-center text-center">
            <h3 className="p-2">Name : {data.m_name}</h3>
            <h3 className="p-2">UserNmae : {data.m_uname}</h3>
            <h3 className="p-2">Phone Number : {data.m_phone}</h3>
            <h3 className="p-2">Email : {data.m_email}</h3>
            <h3 className="p-2">Address : {data.m_address}</h3>
            <h3 className="p-2">Gender : {data.m_gender}</h3>
            <h3 className="p-2">Date of Birth : {data.m_dob}</h3>
        </div>
    );
};

export default Profile;