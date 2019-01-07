.class public Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "RuntimeCache.java"


# static fields
.field public static final ACTION_FACE_RECOGNITION:Ljava/lang/String; = "runtime_cache_action_face_recognition"

.field private static final CONFIG_SWITCH_CLOSED:Ljava/lang/String; = "runtime_cache_closed"

.field private static final DEFAULT_EXPIRE_TIME:J = 0x493e0L

.field private static final ERROR_CODE_EXPIRE:I = 0x300d

.field private static final ERROR_CODE_NO_DATA:I = 0x300c

.field public static final INTENT_EXTRA_EXT_DATA:Ljava/lang/String; = "extData"

.field private static final RESTORE_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "RuntimeCache"


# instance fields
.field private mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

.field private mCallbackId:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->doRestoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private static buildKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doRestoreData(Ljava/lang/String;)V
    .locals 7
    .param p1, "extData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a()Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a(Ljava/lang/String;)V

    .line 167
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCallbackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    :cond_1
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "RuntimeCache"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v1, "RuntimeCache ext data empty, bizType:"

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    aput-object v1, v4, v6

    const/4 v1, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v4, v1

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCallbackId:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v3, 0x300c

    const-string/jumbo v4, "ext data empty"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 206
    :cond_2
    :goto_1
    return-void

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_4
    const-string/jumbo v1, "RuntimeCache"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private isDisabled()Z
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognitionSelector;->isNewFaceRecognitionEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "runtime_cache_action_face_recognition"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 224
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 58
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->registerReceiver()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->unregisterReceiver()V

    .line 65
    return-void
.end method

.method public restore(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->isDisabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x3

    const-string/jumbo v11, "plugin disabled"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 158
    :goto_0
    return-object v8

    .line 114
    :cond_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCallbackId:Ljava/lang/String;

    .line 115
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "bizType"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "bizType":Ljava/lang/String;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "corpId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "corpId":Ljava/lang/String;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "originUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 119
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    const-string/jumbo v11, "url err"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 122
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    :cond_2
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "RuntimeCache"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "RuntimeCache params empty, bizType:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    const-string/jumbo v11, "params err"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a()Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    move-result-object v8

    .line 1037
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1040
    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    .line 1041
    sget-object v9, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->RUNNING:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    .line 128
    :goto_1
    if-nez v8, :cond_5

    .line 129
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "RuntimeCache"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "RuntimeCache no cache put, bizType:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v10, 0x300c

    const-string/jumbo v11, "no cache put"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1041
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 132
    :cond_5
    new-instance v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;-><init>()V

    .line 133
    .local v4, "object":Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;
    iput-object v2, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mDomain:Ljava/lang/String;

    .line 134
    iput-object v0, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mBizType:Ljava/lang/String;

    .line 135
    iput-object v1, v4, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;->mCorpId:Ljava/lang/String;

    .line 136
    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mCacheObject:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheObject;

    .line 138
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;

    invoke-direct {v6, p0, v0, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v6, "timeoutRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v6, v10, v11}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public save(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    .line 69
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x3

    const-string/jumbo v10, "plugin disabled"

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 106
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 73
    .local v6, "callbackId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "bizType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "bizType":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "corpId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "data":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "originUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v9, "url err"

    invoke-static {v12, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 81
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "host":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_2
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "RuntimeCache"

    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "RuntimeCache params empty, bizType:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v9, "params err"

    invoke-static {v12, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 86
    :cond_3
    const-string/jumbo v0, "RuntimeCache"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 106
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto/16 :goto_0
.end method
