.class public Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
.super Ljava/lang/Object;
.source "AlphaManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;


# static fields
.field private static a:Z

.field private static volatile b:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private f:Lblr;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcma;

.field private k:Z

.field private l:Z

.field private m:Lblq;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a:Z

    .line 60
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b()V

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c:Landroid/content/Context;

    .line 95
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->k:Z

    .line 106
    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$1;-><init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->p:Ljava/lang/Runnable;

    .line 116
    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$2;-><init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->q:Ljava/lang/Runnable;

    .line 1179
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v1, :cond_0

    .line 1180
    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;-><init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 1211
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1212
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 139
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 1526
    .local v0, "debugMode":Z
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setDebug(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    new-instance v1, Lblq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lblq;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 143
    return-void

    .end local v0    # "debugMode":Z
    :cond_1
    move v0, v3

    .line 139
    goto :goto_0

    .line 1527
    .restart local v0    # "debugMode":Z
    :catch_0
    move-exception v1

    .line 1528
    const-string/jumbo v4, "AlphaManager"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "setAlphaDebug exp = "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Lblq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b()V

    return-void
.end method

.method private a(ZLblp;ILjava/lang/String;)V
    .locals 1
    .param p1, "isServer"    # Z
    .param p2, "listener"    # Lblp;
    .param p3, "code"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 360
    if-eqz p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->f:Lblr;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->f:Lblr;

    invoke-interface {v0, p3}, Lblr;->a(I)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    if-eqz p2, :cond_0

    .line 366
    invoke-interface {p2, p3, p4}, Lblp;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->k:Z

    return p1
.end method

.method private static b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    sget-boolean v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a:Z

    if-eqz v1, :cond_1

    .line 77
    .local v0, "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 67
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 71
    :try_start_0
    const-string/jumbo v1, "alpha"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v1, "AlphaManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "load alpha exception "

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sput-boolean v4, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->l:Z

    return v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 271
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->l:Z

    if-nez v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlphaManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "unregister network change receiver exp = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object v5, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    if-nez v0, :cond_1

    .line 127
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .line 131
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native registerCallback(Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;)V
.end method

.method private native release()V
.end method

.method private native sendTcp(I[B)V
.end method

.method private native setDebug(Z)V
.end method

.method private native startDiscovery(Z)V
.end method


# virtual methods
.method public callbackManualMesh()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->j:Lcma;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->j:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method

.method public convertTo(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)Lbrz;
    .locals 7
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Lbrz;

    invoke-direct {v0}, Lbrz;-><init>()V

    .line 158
    .local v0, "bindAndActiveModel":Lbrz;
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->a:Ljava/lang/String;

    iput-object v4, v0, Lbrz;->b:Ljava/lang/String;

    .line 159
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->b:[B

    iput-object v4, v0, Lbrz;->c:[B

    .line 161
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 163
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 164
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lbrz;->d:Ljava/lang/String;

    .line 170
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->d:Ljava/lang/String;

    iput-object v4, v0, Lbrz;->e:Ljava/lang/String;

    .line 171
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->e:Ljava/lang/Integer;

    iput-object v4, v0, Lbrz;->f:Ljava/lang/Integer;

    .line 172
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->f:Ljava/lang/String;

    iput-object v4, v0, Lbrz;->h:Ljava/lang/String;

    .line 173
    iput-object p1, v0, Lbrz;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAssistActiveRequest()Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 2321
    iget-object v0, v0, Lblq;->b:Lbmh;

    .line 3197
    iget-object v0, v0, Lbmh;->d:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    .line 285
    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphaRunning()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->g:Z

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->k:Z

    return v0
.end method

.method public isServer()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->h:Z

    return v0
.end method

.method public notifyBindResult(Lbsa;Lbmi;)V
    .locals 4
    .param p1, "model"    # Lbsa;
    .param p2, "listener"    # Lbmi;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 11325
    if-nez p1, :cond_1

    .line 11348
    :cond_0
    :goto_0
    return-void

    .line 11328
    :cond_1
    iget-object v1, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 11329
    :cond_2
    const-string/jumbo v0, "AlphaHandler"

    const-string/jumbo v1, "mAsyncDeviceNpcMap is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11330
    if-eqz p2, :cond_0

    .line 11331
    const-string/jumbo v0, ""

    invoke-interface {p2, v3, v0}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 11335
    :cond_3
    iget-object v1, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "bindAndActive"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 11336
    const-string/jumbo v0, "AlphaHandler"

    const-string/jumbo v1, "mAsyncDeviceNpcMap not contain npc bindAndActive"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11337
    if-eqz p2, :cond_0

    .line 11338
    const-string/jumbo v0, ""

    invoke-interface {p2, v3, v0}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 11342
    :cond_4
    iget-object v0, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "bindAndActive"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmd;

    .line 11343
    if-nez v0, :cond_5

    .line 11344
    const-string/jumbo v0, "AlphaHandler"

    const-string/jumbo v1, "bindAndActive asyncResponse is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11345
    if-eqz p2, :cond_0

    .line 11346
    const-string/jumbo v0, ""

    invoke-interface {p2, v3, v0}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 11350
    :cond_5
    new-instance v1, Lbmj;

    invoke-direct {v1}, Lbmj;-><init>()V

    .line 11351
    new-instance v2, Lbmo;

    invoke-direct {v2}, Lbmo;-><init>()V

    iput-object v2, v1, Lbmj;->a:Lbmo;

    .line 11352
    iget-object v2, v1, Lbmj;->a:Lbmo;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbmo;->a:Ljava/lang/Integer;

    .line 11353
    iget-object v2, p1, Lbsa;->a:Ljava/lang/Long;

    iput-object v2, v1, Lbmj;->b:Ljava/lang/Long;

    .line 11354
    iget-object v2, p1, Lbsa;->b:Ljava/lang/Integer;

    iput-object v2, v1, Lbmj;->c:Ljava/lang/Integer;

    .line 11355
    iget-object v2, p1, Lbsa;->d:Ljava/lang/String;

    iput-object v2, v1, Lbmj;->d:Ljava/lang/String;

    .line 11356
    iget-object v2, p1, Lbsa;->e:Ljava/util/Map;

    iput-object v2, v1, Lbmj;->e:Ljava/util/Map;

    .line 12027
    iput-object v1, v0, Lbmd;->b:Liyn;

    .line 12032
    iput-object p2, v0, Lbmd;->c:Lbmi;

    .line 12042
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public registerUICallback(Lblr;)V
    .locals 1
    .param p1, "callback"    # Lblr;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->f:Lblr;

    .line 435
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 7096
    iput-object p1, v0, Lblq;->k:Lblr;

    .line 7097
    iget-object v0, v0, Lblq;->b:Lbmh;

    .line 7157
    iput-object p1, v0, Lbmh;->c:Lblr;

    .line 436
    return-void
.end method

.method public reset()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 445
    const-string/jumbo v0, "AlphaManager"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c()V

    .line 447
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->g:Z

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 8362
    iput v4, v0, Lblq;->g:I

    iput v4, v0, Lblq;->j:I

    .line 8363
    iget-object v1, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 8364
    iget-object v1, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8365
    iput-object v2, v0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8367
    :cond_0
    iget-object v1, v0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    .line 8368
    iget-object v1, v0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8369
    iput-object v2, v0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8371
    :cond_1
    iget-object v0, v0, Lblq;->b:Lbmh;

    .line 9237
    iput-object v2, v0, Lbmh;->d:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    .line 449
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->stopTimeoutTask()V

    .line 450
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->stopAloneTask()V

    .line 9518
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->g:Z

    .line 454
    :cond_2
    return-void

    .line 9519
    :catch_0
    move-exception v0

    .line 9520
    const-string/jumbo v1, "AlphaManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "releaseAlpha exp = "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetManualMesh()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->i:Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->j:Lcma;

    .line 312
    return-void
.end method

.method public sendAck(Liyn;Ljava/lang/String;Lbmi;)V
    .locals 1
    .param p1, "model"    # Liyn;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lbmi;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    invoke-virtual {v0, p1, p2, p3}, Lblq;->a(Liyn;Ljava/lang/String;Lbmi;)V

    .line 475
    return-void
.end method

.method public sendCall(Liyn;Ljava/lang/String;Lbmg;)V
    .locals 9
    .param p1, "model"    # Liyn;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "clientNpcRespWrapper"    # Lbmg;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 478
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 12286
    iget v1, v0, Lblq;->g:I

    if-gtz v1, :cond_1

    .line 12287
    const-string/jumbo v1, "AlphaHandler"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "sendCall sock error, client sock = "

    aput-object v3, v2, v5

    iget v0, v0, Lblq;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12288
    if-eqz p3, :cond_0

    .line 13025
    iget-object v0, p3, Lbmg;->b:Lbmi;

    .line 12288
    if-eqz v0, :cond_0

    .line 14025
    iget-object v0, p3, Lbmg;->b:Lbmi;

    .line 12289
    const-string/jumbo v1, ""

    invoke-interface {v0, v6, v1}, Lbmi;->a(ILjava/lang/String;)V

    .line 12317
    :cond_0
    :goto_0
    return-void

    .line 12293
    :cond_1
    new-instance v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;-><init>()V

    .line 12294
    const-class v2, Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz(Ljava/lang/String;)V

    .line 12295
    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method(Ljava/lang/String;)V

    .line 12297
    if-eqz p1, :cond_2

    .line 12299
    :try_start_0
    iget-object v2, v0, Lblq;->f:Ljaf;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljaf;->a(Ljava/lang/Object;Z)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->body([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12305
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, v0, Lblq;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    iget v3, v0, Lblq;->g:I

    iget-object v4, v0, Lblq;->e:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-virtual {v4, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->encode(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->sendData(I[B)V

    .line 12306
    if-eqz p3, :cond_0

    .line 12307
    iget-object v1, v0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_3

    .line 12308
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12310
    :cond_3
    iget-object v0, v0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 12312
    :catch_0
    move-exception v0

    .line 12313
    const-string/jumbo v1, "AlphaHandler"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "sendCall model exp = "

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12314
    if-eqz p3, :cond_0

    .line 15025
    iget-object v0, p3, Lbmg;->b:Lbmi;

    .line 12314
    if-eqz v0, :cond_0

    .line 16025
    iget-object v0, p3, Lbmg;->b:Lbmi;

    .line 12315
    const-string/jumbo v1, ""

    invoke-interface {v0, v6, v1}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public sendData(I[B)V
    .locals 5
    .param p1, "sock"    # I
    .param p2, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 458
    if-gtz p1, :cond_0

    .line 459
    const-string/jumbo v0, "AlphaManager"

    const-string/jumbo v1, "sendData sock <= 0"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10505
    :goto_0
    return-void

    .line 462
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    .line 463
    :cond_1
    const-string/jumbo v0, "AlphaManager"

    const-string/jumbo v1, "bytes is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10502
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->sendTcp(I[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10503
    :catch_0
    move-exception v0

    .line 10504
    const-string/jumbo v1, "AlphaManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendAlphaTcp exp = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setManualMeshListener(Lcma;)V
    .locals 1
    .param p1, "listener"    # Lcma;

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->i:Z

    .line 300
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->j:Lcma;

    .line 301
    return-void
.end method

.method public setPageShowing(Z)V
    .locals 0
    .param p1, "isPageShowing"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->l:Z

    .line 227
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->n:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public startAloneTask()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 393
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->q:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method public startAlpha(ZLblp;)Z
    .locals 11
    .param p1, "isServer"    # Z
    .param p2, "listener"    # Lblp;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->isAlphaRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string/jumbo v1, "AlphaManager"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "startAlpha stopped, discovery ongoing isServer = "

    aput-object v5, v4, v3

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->h:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 356
    :goto_0
    return v1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v2, "startAlpha stopped, not wifi"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 333
    goto :goto_0

    .line 335
    :cond_1
    sget-boolean v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a:Z

    if-nez v1, :cond_2

    .line 336
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v4, "Alpha so is not loaded"

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const-string/jumbo v1, "AlphaManager"

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 3373
    new-instance v2, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$5;-><init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 338
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_SO_NOT_LOAD:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_SO_NOT_LOAD:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(ZLblp;ILjava/lang/String;)V

    move v1, v3

    .line 339
    goto :goto_0

    .line 341
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "alpha_func_enabled"

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 342
    .local v0, "alphaFuncEnabled":Z
    if-nez v0, :cond_3

    .line 343
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v2, "Alpha func disabled"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_FUNC_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_FUNC_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(ZLblp;ILjava/lang/String;)V

    move v1, v3

    .line 345
    goto :goto_0

    .line 3402
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->i:Z

    if-eqz v1, :cond_4

    .line 3403
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v4, "startAlpha stopped, manualMesh is doing"

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 347
    :goto_1
    if-nez v1, :cond_b

    .line 348
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_FAIL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_FAIL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(ZLblp;ILjava/lang/String;)V

    move v1, v3

    .line 349
    goto/16 :goto_0

    .line 3406
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/SystemInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3408
    if-nez v4, :cond_5

    .line 3409
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v4, "startAlpha stopped, wifi info is null"

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 3410
    goto :goto_1

    .line 3412
    :cond_5
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Lblw;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 3413
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3414
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v4, "startAlpha stopped, ip is null"

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 3415
    goto :goto_1

    .line 3417
    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "DingTalk_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3418
    :cond_7
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v4, "startAlpha stopped, wifi is not default DingTalk_******"

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 3419
    goto :goto_1

    .line 3421
    :cond_8
    if-eqz p1, :cond_9

    .line 3485
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/Request;

    .line 3486
    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 3487
    const-string/jumbo v5, "AlphaManager"

    invoke-interface {v1, v5}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 3488
    const-string/jumbo v5, "http://captive.wifi.alibaba-inc.com/portal/api/temp"

    invoke-interface {v1, v5}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 3489
    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 3424
    :cond_9
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_a

    .line 3425
    const-string/jumbo v1, "AlphaManager"

    const-string/jumbo v4, "startAlpha stopped, user not login"

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 3426
    goto/16 :goto_1

    .line 3428
    :cond_a
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->o:Ljava/lang/String;

    .line 3429
    const-string/jumbo v1, "AlphaManager"

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "checkCanStartAlpha ok, ssid = "

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3430
    goto/16 :goto_1

    .line 351
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 4106
    iput-object p2, v1, Lblq;->h:Lblp;

    .line 352
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->g:Z

    .line 4230
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->h:Z

    .line 4231
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 5092
    iput-boolean p1, v1, Lblq;->i:Z

    .line 4232
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 5494
    :try_start_0
    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->registerCallback(Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6237
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c()V

    .line 6238
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_c

    .line 6239
    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$4;-><init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;

    .line 6264
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 6265
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6266
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6510
    :cond_c
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startDiscovery(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startTimeoutTask()V

    move v1, v2

    .line 356
    goto/16 :goto_0

    .line 5495
    :catch_0
    move-exception v1

    .line 5496
    const-string/jumbo v4, "AlphaManager"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "registerAlphaCallback exp = "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6511
    :catch_1
    move-exception v1

    .line 6512
    const-string/jumbo v4, "AlphaManager"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "startAlphaDiscovery exp = "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startAlphaClient(Lblp;)Z
    .locals 1
    .param p1, "listener"    # Lblp;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlpha(ZLblp;)Z

    move-result v0

    return v0
.end method

.method public startAlphaServer()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 319
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlpha(ZLblp;)Z

    move-result v0

    return v0
.end method

.method public startTimeoutTask()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 383
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    return-void
.end method

.method public stopAloneTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 398
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public stopTimeoutTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 388
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public unregisterAppState()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 220
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 223
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-void
.end method

.method public unregisterUICallback()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 439
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->f:Lblr;

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->m:Lblq;

    .line 8101
    iput-object v1, v0, Lblq;->k:Lblr;

    .line 8102
    iget-object v0, v0, Lblq;->b:Lbmh;

    .line 8161
    iput-object v1, v0, Lbmh;->c:Lblr;

    .line 441
    return-void
.end method
