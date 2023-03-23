const express = require("express")

const app = express();
app.get("/", function (req, res) { 
    return res.send({
        data: "This is servicev1"
    })
})
app.listen(9000, function () { 
    console.log("app is running on port 9000")
})