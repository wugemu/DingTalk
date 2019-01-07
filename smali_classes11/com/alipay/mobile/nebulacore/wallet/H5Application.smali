.class public Lcom/alipay/mobile/nebulacore/wallet/H5Application;
.super Lini;
.source "H5Application.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Application"

.field private static sIndex:I

.field public static sNebulaReady:Z


# instance fields
.field private appId:Ljava/lang/String;

.field private onCreateParam:Landroid/os/Bundle;

.field private openAppWithBugme:Z

.field private param:Landroid/os/Bundle;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    .line 68
    sput v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lini;-><init>()V

    return-void
.end method

.method private asyncStartPage(Landroid/os/Bundle;Lcom/alipay/mobile/h5container/service/H5Service;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "h5Service"    # Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    const-string/jumbo v1, "H5Application"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "asyncStartPage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v0, Linz;

    invoke-direct {v0, p1}, Linz;-><init>(Landroid/os/Bundle;)V

    .line 512
    .local v0, "h5Bundle":Linz;
    invoke-virtual {p2, p0, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Linn;Linz;)V

    .line 513
    const-string/jumbo v1, "H5Application"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h5_app_start appId={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "} params={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, "start_app"

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->time:J

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;J)V

    .line 517
    return-void
.end method

.method private clearSw()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 218
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 219
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopSelfProcess()V

    .line 231
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :goto_0
    return-void

    .line 222
    .restart local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_0
    const-string/jumbo v1, "H5Application"

    const-string/jumbo v2, "onDestroy h5EventHandlerService == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->clearServiceWork(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private hasShowNebulaLoading(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    const-string/jumbo v0, "packageLoadingShown"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private openBugMeByStartParam()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 145
    const-string/jumbo v5, "H5Application"

    const-string/jumbo v7, "openBugMeByStartParam"

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-boolean v11, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->openAppWithBugme:Z

    .line 147
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    const-string/jumbo v7, "domainWhiteList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "domainWhiteListStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    const-string/jumbo v5, "\\|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "split":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "domainWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v4, v5

    .line 152
    .local v3, "encodedDomain":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 155
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "domain":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string/jumbo v8, "H5Application"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Got domain whitelist: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v0    # "domain":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "encodedDomain":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v7

    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-interface {v7, v5}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setDomainWhiteList([Ljava/lang/String;)V

    .line 162
    .end local v1    # "domainWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "split":[Ljava/lang/String;
    :cond_2
    invoke-static {v11, v6, v11, v6, v6}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->debugSwitch(ZZZZZ)V

    .line 163
    return-void
.end method

.method private static setAppStartFromWhere(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    .line 520
    const-string/jumbo v0, "inner"

    .line 521
    .local v0, "fromExternal":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "isStartFromExternal":Z
    :try_start_0
    const-string/jumbo v4, "startFromExternal"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    const-string/jumbo v4, "startFromExternal"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 526
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 527
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 533
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 534
    const-string/jumbo v0, "outer"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_1
    const-string/jumbo v4, "app_startup_type"

    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v1    # "isStartFromExternal":Z
    :cond_1
    return-void

    .line 528
    .restart local v1    # "isStartFromExternal":Z
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 529
    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 536
    :cond_3
    const-string/jumbo v0, "inner"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 538
    :catch_0
    move-exception v3

    .line 539
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5Application"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "throwable is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupBugMeIfNeed()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v1

    .line 133
    .local v1, "manager":Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setUp()V

    .line 137
    const-string/jumbo v3, "true"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    const-string/jumbo v5, "enableBugme"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 138
    .local v2, "openBugme":Z
    const-string/jumbo v3, "h5_bug_me_debug_switch"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, "bugmeSwitchOpen":Z
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->openBugMeByStartParam()V

    .line 142
    :cond_0
    return-void
.end method

.method private startMultApp(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "startMultAppParam"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "multiApp":Z
    const-string/jumbo v4, "startMultApp"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "startMultiApp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "YES"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :cond_0
    const-string/jumbo v4, "startMultApp"

    invoke-static {p1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    const/4 v0, 0x1

    .line 279
    :cond_1
    if-eqz v0, :cond_3

    .line 280
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    const-string/jumbo v5, "isTinyApp"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 281
    .local v2, "tiny":Z
    if-eqz v2, :cond_3

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "h5_tiny_multiApp"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u5c0f\u7a0b\u5e8f\u4e0d\u652f\u6301MutliApp(\u53ea\u5728\u6d4b\u8bd5\u5305\u91cc\u5f39)"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    move v0, v3

    .line 289
    .end local v0    # "multiApp":Z
    .end local v2    # "tiny":Z
    :cond_3
    return v0
.end method

.method private startPage(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 397
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    const-string/jumbo v4, "u"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    :cond_0
    const-string/jumbo v4, "startPage"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "appId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 403
    const-string/jumbo v4, "H5Application"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startPage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 407
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 408
    .local v16, "matchAppId":Ljava/lang/String;
    const-string/jumbo v4, "H5Application"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "matchAppId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 410
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v4

    .line 411
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 506
    .end local v16    # "matchAppId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    const/4 v4, 0x0

    const-string/jumbo v5, "startApp"

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 419
    const-string/jumbo v4, "H5Application"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "stripLandingURL&Deeplink url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bingo deeplink"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    goto :goto_0

    .line 423
    :cond_3
    const-string/jumbo v4, "startAppNormal"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 424
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "realUrl":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 427
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 428
    .local v13, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v13, :cond_4

    .line 429
    const/4 v4, 0x0

    const-string/jumbo v5, "startApp"

    invoke-interface {v13, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 430
    .local v17, "result":Z
    const/4 v4, 0x1

    const-string/jumbo v5, "startAppNormal"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    const-string/jumbo v7, "publicId"

    .line 431
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "bizScenario"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz v17, :cond_4

    .line 433
    const-string/jumbo v4, "H5Application"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "stripLandingURL&Deeplink url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bingo deeplink in landing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 441
    .end local v3    # "realUrl":Ljava/lang/String;
    .end local v13    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v17    # "result":Z
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v14

    .line 443
    .local v14, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-nez v14, :cond_5

    .line 444
    const-string/jumbo v4, "H5Application"

    const-string/jumbo v5, "failed to get h5 service!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 449
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sIndex:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, "asyncIndex":Ljava/lang/String;
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->addPageParam(Ljava/lang/String;)V

    .line 453
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/Nebula;->commonParamParse(Landroid/os/Bundle;)V

    .line 456
    const-string/jumbo v4, "fromType"

    const-string/jumbo v5, "startApp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    .line 3029
    sget-object v10, Lcom/alipay/mobile/context/a;->b:Landroid/app/Application;

    .line 460
    .local v10, "context":Landroid/content/Context;
    new-instance v12, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    const/4 v4, 0x0

    invoke-direct {v12, v4}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 461
    .local v12, "h5Context":Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Linn;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v12}, Lcom/alipay/mobile/nebulacore/Nebula;->initSession(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 464
    const-string/jumbo v4, "sessionId"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 466
    .local v18, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->onCreateParam:Landroid/os/Bundle;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->put(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 469
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->commonStartActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v15

    .line 470
    .local v15, "intent":Landroid/content/Intent;
    if-nez v15, :cond_6

    .line 471
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 475
    :cond_6
    const-string/jumbo v4, "asyncIndex"

    invoke-virtual {v15, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string/jumbo v4, "asyncIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->asyncStartPage(Landroid/os/Bundle;Lcom/alipay/mobile/h5container/service/H5Service;)V

    .line 480
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;

    .line 481
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;

    .line 482
    .local v11, "h5ActivityProvider":Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;
    if-eqz v11, :cond_7

    .line 483
    const-string/jumbo v4, "H5Application"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "context "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/high16 v4, 0x10000000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 485
    invoke-interface {v11, v10, v15}, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;->handlerStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 489
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5IntentUtil;->putParam(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 493
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v15}, Lcom/alipay/mobile/framework/c;->a(Linn;Landroid/content/Intent;)V

    .line 494
    const-string/jumbo v4, "closeAllActivityAnimation"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 495
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 496
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFadingStart()V

    goto/16 :goto_0

    .line 498
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->hasShowNebulaLoading(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "h5_newloadpage"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 500
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityNoAnimStart()V

    goto/16 :goto_0

    .line 502
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public canRestart(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->startMultApp(Landroid/os/Bundle;)Z

    move-result v0

    .line 260
    .local v0, "multiApp":Z
    const-string/jumbo v1, "H5Application"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "canRestart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", enableMultiApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v1, "multiAppTag"

    const-string/jumbo v2, "YES"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->time:J

    .line 90
    sget-boolean v1, Liog;->a:Z

    if-nez v1, :cond_3

    .line 91
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->time:J

    invoke-static {v2, v3, v4}, Lior;->a(JI)V

    .line 97
    :goto_0
    sput-boolean v4, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    .line 99
    if-eqz p1, :cond_0

    const-string/jumbo v1, "sourceId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "sourceId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->setSourceId(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->setAppStartFromWhere(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "H5Application"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " param "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->time:J

    sput-wide v2, Lior;->h:J

    .line 115
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 117
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    const-string/jumbo v1, "H5Application"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h5EventHandlerService "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->setupBugMeIfNeed()V

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->onCreateParam:Landroid/os/Bundle;

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->startMainLinkMonitor(Ljava/lang/String;)V

    .line 124
    return-void

    .line 92
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_3
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->sNebulaReady:Z

    if-nez v1, :cond_4

    .line 93
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->time:J

    const/4 v1, 0x2

    invoke-static {v2, v3, v1}, Lior;->a(JI)V

    goto/16 :goto_0

    .line 95
    :cond_4
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->time:J

    const/4 v1, 0x3

    invoke-static {v2, v3, v1}, Lior;->a(JI)V

    goto/16 :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    const-string/jumbo v0, "H5Application"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->cancelLinkMonitor(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->clear(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->flushFile()V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 183
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->openAppWithBugme:Z

    if-eqz v0, :cond_1

    .line 184
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->release()V

    .line 188
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->clear(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->clearResourcePackages(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->clear(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->clear()V

    .line 198
    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    const-string/jumbo v2, "multiAppTag"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->clearTabDataByAppId(Ljava/lang/String;)V

    .line 203
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->clearProcessCache(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    sput-boolean v0, Liog;->e:Z

    .line 207
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->clearSw()V

    .line 208
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string/jumbo v1, "u"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    .line 313
    const-string/jumbo v1, "appId"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v1, "H5Application"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRestart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " param "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v11

    .line 317
    .local v11, "session":Lipc;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, "resumeParams":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->startMultApp(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    const-string/jumbo v1, "H5Application"

    const-string/jumbo v2, "startMultiApp"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->startPage(Landroid/os/Bundle;)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v11, :cond_4

    .line 326
    const-string/jumbo v1, "H5Application"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRestart set resumeParams "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-interface {v11}, Lipc;->getData()Lioc;

    move-result-object v1

    const-string/jumbo v3, "h5_session_resume_param"

    invoke-interface {v1, v3, v10}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    .line 331
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_3

    .line 332
    const-string/jumbo v1, "H5_ReStart_Without_URL"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_3
    const-string/jumbo v1, "h5_optionConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, "value":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 337
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 338
    .local v9, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "reStartAppIdList"

    invoke-static {v9, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 339
    .local v8, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 340
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 341
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 342
    .local v7, "copy":Landroid/os/Bundle;
    const-string/jumbo v1, "startMultApp"

    const-string/jumbo v2, "YES"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, "nebulaStartflag"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v7}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v7    # "copy":Landroid/os/Bundle;
    .end local v8    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "H5Application"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRestart start page "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v1, "cd"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "canDestroyParam":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    const-string/jumbo v1, "canDestroy"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 365
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 366
    const-string/jumbo v1, "canDestroy"

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 367
    const-string/jumbo v6, "YES"

    .line 370
    :cond_6
    const-string/jumbo v1, "YES"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 371
    const-string/jumbo v1, "H5Application"

    const-string/jumbo v3, "OnRestart -> destroy same app"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->destroy(Landroid/os/Bundle;)V

    .line 376
    if-eqz p1, :cond_7

    const-string/jumbo v1, "nebulaStartflag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    const-string/jumbo v1, "h5_delete_CHECK_KEY"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 378
    .restart local v13    # "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    const-string/jumbo v1, "nebulaStartflag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 384
    .end local v13    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    move-result-object v1

    const-string/jumbo v2, "20000067"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    .end local v6    # "canDestroyParam":Ljava/lang/String;
    :cond_8
    :goto_1
    const-string/jumbo v1, "H5Application"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h5_app_restart appId={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "} params={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .restart local v6    # "canDestroyParam":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->startPage(Landroid/os/Bundle;)V

    .line 388
    const-string/jumbo v1, "H5Application"

    const-string/jumbo v2, "OnRestart -> startPage"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    :try_start_0
    const-string/jumbo v2, "H5Application"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sourceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getSourceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->getMicroApplicationContext()Lcom/alipay/mobile/framework/c;

    .line 2029
    sget-object v0, Lcom/alipay/mobile/context/a;->b:Landroid/app/Application;

    .line 244
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 245
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->param:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->startPage(Landroid/os/Bundle;)V

    .line 246
    return-void

    .line 238
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5Application"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    const-string/jumbo v0, "H5Application"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method
