amplify.request.define("level1", "ajax", {
  url: "/api/level1",
  dataType: "json",
  type: "GET",
  decoder: "jsend"
});

amplify.request.define("level3", "ajax", {
  url: "/api/level3",
  dataType: "json",
  type: "GET",
  decoder: "jsend"
});
