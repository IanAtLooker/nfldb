# Disable model validation
 
# Disable model validation
 - connection: weather
 - label: "Jensons Buttons"
# Include global and client-specific DASHBOARDS
 - include: "global*.dashboard.lookml"
 - include: "client_jbuttons*.dashboard.lookml"
 - include: "internal*.dashboard.lookml"
# Include global and client-specific VIEWS
 - include: "global*.view.lookml"
 - include: "client_jbuttons*.view.lookml"
 - include: "internal*.view.lookml"
# Include global and client-specific EXPLORES
 - include: "global_explores.lookml"
 - include: "client_jbuttons_explores.lookml"
 - include: "internal_explores.lookml"