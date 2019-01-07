.class public Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketSendMsgPlugin;
.super Lipd;
.source "H5WebSocketSendMsgPlugin.java"


# static fields
.field public static final SEND_SOCKET_MESSAGE:Ljava/lang/String; = "sendSocketMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "sendSocketMessage"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    :goto_0
    return v2

    .line 2049
    :cond_0
    :try_start_0
    invoke-static {p1}, Liqh;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v2

    .line 2050
    const-string/jumbo v4, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v5, "enter sendSocketMessage, appId: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    invoke-static {}, Liqg;->a()Liqg;

    move-result-object v4

    invoke-virtual {v4, v2}, Liqg;->a(Ljava/lang/String;)Liqj;

    move-result-object v2

    .line 2052
    if-nez v2, :cond_1

    .line 2053
    const-string/jumbo v2, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v4, "sendSocketMessage error , not exist WebsocketSession"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-static {p2, v2}, Liqh;->a(Liny;Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;)V

    :goto_1
    move v2, v3

    .line 45
    goto :goto_0

    .line 2058
    :cond_1
    invoke-virtual {v2}, Liqj;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2059
    const-string/jumbo v2, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v4, "sendSocketMessage error , no websocket connection is established"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-static {p2, v2}, Liqh;->a(Liny;Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v4, "sendSocketMessage unknow error. "

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2121
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2065
    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2066
    if-nez v5, :cond_3

    .line 2067
    const-string/jumbo v2, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v4, "Cannot send \'null\' data to a WebSocket"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string/jumbo v2, "Cannot send \'null\' data to a WebSocket"

    invoke-static {p2, v2}, Liqh;->a(Liny;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2073
    :cond_3
    :try_start_2
    const-string/jumbo v6, "isBuffer"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2074
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2075
    :cond_4
    iget-object v2, v2, Liqj;->a:Ligm;

    invoke-virtual {v2, v5}, Ligm;->b(Ljava/lang/String;)V

    .line 2080
    :goto_2
    const-string/jumbo v2, ""

    invoke-static {p2, v2}, Liqh;->b(Liny;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2081
    :catch_1
    move-exception v2

    .line 2082
    :try_start_3
    const-string/jumbo v4, "WS_H5WebSocketSendMsgPlugin"

    const-string/jumbo v5, "sendSocketMessage error : %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2083
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Liqh;->a(Liny;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2077
    :cond_5
    :try_start_4
    const-string/jumbo v4, "utf-8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lhv;->a([BI)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2078
    iget-object v2, v2, Liqj;->a:Ligm;

    invoke-virtual {v2, v4}, Ligm;->b(Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 31
    const-string/jumbo v0, "sendSocketMessage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method
