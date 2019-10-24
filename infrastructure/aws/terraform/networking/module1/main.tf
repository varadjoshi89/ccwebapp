module "module1" {
   source = "../"

   cidrVpc = "${var.cidrVpc}"
   vpcName = "${var.vpcName}"
   subnetCidrBlock = "${var.subnetCidrBlock}"
   subnetName = "${var.subnetName}"
   internetGatewayName = "${var.internetGatewayName}"
   routeTableName = "${var.routeTableName}"
   region = "${var.region}"
   subnetCount = "${var.subnetCount}"
   subnetZones = "${var.subnetZones}"
   profile = "${var.profile}"
}

module "application" {
  source = "../../application/"
  
   SGDatabase = "${var.SGDatabase}"
   SGApplication = "${var.SGApplication}"

   vpc_id = "${module.module1.vpc_id}"
   rds_subnet1 = "${module.module1.rds_subnet1}"
   rds_subnet2 = "${module.module1.rds_subnet2}"

   subnetZones = "${var.subnetZones}"
   subnetCidrBlock = "${var.subnetCidrBlock}"
   aws_security_group_protocol = "${var.aws_security_group_protocol}" 
   db_name = "${var.db_name}"
   db_engine = "${var.db_engine}"
   db_engine_version = "${var.db_engine_version}"
   db_allocated_storage = "${var.db_allocated_storage}"
   db_storage_type = "${var.db_storage_type}"
   db_instance = "${var.db_instance}"
   db_multi_az = "${var.db_multi_az}"
   db_identifier = "${var.db_identifier}"
   db_username = "${var.db_username}"
   db_password = "${var.db_password}"
   db_publicly_accessible = "${var.db_publicly_accessible}"
   db_skip_final_snapshot = "${var.db_skip_final_snapshot}"
   rds_subnet_group_name = "${var.rds_subnet_group_name}"

   s3_bucket = "${var.s3_bucket}"
   s3_acl = "${var.s3_acl}"
   s3_force_destroy = "${var.s3_force_destroy}"
   s3_lifecycle_id = "${var.s3_lifecycle_id}"
   s3_lifecycle_enabled = "${var.s3_lifecycle_enabled}"
   # s3_lifecycle_prefix = "${var.s3_lifecycle_prefix}"
   s3_lifecycle_transition_days = "${var.s3_lifecycle_transition_days}"
   s3_lifecycle_transition_storage_class = "${var.s3_lifecycle_transition_storage_class}"
   s3_bucket_name = "${var.s3_bucket_name}"

   ami = "${var.ami}"
   instance_type = "${var.instance_type}"
   disable_api_termination = "${var.disable_api_termination}"
   volume_size = "${var.volume_size}"
   volume_type = "${var.volume_type}"
   delete_on_termination = "${var.delete_on_termination}"
   device_name = "${var.device_name}"
   ec2_name = "${var.ec2_name}"

   dynamoDB_name = "${var.dynamoDB_name}"
   dynamoDB_hashKey = "${var.dynamoDB_hashKey}"
   dynamoDB_writeCapacity = "${var.dynamoDB_writeCapacity}"
   dynamoDB_readCapacity = "${var.dynamoDB_readCapacity}"

}
