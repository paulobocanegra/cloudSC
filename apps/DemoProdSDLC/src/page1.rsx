<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="834628af-d769-4acf-9eab-eeb480ab91f6"
>
  <SqlQueryUnified
    id="query1"
    isMultiplayerEdited={false}
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="bed8ef58-61ed-4e47-8765-75d6f9a30686"
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
        id="d004b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.140625}
        summaryAggregationMode="none"
      />
      <Column
        id="ede32"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="user_id"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={57.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="52c1a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={86.796875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="0777c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={138.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="4a627"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="updated_at"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={142.765625}
        summaryAggregationMode="none"
      />
      <Column
        id="d9e9e"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="gift"
        label="Gift"
        placeholder="Enter value"
        position="center"
        size={36.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="f1f9e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="charge_total"
        label="Charge total"
        placeholder="Enter value"
        position="center"
        size={85.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="26dfc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="refund_total"
        label="Refund total"
        placeholder="Enter value"
        position="center"
        size={85.171875}
        summaryAggregationMode="none"
      />
      <Column
        id="02480"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="credits_given"
        label="Credits given"
        placeholder="Enter value"
        position="center"
        size={90.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="354d1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="stripe_charge_id"
        label="Stripe charge ID"
        placeholder="Select option"
        position="center"
        size={279.125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="151f8"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="complaint"
        label="Complaint"
        placeholder="Enter value"
        position="center"
        size={212.125}
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
          id="5d11c9a7"
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
          id="34a71b38"
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Button id="button1" text="Button" />
  </Frame>
</Screen>
