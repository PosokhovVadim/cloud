from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("Transactions") \
    .enableHiveSupport() \
    .getOrCreate()

df = spark.read.csv("s3a://data-proc01/transactions_v2.csv", header=True, inferSchema=True)
df.write.saveAsTable("transactions_v2")
