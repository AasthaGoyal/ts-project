exports.handler = async(event) => {
  try {
   console.info({
    "path": event.path,
    "requestBody": event.body
   })
    return event;
  } catch (e) {
    return "Some error occured"
  }

};
