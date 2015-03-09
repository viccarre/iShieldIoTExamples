// function to turn LED on or off

function setData(dataState) {
  server.log("Set Data: " + dataState);
}
 
// register a handler for "led" messages from the agent
agent.on("data", setData);