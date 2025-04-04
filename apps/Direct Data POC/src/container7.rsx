<Container
  id="container7"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle7"
      value="#### Data Source Information"
      verticalAlign="center"
    />
  </Header>
  <View id="0475c" viewKey="View 1">
    <TextInput
      id="dataSourceDescription"
      label="Description of Data Source"
      labelPosition="top"
      placeholder="Describe the purpose and content of this data source"
    />
    <TextInput
      id="dataOwner"
      label="Data Owner
"
      labelPosition="top"
      placeholder="Name of the person responsible for this data"
    />
    <TextInput
      id="teamSlackChannel"
      label="Team Slack Channel"
      labelPosition="top"
      placeholder="#channel-name"
    />
    <TextInput
      id="teamEmail"
      label="Team Email
"
      labelPosition="top"
      placeholder="team@example.com"
    />
    <Select
      id="sensitiveData"
      emptyMessage="No options"
      itemMode="static"
      label="Will you store sensitive data?"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="c4d41" value="Yes" />
      <Option id="a9097" value="No" />
    </Select>
    <Checkbox
      id="phiColumns"
      label="PII/PHI Columns"
      labelAlign="right"
      labelWidth="100"
    />
    <Select
      id="dataType"
      emptyMessage="No options"
      itemMode="static"
      label="Data Type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option
        id="219eb"
        label="Marketing Tag/Pixels - 2 years retention"
        value="Marketing"
      />
      <Option
        id="27504"
        label="Soft Reg - 7 years retention"
        value="Soft Reg"
      />
      <Option
        id="74087"
        label="Accounts - 7 years retention"
        value="Accounts"
      />
      <Option
        id="d9608"
        disabled={false}
        hidden={false}
        label="Claims - 7 years retention"
        value="Claims"
      />
    </Select>
    <EditableTextArea
      id="yamlConfig"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
      label="YAML Configuration"
      labelPosition="top"
      placeholder="# Sample YAML configuration with PII data and AWS source
schema_name: bronze_marketing_campaigns
source:
type: rds-postgresql  # Options: manual, rds-postgresql, rds-mysql, rds-sqlserver, rds-mariadb, rds-oracle, aurora-postgresql, aurora-mysql, s3, dynamodb, glue
config:
  host: mydb.123456789012.us-east-1.rds.amazonaws.com
  port: 5432
  database: mydb
  schema: public
  table: customers
  iam_role: arn:aws:iam::123456789012:role/RedshiftCopyUnload
# For S3:
# type: s3
# config:
#   s3_path: s3://mybucket/path/to/data/
#   format: parquet  # Options: parquet, orc, json, csv, avro
#   iam_role: arn:aws:iam::123456789012:role/RedshiftSpectrumRole
columns:
- name: customer_id
type: INT
pii: false
- name: first_name
type: VARCHAR(50)
pii: true
- name: last_name
type: VARCHAR(50)
pii: true
- name: email
type: VARCHAR(100)
pii: true
- name: phone_number
type: VARCHAR(20)
pii: true
- name: address
type: VARCHAR(200)
pii: true
- name: date_of_birth
type: DATE
pii: true
- name: account_balance
type: DECIMAL(10,2)
pii: false
- name: last_login
type: TIMESTAMP
pii: false
retention_schedule: 7  # 7 years retention for PII data
"
    />
  </View>
</Container>
