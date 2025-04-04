<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="text1" value="#### Input Method" verticalAlign="center" />
    <Tabs
      id="tabs1"
      alignment="right"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="4b07f" value="Tab 1" />
      <Option id="a1034" value="Tab 2" />
      <Option id="d3858" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="5cca6" viewKey="Form">
    <Form
      id="createTableForm"
      disabled=""
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Include src="./container1.rsx" />
        <Include src="./container2.rsx" />
        <Container
          id="container3"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
          showHeader={true}
        >
          <Header>
            <Text
              id="containerTitle3"
              value="#### Data Access"
              verticalAlign="center"
            />
          </Header>
          <View id="0475c" viewKey="View 1">
            <TextInput
              id="accessUsersInput"
              formDataKey="access_users"
              label="Who needs access?"
              labelPosition="top"
              placeholder="List teams or users"
              required={true}
            />
            <Select
              id="accessLevelInput"
              emptyMessage="No options"
              formDataKey="access_level"
              itemMode="static"
              label="Access level"
              labelPosition="top"
              labels={null}
              overlayMaxHeight={375}
              placeholder="Select an option"
              required={true}
              showSelectionIndicator={true}
              values={null}
            >
              <Option id="65fd1" value="Read" />
              <Option id="aa28a" value="Write" />
              <Option id="38201" value="Admin" />
            </Select>
            <TextInput
              id="maskingRequiredInput"
              formDataKey="masking_required"
              label="Masking / Tokenization Required?"
              labelPosition="top"
              placeholder="Yes/No, specify which fields"
              required={true}
            />
          </View>
        </Container>
        <Container
          id="container4"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
          showHeader={true}
        >
          <Header>
            <Text
              id="containerTitle4"
              value="#### Operational & Monitoring Requirements"
              verticalAlign="center"
            />
          </Header>
          <View id="0475c" viewKey="View 1">
            <TextInput
              id="dataOwnerInput"
              formDataKey="data_owner"
              label="Ownership / Data Steward Contact"
              labelPosition="top"
              placeholder="Who is responsible for this dataset?"
              required={true}
            />
          </View>
        </Container>
      </Body>
      <Footer>
        <Button
          id="formButton2"
          horizontalAlign="left"
          submit={true}
          submitTargetId="createTableForm"
          text="Create Redshift Table"
        />
      </Footer>
    </Form>
  </View>
  <View id="0047a" viewKey="JSON">
    <JSONEditor
      id="jsonEditor1"
      value={
        '{\n  "sourceSystemName": "S3",\n  "sourceTableBucketName": "s3://company-data/sales/",\n  "sourceSchemaName": "public",\n  "sourceDatabaseName": "analytics",\n  "sourceTablePartitioning": "date",\n  "sourceDataFormat": "CSV",\n  "updateFrequency": "Daily",\n  "incrementalVsFullLoad": "Incremental",\n  "primaryKeys": "id",\n  "dataSensitivity": "Analytics",\n  "targetTableName": "sales_data",\n  "targetSchemaName": "bronze_sales",\n  "targetPartitioning": "event_date",\n  "storageFormat": "Columnar",\n  "expectedDataVolume": "5GB/day",\n  "schemaEvolution": "Strict",\n  "accessUsers": "Data Team, Analytics Team",\n  "accessLevel": "Read",\n  "maskingRequired": "Yes, PII fields",\n  "dataOwner": "john.doe@example.com"\n}'
      }
    />
    <Button id="button1" disabled="" text="Create Redshift Table">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="createTableJSONAPI"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="1a212" viewKey="YAML">
    <EditableTextArea
      id="editableTextArea1"
      disabled=""
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      placeholder="Enter value"
      value="# Redshift Table Configuration
# Required fields for data governance are marked with [Required]

# Source Information
sourceSystemName: S3  # [Required]
sourceTableBucketName: s3://company-data/sales/  # [Required]
sourceSchemaName: public
sourceDatabaseName: analytics
sourceTablePartitioning: date
sourceDataFormat: CSV  # [Required]
updateFrequency: Daily
incrementalVsFullLoad: Incremental
primaryKeys: id
dataSensitivity: Analytics  # [Required]

# Target Table Information
targetTableName: sales_data  # [Required]
targetSchemaName: bronze_sales  # [Required]
targetPartitioning: event_date
storageFormat: Columnar
expectedDataVolume: 5GB/day
schemaEvolution: Strict

# Data Access
accessUsers: Data Team, Analytics Team
accessLevel: Read
maskingRequired: Yes, PII fields

# Operational & Monitoring
dataOwner: john.doe@example.com  # [Required]

# Governance Information
retentionPeriod: 7 years  # [Required for PII data]
dataClassification: Internal  # [Required]
pieFormLink: https://example.com/pie-form/123  # [Required for PII data]"
    />
    <Button id="button2" disabled="" text="Create Redshift Table">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="createTableJSONAPI"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
