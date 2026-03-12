<Container
  id="linkCard1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Icon
      id="icon1"
      icon="bold/shopping-store-factory-building"
      style={{ map: { background: "primary" } }}
      styleVariant="background"
    />
    <Spacer id="spacer1" />
    <Text
      id="containerTitle2"
      style={{ map: { color: "{{ linkCard1.hovered ? theme.primary : '' }}" } }}
      value="**Link Card**"
      verticalAlign="center"
    />
    <Text
      id="containerTitle3"
      value="A link card is useful for providing text in a clickable card."
      verticalAlign="center"
    />
    <Spacer id="spacer2" />
    <Text
      id="containerFooter1"
      style={{ map: { color: "{{ linkCard1.hovered ? theme.primary : '' }}" } }}
      value="**Click to open**"
      verticalAlign="center"
    />
  </View>
  <Event
    id="mockEventHandlerId1"
    event="click"
    method="confetti"
    pluginId=""
    type="util"
    waitType="debounce"
  />
</Container>
