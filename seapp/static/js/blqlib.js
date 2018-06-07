

/**
   * =============================================================================
   * ************   字符串的格式化输出   ************
   * =============================================================================
   */
  String.prototype.format = function(args) {
    var result = this;
    if (arguments.length > 0) {
        if (arguments.length == 1 && typeof (args) == "object") {
            for (var key in args) {
                if(args[key]!=undefined){
                    var reg = new RegExp("({" + key + "})", "g");
                    result = result.replace(reg, args[key]);
                }
            }
        }
        else {
            for (var i = 0; i < arguments.length; i++) {
                if (arguments[i] != undefined) {
                    var reg= new RegExp("({)" + i + "(})", "g");
                    result = result.replace(reg, arguments[i]);
                }
            }
        }
    }
    return result;
}

/**
   * =============================================================================
   * ************   购物车动态刷新   ************
   * =============================================================================
   */
  var xmlHttp=null;
  function cart(mid,pid)
  {
  if (mid=='')
    { 
    return;
    }
  try
    {// Firefox, Opera 8.0+, Safari, IE7
    xmlHttp=new XMLHttpRequest();
    }
  catch(e)
    {// Old IE
    try
      {
      xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    catch(e)
      {
      alert ("Your browser does not support XMLHTTP!");
      return;  
      }
    }

  var url="/addcart/" + mid;
  url=url+"?pid="+pid+"&sid="+Math.random();
  console.log(url);
  xmlHttp.open("GET",url,false);
  xmlHttp.send(null);
  var result=xmlHttp.responseText
  var jsonobj = eval("(" + result + ")");
  
  htmlres=''
  console.log('2',jsonobj)
  items=jsonobj.items
  total=jsonobj.total
  htmlres='<ul class="mdui-list" id="cart"><br>';
       
  for(var i=0;i<items.length;i++){
    h5item='<li class="mdui-list-item mdui-ripple"><div class="mdui-list-item-avatar"><img src="/static/img/attachment/'+items[i].yptp+'"/></div>';
    h5item+='<div class="mdui-list-item-content">'+items[i].ypmc+'x'+items[i].quantity+'</div><div class="mdui-list-item-icon">'+items[i].price+'<span><i class="mdui-icon material-icons" onclick="deletecart('+items[i].mid+','+items[i].pid+');">delete_forever</i></span><br>';
    h5item+=items[i].pname+'</div></li>'
    htmlres=htmlres+h5item;
   }
   totalh5='合计:'+total;
    htmlres=htmlres+totalh5;

  document.getElementById("cart").innerHTML=htmlres;
  };

  /**
   * =============================================================================
   * ************   搜索联想刷新   ************
   * =============================================================================
   */
  var xmlHttp2=null;
  
  function showHint(str)
  {
  if (str.length==0)
    { 
    document.getElementById("txtHint").innerHTML="";
    return;
    }
  try
    {// Firefox, Opera 8.0+, Safari, IE7
    xmlHttp2=new XMLHttpRequest();
    }
  catch(e)
    {// Old IE
    try
      {
      xmlHttp2=new ActiveXObject("Microsoft.XMLHTTP");
      }
    catch(e)
      {
      alert ("Your browser does not support XMLHTTP!");
      return;  
      }
    }
  var url="/search?key=" + str;
  url=url+"&sid="+Math.random();
  xmlHttp2.open("GET",url,false);
  xmlHttp2.send(null);
  var result=xmlHttp2.responseText
  var jsonobj = eval("(" + result + ")");
  var htmlres=''
  console.log(jsonobj);
  res=jsonobj
  htmlres='';
  if (res.cat_list=='无匹配')
  {
    htmlres='无匹配...'
  }
  else
  { 
    cat=res.cat_list
    htmlres+="<p class='mdui-typo'>药品分类..</p>"
    for(var i=0;i<cat.length;i++){
      h5item="<a class='mdui-text-color-black-text' target='_blank' href='/c2listing/"+cat[i].guid+"'><li class='mdui-list-item mdui-ripple'>"+cat[i].category_name+"</li></a>"
       htmlres=htmlres+h5item;}
    med=res.med_list
    htmlres+="<p class='mdui-typo'>药品..</p>"
    for(var i=0;i<med.length;i++){
      h5item="<a class='mdui-text-color-black-text' target='_blank' href='/medview/"+med[i].id+"'><li class='mdui-list-item mdui-ripple'>"+med[i].ypmc+"</li></a>"
       htmlres=htmlres+h5item;}
  }
  document.getElementById("txtHint").innerHTML=htmlres;
  };
  
  /**
   * =============================================================================
   * ************   搜索跳转   ************
   * =============================================================================
   */

   function search()
   {
      var key=document.getElementById("txt1").value;  
      if (key.length==0)
      {}
      else
      {
        window.open('/searchlis?key='+key);
      }

   };

   
  /**
   * =============================================================================
   * ************   购物车删除   ************
   * =============================================================================
   */

   
  var xmlHttp=null;
  function deletecart(mid,pid)
  {
  if (mid=='')
    { 
    return;
    }
  try
    {// Firefox, Opera 8.0+, Safari, IE7
    xmlHttp=new XMLHttpRequest();
    }
  catch(e)
    {// Old IE
    try
      {
      xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    catch(e)
      {
      alert ("Your browser does not support XMLHTTP!");
      return;  
      }
    }

  var url="/deletecart?mid=" + mid;
  url=url+"&pid="+pid+"&sid="+Math.random();
  xmlHttp.open("GET",url,false);
  xmlHttp.send(null);
  var result=xmlHttp.responseText
  var jsonobj = eval("(" + result + ")");
  
  htmlres=''
  console.log('2',jsonobj)
  items=jsonobj.items
  total=jsonobj.total
  htmlres='<ul class="mdui-list" id="cart"><br>';
       
  for(var i=0;i<items.length;i++){
    
    h5item='<li class="mdui-list-item mdui-ripple"><div class="mdui-list-item-avatar"><img src="/static/img/attachment/'+items[i].yptp+'"/></div>';
    h5item+='<div class="mdui-list-item-content">'+items[i].ypmc+'x'+items[i].quantity+'</div><div class="mdui-list-item-icon">'+items[i].price+'<span><i class="mdui-icon material-icons" onclick="deletecart('+items[i].mid+','+items[i].pid+');">delete_forever</i></span><br>';
    h5item+=items[i].pname+'</div></li>'
    htmlres=htmlres+h5item;
   }
   totalh5='合计:'+total;
    htmlres=htmlres+totalh5;

  document.getElementById("cart").innerHTML=htmlres;
  };
