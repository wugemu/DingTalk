.class public Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;,
        Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;,
        Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->showProgressDialog(Ljava/lang/String;)V

    .line 1238
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 1239
    iput-object p0, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 1240
    iput-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 1241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1242
    const-string/jumbo v2, "INIT"

    iput-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 1247
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1248
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v4

    .line 1249
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v5

    .line 1251
    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfoWithExt(ZZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->data:Ljava/lang/String;

    .line 1252
    sget-object v4, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v5, "\u83b7\u53d6\u73af\u5883\u53c2\u6570\u8017\u65f6\uff1a"

    invoke-static {v4, v5, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 202
    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    .line 204
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 206
    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :catch_0
    move-exception v0

    .line 212
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 213
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v3, "catch rpcexception"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-boolean v2, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 233
    :cond_0
    :goto_1
    return-object v0

    .line 1244
    :cond_1
    :try_start_1
    const-string/jumbo v2, "VERIFY_INIT"

    iput-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 226
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 227
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v3, "catch exception when getNextStep"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v2, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-nez v2, :cond_2

    .line 229
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v3, "2002"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2, p2}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :cond_2
    move-object v0, v1

    .line 233
    goto :goto_1

    .line 217
    :cond_3
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v3, "2003"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1, v2, p2}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    throw v0

    :cond_4
    move-object v0, v1

    .line 223
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;",
            ")",
            "Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 302
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->showProgressDialog(Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;-><init>()V

    .line 304
    iput-object p0, v0, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->sceneId:Ljava/lang/String;

    .line 305
    iput-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->bizId:Ljava/lang/String;

    .line 306
    iput-object p2, v0, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->bizRequestData:Ljava/lang/String;

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 308
    invoke-static {p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    const-string/jumbo v4, "isSupportFP"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v4, "fpSecdata"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdata()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    invoke-static {p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    const-string/jumbo v4, "bioMetaInfo"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_1
    const-string/jumbo v4, "bp"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iput-object p3, v0, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->externParams:Ljava/util/Map;

    .line 318
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBaseEnvInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->envData:Ljava/lang/String;

    .line 319
    sget-object v4, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v5, "\u83b7\u53d6\u73af\u5883\u53c2\u6570\u8017\u65f6\uff1a"

    invoke-static {v4, v5, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 320
    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    .line 322
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 323
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 328
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v3, "catch rpcexception"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-boolean v2, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v3, "2003"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5, v2, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 335
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 336
    throw v0

    :cond_3
    move-object v0, v1

    .line 338
    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 341
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 342
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v3, "catch exception when initVerifyTask"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    iget-boolean v2, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-nez v2, :cond_4

    .line 344
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v3, "2002"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4, v2, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :cond_4
    move-object v0, v1

    .line 348
    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 627
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    .line 629
    const-string/jumbo v2, "success"

    iget-boolean v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v2, "sysErrCode"

    iget-object v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->sysErrCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v2, "verifySuccess"

    iget-boolean v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v2, "verifyCode"

    iget-object v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v2, "finish"

    iget-boolean v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string/jumbo v2, "finishCode"

    iget-object v3, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string/jumbo v2, "nextStep"

    iget-object v1, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 3

    .prologue
    .line 561
    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->useBird:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    .line 566
    :goto_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0b\u4e00\u4e2a\u6a21\u5757["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, " \u8981 "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u8d70\u52a8\u6001\u7248\u4ea7\u54c1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "envType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->envType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->envType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->setEnvType(Ljava/lang/String;)V

    .line 569
    return-void

    .line 564
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    goto :goto_0

    .line 566
    :cond_1
    const-string/jumbo v0, "\u4e0d"

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 4

    .prologue
    .line 410
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iget-object v0, p2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 413
    :try_start_0
    iget-object v0, p2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    const-string/jumbo v0, "verifyCode"

    iget-object v3, p2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_1
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 424
    iget-object v0, p2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 425
    iget-object v0, p2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->bizResponseData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setBizResponseData(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 427
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 10

    .prologue
    .line 494
    .line 495
    if-eqz p3, :cond_0

    .line 496
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 497
    const-string/jumbo v0, "sceneId"

    iget-object v1, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v0, "bizId"

    iget-object v1, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v0, "module"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string/jumbo v0, "verifyType"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getCompatibleVerifyType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string/jumbo v1, "useBird"

    iget-boolean v0, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_0
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v0, "interval"

    iget-wide v2, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    iget-wide v4, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-160316-1"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "mddychqcp"

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object v4, p1

    move-object v5, p0

    .line 503
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u9996\u4e2aModule\u5524\u8d77\u603b\u8017\u65f6\uff1a"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 507
    :cond_0
    return-void

    .line 501
    :cond_1
    const-string/jumbo v0, "N"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Z)V

    .line 261
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Z)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "nextStep: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 279
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 282
    :cond_0
    const-string/jumbo v2, "isLocalTrans"

    move/from16 v0, p5

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string/jumbo v2, "isFirstModule"

    move/from16 v0, p7

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1455
    new-instance v11, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;

    invoke-direct {v11, p0, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;J)V

    .line 1475
    const-string/jumbo v2, "isLocalTrans"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1476
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1477
    const-string/jumbo v2, "module"

    invoke-interface {v9, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const-string/jumbo v3, "useBird"

    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v3, "UC-MobileIC-150810-2"

    const-string/jumbo v4, "20000666"

    const-string/jumbo v5, "mdhxhscp"

    const/4 v8, 0x0

    move-object v6, p2

    move-object v7, p1

    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1481
    :cond_1
    const-string/jumbo v2, "isLocalTrans"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 1485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareEndTime:J

    .line 290
    :goto_1
    return-void

    .line 1478
    :cond_2
    const-string/jumbo v2, "N"

    goto :goto_0

    .line 287
    :cond_3
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v3, "2002"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    .locals 4

    .prologue
    .line 646
    const/4 v0, 0x1

    .line 647
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isNeedFP"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isNeedFP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 652
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[isNeedFP]:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 2359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    .line 2360
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "processRpcResult verifyId: %s, token: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 2362
    if-eqz p3, :cond_4

    .line 2363
    iget-boolean v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    if-eqz v0, :cond_4

    .line 2364
    iget v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->expireTime:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->TASK_TIMEOUT:J

    .line 2365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2367
    iget-object v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2375
    :cond_0
    :goto_0
    iget-object v3, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    move-object v2, p1

    .line 2377
    :goto_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "processRpcResult updateVidToken verifyId: %s, token: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    iget-boolean v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    if-eqz v0, :cond_3

    .line 2380
    iget-boolean v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v0, :cond_2

    .line 2383
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v6

    sget v0, Ligh$h;->vi_server_wrong_data:I

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    sget v0, Ligh$h;->vi_confirm:I

    .line 2384
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    move-object v1, v6

    move-object v2, v9

    move-object v3, v7

    move-object v4, v8

    move-object v5, v0

    move-object v6, v9

    move-object v7, v9

    .line 2383
    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2433
    :goto_2
    return-void

    .line 2372
    :cond_1
    iget-object v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2373
    iget-object p1, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    goto :goto_0

    .line 2392
    :cond_2
    invoke-static {v2, v3, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_2

    .line 2395
    :cond_3
    invoke-static {p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 2396
    iget-object v4, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    iget-object v5, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 2397
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "processRpcResult\u8017\u65f6\uff1a"

    iget-wide v4, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2398
    iget-object v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-static {v2, v3, v0, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_2

    .line 2430
    :cond_4
    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v0, "2003"

    invoke-direct {v4, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 2431
    if-eqz p4, :cond_5

    iget-boolean v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v0, :cond_5

    .line 2432
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u9700\u8981\u8fdb\u884c\u521d\u59cb\u5316\u5f02\u5e38\u63d0\u793a"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v6

    sget v0, Ligh$h;->vi_network_unavailable:I

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    sget v0, Ligh$h;->vi_confirm:I

    .line 2434
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$2;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    move-object v1, v6

    move-object v2, v9

    move-object v3, v7

    move-object v4, v8

    move-object v5, v0

    move-object v6, v9

    move-object v7, v9

    .line 2433
    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 2442
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_2

    :cond_6
    move-object v3, p2

    move-object v2, p1

    goto/16 :goto_1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 39
    .line 2518
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "handleModuleExecuteResult verifyId: %s, token: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v7

    aput-object p2, v2, v6

    .line 2519
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2518
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2523
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v1, "ModuleExecuteResult is null or ResultEnum is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 2525
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 2546
    :goto_0
    return-void

    .line 2528
    :cond_1
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v4

    .line 2529
    invoke-static {v4, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Z)V

    .line 2530
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " execute finishCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2533
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2541
    :cond_2
    :goto_1
    iget-object v2, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    move-object v1, p1

    .line 2543
    :goto_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v3, "handleModuleExecuteResult updateVidToken verifyId: %s, token: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v2, v5, v6

    .line 2544
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2543
    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    iget-boolean v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    if-eqz v0, :cond_9

    .line 2577
    new-instance v3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 2578
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2580
    :try_start_0
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2581
    if-eqz v0, :cond_5

    .line 2606
    sget-object v6, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string/jumbo v7, "need do more"

    invoke-static {v6, v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    if-eqz v0, :cond_4

    .line 2608
    const-string/jumbo v6, "nextVerifyId"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2609
    const-string/jumbo v7, "nextModuleData"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2610
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2611
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2612
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 2613
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addSlientModule(Lcom/alibaba/fastjson/JSONObject;)V

    .line 2615
    :cond_3
    const-string/jumbo v6, "nextVerifyId"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    const-string/jumbo v6, "nextModuleData"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    :cond_4
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2589
    :cond_5
    :goto_3
    :try_start_1
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2590
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2595
    :cond_6
    :goto_4
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2596
    const-string/jumbo v0, "verifyCode"

    iget-object v6, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    :cond_7
    invoke-virtual {v3, v5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 2599
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 2600
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->bizResponseData:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setBizResponseData(Ljava/lang/String;)V

    .line 2601
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, p5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 2621
    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->cleanByVerifyId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2538
    :cond_8
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2539
    iget-object p1, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    goto/16 :goto_1

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    sget-object v6, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2592
    :catch_1
    move-exception v0

    .line 2593
    sget-object v6, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2548
    :cond_9
    invoke-static {v4, p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 2550
    if-eqz v4, :cond_a

    iget-object v3, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    :goto_5
    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    .line 2551
    :goto_6
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->isLocalTrans()Z

    move-result v5

    move-object v0, p0

    move-object v6, p5

    .line 2550
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, ""

    goto :goto_5

    :cond_b
    const-string/jumbo v4, ""

    goto :goto_6

    :cond_c
    move-object v2, p2

    move-object v1, p1

    goto/16 :goto_2
.end method

.method private static b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    .locals 4

    .prologue
    .line 657
    const/4 v0, 0x1

    .line 658
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isNeedBio"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 660
    if-eqz v1, :cond_0

    .line 661
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 664
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[isNeedBio]:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public startVerifyTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    if-nez v0, :cond_3

    .line 169
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v1, v0

    .line 171
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;

    invoke-direct {v0, p0, p1, v2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Ljava/util/Map;)V

    .line 179
    const-string/jumbo v1, "verifyInitThread"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->setName(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->start()V

    .line 190
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareStartTime:J

    .line 191
    return-void

    .line 181
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 183
    const-string/jumbo v1, "verifyDirectThread"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->setName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->start()V

    goto :goto_2

    .line 186
    :cond_2
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 187
    const-string/jumbo v1, "VerifyThread"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->setName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->start()V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
