var baseUrl="http://localhost:8080/cooked/"

function ajax(url, method, data, async)
{
    method = typeof method !== 'undefined' ? method : 'GET';
    async = typeof async !== 'undefined' ? async : true;
	url=baseUrl+url;

    if (window.XMLHttpRequest)
    {
        var xhReq = new XMLHttpRequest();
    }
    else
    {
        var xhReq = new ActiveXObject("Microsoft.XMLHTTP");
    }


    if (method == 'POST')
    {
        xhReq.open(method, url, async);
        xhReq.setRequestHeader("Content-type", "application/json");
        xhReq.setRequestHeader("X-Requested-With", "XMLHttpRequest");
        xhReq.send(data);
    }
    else
    {
        if(typeof data !== 'undefined' && data !== null)
        {
            url = url+'?'+data;
        }
        xhReq.open(method, url, async);
        xhReq.setRequestHeader("X-Requested-With", "XMLHttpRequest");
        xhReq.send(null);
    }
}