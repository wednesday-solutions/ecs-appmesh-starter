const express = require("express")

const app = express();
app.get("/", function (req, res) { 
    console.log("service 2 was called")
    return res.send({
        data: "This is servicev2"
    })
})
app.listen(9000, function () { 
    console.log("app is running on port 9000")
})