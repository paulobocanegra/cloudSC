<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  width="large"
>
  <Header>
    <Text id="text2" value="## Direct Data" verticalAlign="center" />
  </Header>
  <Body>
    <Navigation
      id="navigation1"
      appTargetByIndex=""
      captionByIndex=""
      data="{{ retoolContext.pages }}"
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels="{{ item.title }}"
      orientation="vertical"
      parentKeyByIndex=""
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      src={null}
      srcType={null}
      tooltipByIndex=""
    >
      <Option
        id="e4790"
        icon="bold/interface-home-3"
        iconPosition="left"
        key="ad68b"
        label="Schemas & Tables"
      />
      <Option
        id="96d07"
        disabled={false}
        hidden={false}
        highlight={false}
        iconPosition="left"
        itemType="page"
        label="View Schemas"
        parentKey="ad68b"
        screenTargetId="ViewSchemas"
      />
      <Option
        id="a4fc8"
        disabled={false}
        hidden={false}
        highlight={false}
        iconPosition="left"
        itemType="page"
        key="2558b8da-fe52-4223-b4c7-9447f927ab7b"
        label="Create Schema"
        parentKey="ad68b"
        screenTargetId="SchemaForm"
      />
      <Option
        id="28c58"
        disabled={false}
        hidden={false}
        highlight={false}
        iconPosition="left"
        itemType="page"
        label="Create Table Schema"
        parentKey="ad68b"
        screenTargetId="TableSchemaForm"
      />
      <Option
        id="8c01b"
        icon="bold/interface-user-multiple"
        iconPosition="left"
        itemType="page"
        label="Permissions
"
        screenTargetId="Permissions"
      />
      <Event
        event="click"
        method="openPage"
        params={{ map: { pageName: "{{ item.id }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
