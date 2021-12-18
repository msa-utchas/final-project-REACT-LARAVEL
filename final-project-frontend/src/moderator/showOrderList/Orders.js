import React from "react";

import Order from "./Order";

const Orders = (props) => {
  return (
    <div>
      {props.orderList.map((p) => (
        <Order key={p.o_id} data={p}></Order>
      ))}
    </div>
  );
};

export default Orders;