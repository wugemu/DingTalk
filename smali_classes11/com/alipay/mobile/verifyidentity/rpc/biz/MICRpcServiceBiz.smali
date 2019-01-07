.class public Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;
.super Ljava/lang/Object;
.source "MICRpcServiceBiz.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "viRpcRequest"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "data"

    invoke-static {p2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;-><init>(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)V

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;->onAction(Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannelCallback;)V

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string/jumbo v2, "Start to wait for the result from RpcProxy."

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string/jumbo v1, "RpcProxy Result is here."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpc\u4ee3\u7406\u6a21\u5f0f\u51fa\u73b0 channelError: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 184
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 188
    :goto_1
    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_3
    sget-object v2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "waiting is interrupted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 193
    return-object v0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->viRpcExceptionAdapter(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 208
    :catch_0
    move-exception v8

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    .line 209
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 1283
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1284
    const-string/jumbo v0, "extype"

    const-string/jumbo v1, "vi_rpc_error"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string/jumbo v0, "exinfo"

    invoke-virtual {v8}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "AS-EXCEPTION-161206-01"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "visdk"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    throw v8

    .line 1288
    :catch_1
    move-exception v0

    .line 1289
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string/jumbo v2, "logBehavior Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object p1
.end method

.method public static getIsSendRpc()Z
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 49
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string/jumbo v0, "module"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "operationType"

    const-string/jumbo v1, "alipay.mobile.ic.dispatch"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "action"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 54
    iget-object v3, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 57
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    .line 60
    const/4 v0, 0x0

    .line 61
    if-eqz v1, :cond_0

    .line 62
    iget-object v0, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->bizRequestData:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->envData:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z

    .line 70
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->gwUrl:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v7, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    iget-object v8, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sendRpc(Ljava/lang/Object;)V

    .line 75
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVIMessageChannel()Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-boolean v7, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->canNotUseRpcChannel:Z

    if-nez v7, :cond_3

    .line 77
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVIMessageChannel()Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string/jumbo v0, "channelError"

    iget-object v7, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->gotRpcResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 86
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    return-object v1

    .line 68
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string/jumbo v7, "no need to report envinfo again"

    invoke-static {v0, v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    move-object v0, p0

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 90
    throw v1

    .line 82
    :cond_3
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 103
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string/jumbo v1, "sceneId"

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->sceneId:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "bizId"

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->bizId:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "operationType"

    const-string/jumbo v2, "alipay.mobile.ic.init.outer"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, ""

    .line 108
    const-string/jumbo v3, ""

    .line 110
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7, v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->gwUrl:Ljava/lang/String;

    .line 114
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sendRpc(Ljava/lang/Object;)V

    .line 115
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->gotRpcResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 118
    if-eqz v1, :cond_1

    .line 119
    iget-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    .line 120
    iget-object v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 123
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object v1

    .line 125
    :catch_0
    move-exception v1

    move-object v0, p0

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 127
    throw v1
.end method

.method public report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->viRpcExceptionAdapter(Ljava/lang/Exception;)V

    .line 138
    throw v0
.end method

.method public viRpcExceptionAdapter(Ljava/lang/Exception;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "RpcException"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    return-void

    .line 222
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u51fa\u73b0RPC\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    .line 225
    :try_start_0
    const-string/jumbo v1, "getCode"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 230
    :goto_0
    const-string/jumbo v1, "getOperationType"

    invoke-static {p1, v1, v4, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 231
    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 232
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    .line 233
    throw v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    if-nez p6, :cond_3

    .line 257
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 259
    :goto_0
    if-eqz p1, :cond_1

    .line 260
    const-string/jumbo v0, "rpcSuccess"

    iget-boolean v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v0, "rpcCode"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->sysErrCode:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v0, "nextStep"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v0, "verifyCode"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v0, "verifySuccess"

    iget-boolean v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v0, "useBird"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->useBird:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const-string/jumbo v0, "channelError"

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    :goto_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-160323-2"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "hsrpcfh"

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v4, p2

    move-object v5, p3

    .line 273
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 275
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u672c\u6b21RPC\u8017\u65f6["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p4, p5}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 276
    return-void

    .line 270
    :cond_1
    const-string/jumbo v0, "rpcSuccess"

    const-string/jumbo v1, "false"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 275
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_3
    move-object/from16 v7, p6

    goto/16 :goto_0
.end method

.method public writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-160323-1"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "hsrpcqd"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 246
    return-void
.end method
