.class public Lcom/alipay/mobile/tinyappcommon/h5plugin/H5WebSocketClosePlugin;
.super Lipd;
.source "H5WebSocketClosePlugin.java"


# static fields
.field public static final CLOSE_SOCKET:Ljava/lang/String; = "closeSocket"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "closeSocket"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    :goto_0
    return v2

    .line 2045
    :cond_0
    :try_start_0
    invoke-static {p1}, Liqh;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v2

    .line 2046
    const-string/jumbo v4, "WS_H5WebSocketClosePlugin"

    const-string/jumbo v5, "enter closeSocket, appId: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    invoke-static {}, Liqg;->a()Liqg;

    move-result-object v4

    invoke-virtual {v4, v2}, Liqg;->a(Ljava/lang/String;)Liqj;

    move-result-object v2

    .line 2050
    if-nez v2, :cond_1

    .line 2051
    const-string/jumbo v2, "WS_H5WebSocketClosePlugin"

    const-string/jumbo v4, "closeSocket error , not exist WebsocketSession"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string/jumbo v2, "No websocket connection is established"

    invoke-static {p2, v2}, Liqh;->b(Liny;Ljava/lang/String;)V

    :goto_1
    move v2, v3

    .line 41
    goto :goto_0

    .line 2056
    :cond_1
    iget-object v4, v2, Liqj;->a:Ligm;

    if-nez v4, :cond_2

    .line 2057
    const-string/jumbo v2, "WS_H5WebSocketClosePlugin"

    const-string/jumbo v4, "closeSocket ok , no websocket connection is established"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string/jumbo v2, "No websocket connection is established"

    invoke-static {p2, v2}, Liqh;->b(Liny;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WS_H5WebSocketClosePlugin"

    const-string/jumbo v4, "closeSocket unknow error. "

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2121
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2062
    const-string/jumbo v5, "code"

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 3121
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2063
    const-string/jumbo v6, "reason"

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2065
    iget-object v2, v2, Liqj;->a:Ligm;

    invoke-virtual {v2, v4, v5}, Ligm;->a(ILjava/lang/String;)V

    .line 2067
    const-string/jumbo v2, ""

    invoke-static {p2, v2}, Liqh;->b(Liny;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 27
    const-string/jumbo v0, "closeSocket"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method
