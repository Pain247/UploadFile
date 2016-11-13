var express = require('express');
var app = express();
var multer = require('multer');
var body= require('body-parser');
var urlencodedParser = body.urlencoded({extended:false});
var info="";
app.listen(process.env.PORT||8000);

//set up EJS
app.set("view engine","ejs");
app.set("views","./views");
//route
app.get("/",function(req,res){
  res.render("index");
});

var storage = multer.diskStorage({
  destination: function(req,file,cb){
    cb(null,'./upload');
  },
  filename: function(req,file,cb){
    cb(null,file.originalname);
  }
});

//display info of file
var upload = multer({storage:storage});
app.post('/upload',upload.single("file"),function(req,res){
  info ={
   size: req.file.size.toString()+"B"
  };
  res.end(JSON.stringify(info));
});
