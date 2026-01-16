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
    selectedStatuses={'["pending"]'}
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
    id="SubmitTask"
    actionCategory="userTask"
    actionType="complete_task"
    fromAppUuid="a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0"
    outputPayload={
      '{"Status": {{ radioGroup1.value }}, "Company": {{ textInput1.value }} }'
    }
    resourceName="RetoolUserAction"
    userTaskInstanceId="{{ url.hashParams.userTaskId }}"
  />
  <JavascriptQuery
    id="query6"
    notificationDuration={4.5}
    query={include("../lib/query6.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="form3SubmitToAiTracking"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ form3.data }}"
    editorMode="gui"
    notificationDuration={4.5}
    resourceDisplayName="CloudDBTest"
    resourceName="328531ae-ec8a-4317-ab88-45b1342f9a6f"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="ai_tracking"
  />
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
    <Form
      id="form3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle3" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <NumberInput
          id="idInput"
          currency="USD"
          formDataKey="id"
          inputValue={0}
          label="ID"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="questionInput"
          autoResize={true}
          formDataKey="question"
          label="Question"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="responseInput"
          autoResize={true}
          formDataKey="response"
          label="Response"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="userIdInput"
          currency="USD"
          formDataKey="user_id"
          inputValue={0}
          label="User ID"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
      </Body>
      <Footer>
        <Button
          id="formButton3"
          submit={true}
          submitTargetId="form3"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="form3SubmitToAiTracking"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
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
        pluginId="SubmitTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <KeyValue
      id="keyValue2"
      data={
        '{ "id": "14ae6707-8a7b-411f-a802-d53798924e43", "workflowId": "5abee39a-98c0-4a77-9332-348c27bd0572", "workflowName": "User Tasks", "workflowRunId": "019911d3-7d1e-730d-919b-9c7b70a4aa31", "taskName": "userTask1", "status": "pending", "context": { "request": { "Status": "Submitted", "Company": "" } }, "createdAt": "2025-09-03T23:04:58.624Z", "userTaskLink": "https://presentationorg.retool.com/apps/a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0#userTaskId=14ae6707-8a7b-411f-a802-d53798924e43", "userTaskLinks": [ "https://presentationorg.retool.com/apps/a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0#userTaskId=14ae6707-8a7b-411f-a802-d53798924e43" ], "assignees": [ { "type": "user", "id": 1595116, "name": "Test Permissions", "email": "test.permissions.retool@gmail.com" } ], "workflowRelease": null, "expiresAt": "2025-09-10T23:04:58.566Z" }'
      }
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    />
  </Frame>
</Screen>
