gcloud dataproc jobs submit pyspark --cluster=cluster-iz-dplr --region=us-east1   \
--properties "spark.driver.memory=2g","spark.excutor.memory=2g","spark.excutor.cores=2","spark.submit.deployMode=client",\
"spark.sql.shuffle.partitions=10","spark.shuffle.spill.compress=true" /home/geethanjali_jagadeesan/project/Usecase4_GcpGcsReadWritehive_cloud.
if [ $? -ne 0 ]
then
echo "Etl process didnt completed some problem occurs"
else 
echo "ETL completed suceessfully spark code run in ssh masternode "


bash /homr/geethanjali_jagadeesan/gcp_pyspark_yarn_client_schedule.sh

