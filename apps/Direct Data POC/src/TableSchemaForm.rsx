<Screen
  id="TableSchemaForm"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Create Redshift Table"
  urlSlug=""
>
  <JavascriptQuery
    id="snakeToCamel"
    notificationDuration={4.5}
    query={include("../lib/snakeToCamel.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="createTableFormAPI"
    body="{{ snakeToCamel.data }}"
    bodyType="raw"
    query="post"
    resourceDisplayName="BIN"
    resourceName="7ecfd3a7-7c3a-4e63-ae59-bec620682b30"
    runWhenModelUpdates={false}
    type="POST"
  />
  <RESTQuery
    id="createTableJSONAPI"
    body="{{ jsonEditor1.value }}"
    bodyType="raw"
    query="post"
    resourceDisplayName="BIN"
    resourceName="7ecfd3a7-7c3a-4e63-ae59-bec620682b30"
    runWhenModelUpdates={false}
    type="POST"
  />
  <Frame
    id="$main2"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container5"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="## Create Redshift Schema & Table"
          verticalAlign="center"
        />
      </Header>
      <View id="0475c" viewKey="View 1">
        <Include src="./tabbedContainer1.rsx" />
      </View>
    </Container>
  </Frame>
</Screen>
