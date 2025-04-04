<GlobalFunctions>
  <SqlQueryUnified
    id="getTickets"
    isHidden={false}
    notificationDuration={0.1}
    query={include("./lib/getTickets.sql", "string")}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateTicket"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ form1.data }}"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ table1.selectedRow.id }}","operation":"="}]'
    }
    isHidden={false}
    notificationDuration={0.1}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="tickets"
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getMessages"
    enableTransformer={true}
    isHidden={false}
    notificationDuration={0.1}
    query={include("./lib/getMessages.sql", "string")}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getCustomers"
    enableTransformer={true}
    isHidden={false}
    notificationDuration={0.1}
    query={include("./lib/getCustomers.sql", "string")}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    showSuccessToaster={false}
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getProductAreas"
    enableTransformer={true}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={0.1}
    query={include("./lib/getProductAreas.sql", "string")}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    showSuccessToaster={false}
    transformer="return formatDataAsArray(data).map(obj => obj.product_area)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getOutcomes"
    enableTransformer={true}
    isHidden={false}
    notificationDuration={0.1}
    query={include("./lib/getOutcomes.sql", "string")}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    showSuccessToaster={false}
    transformer="return formatDataAsArray(data).map(obj => obj.outcome)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="postMessage"
    actionType="INSERT"
    changeset={
      '[{"key":"ticket_id","value":"{{ table1.selectedRow.id }}"},{"key":"support_id","value":"{{ current_user.id }}"},{"key":"customer_id","value":"{{ table1.selectedRow.user_id }}"},{"key":"created_at","value":"{{ new Date() }}"},{"key":"body","value":"{{ textArea1.value }}"},{"key":"outbound","value":"true"}]'
    }
    editorMode="gui"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={0.1}
    resourceDisplayName="Demo Data"
    resourceName="ddb09d09-8ed4-4a69-b35b-d1afcf069301"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="messages"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getMessages"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="textArea1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State
    id="customerData"
    value="{{ getCustomers.data.filter(obj => obj.id === table1.selectedRow.user_id) }}"
  />
</GlobalFunctions>
