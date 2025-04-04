<ModalFrame
  id="modalFrame1"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <Text id="modalTitle1" value="### Ticket Details" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table1.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <EditableTextArea
          id="editableTextArea1"
          editIcon="bold/interface-edit-write-1"
          formDataKey="title"
          inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
          label="Title"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <EditableTextArea
          id="editableTextArea2"
          editIcon="bold/interface-edit-write-1"
          formDataKey="description"
          inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
          label="Description"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select1"
          emptyMessage="No options"
          formDataKey="status"
          itemMode="static"
          label="Status"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="{{ table1.selectedRow.status }}"
          values={null}
        >
          <Option id="5d942" label="Open" value="true" />
          <Option id="0bc10" label="Closed" value="false" />
        </Select>
        <Select
          id="select2"
          emptyMessage="No options"
          formDataKey="impact"
          itemMode="static"
          label="Impact"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="{{ table1.selectedRow.impact }}"
          values={null}
        >
          <Option id="b1b2f" value="Low" />
          <Option id="05968" value="Medium" />
          <Option id="10b47" value="High" />
        </Select>
        <Select
          id="select3"
          data="{{ getOutcomes.data }}"
          emptyMessage="No options"
          formDataKey="outcome"
          label="Outcome"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="{{ table1.selectedRow.outcome }}"
          values={null}
        />
        <Select
          id="select4"
          data="{{ getProductAreas.data }}"
          emptyMessage="No options"
          formDataKey="product_area"
          label="Product area"
          labels="{{ _.startCase(item) }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <Button
          id="formButton1"
          style={{ ordered: [{ background: "highlight" }] }}
          submit={true}
          submitTargetId="form1"
          text="Update"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateTicket"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
