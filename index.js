const express = require("express")

const app = express();
app.get("/", function (req, res) { 
    const version = "v2"
    console.log(`${version} was called`)
    return res.send({
        data: `This is service${version}`
    })
})
app.listen(9000, function () { 
    console.log("app is running on port 9000")
})