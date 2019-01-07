.class public final Lhnu;
.super Ljava/lang/Object;
.source "MiniAppServiceWorkerControllerProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;


# static fields
.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/alibaba/fastjson/JSONArray;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    sput-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "getSystemInfo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "remoteLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "httpRequest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "reportData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "getAuthCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "setTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "getTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "removeTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "trackerConfig"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "reportData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "configService.getConfig"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "getAuthUserInfo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lhnu;->e:Ljava/util/List;

    const-string/jumbo v1, "localLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "H5ServiceWorkerControllerProviderImpl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnu;->a:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhnu;->b:Z

    return-void
.end method

.method private a(Lipc;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "workSession"    # Lipc;
    .param p2, "u"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-interface {p1}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    .line 313
    .local v0, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 316
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v1, :cond_1

    .line 323
    .end local v0    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v1

    .line 321
    :cond_0
    iget-object v2, p0, Lhnu;->a:Ljava/lang/String;

    const-string/jumbo v3, "workSession is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)Liop;
    .locals 7
    .param p1, "id"    # I
    .param p2, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 403
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 404
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    iget-object v4, p0, Lhnu;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getH5page viewId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " workerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    if-eqz v2, :cond_9

    .line 406
    const-class v5, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    monitor-enter v5

    .line 407
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 408
    :cond_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    .line 410
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Linw;

    move-result-object v0

    .line 411
    .local v0, "h5BaseFragment":Linw;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 412
    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v1

    monitor-exit v5

    .line 461
    .end local v0    # "h5BaseFragment":Linw;
    :goto_0
    return-object v1

    .line 414
    .restart local v0    # "h5BaseFragment":Linw;
    :cond_1
    iget-object v4, p0, Lhnu;->a:Ljava/lang/String;

    const-string/jumbo v6, "fatal error h5Page == null #1"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 416
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    iget-object v4, p0, Lhnu;->a:Ljava/lang/String;

    const-string/jumbo v6, "not send work to web-view"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lhnu;->b()Liop;

    move-result-object v1

    .end local v1    # "h5Page":Liop;
    monitor-exit v5

    goto :goto_0

    .line 457
    .end local v0    # "h5BaseFragment":Linw;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 420
    .restart local v0    # "h5BaseFragment":Linw;
    .restart local v1    # "h5Page":Liop;
    :cond_2
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 424
    .end local v0    # "h5BaseFragment":Linw;
    .end local v1    # "h5Page":Liop;
    :cond_3
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByViewId(I)Linw;

    move-result-object v0

    .line 425
    .restart local v0    # "h5BaseFragment":Linw;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 426
    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v1

    monitor-exit v5

    goto :goto_0

    .line 428
    :cond_4
    iget-object v4, p0, Lhnu;->a:Ljava/lang/String;

    const-string/jumbo v6, "fatal error h5Page == null #2"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_1
    monitor-exit v5

    .line 461
    .end local v0    # "h5BaseFragment":Linw;
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 433
    :cond_5
    const/4 v1, 0x0

    .line 435
    .restart local v1    # "h5Page":Liop;
    invoke-direct {p0, p2}, Lhnu;->c(Ljava/lang/String;)Linw;

    move-result-object v0

    .line 436
    .restart local v0    # "h5BaseFragment":Linw;
    if-eqz v0, :cond_6

    .line 437
    invoke-interface {v0}, Linw;->getH5Page()Liop;

    move-result-object v1

    .line 444
    :cond_6
    if-nez v1, :cond_7

    .line 445
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessionByWorkerId(Ljava/lang/String;)Lipc;

    move-result-object v3

    .line 446
    .local v3, "h5Session":Lipc;
    if-eqz v3, :cond_7

    .line 447
    invoke-interface {v3}, Lipc;->getTopPage()Liop;

    move-result-object v1

    .line 451
    .end local v3    # "h5Session":Lipc;
    :cond_7
    if-eqz v1, :cond_8

    .line 452
    monitor-exit v5

    goto :goto_0

    .line 454
    :cond_8
    iget-object v4, p0, Lhnu;->a:Ljava/lang/String;

    const-string/jumbo v6, "fatal error h5Page == null #3"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 459
    .end local v0    # "h5BaseFragment":Linw;
    .end local v1    # "h5Page":Liop;
    :cond_9
    iget-object v4, p0, Lhnu;->a:Ljava/lang/String;

    const-string/jumbo v5, "fatal error h5Service==null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lhnu;ILjava/lang/String;)Liop;
    .locals 1
    .param p0, "x0"    # Lhnu;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lhnu;->a(ILjava/lang/String;)Liop;

    move-result-object v0

    return-object v0
.end method

.method private a()Lipc;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 329
    const-class v6, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 330
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_2

    .line 332
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v4

    .line 333
    .local v4, "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    if-eqz v4, :cond_2

    .line 334
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 336
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 337
    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lipc;

    .line 338
    .local v3, "session":Lipc;
    if-eqz v3, :cond_0

    .line 339
    invoke-interface {v3}, Lipc;->getId()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "id":Ljava/lang/String;
    iget-object v6, p0, Lhnu;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sessionId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {v1}, Lhnu;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 342
    monitor-exit v4

    .line 352
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "session":Lipc;
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :goto_1
    return-object v3

    .line 336
    .restart local v2    # "index":I
    .restart local v3    # "session":Lipc;
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 346
    .end local v3    # "session":Lipc;
    :cond_1
    monitor-exit v4

    .line 352
    .end local v2    # "index":I
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 346
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catch_0
    move-exception v5

    .line 349
    .local v5, "throwable":Ljava/lang/Throwable;
    iget-object v6, p0, Lhnu;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lhnu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhnu;

    .prologue
    .line 52
    iget-object v0, p0, Lhnu;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5ServiceWorkerHook4Bridge"    # Lipb;
    .param p4, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 466
    .line 1542
    sget-object v0, Lhnu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1553
    if-eqz v0, :cond_0

    .line 1554
    const-string/jumbo v1, "h5_enableSWAsync"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1555
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    const/4 v0, 0x0

    .line 1542
    :goto_0
    if-eqz v0, :cond_1

    .line 1543
    invoke-static {}, Lioe;->a()Landroid/os/Handler;

    move-result-object v0

    move-object v6, v0

    .line 466
    :goto_1
    new-instance v0, Lhnu$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lhnu$3;-><init>(Lhnu;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lipb;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void

    .line 1559
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v0, p0, Lhnu;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1546
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhnu;->d:Landroid/os/Handler;

    .line 1548
    :cond_2
    iget-object v0, p0, Lhnu;->d:Landroid/os/Handler;

    move-object v6, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "68687029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Liop;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 377
    const-class v6, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 378
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_2

    .line 380
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v4

    .line 381
    .local v4, "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    if-eqz v4, :cond_2

    .line 382
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 384
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 385
    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lipc;

    .line 386
    .local v3, "session":Lipc;
    if-eqz v3, :cond_0

    .line 387
    invoke-interface {v3}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 389
    invoke-interface {v3}, Lipc;->getTopPage()Liop;

    move-result-object v6

    monitor-exit v4

    .line 399
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "session":Lipc;
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :goto_1
    return-object v6

    .line 384
    .restart local v2    # "index":I
    .restart local v3    # "session":Lipc;
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 393
    .end local v3    # "session":Lipc;
    :cond_1
    monitor-exit v4

    .line 399
    .end local v2    # "index":I
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_2
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 393
    .restart local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 395
    .end local v4    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :catch_0
    move-exception v5

    .line 396
    .local v5, "throwable":Ljava/lang/Throwable;
    iget-object v6, p0, Lhnu;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 368
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Linw;
    .locals 12
    .param p1, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 571
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v3

    .line 572
    .local v3, "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    const/4 v6, 0x0

    .line 573
    .local v6, "targetSession":Lipc;
    if-eqz v3, :cond_4

    .line 574
    monitor-enter v3

    .line 575
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 577
    .local v8, "var3":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 578
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipc;

    .line 579
    .local v2, "session":Lipc;
    if-eqz v2, :cond_0

    .line 580
    invoke-interface {v2}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "id":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 583
    move-object v6, v2

    invoke-interface {v2}, Lipc;->getTopPage()Liop;

    move-result-object v4

    .line 584
    .local v4, "targetPage":Liop;
    const/4 v5, 0x0

    .line 585
    .local v5, "targetParams":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 586
    .local v1, "isMainTask":Z
    if-eqz v4, :cond_1

    .line 587
    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 589
    :cond_1
    if-eqz v5, :cond_2

    .line 590
    const-string/jumbo v9, "mainTask"

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 594
    :cond_2
    if-nez v1, :cond_0

    .line 600
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "isMainTask":Z
    .end local v2    # "session":Lipc;
    .end local v4    # "targetPage":Liop;
    .end local v5    # "targetParams":Landroid/os/Bundle;
    :cond_3
    monitor-exit v3

    .line 602
    .end local v8    # "var3":Ljava/util/Iterator;
    :cond_4
    if-nez v6, :cond_5

    move-object v7, v10

    .line 606
    :goto_0
    return-object v7

    .line 600
    :catchall_0
    move-exception v9

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 605
    :cond_5
    invoke-interface {v6}, Lipc;->getTopPage()Liop;

    move-result-object v9

    .line 1617
    if-eqz v9, :cond_8

    .line 1619
    invoke-interface {v9}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1620
    invoke-interface {v9}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v11

    instance-of v11, v11, Landroid/app/Activity;

    if-eqz v11, :cond_7

    .line 1621
    invoke-interface {v9}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    .line 1622
    instance-of v11, v9, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v11, :cond_6

    move-object v7, v10

    .line 606
    .local v7, "topFragment":Landroid/support/v4/app/Fragment;
    :goto_1
    if-eqz v7, :cond_9

    instance-of v9, v7, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v9, :cond_9

    check-cast v7, Linw;

    goto :goto_0

    .line 1622
    .end local v7    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_6
    check-cast v9, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    goto :goto_1

    :cond_7
    move-object v7, v10

    .line 1624
    goto :goto_1

    :cond_8
    move-object v7, v10

    .line 1627
    goto :goto_1

    .restart local v7    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_9
    move-object v7, v10

    .line 606
    goto :goto_0
.end method


# virtual methods
.method public final shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 36
    .param p1, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .prologue
    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v28

    .line 92
    .local v28, "uri":Landroid/net/Uri;
    if-eqz v28, :cond_4

    .line 94
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    .line 95
    .local v27, "u":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    .line 97
    .local v23, "scheme":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "host":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "://"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 100
    .local v20, "kylinPrefix":Ljava/lang/String;
    const-string/jumbo v31, "https://alipay.kylinBridge"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lhnu;->b:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 102
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lhnu;->b:Z

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sput-wide v32, Lior;->g:J

    .line 106
    :cond_0
    const-string/jumbo v31, "data"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "shouldInterceptRequest4ServiceWorker data "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    .line 110
    .local v19, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_2

    .line 111
    :cond_1
    const/16 v30, 0x0

    .line 306
    .end local v7    # "data":Ljava/lang/String;
    .end local v15    # "host":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "kylinPrefix":Ljava/lang/String;
    .end local v23    # "scheme":Ljava/lang/String;
    .end local v27    # "u":Ljava/lang/String;
    :goto_0
    return-object v30

    .line 114
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "kylinPrefix":Ljava/lang/String;
    .restart local v23    # "scheme":Ljava/lang/String;
    .restart local v27    # "u":Ljava/lang/String;
    :cond_2
    const-string/jumbo v31, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v31, "requestId"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v22

    .line 116
    .local v22, "requestId":I
    const-string/jumbo v31, "applicationId"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "applicationId":Ljava/lang/String;
    const-string/jumbo v31, "callback"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "callback":Ljava/lang/String;
    const-string/jumbo v31, "postMessage"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 121
    const-string/jumbo v31, "data"

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v21

    .line 122
    .local v21, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v31, "viewId"

    const/16 v32, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v29

    .line 123
    .local v29, "viewId":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lhnu;->a(ILjava/lang/String;)Liop;

    move-result-object v11

    .line 124
    .local v11, "h5Page":Liop;
    if-eqz v11, :cond_3

    invoke-interface {v11}, Liop;->getBridge()Linx;

    move-result-object v31

    if-eqz v31, :cond_3

    .line 125
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 126
    .local v8, "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v31, "data"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v11}, Liop;->getBridge()Linx;

    move-result-object v31

    const-string/jumbo v32, "message"

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v8, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 129
    .end local v8    # "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/json"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v34, ""

    const-string/jumbo v35, "utf-8"

    .line 130
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 301
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "applicationId":Ljava/lang/String;
    .end local v6    # "callback":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v11    # "h5Page":Liop;
    .end local v15    # "host":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "kylinPrefix":Ljava/lang/String;
    .end local v21    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "requestId":I
    .end local v23    # "scheme":Ljava/lang/String;
    .end local v27    # "u":Ljava/lang/String;
    .end local v29    # "viewId":I
    :catch_0
    move-exception v26

    .line 302
    .local v26, "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "catch exception "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .end local v26    # "throwable":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 133
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "applicationId":Ljava/lang/String;
    .restart local v6    # "callback":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "kylinPrefix":Ljava/lang/String;
    .restart local v22    # "requestId":I
    .restart local v23    # "scheme":Ljava/lang/String;
    .restart local v27    # "u":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_c

    .line 144
    const/4 v14, 0x0

    .line 145
    .local v14, "hasPermission":Z
    const-string/jumbo v31, "H5_SWSYNCAPILIST"

    .line 146
    invoke-static/range {v31 .. v31}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 148
    .local v18, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1069
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    if-nez v31, :cond_7

    .line 1070
    new-instance v31, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v31 .. v31}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "getSystemInfo"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "setAPDataStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "getAPDataStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "removeAPDataStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "clearAPDataStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "setTinyLocalStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "getTinyLocalStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "removeTinyLocalStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "clearTinyLocalStorage"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "getTinyLocalStorageInfo"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "getStartupParams"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v31, v0

    const-string/jumbo v32, "internalAPI"

    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->c:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v18, v0

    .line 151
    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_9

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "sync  H5_SWSYNCAPILIST"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v31

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 154
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 155
    .local v17, "item":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 156
    const/4 v14, 0x1

    .line 161
    .end local v16    # "i":I
    .end local v17    # "item":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "sync hasPermission "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz v14, :cond_b

    .line 163
    new-instance v24, Landroid/os/ConditionVariable;

    invoke-direct/range {v24 .. v24}, Landroid/os/ConditionVariable;-><init>()V

    .line 164
    .local v24, "syncLock":Landroid/os/ConditionVariable;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v25, "syncResult":Ljava/lang/StringBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v31, "("

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v31, Lhnu$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Lhnu$1;-><init>(Lhnu;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/ConditionVariable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-direct {v0, v4, v1, v2, v5}, Lhnu;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {v24 .. v24}, Landroid/os/ConditionVariable;->close()V

    .line 198
    const-wide/16 v32, 0x7d0

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 199
    const-string/jumbo v31, ")"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/javascript"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    .line 202
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "utf-8"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 153
    .end local v24    # "syncLock":Landroid/os/ConditionVariable;
    .end local v25    # "syncResult":Ljava/lang/StringBuilder;
    .restart local v16    # "i":I
    .restart local v17    # "item":Ljava/lang/String;
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 204
    .end local v16    # "i":I
    .end local v17    # "item":Ljava/lang/String;
    :cond_b
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/javascript"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "(\'not in H5_SWSYNCAPILIST\')"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "utf-8"

    .line 207
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 211
    .end local v14    # "hasPermission":Z
    .end local v18    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_c
    new-instance v31, Lhnu$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v5, v4}, Lhnu$2;-><init>(Lhnu;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-direct {v0, v4, v1, v2, v5}, Lhnu;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V

    .line 248
    new-instance v30, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v31, "application/json"

    const-string/jumbo v32, "UTF-8"

    new-instance v33, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v34, ""

    const-string/jumbo v35, "utf-8"

    .line 249
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v30 .. v33}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 259
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "applicationId":Ljava/lang/String;
    .end local v6    # "callback":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "requestId":I
    :cond_d
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    const-string/jumbo v31, "blob"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url begin:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v12

    .line 262
    .local v12, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v12, :cond_10

    .line 263
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopSession()Lipc;

    move-result-object v13

    .line 264
    .local v13, "h5Session":Lipc;
    if-eqz v13, :cond_e

    .line 265
    invoke-interface {v13}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v10

    .line 266
    .local v10, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v10, :cond_e

    .line 268
    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v30

    .line 269
    .local v30, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v30, :cond_e

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url from pkg "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    .end local v10    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_e
    if-eqz v13, :cond_10

    .line 278
    invoke-virtual {v12}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Linw;

    move-result-object v9

    .line 279
    .local v9, "h5BaseFragment":Linw;
    if-eqz v9, :cond_f

    invoke-interface {v9}, Linw;->getH5Page()Liop;

    move-result-object v31

    if-eqz v31, :cond_f

    const-string/jumbo v31, "h5_enableWebSession"

    invoke-static/range {v31 .. v31}, Lhnu;->b(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 280
    invoke-interface {v9}, Linw;->getH5Page()Liop;

    move-result-object v11

    .line 281
    .restart local v11    # "h5Page":Liop;
    invoke-interface {v11}, Liop;->getSession()Lipc;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lhnu;->a(Lipc;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v30

    .line 282
    .restart local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v30, :cond_f

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url form mainPageResourceResponse :"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .end local v11    # "h5Page":Liop;
    .end local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_f
    invoke-interface {v13}, Lipc;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lhnu;->a(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    const-string/jumbo v31, "h5_enableDevSession"

    invoke-static/range {v31 .. v31}, Lhnu;->b(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "is dev session "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lipc;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct/range {p0 .. p0}, Lhnu;->a()Lipc;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lhnu;->a(Lipc;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v30

    .line 291
    .restart local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v30, :cond_10

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url form mainPageResourceResponse inDevSession:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .end local v9    # "h5BaseFragment":Linw;
    .end local v13    # "h5Session":Lipc;
    .end local v30    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "work load url form online:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
