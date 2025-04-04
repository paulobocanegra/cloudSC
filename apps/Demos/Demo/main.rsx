<App>
  <Include src="./functions.rsx" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#c7d2fe",
      "#a7f3d0",
      "#fde68a",
      "#bfdbfe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#2e2e2e"
    danger="#dc2626"
    defaultFont={{ size: "12px", fontWeight: "400" }}
    h1Font={{ size: "36px", fontWeight: "700" }}
    h2Font={{ size: "28px", fontWeight: "700" }}
    h3Font={{ size: "24px", fontWeight: "700" }}
    h4Font={{ size: "18px", fontWeight: "700" }}
    h5Font={{ size: "16px", fontWeight: "700" }}
    h6Font={{ size: "14px", fontWeight: "700" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "12px", fontWeight: "600" }}
    labelFont={{ size: "12px", fontWeight: "500" }}
    primary="#3170f9"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/modalFrame1.rsx" />
  <Include src="./src/splitPaneFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    sticky={null}
    type="main"
  >
    <Container
      id="container4"
      _align="center"
      _gap="0px"
      _type="stack"
      footerPadding="0"
      headerPadding="4px 12px"
      heightType="fixed"
      hoistFetching={true}
      overflowType="hidden"
      padding="0"
      showBody="{{table1.selectedRow ? true : false}}"
      showFooter="{{table1.selectedRow ? true : false}}"
      showHeader={true}
      style={{
        ordered: [{ headerBackground: "canvas" }, { background: "canvas" }],
      }}
    >
      <Header>
        <Navigation
          id="navigation1"
          itemMode="static"
          retoolFileObject={{ ordered: [] }}
          style={{
            ordered: [
              { fontSize: "h5Font" },
              { fontWeight: "h5Font" },
              { fontFamily: "h5Font" },
            ],
          }}
        >
          <Option
            id="089c9"
            disabled={false}
            hidden={false}
            iconPosition="left"
            itemType="app"
            label="Support Dashboard"
          />
          <Option
            id="ee319"
            icon="bold/interface-home-3"
            key="072aef62-60d1-4c94-9bea-90e5d8bff2ca"
            label="Home"
          />
          <Option
            id="b737c"
            icon="bold/interface-user-multiple"
            label="Customers"
          />
          <Option
            id="5c7f2"
            icon="bold/interface-setting-cog"
            label="Settings"
          />
        </Navigation>
      </Header>
      <View id="ac4d6" viewKey="View 1">
        <Container
          id="container2"
          enableFullBleed={true}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fixed"
          hoistFetching={true}
          overflowType="hidden"
          padding="12px"
          showBody={true}
          style={{
            ordered: [
              { background: "canvas" },
              { border: "rgba(105, 101, 101, 0)" },
            ],
          }}
        >
          <Header>
            <Text
              id="containerTitle2"
              value="### Messages"
              verticalAlign="center"
            />
          </Header>
          <View id="ac4d6" viewKey="View 1">
            <ListViewBeta
              id="listView1"
              _primaryKeys="{{ item.id }}"
              data="{{ getMessages.data }}"
              itemWidth="200px"
              margin="0"
              numColumns={3}
              padding="40px 5px 5px 5px"
            >
              <Container
                id="container1"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                margin={
                  '{{item.outbound ? "5px 0px 5px 200px" : "5px 200px 5px 0px"}}'
                }
                padding="12px"
                showBody={true}
                style={{
                  ordered: [
                    { background: '{{item.outbound ? "#777777" : "white"}}' },
                  ],
                }}
              >
                <View id="bb5f8" viewKey="View 1">
                  <Text
                    id="text3"
                    value={
                      '###### {{ item.outbound ? current_user.fullName + ":" : customerData.value[0].name + ":" }}'
                    }
                    verticalAlign="center"
                  />
                  <Text
                    id="text1"
                    value="{{ item.body }}"
                    verticalAlign="center"
                  />
                  <Text
                    id="text2"
                    horizontalAlign="right"
                    value={
                      '*{{ moment(item.created_at).format("DD MMM, YYYY.  hh:mm:ss a") }}*'
                    }
                    verticalAlign="center"
                  />
                </View>
              </Container>
            </ListViewBeta>
          </View>
        </Container>
      </View>
      <Footer>
        <TextArea
          id="textArea1"
          autoResize={true}
          label="New Message"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          style={{
            ordered: [
              { sharedLabelFontSize: "h5Font" },
              { sharedLabelFontWeight: "h5Font" },
              { sharedLabelFontFamily: "h5Font" },
            ],
          }}
        />
        <Button
          id="button1"
          heightType="fill"
          style={{ map: { background: "primary" } }}
          text="Send"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="postMessage"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
    </Container>
  </Frame>
</App>
