<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="dc236f3b-d9c6-4e28-b221-c927eaad4b6c"
>
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="CloudDBTest "
    resourceName="bd7a9ba5-5b7f-456f-bfaf-d8f237240c0b"
    warningCodes={[]}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="text1"
      value="env: {{ retoolContext.environment }}"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="74da1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={29.28125}
        summaryAggregationMode="none"
      />
      <Column
        id="17ec5"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={128.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="65133"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={176.328125}
        summaryAggregationMode="none"
      >
        <Event
          id="47cc548f"
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
        id="3088b"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="product_id"
        label="Product ID"
        placeholder="Enter value"
        position="center"
        size={75.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="146bc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quantity"
        label="Quantity"
        placeholder="Enter value"
        position="center"
        size={64.15625}
        summaryAggregationMode="none"
      />
      <Column
        id="79074"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="order_requested"
        label="Order requested"
        placeholder="Enter value"
        position="center"
        size={146.359375}
        summaryAggregationMode="none"
      />
      <Column
        id="767bf"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="order_completed"
        label="Order completed"
        placeholder="Enter value"
        position="center"
        size={147.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="16e47"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="received_payment"
        label="Received payment"
        placeholder="Enter value"
        position="center"
        size={120.703125}
        summaryAggregationMode="none"
      />
      <Column
        id="2825e"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="date_test"
        label="Date test"
        placeholder="Enter value"
        position="center"
        size={147.84375}
        summaryAggregationMode="none"
      />
      <Column
        id="9d1c7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="price"
        label="Price"
        placeholder="Enter value"
        position="center"
        size={48.359375}
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
          id="8916652d"
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
          id="2a15c2a8"
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
