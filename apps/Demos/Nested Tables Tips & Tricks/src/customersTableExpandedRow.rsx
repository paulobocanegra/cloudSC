<ExpandedRow id="customersTableExpandedRow">
  <Table
    id="ordersTable"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ getUserOrders.data }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    primaryKeyColumnId="0a90f"
    rowBackgroundColor=""
    showBorder={true}
    showFooter={true}
    showHeader={true}
    style={{ headerBackground: "info" }}
    toolbarPosition="bottom"
  >
    <Column
      id="0a90f"
      alignment="right"
      editable="false"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="id"
      label="ID"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="7eff7"
      alignment="right"
      cellTooltipMode="overflow"
      editable="true"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="user_id"
      label="User ID"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="9cd03"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="status"
      label="Status"
      placeholder="Select option"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="bf323"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="created_at"
      label="Created at"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="ffefe"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="updated_at"
      label="Updated at"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="a638b"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="gift"
      label="Gift"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="b5232"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="charge_total"
      label="Charge total"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="6c5b6"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="refund_total"
      label="Refund total"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="ef9a4"
      alignment="left"
      cellTooltipMode="overflow"
      editable="true"
      editableOptions={{ object: {} }}
      format="tags"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="credits_given"
      label="Credits given"
      placeholder="Select options"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="3cc45"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="stripe_charge_id"
      label="Stripe charge ID"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="84be6"
      alignment="left"
      editable="true"
      editableOptions={{ object: {} }}
      format="string"
      groupAggregationMode="none"
      key="complaint"
      label="Complaint"
      placeholder="Enter value"
      position="center"
      size={100}
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
        pluginId="ordersTable"
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
        pluginId="ordersTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToolbarButton>
  </Table>
</ExpandedRow>
