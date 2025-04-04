<Screen
  id="SchemaForm"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Create Redshift Schema"
  urlSlug=""
>
  <RESTQuery
    id="createRedshiftSchema"
    body="{{ createSchemaForm.data }}"
    bodyType="raw"
    query="post"
    resourceDisplayName="BIN"
    resourceName="7ecfd3a7-7c3a-4e63-ae59-bec620682b30"
    runWhenModelUpdates={false}
    type="POST"
  />
  <RESTQuery
    id="checkCurrentUser"
    query="users/{{ current_user.sid }}"
    resourceDisplayName="Retool API"
    resourceName="d490da06-5f36-4b3d-8752-f534ae176615"
  />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="container6"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
      showHeader={true}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle6"
          value="## Create Redshift Schema"
          verticalAlign="center"
        />
        <Text
          id="text5"
          horizontalAlign="right"
          value={
            '#### {{ checkCurrentUser.data.data.metadata.redshiftAccess !== "write" ? "Ask admin for permission" : "" }}'
          }
          verticalAlign="center"
        />
      </Header>
      <View id="0475c" viewKey="View 1">
        <Form
          id="createSchemaForm"
          disabled=""
          disableSubmit=""
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          initialData=""
          padding="12px"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
        >
          <Header>
            <Text
              id="formTitle3"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <TextInput
              id="schemaName"
              label="Schema Name"
              labelPosition="top"
              placeholder="layer_domain_description (e.g., bronze_marketing_campaigns)"
            />
            <Text
              id="text3"
              disableMarkdown={true}
              style={{ map: { color: "rgba(160, 158, 158, 1)" } }}
              value="Schema name must follow the pattern: <layer>_<domain>_<description>
Layer: bronze, silver, gold
Domain: pricing, claims, marketing, networks"
              verticalAlign="center"
            />
            <Include src="./container7.rsx" />
          </Body>
          <Footer>
            <Button
              id="formButton3"
              submit={true}
              submitTargetId="createSchemaForm"
              text="Create Redshift Schema"
            />
          </Footer>
        </Form>
      </View>
    </Container>
  </Frame>
</Screen>
