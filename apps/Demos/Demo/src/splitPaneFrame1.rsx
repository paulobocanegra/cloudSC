<SplitPaneFrame
  id="splitPaneFrame1"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooterBorder={false}
  showHeaderBorder={false}
  width="30%"
>
  <Container
    id="container3"
    enableFullBleed={true}
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    heightType="fixed"
    overflowType="hidden"
    padding="12px"
    showBody={true}
    showHeader={true}
    style={{ ordered: [{ headerBackground: "canvas" }] }}
  >
    <Header>
      <Text id="containerTitle3" value="#### Tickets" verticalAlign="center" />
    </Header>
    <View id="ac4d6" viewKey="View 1">
      <Table
        id="table1"
        actionsOverflowPosition={1}
        cellSelection="none"
        clearChangesetOnSave={true}
        data="{{ getTickets.data }}"
        defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
        emptyMessage="No rows found"
        enableSaveActions={true}
        primaryKeyColumnId="b2c30"
        rowHeight="small"
        showBorder={true}
        showFooter={true}
        showHeader={true}
        style={{ background: "canvas" }}
        toolbarPosition="bottom"
      >
        <Column
          id="b2c30"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          hidden="true"
          key="id"
          label="ID"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="6092f"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          hidden="true"
          key="user_id"
          label="User ID"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="d583d"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="status"
          label="Status"
          optionList={{
            manualData: [],
            mode: "mapped",
            mappedData: "{{ getTickets.data }}",
            valueByIndex: "{{ item.status }}",
            labelByIndex: '{{ item.status ? "Open" : "Closed" }}',
          }}
          placeholder="Select option"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="0d57e"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="title"
          label="Title"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="88655"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="description"
          label="Description"
          placeholder="Enter value"
          position="center"
          size={256}
          summaryAggregationMode="none"
        />
        <Column
          id="3e8df"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="impact"
          label="Impact"
          placeholder="Select option"
          position="center"
          size={137}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="98193"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="outcome"
          label="Outcome"
          placeholder="Select option"
          position="center"
          size={180}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="20b6c"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="product_area"
          label="Product area"
          placeholder="Select option"
          position="center"
          size={100}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Action id="8716f" icon="bold/interface-edit-view" label="Details">
          <Event
            event="clickAction"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame1"
            type="widget"
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
        <Event
          event="doubleClickRow"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="selectRow"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getMessages"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Table>
    </View>
  </Container>
</SplitPaneFrame>
