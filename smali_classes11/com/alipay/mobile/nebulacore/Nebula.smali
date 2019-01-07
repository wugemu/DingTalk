.class public Lcom/alipay/mobile/nebulacore/Nebula;
.super Ljava/lang/Object;
.source "Nebula.java"


# static fields
.field public static final DEBUG:Z

.field public static final DSL_ERROR:Ljava/lang/String; = "dsl_error"

.field public static final H5_PAGE_RESUME:Ljava/lang/String; = "h5_page_resume"

.field public static final HAS_H5_PKG:Ljava/lang/String; = "hasH5Pkg"

.field public static LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class; = null

.field public static LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class; = null

.field public static final LOAD_FROM_CORE:I = 0x1

.field public static final LOAD_FROM_UC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "H5Nebula"

.field private static appResume:Ljava/lang/String;

.field private static eventDispatcher:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

.field private static h5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

.field private static h5EventHandler:Lcom/alipay/mobile/nebula/process/H5EventHandler;

.field private static h5TinyAppService:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

.field public static h5_dev_uc:Z

.field public static isDSL:Z

.field private static pageId:I

.field private static root:Ljava/lang/Boolean;

.field private static service:Lcom/alipay/mobile/nebulacore/api/NebulaService;

.field private static support:Ljava/lang/Boolean;

