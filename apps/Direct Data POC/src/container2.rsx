<Container
  id="container2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle2"
      value="#### Target Table Information (Redshift)"
      verticalAlign="center"
    />
  </Header>
  <View id="0475c" viewKey="View 1">
    <TextInput
      id="targetSchemaNameInput"
      formDataKey="target_schema_name"
      label="Target schema name"
      labelPosition="top"
      placeholder="e.g., bronze_sales"
      required={true}
    />
    <TextInput
      id="targetTableNameInput"
      formDataKey="target_table_name"
      label="Target table name"
      labelPosition="top"
      placeholder="e.g., sales_data"
      required={true}
    />
    <TextInput
      id="targetPartitioningInput"
      formDataKey="target_partitioning"
      label="Distribution key"
      labelPosition="top"
      placeholder="e.g., DISTKEY(customer_id)"
      required={true}
    />
    <Select
      id="storageFormatInput"
      emptyMessage="No options"
      formDataKey="storage_format"
      itemMode="static"
      label="Storage format"
      labelPosition="top"
      labels={null}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values={null}
    >
      <Option id="eccf1" value="Columnar (Recommended)" />
      <Option id="23534" value="Row-based" />
      <Option id="4a098" value="Option 3" />
    </Select>
    <TextInput
      id="expectedDataVolumeInput"
      formDataKey="expected_data_volume"
      label="Expected data volume"
      labelPosition="top"
      placeholder="e.g., GBs/day, rows per batch"
      required={true}
    />
    <TextInput
      id="schemaEvolutionInput"
      formDataKey="schema_evolution"
      label="Schema evolution"
      labelPosition="top"
      placeholder="e.g., Strict schema enforcement, ALTER TABLE procedures"
      required={true}
    />
  </View>
</Container>
