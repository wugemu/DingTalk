.class public abstract Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.super Ljava/lang/Object;
.source "MicroModule.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field private k:Landroid/content/BroadcastReceiver;

.field public needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    .line 88
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->f:Z

    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    .line 90
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8

    .prologue
    .line 2382
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v2, "20000666"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2385
    :goto_0
    return-void

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string/jumbo v2, "logBehavior Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "micromodule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->i:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->e:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 105
    if-eqz p4, :cond_0

    .line 107
    const-string/jumbo v0, "isFirstModule"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->g:Z

    .line 108
    const-string/jumbo v0, "isFirstModule"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    .line 1373
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 1374
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1375
    const-string/jumbo v2, "KExitMiniPayViewNotification"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v2, "com.alipay.closevidactivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string/jumbo v1, "needKeepInside\u4e3atrue\uff01\u6a21\u5757\u9700\u8981\u4fdd\u7559\uff0c\u5ffd\u7565\u8fd9\u6b21\u7684destroy()\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "micromodule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 137
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->onDestroyModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isMicroModuleFinished()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 273
    const-string/jumbo v0, "BANKCARD_BINDING"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string/jumbo v3, "isMicroModuleFinished module is: BANKCARD_BINDING"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherApplicationAgent"

    .line 2307
    const-string/jumbo v3, "getInstance"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2308
    invoke-static {v3, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->c(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2296
    :goto_0
    if-eqz v0, :cond_3

    .line 2297
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string/jumbo v2, "alipay can not find appid: 09999983"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2298
    :goto_1
    return v0

    .line 2311
    :cond_0
    const-string/jumbo v0, "getMicroApplicationContext"

    invoke-static {v3, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2312
    const-string/jumbo v3, "com.alipay.mobile.framework.MicroApplicationContext"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->c(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 2313
    goto :goto_0

    .line 2315
    :cond_1
    const-string/jumbo v3, "findAppById"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "09999983"

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 277
    goto :goto_1

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->f:Z

    if-nez v0, :cond_5

    move v0, v1

    .line 280
    goto :goto_1

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 283
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 284
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 285
    goto :goto_1

    :cond_7
    move v0, v1

    .line 288
    goto :goto_1
.end method

.method public isNeedReportVisible()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->g:Z

    return v0
.end method

.method public final declared-synchronized notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " notifyResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;->onModuleExecuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mListener is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onStart()V
.end method

.method public final declared-synchronized pushActivity(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pushActivity(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 244
    const/4 v1, 0x0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 246
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove Activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_1
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public setIsPrevent(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->f:Z

    .line 264
    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->d:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setNeedReportVisible(Z)V
    .locals 0

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->g:Z

    .line 329
    return-void
.end method

.method public final start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "micromodule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->onStart()V

    .line 122
    return-void
.end method