.field private static webViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->root:Ljava/lang/Boolean;

    .line 103
    sput v3, Lcom/alipay/mobile/nebulacore/Nebula;->webViewId:I

    sput v2, Lcom/alipay/mobile/nebulacore/Nebula;->pageId:I

    .line 117
    sput-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->h5_dev_uc:Z

    .line 879
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity1;

    aput-object v1, v0, v2

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity2;

    aput-object v1, v0, v3

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity3;

    aput-object v1, v0, v4

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity4;

    aput-object v1, v0, v5

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity5;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    .line 887
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity1;

    aput-object v1, v0, v2

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity2;

    aput-object v1, v0, v3

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity3;

    aput-object v1, v0, v4

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity4;

    aput-object v1, v0, v5

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity5;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class;

    .line 929
    const-string/jumbo v0, "appResume"

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->appResume:Ljava/lang/String;

    .line 965
    sput-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 1065
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->support:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/Nebula;->initTaskInfo(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private static canSet(Ljava/lang/String;)Z
    .locals 10
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 537
    const-string/jumbo v9, "h5_setH5AndroidBug5497Workaround"

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "list":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 542
    .local v0, "appIdList":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 543
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 544
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 545
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 547
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 548
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 549
    .local v6, "value":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 550
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 551
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 552
    .local v7, "version":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 564
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "value":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "version":I
    :cond_1
    :goto_1
    return v8

    .line 559
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "H5Nebula"

    invoke-static {v9, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 564
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static checkOffline(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 970
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/Nebula$6;

    invoke-direct {v2, p1, p0}, Lcom/alipay/mobile/nebulacore/Nebula$6;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5Nebula"

    const-string/jumbo v2, "catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearServiceWork(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 941
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/Nebula;->useSW(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 943
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 944
    const-string/jumbo v2, "onlineHost"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "swHost":Ljava/lang/String;
    const-string/jumbo v2, "H5Nebula"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "swHost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->clearServiceWorker(Ljava/lang/String;)V

    .line 952
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v1    # "swHost":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static commonParamParse(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 313
    const-string/jumbo v0, "H5Nebula"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v0, "delayRender"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 316
    const-string/jumbo v0, "transparent"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 317
    const-string/jumbo v0, "fullscreen"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 318
    const-string/jumbo v0, "landscape"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 319
    const-string/jumbo v0, "transAnimate"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 322
    const-string/jumbo v0, "nsbp"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 323
    const-string/jumbo v0, "nsbv"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 324
    const-string/jumbo v0, "nsbml"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 326
    return-void
.end method

.method public static commonStartActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, "lpid":I
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 332
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getLitePid()I

    move-result v8

    .line 333
    const-string/jumbo v11, "H5Nebula"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "lpid "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    const-string/jumbo v11, "transparent"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 337
    .local v6, "isTransparent":Z
    const-string/jumbo v11, "fullscreen"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 339
    .local v4, "fullScreen":Z
    const-string/jumbo v11, "url"

    invoke-static {p1, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 340
    .local v10, "url":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "appId"

    invoke-static {p1, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 342
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v11

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 343
    .local v9, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string/jumbo v11, "h5_enableFullscreenList"

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "enableFullscreenStr":Ljava/lang/String;
    invoke-static {v10, v3}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v9, :cond_1

    .line 345
    invoke-interface {v9, v10}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 346
    :cond_1
    const/4 v4, 0x0

    .line 347
    const-string/jumbo v11, "fullscreen"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    .end local v3    # "enableFullscreenStr":Ljava/lang/String;
    .end local v9    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_2
    const-string/jumbo v11, "landscape"

    invoke-static {p1, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "landscape":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 353
    const-string/jumbo v11, "H5Nebula"

    const-string/jumbo v12, "fullScreen true,put transparent "

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v11, "transparent"

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isDelayRender(Landroid/os/Bundle;)Z

    move-result v1

    .line 358
    .local v1, "delayRender":Z
    const-string/jumbo v11, "delayRender"

    invoke-virtual {p1, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string/jumbo v11, "H5Nebula"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "config delayRender "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " isTransparent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " lpid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-nez v8, :cond_6

    .line 364
    if-nez v1, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    const-class v0, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    .line 372
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "showLoadingView"

    invoke-virtual {v5, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const/high16 v11, 0x10000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    const-string/jumbo v11, "fullscreen"

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const-string/jumbo v11, "landscape"

    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {v5, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 378
    const-string/jumbo v11, "H5Nebula"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "commonStartActivity "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "delayRender":Z
    .end local v4    # "fullScreen":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "isTransparent":Z
    .end local v7    # "landscape":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 364
    .restart local v1    # "delayRender":Z
    .restart local v4    # "fullScreen":Z
    .restart local v6    # "isTransparent":Z
    .restart local v7    # "landscape":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_5
    const-class v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    goto :goto_0

    .line 366
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->prepare()V

    .line 367
    if-nez v1, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    sget-object v11, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5TRANS_ACTIVITY:[Ljava/lang/Class;

    add-int/lit8 v12, v8, -0x1

    aget-object v0, v11, v12

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    sget-object v11, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    add-int/lit8 v12, v8, -0x1

    aget-object v0, v11, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 380
    .end local v1    # "delayRender":Z
    .end local v4    # "fullScreen":Z
    .end local v6    # "isTransparent":Z
    .end local v7    # "landscape":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "H5Nebula"

    invoke-static {v11, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, "copyBundle":Landroid/os/Bundle;
    if-nez p0, :cond_0

    .line 1052
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 1055
    .restart local p0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :goto_0
    const-string/jumbo v3, "H5Nebula"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "copyBundle "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-object v1

    .line 1056
    :catch_0
    move-exception v2

    .line 1057
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5Nebula"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static disableHWACByUCStyle()Z
    .locals 2

    .prologue
    .line 955
    const-string/jumbo v1, "h5_disableHWACByUCStyle"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "configStr":Ljava/lang/String;
    const-string/jumbo v1, "YES"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    const/4 v1, 0x1

    .line 959
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static dispatchProcess(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "h5BridgeContext"    # Liny;

    .prologue
    .line 777
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    .line 2065
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 778
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->enableHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    .line 780
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->handlerAction(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 781
    const-string/jumbo v0, "H5Nebula"

    const-string/jumbo v1, "H5ProcessUtil handlerAction "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 840
    const-string/jumbo v4, "appId"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "appId":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    .line 843
    .local v2, "enableKeepAlive":Z
    if-eqz v2, :cond_0

    .line 844
    const-string/jumbo v4, "dsl_error"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 845
    .local v1, "dslError":Z
    if-eqz v1, :cond_0

    .line 846
    const-string/jumbo v4, "H5Nebula"

    const-string/jumbo v5, "dslError true set enableKeepAlive==false"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x0

    .line 852
    .end local v1    # "dslError":Z
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 853
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 855
    const-string/jumbo v4, "H5Nebula"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " appId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 859
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v3

    .line 860
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    if-eqz v3, :cond_2

    .line 861
    invoke-interface {v3, p0, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBackAndStop(Landroid/app/Activity;Z)V

    .line 864
    :cond_2
    return-void
.end method

.method public static enableLongClick(Liop;)Z
    .locals 11
    .param p0, "h5Page"    # Liop;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1167
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "isTinyApp"

    invoke-static {v9, v10, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 1168
    .local v3, "isTinyApp":Z
    if-nez v3, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v7

    .line 1171
    :cond_1
    const-string/jumbo v9, "h5_disableLongClick4AndroidInTiny"

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "configStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1173
    .local v1, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 1176
    const-string/jumbo v9, "disable"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    .local v5, "switchStr":Ljava/lang/String;
    const-string/jumbo v9, "YES"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 1178
    .local v4, "switchBool":Z
    if-eqz v4, :cond_0

    .line 1179
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "appId"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v9, "whiteList"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 1181
    .local v6, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1182
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    move v7, v8

    .line 1186
    goto :goto_0
.end method

.method public static enableNativeKeyboard(Liop;)Z
    .locals 10
    .param p0, "h5Page"    # Liop;

    .prologue
    const/4 v7, 0x0

    .line 1138
    if-nez p0, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return v7

    .line 1141
    :cond_1
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "isTinyApp"

    invoke-static {v8, v9, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 1142
    .local v4, "isTinyApp":Z
    if-eqz v4, :cond_0

    .line 1145
    const-string/jumbo v8, "h5_nativeInput4Android"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "configStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1147
    .local v2, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 1150
    const-string/jumbo v8, "switch"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1151
    .local v6, "switchStr":Ljava/lang/String;
    const-string/jumbo v8, "YES"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1152
    .local v5, "switchBool":Z
    if-eqz v5, :cond_0

    .line 1155
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "appId"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v8, "blackList"

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1157
    .local v1, "blackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1158
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1162
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static enableOpenScheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 422
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v4

    .line 427
    :cond_1
    const/4 v3, 0x1

    .line 429
    .local v3, "open":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 430
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_2

    .line 431
    const-string/jumbo v5, "h5_enableStartAppWithScheme"

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    const/4 v3, 0x0

    .line 437
    .end local v0    # "config":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_0

    .line 440
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 441
    .local v2, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static enableThrow()Z
    .locals 2

    .prologue
    .line 1036
    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "h5_plugin_throwException"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x1

    .line 1039
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
    .locals 2

    .prologue
    .line 130
    const-class v1, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->eventDispatcher:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->eventDispatcher:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->eventDispatcher:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    .locals 2

    .prologue
    .line 139
    const-class v1, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5EventHandler:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    if-nez v0, :cond_0

    .line 792
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5EventHandler:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 794
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5EventHandler:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    return-object v0
.end method

.method public static getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .locals 2

    .prologue
    .line 1020
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    return-object v0
.end method

.method public static getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .locals 2

    .prologue
    .line 1027
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5TinyAppService:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    if-nez v0, :cond_0

    .line 1028
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5TinyAppService:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1030
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->h5TinyAppService:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    return-object v0
.end method

.method public static getHeight(Liop;FLandroid/util/DisplayMetrics;)I
    .locals 4
    .param p0, "h5Page"    # Liop;
    .param p1, "density"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 897
    const/4 v2, 0x0

    .line 898
    .local v2, "height":I
    const/4 v0, 0x1

    .line 899
    .local v0, "getHeightFromWebView":Z
    const-string/jumbo v3, "h5_getWebViewHeight"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "getHeightWebview":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 901
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 905
    :cond_0
    if-eqz v0, :cond_2

    .line 906
    invoke-interface {p0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 913
    :cond_1
    :goto_0
    return v2

    .line 908
    :cond_2
    if-eqz p2, :cond_1

    .line 909
    iget v3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0
.end method

.method private static getJsInjector()Ljava/lang/String;
    .locals 8

    .prologue
    .line 762
    const-string/jumbo v3, "https://hpmweb.alipay.com/bugme/assets/mockScript"

    .line 763
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 764
    .local v2, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 765
    .local v0, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_0

    .line 766
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 768
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "var scriptJSMock,headJSMock=document.head||document.documentElement;scriptJSMock=document.createElement(\"script\");scriptJSMock.charset=\"UTF-8\";scriptJSMock.src=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\";headJSMock.insertBefore(scriptJSMock,headJSMock.firstChild);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "js":Ljava/lang/String;
    return-object v1
.end method

.method public static getPackageInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5Nebula"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPageId()I
    .locals 2

    .prologue
    .line 114
    sget v0, Lcom/alipay/mobile/nebulacore/Nebula;->pageId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/Nebula;->pageId:I

    return v0
.end method

.method public static getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->service:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->service:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    .line 125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->service:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Liop;",
            ">;)",
            "Ljava/util/Stack",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    .local p0, "sessionPages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 828
    .local v2, "sessionPagesWithOutPrerender":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 829
    .local v1, "result":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    .line 830
    .local v0, "page":Liop;
    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 831
    .local v3, "startParams":Landroid/os/Bundle;
    const-string/jumbo v5, "isPrerender"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 832
    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
    .end local v0    # "page":Liop;
    .end local v3    # "startParams":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method public static getUCMPackageName(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 176
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v1

    .line 182
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 183
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.UCMobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    const-string/jumbo v1, "com.UCMobile"

    goto :goto_0

    .line 186
    :cond_3
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.UCMobile.intl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    const-string/jumbo v1, "com.UCMobile.intl"

    goto :goto_0

    .line 189
    :cond_4
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.UCMobile.yunos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    const-string/jumbo v1, "com.UCMobile.yunos"

    goto :goto_0
.end method

.method public static getWebViewId()I
    .locals 2

    .prologue
    .line 110
    sget v0, Lcom/alipay/mobile/nebulacore/Nebula;->webViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/Nebula;->webViewId:I

    return v0
.end method

.method public static initInfo(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 692
    new-instance v0, Lcom/alipay/mobile/nebulacore/Nebula$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/Nebula$4;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 700
    return-void
.end method

.method public static initSession(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Context;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;

    .prologue
    .line 490
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "10000111"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "session_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "sessionId":Ljava/lang/String;
    :goto_0
    instance-of v3, p2, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    if-eqz v3, :cond_0

    .line 497
    check-cast p2, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    .line 498
    .end local p2    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Linn;

    move-result-object v1

    .line 499
    .local v1, "microApplication":Linn;
    if-eqz v1, :cond_0

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .end local v1    # "microApplication":Linn;
    :cond_0
    const-string/jumbo v3, "sessionId"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v3, "H5Nebula"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sessionId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    .line 512
    .end local v2    # "sessionId":Ljava/lang/String;
    :goto_1
    return-void

    .line 493
    .restart local p2    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_1
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "sessionId":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v2    # "sessionId":Ljava/lang/String;
    .end local p2    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5Nebula"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static initTaskInfo(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 705
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 706
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/Nebula$5;

    invoke-direct {v2, p1, p0}, Lcom/alipay/mobile/nebulacore/Nebula$5;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5Nebula"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static interceptSchemeForTiny(Ljava/lang/String;Liop;)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5Page"    # Liop;

    .prologue
    const/4 v4, 0x0

    .line 1100
    if-nez p0, :cond_1

    move v3, v4

    .line 1134
    :cond_0
    :goto_0
    return v3

    .line 1103
    :cond_1
    const-string/jumbo v5, "http"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "javascript"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    .line 1104
    goto :goto_0

    .line 1107
    :cond_3
    const-string/jumbo v5, "no"

    const-string/jumbo v6, "h5_interceptSchemeForTiny"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 1108
    goto :goto_0

    .line 1111
    :cond_4
    const/4 v2, 0x0

    .line 1113
    .local v2, "hasPermissionFile":Z
    if-nez p1, :cond_5

    move v3, v4

    .line 1114
    goto :goto_0

    .line 1116
    :cond_5
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1118
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v5

    invoke-interface {v5, v0, p1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Liop;)Z

    move-result v2

    .line 1121
    :cond_6
    const/4 v3, 0x0

    .line 1122
    .local v3, "shouldIntercept":Z
    if-eqz v2, :cond_0

    .line 1123
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v5

    .line 1124
    invoke-interface {v5, v0, p0, p1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionOnScheme(Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v3, 0x1

    .line 1126
    :goto_1
    if-eqz v3, :cond_0

    .line 1127
    const-string/jumbo v4, "H5_AL_NETWORK_PERMISSON_ERROR"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 1128
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "nothasPermissionOnScheme"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "BanMainURL"

    invoke-virtual {v4, v5, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 1127
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "https://render.alipay.com/p/s/h5misc/resource_error?url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, "errorUrl":Ljava/lang/String;
    invoke-interface {p1, v1}, Liop;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "errorUrl":Ljava/lang/String;
    :cond_7
    move v3, v4

    .line 1124
    goto :goto_1
.end method

.method public static isDelayRender(Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string/jumbo v4, "delayRender"

    invoke-static {p0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 155
    .local v2, "delayRender":Z
    if-eqz v2, :cond_0

    .line 156
    const-string/jumbo v4, "H5Nebula"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "param delayRender "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v4, "h5_commonConfig"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "commonConfig":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 159
    .local v1, "config":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "h5_enableDelayRender"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    .local v3, "isDelayRender":Z
    const-string/jumbo v4, "H5Nebula"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "config delayRender "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v0    # "commonConfig":Ljava/lang/String;
    .end local v1    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "isDelayRender":Z
    :cond_0
    return v3
.end method

.method public static isRooted()Z
    .locals 11

    .prologue
    .line 223
    sget-object v8, Lcom/alipay/mobile/nebulacore/Nebula;->root:Ljava/lang/Boolean;

    if-nez v8, :cond_4

    .line 224
    const/4 v6, 0x0

    .line 226
    .local v6, "ret":Z
    const/4 v7, 0x0

    .line 228
    .local v7, "value":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 230
    .local v1, "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v2, v8

    .line 231
    .local v2, "claArrayTypes":[Ljava/lang/Class;
    const-string/jumbo v8, "get"

    invoke-virtual {v1, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 232
    .local v5, "meth":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.secure"

    aput-object v9, v0, v8

    .line 233
    .local v0, "arglist":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 237
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v1    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "claArrayTypes":[Ljava/lang/Class;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_0
    if-eqz v7, :cond_2

    const-string/jumbo v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    const/4 v6, 0x0

    .line 243
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 244
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/system/bin/su"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 246
    const/4 v6, 0x1

    .line 254
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 255
    sput-object v8, Lcom/alipay/mobile/nebulacore/Nebula;->root:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 257
    :goto_3
    return v8

    .line 234
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 235
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "root"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "root "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz v7, :cond_0

    const-string/jumbo v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    const/4 v6, 0x1

    goto :goto_1

    .line 248
    .restart local v4    # "file":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    const-string/jumbo v8, "/system/xbin/su"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    const/4 v6, 0x1

    goto :goto_2

    .line 257
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ret":Z
    :cond_4
    sget-object v8, Lcom/alipay/mobile/nebulacore/Nebula;->root:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_3
.end method

.method public static isTaskRoot(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 868
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public static isTinyResAppId(Ljava/lang/String;)Z
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 274
    .local v0, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 277
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTinyWebView(Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1085
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    .line 1086
    .local v0, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v0, :cond_0

    .line 1087
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getWebViewTag()Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1089
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1091
    const/4 v3, 0x1

    .line 1095
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadImage(Ljava/lang/String;Lioi;)V
    .locals 0
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lioi;

    .prologue
    .line 451
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 452
    return-void
.end method

.method public static loadImageKeepSize(Ljava/lang/String;Lioi;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lioi;

    .prologue
    .line 457
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 459
    .local v0, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    if-eqz v0, :cond_0

    .line 460
    new-instance v1, Lcom/alipay/mobile/nebulacore/Nebula$2;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/Nebula$2;-><init>(Lioi;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->loadImageKeepSize(Ljava/lang/String;Lioi;)V

    .line 482
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string/jumbo v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lioj;

    new-instance v3, Lcom/alipay/mobile/nebulacore/Nebula$3;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebulacore/Nebula$3;-><init>(Lioi;)V

    invoke-direct {v2, p0, v3}, Lioj;-><init>(Ljava/lang/String;Lioi;)V

    .line 472
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static loadJsBridge(Ljava/util/HashMap;II)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # I
    .param p2, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "bridgeParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 642
    sget v6, Lcom/alipay/mobile/nebula/R$raw;->h5_bridge:I

    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "bridgeStr":Ljava/lang/String;
    sget-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 644
    const-string/jumbo v6, "/sdcard/h5_bridge_debug.js"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    const-string/jumbo v6, "/sdcard/h5_bridge_debug.js"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    :cond_0
    const-string/jumbo v6, "h5_bug_me_js_injector"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getJsInjector()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 653
    const-string/jumbo v6, "H5Nebula"

    const-string/jumbo v7, "no bridge data defined!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 687
    .end local v0    # "bridgeStr":Ljava/lang/String;
    .local v1, "bridgeStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 657
    .end local v1    # "bridgeStr":Ljava/lang/String;
    .restart local v0    # "bridgeStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "AlipayJSBridge.startupParams=\'{startupParams}\'"

    .line 658
    .local v4, "startupStr":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 659
    .local v3, "paramsStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 660
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 661
    .local v5, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";AlipayJSBridge."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 662
    goto :goto_1

    .line 665
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 666
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 671
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 672
    const-string/jumbo v6, "var messenger=window.__alipayConsole__||window.console,log=messenger.log"

    const-string/jumbo v7, "var messenger=window,log=window.prompt"

    .line 673
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 678
    :cond_4
    if-ne p1, v9, :cond_7

    .line 679
    const-string/jumbo v6, "console.log(\"begin load AlipayJSBridge\");"

    const-string/jumbo v7, "console.log(\"begin load AlipayJSBridge from core raw\");"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 686
    :cond_5
    :goto_3
    const-string/jumbo v6, "\'{APVIEWID}\'"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 687
    .end local v0    # "bridgeStr":Ljava/lang/String;
    .restart local v1    # "bridgeStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 668
    .end local v1    # "bridgeStr":Ljava/lang/String;
    .restart local v0    # "bridgeStr":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "H5Nebula"

    const-string/jumbo v7, "no params data defined!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 681
    :cond_7
    if-nez p1, :cond_5

    .line 682
    const-string/jumbo v6, "console.log(\"begin load AlipayJSBridge\");"

    const-string/jumbo v7, "console.log(\"begin load AlipayJSBridge from uc provider\");"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static moveTaskToBack(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 873
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBack(Ljava/lang/Object;)V

    .line 877
    :cond_0
    return-void
.end method

.method public static needPageKeepAlive(Liop;Landroid/app/Activity;)Z
    .locals 8
    .param p0, "h5Page"    # Liop;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    .line 799
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 800
    instance-of v6, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v6, :cond_1

    .line 802
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 803
    .local v5, "startParam":Landroid/os/Bundle;
    const-string/jumbo v6, "sessionId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v3

    .line 805
    .local v3, "h5Session":Lipc;
    if-eqz v3, :cond_0

    instance-of v6, v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 806
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 807
    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 808
    .end local v3    # "h5Session":Lipc;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v0

    .local v0, "countTabFragments":I
    move-object v1, p1

    .line 809
    check-cast v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 810
    .local v1, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v2

    .line 811
    .local v2, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isTaskRoot(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 822
    .end local v0    # "countTabFragments":I
    .end local v1    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .end local v2    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .end local v4    # "sessionId":Ljava/lang/String;
    .end local v5    # "startParam":Landroid/os/Bundle;
    :goto_0
    return v6

    .restart local v4    # "sessionId":Ljava/lang/String;
    .restart local v5    # "startParam":Landroid/os/Bundle;
    :cond_0
    move-object v6, p1

    .line 816
    check-cast v6, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v6

    .line 817
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isTaskRoot(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 818
    goto :goto_0

    .line 822
    .end local v4    # "sessionId":Ljava/lang/String;
    .end local v5    # "startParam":Landroid/os/Bundle;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static openInBrowser(Liop;Ljava/lang/String;Liny;)V
    .locals 8
    .param p0, "h5Page"    # Liop;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 389
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 390
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "H5Nebula"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "openInBrowser scheme "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    if-eqz p0, :cond_3

    .line 396
    invoke-interface {p0}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/Nebula;->getPackageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getUCMPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "ucmPkgName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "http"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "https"

    .line 399
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 400
    :cond_2
    invoke-interface {p0}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v3, p2}, Lcom/alipay/mobile/nebulacore/Nebula;->startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Liny;)V

    goto :goto_0

    .line 405
    .end local v1    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "ucmPkgName":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    .local v0, "openIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 407
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 409
    const/4 v5, 0x0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 414
    :cond_4
    if-eqz p2, :cond_0

    .line 415
    const-string/jumbo v5, "success"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    .prologue
    const/4 v6, 0x1

    .line 287
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 288
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 294
    .local v1, "isAvailable":Z
    if-nez v1, :cond_2

    .line 295
    const-string/jumbo v3, "H5Nebula"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[prepareApp] downloadApp appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-direct {v3, v6, v6, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>(ZZLcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    invoke-interface {v2, p0, p1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto :goto_0

    .line 299
    :cond_2
    const-string/jumbo v3, "H5Nebula"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[prepareApp] install App appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyResAppId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "URGENT"

    .line 301
    .local v0, "executor":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/Nebula$1;

    invoke-direct {v4, v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/Nebula$1;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 300
    .end local v0    # "executor":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "IO"

    goto :goto_1
.end method

.method public static removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 570
    if-nez p0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    const-string/jumbo v1, "h5_removeBridgeTimeParam"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    const-string/jumbo v1, "asyncIndex"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    const-string/jumbo v1, "asyncIndex"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_2
    const-string/jumbo v1, "perf_prepare_time"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 585
    const-string/jumbo v1, "perf_prepare_time"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_3
    const-string/jumbo v1, "perf_open_app_time"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 588
    const-string/jumbo v1, "perf_open_app_time"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_4
    const-string/jumbo v1, "is_preload"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    const-string/jumbo v1, "is_preload"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_5
    const-string/jumbo v1, "is_local"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 594
    const-string/jumbo v1, "is_local"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_6
    const-string/jumbo v1, "LITE_PROCESS_ID"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 598
    const-string/jumbo v1, "LITE_PROCESS_ID"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_7
    const-string/jumbo v1, "REALLY_STARTAPP"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 603
    const-string/jumbo v1, "REALLY_STARTAPP"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_8
    const-string/jumbo v1, "REALLY_DOSTARTAPP"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 607
    const-string/jumbo v1, "REALLY_DOSTARTAPP"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_9
    const-string/jumbo v1, "packageLoadingShown"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 612
    const-string/jumbo v1, "packageLoadingShown"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_a
    const-string/jumbo v1, "safePayContext"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    const-string/jumbo v1, "safePayContext"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_b
    const-string/jumbo v1, "reportUrl"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 620
    const-string/jumbo v1, "reportUrl"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_c
    const-string/jumbo v1, "schemeInnerSource"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 625
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableAddUseScan()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 626
    const-string/jumbo v1, "schemeInnerSource"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_d
    const-string/jumbo v1, "useScan"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableAddUseScan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const-string/jumbo v1, "useScan"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static sendAppResume(Linx;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "h5Bridge"    # Linx;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 932
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 933
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "data"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    if-eqz p0, :cond_0

    .line 935
    sget-object v1, Lcom/alipay/mobile/nebulacore/Nebula;->appResume:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 937
    :cond_0
    return-void
.end method

.method public static setWindowSoftInputMode(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "isTransparent"    # Z

    .prologue
    .line 520
    const-string/jumbo v1, "adjustResize"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "useResize":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    const-string/jumbo v1, "H5Nebula"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "useResize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    const-string/jumbo v1, "H5Nebula"

    const-string/jumbo v2, " AndroidBug5497Workaround "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {p0, p3}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;Z)V

    .line 534
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->canSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Liny;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "ucmPkgName"    # Ljava/lang/String;
    .param p3, "bridgeContext"    # Liny;

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string/jumbo v2, "text/html"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.UCMobile.main.UCMobile"

    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v2, "uc_partner"

    const-string/jumbo v3, "UCM_OPEN_FROM_ALIPAY_WEBVIEWSDK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-interface {p3}, Liny;->sendSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Nebula"

    const-string/jumbo v3, "startActivity exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    if-eqz p3, :cond_0

    .line 215
    const-string/jumbo v2, "success"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static supportJsaApi(Liop;Ljava/lang/String;)Z
    .locals 10
    .param p0, "h5Page"    # Liop;
    .param p1, "jsapi"    # Ljava/lang/String;

    .prologue
    .line 1068
    sget-object v3, Lcom/alipay/mobile/nebulacore/Nebula;->support:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1070
    .local v4, "time":J
    const/4 v0, 0x0

    .line 1071
    .local v0, "available":Z
    move-object v2, p0

    .line 1072
    .local v2, "target":Liob;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 1073
    invoke-interface {v2}, Liob;->getPluginManager()Liow;

    move-result-object v1

    .line 1074
    .local v1, "pluginManager":Liow;
    invoke-interface {v2}, Liob;->getParent()Liob;

    move-result-object v2

    .line 1075
    invoke-interface {v1, p1}, Liow;->canHandle(Ljava/lang/String;)Z

    move-result v0

    .line 1076
    goto :goto_0

    .line 1077
    .end local v1    # "pluginManager":Liow;
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebulacore/Nebula;->support:Ljava/lang/Boolean;

    .line 1078
    const-string/jumbo v3, "H5Nebula"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "supportGetLocation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/alipay/mobile/nebulacore/Nebula;->support:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .end local v0    # "available":Z
    .end local v2    # "target":Liob;
    .end local v4    # "time":J
    :cond_1
    sget-object v3, Lcom/alipay/mobile/nebulacore/Nebula;->support:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public static useH5StatusBar(Liop;)Z
    .locals 4
    .param p0, "h5Page"    # Liop;

    .prologue
    const/4 v1, 0x0

    .line 261
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "transparent"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 266
    .local v0, "isTransparent":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static useSW(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 918
    const-string/jumbo v3, "isTinyApp"

    .line 919
    invoke-static {p0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 921
    .local v0, "isTinyApp":Z
    const/4 v1, 0x0

    .line 922
    .local v1, "useSw":Z
    const-string/jumbo v3, "yes"

    const-string/jumbo v4, "useSW"

    invoke-static {p0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 923
    const/4 v1, 0x1

    .line 925
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
