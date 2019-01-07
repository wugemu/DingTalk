.class public Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;
.super Ljava/lang/Object;
.source "VerifyIdentityEngine.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->attachContext(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->getModules()Ljava/util/List;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->addDescription([Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u65e5\u5fd7"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->init(Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->init(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->start()V

    .line 67
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_2
    return-void

    .line 60
    :cond_3
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0d\u521d\u59cb\u5316\u65e5\u5fd7"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;-><init>()V

    .line 455
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyType(Lcom/alipay/mobile/verifyidentity/common/VerifyType;)V

    .line 456
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyId(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setBizName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setListener(Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    .line 460
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVidListener(Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    .line 461
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setExtParams(Landroid/os/Bundle;)V

    .line 462
    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 183
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " add verifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    if-eqz p5, :cond_0

    .line 186
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v2, "2000"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-interface {p5, p1, p2, p3, v1}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 191
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->preCheckTaskQueue(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    if-eqz p5, :cond_0

    .line 193
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v2, "2004"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-interface {p5, p1, p2, p3, v1}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_2
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVIMessageChannel(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " add verifyId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    if-eqz p7, :cond_0

    .line 299
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v2, "2000"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p8

    invoke-interface {p7, p1, p2, v0, v1}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 322
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 313
    :cond_2
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p6

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    .line 314
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setEntryModuleName(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setEntryModuleData(Ljava/lang/String;)V

    .line 316
    iput-object p5, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVIMessageChannel(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V

    .line 318
    if-eqz p9, :cond_1

    .line 319
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u76f4\u63a5\u8d77\u6a21\u5757\u65f6\u82e5\u6709rpc\u4ee3\u7406\uff0c\u5219\u4e0d\u518d\u4e0a\u62a5\u73af\u5883\u53c2\u6570"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;
    .locals 2

    .prologue
    .line 87
    const-class v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    .line 90
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v1, "EXIT VerifyIdentityEngine!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->exit()V

    .line 468
    return-void
.end method

.method public declared-synchronized fastVerifyWithInitRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "logonId"

    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sceneId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bizId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bizRequestData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    if-eqz p6, :cond_0

    .line 219
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "2000"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {p6, v1, v2, p7, v0}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 1432
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;-><init>()V

    .line 1433
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyType(Lcom/alipay/mobile/verifyidentity/common/VerifyType;)V

    .line 1434
    iput-object p2, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    .line 1435
    iput-object p3, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    .line 1436
    iput-object p4, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    .line 1437
    invoke-virtual {v1, p5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setExtParams(Landroid/os/Bundle;)V

    .line 1438
    invoke-virtual {v1, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVidListener(Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    .line 228
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    monitor-enter p0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_0
    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[fastVerifyWithModuleRequest] Failed to build the task by verifyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    .line 273
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[fastVerifyWithModuleRequest] Failed to build the task by verifyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBioInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertSN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getInstalledCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnvInfoForMsp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfoForMsp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecDataForMsp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getSecDataForMsp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public preInit(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 390
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 391
    if-nez p1, :cond_0

    move-object v0, v2

    .line 418
    :goto_0
    return-object v0

    .line 396
    :cond_0
    const-string/jumbo v0, "isNeedFP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    const-string/jumbo v0, "isNeedFP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 399
    :goto_1
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[isNeedFP]:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v3, "isNeedBio"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 403
    if-eqz v3, :cond_1

    .line 404
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 406
    :cond_1
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[isNeedBio]:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    if-eqz v0, :cond_2

    .line 409
    const-string/jumbo v0, "isSupportFP"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v0, "fpSecdata"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdata()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_2
    if-eqz v1, :cond_3

    .line 414
    const-string/jumbo v0, "bioMetaInfo"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_3
    const-string/jumbo v0, "envData"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 418
    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public reportInfo()V
    .locals 1

    .prologue
    .line 509
    const-string/jumbo v0, "appStart"

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getAndReportData()V

    .line 511
    return-void
.end method

.method public setAppDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->setDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V

    .line 100
    return-void
.end method

.method public setStartActivityContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->setStartActivityContext(Landroid/content/Context;)V

    .line 503
    return-void
.end method

.method public declared-synchronized startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " add token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    if-eqz p4, :cond_0

    .line 115
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "2000"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-interface {p4, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->preCheckTaskQueue(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    if-eqz p4, :cond_0

    .line 123
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "2004"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-interface {p4, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_2
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v1, ""

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[startVerifyByVerifyId] Failed to build the task by verifyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to build the task by verifyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 17

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unifiedStartByVerifyId | verifyId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", verifyData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v3, "verifyData\uff0c\u5207\u5230\u6807\u51c6VerifyId\u6a21\u5f0f"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v4, 0x0

    const-string/jumbo v5, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_1
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u5f00\u59cb\u89e3\u6790verifyData"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->parse(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;

    move-result-object v2

    .line 359
    if-nez v2, :cond_2

    .line 360
    if-eqz p5, :cond_0

    .line 361
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 366
    :cond_2
    :try_start_2
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v4, "\u89e3\u6790verifyData\u6210\u529f"

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-nez p4, :cond_4

    .line 368
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 370
    :goto_1
    const-string/jumbo v3, "VIE_envType"

    iget-object v4, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->envType:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v3, "VIE_useBird"

    iget-object v4, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->useBird:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-nez p6, :cond_3

    iget-object v3, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u6b32\u7528unifiedStartByVerifyId\u76f4\u63a5\u8d77\u4eba\u8138\uff0c\u5207\u5230\u6807\u51c6VerifyId\u6a21\u5f0f"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v4, 0x0

    const-string/jumbo v5, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V

    goto :goto_0

    .line 377
    :cond_3
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5f00\u59cb\u76f4\u63a5\u542f\u52a8\u6a21\u5757\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v9, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->token:Ljava/lang/String;

    iget-object v10, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    iget-object v11, v2, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->data:Ljava/lang/String;

    const-string/jumbo v15, ""

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    move-object v13, v6

    move-object/from16 v14, p5

    move-object/from16 v16, p6

    invoke-virtual/range {v7 .. v16}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v6, p4

    goto :goto_1
.end method
