const express = require("express")
const router = express.Router();
const pool = require("../pool")
//商品详情
router.get("/", (req, res) => {
    var lid = req.query.lid;
    //console.log(lid);
    var output = {
        product: {},
        specs: [],
        pics: []
    }
    if (lid !== undefined) {
        var sql1 = `select * from gk_fruit where lid=?`;
        pool.query(sql1, [lid], (err, result) => {
            if (err) console.log(err);
            output.product = result[0];
           // console.log(output);
            var fid = output.product["family_id"];
            var sql2 = `select title,price,href,spec,weight,pic,lid from gk_fruit where family_id=?`;
            pool.query(sql2, [fid], (err, result) => {
                if (err) console.log(err);
                     output.specs = result;
            // console.log(output);
                var sql3 = `select * from gk_fruit_pic where fruit_id=?`;
                pool.query(sql3, [lid], (err, result) => {
                    if (err) console.log(err);
                    output.pics = result;
                    res.send(output);
                 })
            })
        })
    } else {
        res.send(output);
    }
})
module.exports = router;