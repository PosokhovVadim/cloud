#!/bin/bash
clickhouse-client --query="INSERT INTO orders FORMAT CSV" < orders.csv

clickhouse-client --query="INSERT INTO order_items FORMAT TabSeparated" < order_items.txt
