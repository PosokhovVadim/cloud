CREATE TABLE orders (
  order_id UInt32,
  user_id UInt32,
  order_date Date,
  total_amount Float64,
  payment_status String
) ENGINE = MergeTree() ORDER BY order_id;


CREATE TABLE order_item (
  item_id UInt32,
  order_id UInt32,
  product_name String,
  product_price Float64,
  quantity UInt32
) ENGINE = MergeTree() ORDER BY order_id;
