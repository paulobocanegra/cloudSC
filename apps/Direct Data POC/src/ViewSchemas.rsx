<Screen
  id="ViewSchemas"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="View Schemas"
  urlSlug=""
>
  <SqlQueryUnified
    id="getSchemas"
    isMultiplayerEdited={false}
    query={include("../lib/getSchemas.sql", "string")}
    queryDisabled={
      '{{ checkCurrentUser2.data.data.metadata.redshiftAccess === "none" }}'
    }
    resourceDisplayName="retool_db"
    resourceName="c4ea3a03-0b82-45b6-b5fe-ea514061330c"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getCustomerData"
    query={include("../lib/getCustomerData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="c4ea3a03-0b82-45b6-b5fe-ea514061330c"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getInventory"
    notificationDuration={4.5}
    query={include("../lib/getInventory.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="c4ea3a03-0b82-45b6-b5fe-ea514061330c"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main3"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle8"
          value="## Redshift Table Schemas"
          verticalAlign="center"
        />
      </Header>
      <View id="393ec" viewKey="View 1">
        <TextInput
          id="textInput1"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Table
          id="tableAndSchemas"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getSchemas.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          enableSaveActions={true}
          primaryKeyColumnId="e10a6"
          rowHeight="small"
          searchTerm="{{ textInput1.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
        >
          <Column
            id="338cb"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="schema"
            label="Schema"
            placeholder="Enter value"
            position="center"
            size={68.90625}
            summaryAggregationMode="none"
          />
          <Column
            id="bfc0a"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="table_name"
            label="Table name"
            placeholder="Enter value"
            position="center"
            size={118.9375}
            summaryAggregationMode="none"
          />
          <Column
            id="d7bdd"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="contains_pii"
            label="Contains pii"
            placeholder="Select option"
            position="center"
            size={82.5625}
            summaryAggregationMode="none"
          />
          <Column
            id="e10a6"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={27.796875}
            summaryAggregationMode="none"
          />
          <Column
            id="6495c"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="data_store"
            label="Data store"
            placeholder="Select option"
            position="center"
            size={78.953125}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Action
            id="f2f88"
            icon="bold/interface-edit-view"
            label="View Details"
          >
            <Event
              event="clickAction"
              method="run"
              params={{
                map: {
                  src: "await modalFrame.show()\nawait fetchTable.trigger()\n",
                },
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
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
              pluginId="tableAndSchemas"
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
              pluginId="tableAndSchemas"
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
