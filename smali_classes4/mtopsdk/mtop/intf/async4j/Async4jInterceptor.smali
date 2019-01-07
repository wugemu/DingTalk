.class public Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "Async4jInterceptor.java"


# static fields
.field public static final ASYNC4J_HEADER_KEY:Ljava/lang/String; = "m-async"

.field public static final ASYNC4J_REQUEST_MTOP:Ljava/lang/String; = "11"

.field public static final ASYNC4J_REQUEST_POLL:Ljava/lang/String; = "12"

.field public static final ASYNC4J_REQUEST_TRADE:Ljava/lang/String; = "10"

.field public static final ASYNC4J_RESPONSE_POLL:I = 0x16

.field public static final ASYNC4J_RESPONSE_PUSH:I = 0x15

.field public static final ASYNC4J_RESPONSE_SUCCESS:I = 0x14

.field private static final DEFAULT_TIME_INTERVAL:I = 0x7d0

.field private static final MAX_POLL_COUNT:I = 0x5


# instance fields
.field private callback:Lmtopsdk/mtop/common/DefaultMtopCallback;

.field private cancel:Z

.field private count:I

.field private finished:Z

.field private handler:Landroid/os/Handler;

.field private originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field private runnable:Ljava/lang/Runnable;

.field private taskId:Ljava/lang/String;

.field private ttid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 38
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancel:Z

    .line 40
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->finished:Z

    .line 50
    iput v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->handler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;-><init>(Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;)V

    iput-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;)V
    .locals 0
    .param p0, "x0"    # Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    .prologue
    .line 18
    invoke-direct {p0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->startPolling()V

    return-void
.end method

.method private callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lmtopsdk/mtop/common/MtopFinishEvent;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->finished:Z

    .line 173
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callback:Lmtopsdk/mtop/common/DefaultMtopCallback;

    invoke-virtual {v0, p1, p2}, Lmtopsdk/mtop/common/DefaultMtopCallback;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method private onFailure(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "event"    # Lmtopsdk/mtop/common/MtopFinishEvent;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method private onSuccess(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 5
    .param p1, "event"    # Lmtopsdk/mtop/common/MtopFinishEvent;
    .param p2, "context"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "asyncStatus":I
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 79
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 80
    .local v1, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v4, "m-async"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 82
    .local v2, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .end local v2    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 102
    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 90
    :pswitch_1
    iget v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    .line 91
    invoke-direct {p0, v3}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->scheduleNextPolling(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setResponseAsync4jInternalError(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v4

    invoke-direct {p0, p1}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setResponseAsync4jInternalError(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 110
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleNextPolling(Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 6
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "rtId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->taskId:Ljava/lang/String;

    .line 122
    const-string/jumbo v4, "tryTime"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "tryTime":I
    const-string/jumbo v4, "tkStartTime"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 125
    .local v2, "timeInterval":J
    if-lez v1, :cond_1

    .line 126
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 128
    :goto_1
    iget v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    if-gt v4, v1, :cond_0

    iget-object v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->taskId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    :cond_0
    const/4 v4, 0x0

    .line 134
    :goto_2
    return v4

    .line 125
    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    .line 126
    :cond_2
    const-wide/16 v2, 0x7d0

    goto :goto_1

    .line 132
    :cond_3
    iget-object v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private setResponseAsync4jInternalError(Lmtopsdk/mtop/common/MtopFinishEvent;)V
    .locals 3
    .param p1, "event"    # Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 160
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 161
    .local v1, "oldResponse":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 163
    .local v0, "newResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "ANDROID_SYS_ASYNC4J_INTERNAL_ERROR"

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "\u4ea4\u6613\u5f02\u6b65\u5316\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 168
    iput-object v0, p1, Lmtopsdk/mtop/common/MtopFinishEvent;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 169
    return-void
.end method

.method private startPolling()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 138
    new-instance v5, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v5}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 139
    .local v5, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v7, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 140
    iget-object v7, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 141
    iget-object v7, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v7

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 142
    iget-object v7, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedSession()Z

    move-result v7

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 144
    const-string/jumbo v1, "{\"rtId\":\"%s\",\"count\":\"%s\"}"

    .line 145
    .local v1, "fmt":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->taskId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "requestData":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "m-async"

    .line 149
    .local v2, "headerKey":Ljava/lang/String;
    const-string/jumbo v3, "12"

    .line 150
    .local v3, "headerValue":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "async4jHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v7, 0x0

    invoke-static {v7}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v7

    iget-object v8, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->ttid:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v4

    .line 154
    .local v4, "mtopbuilder":Lmtopsdk/mtop/intf/MtopBuilder;
    invoke-virtual {v4, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 155
    invoke-virtual {v4, p0}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 156
    invoke-virtual {v4}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    .line 157
    return-void
.end method


# virtual methods
.method public cancelPolling()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->finished:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancel:Z

    .line 179
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lmtopsdk/mtop/common/MtopFinishEvent;
    .param p2, "context"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    iget-boolean v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancel:Z

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 68
    .local v0, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->onSuccess(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->onFailure(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCallback(Lmtopsdk/mtop/common/DefaultMtopCallback;)V
    .locals 0
    .param p1, "callback"    # Lmtopsdk/mtop/common/DefaultMtopCallback;

    .prologue
    .line 192
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callback:Lmtopsdk/mtop/common/DefaultMtopCallback;

    .line 193
    return-void
.end method

.method public setOriginalRequest(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 0
    .param p1, "originalRequest"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    .line 184
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 185
    return-void
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->ttid:Ljava/lang/String;

    .line 189
    return-void
.end method
