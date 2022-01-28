module "dynamodb_table_RegisteredApps" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.2.2"

  name      = "RegisteredApps"
  hash_key  = "app_id"

  attributes = [
    {
      name = "app_id"
      type = "S"
    }
  ]

  tags = {
    Terraform   = "true"
  }
}


module "dynamodb_table_AppRelease" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.2.2"

  name      = "AppRelease"
  hash_key  = "app_id"
  range_key = "release_id"
  attributes = [
    {
      name = "app_id"
      type = "S"
    },
    {
      name = "release_id"
      type = "S"
    }  ]

  tags = {
    Terraform   = "true"
  }
}



module "dynamodb_table_AppReleaseOverrides" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.2.2"

  name      = "AppReleaseOverrides"
  hash_key  = "release_id"
  range_key = "created_on"
  attributes = [
    {
      name = "created_on"
      type = "S"
    },
    {
      name = "release_id"
      type = "S"
    }  ]

  tags = {
    Terraform   = "true"
  }
}


module "dynamodb_table_QualityEngineeringStandards" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.2.2"

  name      = "QualityEngineeringStandards"
  hash_key  = "test_type"
  range_key = "standard_type"
  attributes = [
    {
      name = "test_type"
      type = "S"
    },
    {
      name = "standard_type"
      type = "S"
    }  ]

  tags = {
    Terraform   = "true"
  }
}


module "dynamodb_table_RuleTestDb" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.2.2"

  name      = "RuleTestDb"
  hash_key  = "Cond_Parameter"
  attributes = [
    {
      name = "Cond_Parameter"
      type = "S"
    } ]

  tags = {
    Terraform   = "true"
  }
}


module "dynamodb_table_TestJobRules" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.2.2"

  name      = "TestJobRules"
  hash_key  = "rule_parameter"
  attributes = [
    {
      name = "rule_parameter"
      type = "S"
    } ]

  tags = {
    Terraform   = "true"
  }
}