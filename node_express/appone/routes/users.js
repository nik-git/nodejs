var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  let resp_dict = {
    "result": "OK",
    "status": 200
  }
  res.status(200).json(resp_dict);
});

module.exports = router;
