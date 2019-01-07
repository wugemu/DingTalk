(function(){
    var _open = window.open;
    window.open = function(){
        var arg = [].slice.call(arguments,0);
        if(arg.length>0){
            arg[0] = arg[0].replace(/\u0000/g,'').replace(/\x00/g,'');
        }
        return _open.apply(window,arg);
    }
})();