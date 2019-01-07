.class public abstract Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
.super Lcom/alipay/android/app/template/AbsFBPlugin;
.source "BaseFBPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/android/app/template/FBFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$ACT_CONF;,
        Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$PLUGIN_ACTION;,
        Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$VERIFY_STATUS;
    }
.end annotation


# static fields
.field protected static final KEY_COMMON_ACTION:Ljava/lang/String; = "onViAction"


# instance fields
.field private final a:Ljava/lang/String;

.field protected actionConfig:Lcom/alibaba/fastjson/JSONObject;

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/app/template/FBPluginCtx;

.field private d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

.field private e:Ljava/lang/Object;

.field public extParams:Landroid/os/Bundle;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:J

.field protected jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

.field public mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

.field public mainHandler:Landroid/os/Handler;

.field public moduleData:Ljava/lang/String;

.field protected token:Ljava/lang/String;

.field protected verifyData:Ljava/lang/String;

.field protected verifyId:Ljava/lang/String;

.field public viType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alipay/android/app/template/AbsFBPlugin;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mainHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->g:J

    .line 206
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->g:J

    .line 78
    const-string/jumbo v0, "cjxr"

    const-string/jumbo v1, "UC-MobileIC-170505-1"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 506
    :cond_1
    const-string/jumbo v0, "start"

    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->g:J

    sub-long/2addr v2, v4

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start cost: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v0, "cjzttz"

    const-string/jumbo v4, "UC-MobileIC-170505-3"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehaviorWithCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 511
    :cond_2
    const-string/jumbo v0, "cjzttz"

    const-string/jumbo v2, "UC-MobileIC-170505-3"

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 422
    .line 424
    :try_start_0
    invoke-static {p1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 428
    :goto_0
    if-nez v3, :cond_1

    .line 429
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "module data can\'t be converted to jsonobject: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_1
    return v0

    .line 425
    :catch_0
    move-exception v3

    .line 426
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "json fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    goto :goto_0

    .line 432
    :cond_1
    const-string/jumbo v4, "viRpcResponse"

    const-string/jumbo v5, "action"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    :try_start_1
    const-string/jumbo v0, "data"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 437
    :try_start_2
    const-class v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {v3, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3324
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 3325
    :try_start_3
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 3326
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3327
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    .line 442
    goto :goto_1

    .line 438
    :catch_1
    move-exception v0

    move-object v3, v1

    .line 439
    :goto_3
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "json fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 3327
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 443
    :cond_2
    const-string/jumbo v4, "viClosePage"

    const-string/jumbo v5, "action"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onBNPageClose()V

    move v0, v2

    .line 445
    goto :goto_1

    .line 446
    :cond_3
    const-string/jumbo v4, "payStatus"

    const-string/jumbo v5, "action"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const-string/jumbo v0, "data"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 450
    if-eqz v0, :cond_4

    .line 451
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    :cond_4
    const-string/jumbo v0, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onPaySuccess()V

    .line 461
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "VI_PAY_STATUS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 466
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v1, "zfjg"

    const-string/jumbo v3, "UC-MobileIC-170505-4"

    invoke-virtual {p0, v1, v3, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    move v0, v2

    .line 469
    goto/16 :goto_1

    .line 456
    :cond_5
    const-string/jumbo v0, "paying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u652f\u4ed8\u4e2d"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 459
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 438
    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Lcom/alipay/android/app/template/FBPluginCtx;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    return-object v0
.end method


# virtual methods
.method public addPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    .line 88
    iget-object v2, p3, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->token:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->token:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyData:Ljava/lang/String;

    .line 90
    iget-object v2, p3, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->data:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->moduleData:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->extParams:Landroid/os/Bundle;

    .line 1483
    new-instance v2, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->f:Landroid/content/BroadcastReceiver;

    .line 1494
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 1495
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->f:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "KExitMiniPayViewNotification"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2101
    if-eqz p4, :cond_0

    const-string/jumbo v2, "needFindExist"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v1, "Module\u5df2\u7ecf\u5b58\u5728\uff0c\u4e0d\u518d\u521b\u5efa\uff0c\u76f4\u63a5\u5173\u8054"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    :goto_1
    return-void

    .line 2104
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->token:Ljava/lang/String;

    const-string/jumbo v5, "NATIVE_PAYMENT_PASSWORD"

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v2

    .line 2105
    if-eqz v2, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->moduleData:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->bindModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V

    move v0, v1

    .line 2107
    goto :goto_0

    .line 2113
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2114
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v1, "fail to addPlugin!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2117
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->addPlugin(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V

    .line 2118
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2119
    const-string/jumbo v0, "PluginName"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string/jumbo v0, "isPluginMode"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2121
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->extParams:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 2122
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->extParams:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2124
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyData:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    goto :goto_1
.end method

.method public abstract bindModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 376
    const-string/jumbo v0, "action"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    const-string/jumbo v0, "viToPWD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 380
    const-string/jumbo v0, "vid"

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 383
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lhv;->c([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 384
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    const-string/jumbo v0, "data"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 3230
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getJsFuncName()Ljava/lang/String;

    move-result-object v1

    .line 3231
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->viNativeExecuteJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v4, "fail to build verifyData\uff1a"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 389
    :cond_1
    const-string/jumbo v0, "viStatus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->viType:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 394
    :cond_2
    const-string/jumbo v0, "data"

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getActConf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->actionConfig:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 224
    const-string/jumbo v0, ""

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->actionConfig:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getJsFuncName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "onViAction"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPluginName()Ljava/lang/String;
.end method

.method protected logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehaviorWithCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 517
    return-void
.end method

.method protected logBehaviorWithCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 521
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v2, "20000666"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-nez v1, :cond_0

    move-object v4, v5

    .line 522
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-nez v1, :cond_1

    :goto_1
    move-object v1, p2

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    .line 521
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 527
    :goto_2
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 522
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 523
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v2, "logBehavior Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onBNPageClose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->cleanByVidAndPluginName(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected onPaySuccess()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public onVerifyFinished(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iget-object v0, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 341
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    const-string/jumbo v0, "verifyCode"

    iget-object v4, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_2
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 359
    iget-object v0, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 360
    iget-object v0, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->bizResponseData:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setBizResponseData(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onVerifyResult(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    .line 362
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 353
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onVerifyResult(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    invoke-static {p1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 366
    const-string/jumbo v1, "viResult"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 367
    return-void
.end method

.method public requestFocus()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public sendRpcRequest(Ljava/lang/Object;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 277
    invoke-static {p1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendRpcRequest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "viRpcRequest"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 281
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 283
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-string/jumbo v7, ""

    .line 285
    const-string/jumbo v3, ""

    .line 287
    :try_start_0
    const-string/jumbo v2, "module"

    const-string/jumbo v8, "module"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v2, "operationType"

    const-string/jumbo v8, "alipay.mobile.ic.dispatch"

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v2, "action"

    const-string/jumbo v8, "action"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    :try_start_1
    const-string/jumbo v7, "verifyId"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 295
    :goto_0
    invoke-virtual {v0, v2, v3, v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sendRpc(Ljava/lang/Object;)V

    .line 298
    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    monitor-enter v7

    .line 300
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :goto_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v1

    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-interface {v1, v7}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->gotRpcResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9e1f\u5de2\u63d2\u4ef6rpc\u51fa\u73b0 channelError: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    .line 313
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    .line 317
    :goto_2
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 292
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v7

    move-object v7, v10

    .line 293
    :goto_3
    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string/jumbo v9, "\u63d2\u4ef6rpc\u57cb\u70b9\u51fa\u73b0\u5f02\u5e38: "

    invoke-static {v8, v9, v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 301
    :catch_1
    move-exception v1

    .line 302
    :try_start_5
    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object v0

    :catch_2
    move-exception v2

    goto :goto_2

    .line 292
    :catch_3
    move-exception v7

    goto :goto_3
.end method

.method public setActionConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->actionConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 220
    return-void
.end method

.method public setJsFuncName(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 212
    :cond_0
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 409
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a(Ljava/lang/String;)Z

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVerifyStatus(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "viStatus"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 154
    return-void
.end method

.method public updateVerifyStatus(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v1, "viStatus"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 150
    return-void
.end method

.method public viNativeExecuteJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo p1, "onViAction"

    .line 238
    :cond_0
    const-string/jumbo v0, "js_function && js_function(\'$jsonData$\');"

    .line 239
    const-string/jumbo v1, "js_function"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2257
    const-string/jumbo v0, ""

    .line 241
    :goto_0
    const-string/jumbo v2, "$jsonData$"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void

    .line 2259
    :cond_1
    const-string/jumbo v0, "\\"

    const-string/jumbo v2, "\\\\"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    const-string/jumbo v2, "\'"

    const-string/jumbo v3, "\\\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2262
    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2263
    const-string/jumbo v2, "\r"

    const-string/jumbo v3, "\\r"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2264
    const-string/jumbo v2, "\u000c"

    const-string/jumbo v3, "\\f"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    const-string/jumbo v2, "\u2028"

    const-string/jumbo v3, "\\u2028"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2266
    const-string/jumbo v2, "\u2029"

    const-string/jumbo v3, "\\u2029"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
