var str ="";
var flag = 1;
function clicked(el){
    if(flag == 1){
        var result =document.getElementById('result');
        Node(document.body,"");
        result.innerHTML=str;
        flag = 0;
    }
}
function Node(el,s){
    if (el.localName != undefined){
        str += s + el.tagName +'<br>';
        console.log(el.tagName);
    }
    if(el.childNodes.length == 0){
        console.log("конец ветки");
        return;
    } 
    else{
        for(var i = 0; i < el.childNodes.length;i++){
            Node(el.childNodes[i],s+"&nbsp;&nbsp;&nbsp;&nbsp;");
        }
    }
}
