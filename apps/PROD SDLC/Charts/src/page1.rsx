<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="04502951-9c17-44bf-887d-777ec17c94ce"
>
  <SqlQueryUnified
    id="getOrders"
    query={include("../lib/getOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="bed8ef58-61ed-4e47-8765-75d6f9a30686"
    resourceTypeOverride=""
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getProducts"
    isMultiplayerEdited={false}
    query={include("../lib/getProducts.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="bed8ef58-61ed-4e47-8765-75d6f9a30686"
    warningCodes={[]}
  />
  <State id="textContent" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Chart
      id="barChart1"
      barGap={0.4}
      barMode="group"
      legendPosition="none"
      selectedPoints="[]"
      showAutoscale={true}
      showBoxSelect={true}
      showLassoSelect={true}
      showPan={true}
      showResetView={true}
      showToImage={true}
      showToolbarAddOn={true}
      showZoomIn={true}
      showZoomOut={true}
      showZoomSelect={true}
      stackedBarTotalsDataLabelPosition="none"
      title="Product Inventory"
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormat=".5f"
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff={20}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormat=".0f"
      yAxisTickFormatMode="gui"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="inside"
        datasource="{{ getProducts.data }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.success }}"
        markerSize={6}
        markerSymbol="circle"
        name="Getproducts - quantity"
        showMarkers={false}
        textTemplate="%{y:.0f}"
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getProducts.data.name }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getProducts.data.quantity }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
      <Event
        id="29bd8027"
        event="hover"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "info",
              title: "{{barChart1.title}} was hovered",
              description: "Hover Event",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Chart>
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <Chart
      id="lineChart1"
      barMode="group"
      barOrientation=""
      chartType="line"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowLine={true}
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitle="Date"
      xAxisTitleStandoff={20}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitle="Num Orders"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getOrders.data }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="gradient"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Getorders - order_count"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getOrders.data.purchase_date }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getOrders.data.order_count }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label="Date Range"
      labelPosition="top"
      startPlaceholder="Start date"
      textBetween="-"
      value={{
        start: "{{ moment('2021-01-01') }}",
        end: "{{ moment('2021-06-01') }}",
      }}
    />
    <Chart
      id="plotlyJsonChart1"
      chartType="plotlyJson"
      plotlyDataJson={
        '[\n  {\n    name: "Daily Spend",\n    x: {{ getOrders.data.purchase_date }},\n    y: {{ getOrders.data.spent }},\n    type: "bar",\n    hovertemplate:\n      "<b>%{x}</b><br>Total spend: %{y}<extra></extra>",\n    marker: {\n      color: "#1E3A8A"\n    }\n  }\n]\n'
      }
      plotlyLayoutJson={
        '{\n  "title": {\n    "text": "",\n    "font": {\n      "color": "#3D3D3D",\n      "size": 16\n    }\n  },\n  "font": {\n    "family": "var(--default-font, var(--sans-serif))",\n    "color": "#979797"\n  },\n  "showlegend": true,\n  "legend": {\n    "xanchor": "center",\n    "x": 0.45,\n    "y": -0.2,\n    "orientation": "h"\n  },\n  "margin": {\n    "l": 16,\n    "r": 24,\n    "t": 24,\n    "b": 32,\n    "pad": 2\n  },\n  "hovermode": "closest",\n  "hoverlabel": {\n    "bgcolor": "#000",\n    "bordercolor": "#000",\n    "font": {\n      "color": "#fff",\n      "family": "var(--default-font, var(--sans-serif))",\n      "size": 12\n    }\n  },\n  "clickmode": "select+event",\n  "dragmode": "select",\n  "xaxis": {\n  "title": { "text": "", "standoff": 6, "font": { "size": 12 } },\n  "type": "date",\n  "automargin": true,\n  "fixedrange": true,\n  "gridcolor": "#fff",\n  "zerolinecolor": "#fff"\n},\n    "type": "-",\n    "tickformat": "",\n    "automargin": true,\n    "fixedrange": true,\n    "gridcolor": "#fff",\n    "zerolinecolor": "#fff"\n  },\n  "yaxis": {\n    "title": {\n      "text": "",\n      "standoff": 6,\n      "font": {\n        "size": 12\n      }\n    },\n    "type": "linear",\n    "tickformat": "",\n    "automargin": true,\n    "fixedrange": true,\n    "zerolinecolor": "#DEDEDE"\n  }\n}'
      }
      selectedPoints="[]"
    />
    <Chart
      id="plotlyJsonChart2"
      chartType="plotlyJson"
      plotlyDataJson={
        '[\n  {\n    name: "Daily Spend",\n    x: {{ getProducts.data.name }},\n    y: {{ getProducts.data.price }},\n    type: "bar",\n    hovertemplate:\n      "<b>%{x}</b><br>Total spend: %{y}<extra></extra>",\n    marker: {\n      color: "#1E3A8A"\n    }\n  }\n]\n'
      }
      plotlyLayoutJson={
        '{\n  "title": {\n    "text": "",\n    "font": {\n      "color": "#3D3D3D",\n      "size": 16\n    }\n  },\n  "font": {\n    "family": "var(--default-font, var(--sans-serif))",\n    "color": "#979797"\n  },\n  "showlegend": true,\n  "legend": {\n    "xanchor": "center",\n    "x": 0.45,\n    "y": -0.2,\n    "orientation": "h"\n  },\n  "margin": {\n    "l": 16,\n    "r": 24,\n    "t": 24,\n    "b": 32,\n    "pad": 2\n  },\n  "hovermode": "closest",\n  "hoverlabel": {\n    "bgcolor": "#000",\n    "bordercolor": "#000",\n    "font": {\n      "color": "#fff",\n      "family": "var(--default-font, var(--sans-serif))",\n      "size": 12\n    }\n  },\n  "clickmode": "select+event",\n  "dragmode": "select",\n  "xaxis": {\n  "title": { "text": "", "standoff": 6, "font": { "size": 12 } },\n  "type": "date",\n  "automargin": true,\n  "fixedrange": true,\n  "gridcolor": "#fff",\n  "zerolinecolor": "#fff"\n},\n    "type": "-",\n    "tickformat": "",\n    "automargin": true,\n    "fixedrange": true,\n    "gridcolor": "#fff",\n    "zerolinecolor": "#fff"\n  },\n  "yaxis": {\n    "title": {\n      "text": "",\n      "standoff": 6,\n      "font": {\n        "size": 12\n      }\n    },\n    "type": "linear",\n    "tickformat": "",\n    "automargin": true,\n    "fixedrange": true,\n    "zerolinecolor": "#DEDEDE"\n  }\n}'
      }
      selectedPoints="[]"
    />
    <Chart
      id="barChart2"
      barGap={0.4}
      barMode="group"
      barOrientation="h"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff={20}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getProducts.data }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Getproducts - quantity"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getProducts.data.name }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getProducts.data.quantity }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
    <Chart
      id="sankeyChart1"
      chartType="sankey"
      colorArray={[
        "#4f79a7",
        "#4f79a7",
        "#f38e2c",
        "#76b8b2",
        "#e1575a",
        "#e1575a",
      ]}
      colorArrayDropDown={[
        "#4f79a7",
        "#4f79a7",
        "#f38e2c",
        "#76b8b2",
        "#e1575a",
        "#e1575a",
      ]}
      colorInputMode="colorArrayDropDown"
      gradientColorArray={[
        ["0.0", "{{ theme.success }}"],
        ["1.0", "{{ theme.primary }}"],
      ]}
      legendPosition="none"
      sankeyAllowDuplicateNodesAtDifferentSteps={true}
      sankeyDatasource={
        '{{ [\n  ["Applications", "Rejected", null, 20],\n  ["Applications", "Interview", "Offer", null, 4],\n  ["Applications", "Interview", "No Offer", null, 3],\n  ["Applications", "No Answer", null, 30],\n] }}'
      }
      sankeyLinkColorArray={[
        "#afc3d7",
        "#f9cca0",
        "#c2dedc",
        "#f1b4b4",
        "#f1b4b4",
      ]}
      sankeyLinkColorArrayDropDown={[
        "#afc3d7",
        "#f9cca0",
        "#c2dedc",
        "#f1b4b4",
        "#f1b4b4",
      ]}
      sankeyLinkColorInputMode="colorArrayDropDown"
      sankeyLinkGradientColorArray={[
        ["0.0", "{{ theme.success }}"],
        ["1.0", "{{ theme.primary }}"],
      ]}
      sankeyLinkHoverTemplate="%{source.label} to %{target.label}<br>: %{value}<extra></extra>"
      sankeyLinkHoverTemplateMode="source"
      sankeyNodeHoverTemplate="%{label}<br>Flow: %{value}<extra></extra>"
      sankeyNodeHoverTemplateMode="source"
      selectedPoints="[]"
      title={null}
    />
    <Chart
      id="treemap1"
      chartType="treemap"
      colorArray={[
        "#BFDBFE",
        "#93C5FD",
        "#93C5FD",
        "#93C5FD",
        "#93C5FD",
        "#60A5FA",
        "#60A5FA",
        "#60A5FA",
        "#60A5FA",
        "#60A5FA",
        "#3B82F6",
        "#3B82F6",
      ]}
      colorArrayDropDown={[
        "#BFDBFE",
        "#93C5FD",
        "#93C5FD",
        "#93C5FD",
        "#93C5FD",
        "#60A5FA",
        "#60A5FA",
        "#60A5FA",
        "#60A5FA",
        "#60A5FA",
        "#3B82F6",
        "#3B82F6",
      ]}
      colorInputMode="colorArrayDropDown"
      gradientColorArray={[
        ["0.0", "{{ theme.canvas }}"],
        ["1.0", "{{ theme.primary }}"],
      ]}
      hoverTemplate="%{label}<br>%{value}<extra></extra>"
      hoverTemplateMode="source"
      labelData={[
        "Parent A",
        "a1",
        "a2",
        "a3",
        "Parent B",
        "b1",
        "b2",
        "b3",
        "b4",
        "Parent C",
        "c1",
        "c2",
      ]}
      legendPosition="none"
      parentData={
        '["","Parent A","Parent A","Parent A","","Parent B","Parent B","Parent B","Parent B","","Parent C","Parent C"]'
      }
      selectedPoints="[]"
      textTemplate="%{label}<br>%{value}"
      textTemplateMode="source"
      title={null}
      valueData={[0, 10, 20, 30, 0, 15, 25, 35, 40, 0, 12, 22]}
    />
    <Chart
      id="funnelChart1"
      chartType="funnel"
      legendPosition="none"
      selectedPoints="[]"
      title={null}
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{
          array: ["#A5DB36", "#36B779", "#1E988B", "#31688E", "#462F7D"],
        }}
        colorArrayDropDown={{
          array: ["#A5DB36", "#36B779", "#1E988B", "#31688E", "#462F7D"],
        }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="inside"
        datasource="{{ getProducts.data }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="%{y}<br>%{x} (%{percentInitial:.2%})<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor={{
          array: ["#A5DB36", "#36B779", "#1E988B", "#31688E", "#462F7D"],
        }}
        markerSize={6}
        markerSymbol="circle"
        name="Getproducts - quantity"
        showMarkers={false}
        textTemplate="%{label}
%{value}"
        textTemplateMode="manual"
        type="funnel"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getProducts.data.name }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getProducts.data.quantity }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </Frame>
</Screen>
