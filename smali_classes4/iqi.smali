.class public final Liqi;
.super Ligo;
.source "H5WebSocketCallback.java"


# instance fields
.field private a:Liny;


# direct methods
.method public constructor <init>(Liny;)V
    .locals 0
    .param p1, "h5BridgeContext"    # Liny;

    .prologue
    .line 22
    invoke-direct {p0}, Ligo;-><init>()V

    .line 23
    iput-object p1, p0, Liqi;->a:Liny;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string/jumbo v0, "WS_H5WebSocketCallback"

    const-string/jumbo v1, "enter onSocketOpen. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Liqi;->a:Liny;

    const-string/jumbo v1, "socketOpen"

    invoke-interface {v0, v1, v2, v2}, Liny;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 57
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 59
    .local v0, "dataWarp":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Liqi;->a:Liny;

    const-string/jumbo v3, "socketMessage"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Liny;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 61
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 40
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 42
    .local v2, "hashMap":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string/jumbo v3, "data"

    new-instance v4, Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->c([BI)[B

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v3, "isBuffer"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 46
    .local v0, "dataWarp":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v3, p0, Liqi;->a:Liny;

    const-string/jumbo v4, "socketMessage"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5}, Liny;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "dataWarp":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "WS_H5WebSocketCallback"

    const-string/jumbo v4, "create string by buffer error. exception : %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 50
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 34
    const-string/jumbo v0, "WS_H5WebSocketCallback"

    const-string/jumbo v1, "enter onSocketClose. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Liqi;->a:Liny;

    const-string/jumbo v1, "socketClose"

    invoke-interface {v0, v1, v2, v2}, Liny;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 36
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v2, "WS_H5WebSocketCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "enter onSocketError. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->getResultEnumByWsMsg(Ljava/lang/String;)Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    move-result-object v1

    .line 67
    .local v1, "resultEnumByWsMsg":Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "error"

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->getErrCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNKNOW_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    if-ne v1, v2, :cond_0

    .line 70
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object v2, p0, Liqi;->a:Liny;

    const-string/jumbo v3, "socketError"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Liny;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 74
    return-void
.end method
