.class public Lcom/taobao/weex/http/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ERR_CONNECT_FAILED:Ljava/lang/String; = "ERR_CONNECT_FAILED"

.field public static final ERR_INVALID_REQUEST:Ljava/lang/String; = "ERR_INVALID_REQUEST"

.field public static final UNKNOWN_STATUS:Ljava/lang/String; = "unknown status"

.field private static statusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    sput-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "100"

    const-string/jumbo v2, "Continue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "101"

    const-string/jumbo v2, "Switching Protocol"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "200"

    const-string/jumbo v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "201"

    const-string/jumbo v2, "Created"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "202"

    const-string/jumbo v2, "Accepted"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "203"

    const-string/jumbo v2, "Non-Authoritative Information"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "204"

    const-string/jumbo v2, "No Content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "205"

    const-string/jumbo v2, "Reset Content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "206"

    const-string/jumbo v2, "Partial Content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "300"

    const-string/jumbo v2, "Multiple Choice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "301"

    const-string/jumbo v2, "Moved Permanently"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "302"

    const-string/jumbo v2, "Found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "303"

    const-string/jumbo v2, "See Other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "304"

    const-string/jumbo v2, "Not Modified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "305"

    const-string/jumbo v2, "Use Proxy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "306"

    const-string/jumbo v2, "unused"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "307"

    const-string/jumbo v2, "Temporary Redirect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "308"

    const-string/jumbo v2, "Permanent Redirect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "400"

    const-string/jumbo v2, "Bad Request"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "401"

    const-string/jumbo v2, "Unauthorized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "402"

    const-string/jumbo v2, "Payment Required"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "403"

    const-string/jumbo v2, "Forbidden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "404"

    const-string/jumbo v2, "Not Found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "405"

    const-string/jumbo v2, "Method Not Allowed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "406"

    const-string/jumbo v2, "Not Acceptable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "407"

    const-string/jumbo v2, "Proxy Authentication Required"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "408"

    const-string/jumbo v2, "Request Timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "409"

    const-string/jumbo v2, "Conflict"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "410"

    const-string/jumbo v2, "Gone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "411"

    const-string/jumbo v2, "Length Required"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "412"

    const-string/jumbo v2, "Precondition Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "413"

    const-string/jumbo v2, "Payload Too Large"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "414"

    const-string/jumbo v2, "URI Too Long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "415"

    const-string/jumbo v2, "Unsupported Media Type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "416"

    const-string/jumbo v2, "Requested Range Not Satisfiable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "417"

    const-string/jumbo v2, "Expectation Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "418"

    const-string/jumbo v2, "I\'m a teapot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "421"

    const-string/jumbo v2, "Misdirected Request"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "426"

    const-string/jumbo v2, "Upgrade Required"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "428"

    const-string/jumbo v2, "Precondition Required"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "429"

    const-string/jumbo v2, "Too Many Requests"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "431"

    const-string/jumbo v2, "Request Header Fields Too Large"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "Internal Server Error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "501"

    const-string/jumbo v2, "Not Implemented"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "502"

    const-string/jumbo v2, "Bad Gateway"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "503"

    const-string/jumbo v2, "Service Unavailable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "504"

    const-string/jumbo v2, "Gateway Timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "505"

    const-string/jumbo v2, "HTTP Version Not Supported"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "506"

    const-string/jumbo v2, "Variant Also Negotiates"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "507"

    const-string/jumbo v2, "Variant Also Negotiates"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    const-string/jumbo v1, "511"

    const-string/jumbo v2, "Network Authentication Required"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string/jumbo v0, "unknown status"

    .line 91
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/taobao/weex/http/Status;->statusMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
