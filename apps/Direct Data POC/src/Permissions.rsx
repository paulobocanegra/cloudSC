<Screen
  id="Permissions"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Permissions"
  urlSlug=""
>
  <RESTQuery
    id="removeUserFromGroup"
    bodyType="json"
    isMultiplayerEdited={false}
    query="groups/3849936/members/user_fe41f376708643f1a0e62ce424e5bd97"
    resourceDisplayName="Retool API"
    resourceName="d490da06-5f36-4b3d-8752-f534ae176615"
    runWhenModelUpdates={false}
    type="DELETE"
  />
  <RESTQuery
    id="getGroups"
    query="groups"
    resourceDisplayName="Retool API"
    resourceName="d490da06-5f36-4b3d-8752-f534ae176615"
  />
  <JavascriptQuery
    id="query6"
    notificationDuration={4.5}
    query={include("../lib/query6.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="getUsers"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query="users"
    resourceDisplayName="Retool API"
    resourceName="d490da06-5f36-4b3d-8752-f534ae176615"
    transformer="return data.data.filter(obj => obj.active === true)"
  >
    <Event
      event="success"
      method="clearChangeset"
      params={{}}
      pluginId="table1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="setRedshiftAccess"
    _additionalScope={["accessValue"]}
    body={
      '[{"key":"name","value":"redshiftAccess"},{"key":"value","value":"{{ accessValue }}"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="users/{{ table1.selectedRow.id }}/user_attributes"
    resourceDisplayName="Retool API"
    resourceName="d490da06-5f36-4b3d-8752-f534ae176615"
    runWhenModelUpdates={false}
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getUsers"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <Frame
    id="$main4"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container9"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle9"
          value="## Redshift Access Control"
          verticalAlign="center"
        />
      </Header>
      <View id="519a1" viewKey="View 1">
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getUsers.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          primaryKeyColumnId="001cf"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
        >
          <Column
            id="001cf"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="443c0"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="first_name"
            label="Name"
            placeholder="Select option"
            position="center"
            size={176.578125}
            summaryAggregationMode="none"
            valueOverride={
              '{{ currentSourceRow.first_name + " " + currentSourceRow.last_name }}'
            }
          />
          <Column
            id="f20e6"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="email"
            label="Email"
            position="center"
            size={179.234375}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ map: { url: "mailto:{{ item }}" } }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="52433"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="last_active"
            label="Last active"
            placeholder="Enter value"
            position="center"
            size={153.046875}
            summaryAggregationMode="none"
          />
          <Column
            id="5cbda"
            alignment="left"
            editable="true"
            format="boolean"
            groupAggregationMode="none"
            label="Read"
            placeholder="Enter value"
            position="center"
            referenceId="read"
            size={100}
            summaryAggregationMode="none"
            valueOverride={
              '{{ currentSourceRow.metadata.redshiftAccess === "read" || currentSourceRow.metadata.redshiftAccess === "write" }}'
            }
          >
            <Event
              event="changeCell"
              method="run"
              params={{
                map: {
                  src: 'setRedshiftAccess.trigger({\n  additionalScope:{\n    accessValue: !table1.changesetArray[0].read ? "none" : "read"\n  }\n})',
                },
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="49845"
            alignment="left"
            editable="true"
            format="boolean"
            groupAggregationMode="none"
            label="Write"
            placeholder="Enter value"
            position="center"
            referenceId="write"
            size={100}
            summaryAggregationMode="none"
            valueOverride={
              '{{ currentSourceRow.metadata.redshiftAccess === "write" }}'
            }
          >
            <Event
              event="changeCell"
              method="run"
              params={{
                map: {
                  src: 'setRedshiftAccess.trigger({\n  additionalScope:{\n    accessValue: !table1.changesetArray[0].write ? "read" : "write"\n  }\n})',
                },
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </Frame>
</Screen>
