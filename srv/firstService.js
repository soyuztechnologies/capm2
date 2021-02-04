const exportSRV = function(srv) {
    srv.on("somesrv", req => {
      return "Hello " + req.data.msg
    })
}
  
  module.exports = exportSRV