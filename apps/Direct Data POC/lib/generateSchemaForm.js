return {
  "sourceSystemName": "S3",
  "sourceTableBucketName": "s3://company-data/sales/",
  "sourceSchemaName": "public",
  "sourceDatabaseName": "analytics",
  "sourceTablePartitioning": "date",
  "sourceDataFormat": "CSV",
  "updateFrequency": "Daily",
  "incrementalVsFullLoad": "Incremental",
  "primaryKeys": "id",
  "dataSensitivity": "Analytics",
  "targetTableName": "sales_data",
  "targetSchemaName": "bronze_sales",
  "targetPartitioning": "event_date",
  "storageFormat": "Columnar",
  "expectedDataVolume": "5GB/day",
  "schemaEvolution": "Strict",
  "accessUsers": "Data Team, Analytics Team",
  "accessLevel": "Read",
  "maskingRequired": "Yes, PII fields",
  "dataOwner": "john.doe@example.com"
}

