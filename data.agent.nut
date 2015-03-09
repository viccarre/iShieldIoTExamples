// Log the URLs we need
server.log("Send any value: " + http.agenturl() + "?data=");
 
function requestHandler(request, response) {
  try {
      
    if ("data" in request.query) {
    
        local dataState = request.query.data.tointeger();
        device.send("data", dataState); 
      
    }

    response.send(200, "OK");
  } catch (ex) {
    response.send(500, "Internal Server Error: " + ex);
  }
}

http.onrequest(requestHandler);