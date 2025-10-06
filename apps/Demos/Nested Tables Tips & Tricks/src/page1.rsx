<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="d7ddf084-d22b-4e9a-b349-2924cb85c370"
>
  <SqlQueryUnified
    id="getUsers"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("../lib/getUsers.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="c4ea3a03-0b82-45b6-b5fe-ea514061330c"
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getUserOrders"
    _additionalScope={["userId"]}
    isMultiplayerEdited={false}
    query={include("../lib/getUserOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="c4ea3a03-0b82-45b6-b5fe-ea514061330c"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="run"
      params={{
        map: {
          src: "ordersByUser.setIn([customersTable.selectedDataIndex], getUserOrders.data)",
        },
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State
    id="ordersByUser"
    value="{{ new Array(getUsers.data.length).fill({}) }}"
  />
  <JavascriptQuery
    id="query1"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
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
      id="container1"
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
          id="containerTitle1"
          value="## Customers"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Table
          id="customersTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getUsers.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableExpandableRows={true}
          enableSaveActions={true}
          primaryKeyColumnId="9bc7f"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Include src="./customersTableExpandedRow.rsx" />
          <Column
            id="9bc7f"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={160.453125}
            summaryAggregationMode="none"
          />
          <Column
            id="15271"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="first_name"
            label="First name"
            placeholder="Enter value"
            position="center"
            size={82.671875}
            summaryAggregationMode="none"
          />
          <Column
            id="fbda9"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="last_name"
            label="Last name"
            placeholder="Enter value"
            position="center"
            size={86.8125}
            summaryAggregationMode="none"
          />
          <Column
            id="064ff"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="email"
            label="Email"
            placeholder="Enter value"
            position="center"
            size={169.453125}
            summaryAggregationMode="none"
          />
          <Column
            id="e2ddd"
            alignment="left"
            format="boolean"
            groupAggregationMode="none"
            key="active"
            label="Active"
            placeholder="Enter value"
            position="center"
            size={162.421875}
            summaryAggregationMode="none"
          />
          <Column
            id="ae8be"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="feature_flags"
            label="Feature flags"
            placeholder="Enter value"
            position="center"
            size={89.765625}
            summaryAggregationMode="none"
          />
          <Column
            id="868c1"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="trial_expiry_date"
            label="Trial expiry date"
            placeholder="Enter value"
            position="center"
            size={106.953125}
            summaryAggregationMode="none"
          />
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
              pluginId="customersTable"
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
              pluginId="customersTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            enabled="{{ Object.keys(ordersByUser.value[customersTable.selectedDataIndex]).length === 0 }}"
            event="expandRow"
            method="run"
            params={{
              map: {
                src: "getUserOrders.trigger({\n  additionalScope: {\n    userId: currentSourceRow.id\n  }\n})\n",
              },
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
  </Frame>
</Screen>
