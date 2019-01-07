.class public Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;
.super Lipd;
.source "H5WebSocketConnectPlugin.java"


# static fields
.field public static final CONNECT_SOCKET:Ljava/lang/String; = "connectSocket"

.field public static final TAG:Ljava/lang/String; = "WS_H5WebSocketPlugin"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lipd;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method public static getStringArr(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # [Ljava/lang/String;

    .prologue
    .line 187
    move-object v1, p2

    .line 188
    .local v1, "ret":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 190
    .local v0, "arr":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 195
    .end local v0    # "arr":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "connectSocket"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    :goto_0
    return v2

    .line 2063
    :cond_0
    :try_start_0
    invoke-static {p1}, Liqh;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    .line 2064
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2065
    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "appId is empty."

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v3

    .line 58
    goto :goto_0

    .line 2069
    :cond_1
    const-string/jumbo v4, "WS_H5WebSocketPlugin"

    const-string/jumbo v5, "enter connectSocket, appId: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    invoke-static {}, Liqg;->a()Liqg;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Liqg;->a(Ljava/lang/String;)Liqj;

    move-result-object v4

    .line 2071
    if-eqz v4, :cond_3

    iget-object v5, v4, Liqj;->a:Ligm;

    if-eqz v5, :cond_3

    .line 2072
    invoke-virtual {v4}, Liqj;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2073
    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "the already appid has a websocket"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "connectSocket unknow error"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2078
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Liqg;->a()Liqg;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Liqg;->b(Ljava/lang/String;)Z

    .line 3121
    :cond_3
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2083
    const-string/jumbo v4, "url"

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2084
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2085
    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "url is null"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_IS_NULL_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-static {p2, v2}, Liqh;->a(Liny;Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;)V

    goto :goto_1

    .line 2090
    :cond_4
    const-string/jumbo v6, "WS_H5WebSocketPlugin"

    const-string/jumbo v7, "url is %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    const-string/jumbo v6, "WS_H5WebSocketPlugin"

    const-string/jumbo v7, "send request ok, url is : %s ,appid: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    const-string/jumbo v6, "data"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 2104
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2105
    invoke-static {v4, v6}, Liqh;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 2109
    :cond_5
    invoke-static {v4}, Lcom/alipay/mobile/tinyappcommon/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 2113
    :try_start_2
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 2120
    :try_start_3
    invoke-static {v5}, Liqh;->a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v8

    .line 2121
    const-string/jumbo v4, "User-Agent"

    invoke-static {p1}, Liqh;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    const-string/jumbo v4, "referer"

    invoke-interface {v8, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    const-string/jumbo v4, "protocols"

    const/4 v9, 0x0

    invoke-static {v5, v4, v9}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->getStringArr(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2126
    if-eqz v5, :cond_8

    .line 2127
    const-string/jumbo v4, ""

    .line 2128
    array-length v9, v5

    move v11, v2

    move-object v2, v4

    move v4, v11

    .line 2129
    :goto_2
    if-ge v4, v9, :cond_7

    .line 2130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v10, v5, v4

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2131
    add-int/lit8 v10, v9, -0x1

    if-eq v4, v10, :cond_6

    .line 2132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2129
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2115
    :catch_1
    move-exception v2

    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "connect fail : %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_NOT_WELL_FORMAT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-static {p2, v2}, Liqh;->a(Liny;Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;)V

    goto/16 :goto_1

    .line 2135
    :cond_7
    const-string/jumbo v4, "Sec-WebSocket-Protocol"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    const-string/jumbo v4, "WS_H5WebSocketPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "protocols: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    :cond_8
    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "connectSocket, url= %s, timeout = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v9, 0x1

    const v10, 0xea60

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    new-instance v4, Liqi;

    invoke-direct {v4, p2}, Liqi;-><init>(Liny;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2146
    :try_start_4
    new-instance v5, Ligl;

    invoke-direct {v5}, Ligl;-><init>()V

    .line 2147
    const-string/jumbo v2, "ws.biz-unique-id"

    iget-object v9, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    .line 4045
    iget-object v10, v5, Ligl;->a:Ljava/util/Map;

    if-nez v10, :cond_9

    .line 4046
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v5, Ligl;->a:Ljava/util/Map;

    .line 4048
    :cond_9
    iget-object v10, v5, Ligl;->a:Ljava/util/Map;

    invoke-interface {v10, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    new-instance v2, Ligm;

    invoke-direct {v2, v7, v8, v4, v5}, Ligm;-><init>(Ljava/net/URI;Ljava/util/Map;Lign;Ligp;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 2154
    :goto_3
    :try_start_5
    new-instance v4, Liqj;

    invoke-direct {v4}, Liqj;-><init>()V

    .line 2155
    iput-object v2, v4, Liqj;->a:Ligm;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 2158
    :try_start_6
    const-string/jumbo v5, "ws://"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2159
    const-string/jumbo v5, "WS_H5WebSocketPlugin"

    const-string/jumbo v7, "url is %s ,user ws connect"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v2}, Ligm;->e()V

    .line 2170
    :goto_4
    invoke-static {}, Liqg;->a()Liqg;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Liqg;->a(Ljava/lang/String;Liqj;)V

    .line 2171
    const-string/jumbo v2, ""

    invoke-static {p2, v2}, Liqh;->b(Liny;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 2172
    :catch_2
    move-exception v2

    .line 2173
    :try_start_7
    const-string/jumbo v4, "WS_H5WebSocketPlugin"

    const-string/jumbo v5, "url %s exception "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2174
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Liqh;->a(Liny;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2149
    :catch_3
    move-exception v2

    .line 2150
    const-string/jumbo v5, "WS_H5WebSocketPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "New constructor can\'t find, will use the original constructor\u3002"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    new-instance v2, Ligm;

    invoke-direct {v2, v7, v8, v4}, Ligm;-><init>(Ljava/net/URI;Ljava/util/Map;Lign;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 2161
    :cond_a
    :try_start_8
    const-string/jumbo v5, "wss://"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2162
    const-string/jumbo v5, "WS_H5WebSocketPlugin"

    const-string/jumbo v7, "url is %s ,user wss connect"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v2}, Ligm;->d()V

    goto/16 :goto_4

    .line 2165
    :cond_b
    const-string/jumbo v2, "WS_H5WebSocketPlugin"

    const-string/jumbo v4, "url error: %s not ws:// or wss://"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_NOT_WS_OR_WSS:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-static {p2, v2}, Liqh;->a(Liny;Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 44
    const-string/jumbo v0, "connectSocket"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    invoke-super {p0}, Lipd;->onRelease()V

    .line 182
    invoke-static {}, Liqg;->a()Liqg;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liqg;->b(Ljava/lang/String;)Z

    .line 183
    const-string/jumbo v0, "WS_H5WebSocketPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRelease. Removed web socket session , appId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketConnectPlugin;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
