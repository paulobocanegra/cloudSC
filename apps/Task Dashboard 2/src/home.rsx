<Screen
  id="home"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="342c5304-dd21-43a1-b2d3-2f3014d3273a"
>
  <RetoolUserActionQuery
    id="query5"
    actionCategory="userTask"
    actionType="get_tasks"
    fromAppUuid="a8c5847c-2b91-11f0-9fcb-d3aafa28c9b0"
    resourceName="RetoolUserAction"
    selectedStatuses={'["pending"]'}
    selectedUserTaskDefinitionIds={'["d5b916a3-d777-4a73-bf4d-527e34183623"]'}
    selectedWorkflowIds={'["5abee39a-98c0-4a77-9332-348c27bd0572"]'}
  />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Form
      id="form2"
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
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput id="textInput3" label="Company" placeholder="Enter value" />
        <Select
          id="select2"
          emptyMessage="No options"
          itemMode="static"
          label="Status"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="00030" value="Submit" />
          <Option id="00031" value="Approve" />
          <Option id="00032" value="Reject" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton2"
          submit={true}
          submitTargetId="form2"
          text="Submit"
        />
      </Footer>
    </Form>
  </Frame>
</Screen>
