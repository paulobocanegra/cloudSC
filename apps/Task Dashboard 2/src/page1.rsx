<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="c3c6594c-7516-4668-8efc-cc4fca9db3ec"
>
  <RetoolUserActionQuery
    id="getUserTasks"
    _componentId={null}
    actionCategory="userTask"
    actionType="get_tasks"
    fromAppUuid="a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0"
    isMultiplayerEdited={false}
    resourceName="RetoolUserAction"
    runWhenPageLoads="true"
    selectedUserTaskDefinitionIds={'["d5b916a3-d777-4a73-bf4d-527e34183623"]'}
    selectedWorkflowIds={'["5abee39a-98c0-4a77-9332-348c27bd0572"]'}
  />
  <RetoolUserActionQuery
    id="GetTask"
    actionCategory="userTask"
    actionType="get_task"
    fromAppUuid="a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0"
    resourceName="RetoolUserAction"
    runWhenModelUpdates={true}
    userTaskInstanceId="{{ url.hashParams.userTaskId }}"
  />
  <RetoolUserActionQuery
    id="query6"
    actionCategory="userTask"
    actionType="complete_task"
    fromAppUuid="a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0"
    outputPayload={
      '{"Status": {{ radioGroup1.value }}, "Company": {{ textInput1.value }} }'
    }
    resourceName="RetoolUserAction"
    userTaskInstanceId="{{ url.hashParams.userTaskId }}"
  />
  <RESTQuery
    id="query9"
    isMultiplayerEdited={false}
    query={
      'user_tasks?assigned_to_users={{ _.union(current_user.sid) }}&workflow_ids={{ _.union("5abee39a-98c0-4a77-9332-348c27bd0572") }}&"statuses"=pending'
    }
    resourceDisplayName="User Tasks"
    resourceName="fe99ff4a-a904-470e-8291-970b5fc724cf"
  />
  <RESTQuery
    id="query10"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query="workflows"
    resourceDisplayName="User Tasks"
    resourceName="fe99ff4a-a904-470e-8291-970b5fc724cf"
    transformer="return data.data"
  />
  <RetoolAIQuery
    id="query11"
    defaultModelInitialized={true}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <connectResource id="query12" _componentId={null} />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <KeyValue
      id="keyValue1"
      data="{{ GetTask.data }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    />
    <Multiselect
      id="multiselect1"
      captionByIndex="{{ item.email }}"
      data="{{ query10.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      labelPosition="top"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    />
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Request Details"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput2"
          disabled="true"
          label="Status"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ GetTask.data.data.context.request.Status }}"
        />
        <RadioGroup
          id="radioGroup1"
          itemMode="static"
          label="Actions"
          labelPosition="top"
          value=""
        >
          <Option id="00030" value="Approve" />
          <Option id="00031" value="Reject" />
          <Option id="00032" value="Rework" />
        </RadioGroup>
        <TextInput
          id="textInput1"
          label="Company"
          labelPosition="top"
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="query6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</Screen>
