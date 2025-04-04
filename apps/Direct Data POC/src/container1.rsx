<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Source Information"
      verticalAlign="center"
    />
  </Header>
  <View id="0475c" viewKey="View 1">
    <TextInput
      id="sourceSystemNameInput"
      formDataKey="source_system_name"
      label="Source system name"
      labelPosition="top"
      placeholder="e.g., S3, RDS, DynamoDB"
      required={true}
    />
    <TextInput
      id="sourceTableBucketNameInput"
      formDataKey="source_table_bucket_name"
      label="Source table bucket name"
      labelPosition="top"
      placeholder="e.g., sales_raw, s3://company-data/orders/"
      required={true}
    />
    <TextInput
      id="sourceSchemaNameInput"
      formDataKey="source_schema_name"
      label="Source schema name"
      labelPosition="top"
      placeholder="For RDS sources"
      required={true}
    />
    <TextInput
      id="sourceDatabaseNameInput"
      formDataKey="source_database_name"
      label="Source database name"
      labelPosition="top"
      placeholder="For RDS sources"
      required={true}
    />
    <TextInput
      id="sourceTablePartitioningInput"
      formDataKey="source_table_partitioning"
      label="Source table partitioning details"
      labelPosition="top"
      placeholder="e.g., date, customer_id"
      required={true}
    />
    <Select
      id="sourceDataFormatInput"
      emptyMessage="No options"
      formDataKey="source_data_format"
      itemMode="static"
      label="Source data format"
      labelPosition="top"
      labels={null}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values={null}
    >
      <Option id="b29c7" value="CSV" />
      <Option id="9e6fc" value="JSON" />
      <Option id="9f233" value="Parquet" />
    </Select>
    <Select
      id="updateFrequency"
      emptyMessage="No options"
      formDataKey="source_data_format"
      itemMode="static"
      label="Expected Update Frequency"
      labelPosition="top"
      labels={null}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values={null}
    >
      <Option id="b29c7" value="Hourly" />
      <Option id="9e6fc" value="Daily" />
      <Option id="9f233" value="Weekly" />
    </Select>
    <TextInput
      id="incrementalVsFullLoadInput"
      formDataKey="incremental_vs_full_load"
      label="Incremental vs full load"
      labelPosition="top"
      placeholder="Specify how data changes—CDC, append-only, upsert"
      required={true}
    />
    <TextInput
      id="primaryKeysInput"
      formDataKey="primary_keys"
      label="Primary keys / Business keys"
      labelPosition="top"
      placeholder="Identify unique records"
      required={true}
    />
    <Select
      id="dataSensitivityInput"
      emptyMessage="No options"
      formDataKey="data_sensitivity"
      itemMode="static"
      label="Data sensitivity classification"
      labelPosition="top"
      labels={null}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values={null}
    >
      <Option id="2d979" value="Marketing" />
      <Option id="156ff" value="Analytics" />
      <Option id="bc24a" value="Accounts" />
    </Select>
  </View>
</Container>
