from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("Logs") \
    .enableHiveSupport() \
    .getOrCreate()

df = spark.read.option("delimiter", "\t").csv("s3a://data-proc01/logs_v2.txt", header=True, inferSchema=True)
df.write.saveAsTable("logs_v2")
