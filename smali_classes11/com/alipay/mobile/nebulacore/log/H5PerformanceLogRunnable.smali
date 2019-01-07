.class public Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;
.super Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
.source "H5PerformanceLogRunnable.java"


# static fields
.field private static final DEFAULT_SYSTEM_WEBVIEW_VERSION:Ljava/lang/String; = "0.0.0.0"

.field private static final TAG:Ljava/lang/String; = "H5PerformanceLog"

.field private static systemWebViewVersion:Ljava/lang/String;


# instance fields
.field private addToParam4:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private availablePageData:Linv;

.field private jsError:Ljava/lang/String;

.field private mWebViewVersion:Ljava/lang/String;

.field private pageData:Lior;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lior;Ljava/util/Map;Linv;Liop;Ljava/lang/String;)V
    .locals 8
    .param p1, "pageData"    # Lior;
    .param p3, "availablePageData"    # Linv;
    .param p4, "h5Page"    # Liop;
    .param p5, "jsError"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lior;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Linv;",
            "Liop;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "performance":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;-><init>(Ljava/util/Map;)V

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 60
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->availablePageData:Linv;

    .line 61
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->jsError:Ljava/lang/String;

    .line 62
    if-eqz p4, :cond_1

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    .line 64
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    .line 65
    invoke-interface {p4}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "mimeType":Ljava/lang/String;
    sget-object v2, Lior;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    const-string/jumbo v3, "ucCacheSdcardLimit"

    sget-object v4, Lior;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    const-string/jumbo v3, "end"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p4}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    .line 72
    .local v0, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->mWebViewVersion:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    const-string/jumbo v3, "webViewVersion"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->mWebViewVersion:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string/jumbo v2, "0.0.0.0"

    sput-object v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->executeGetSystemWebViewVersion()V

    .line 84
    .end local v0    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->getSystemWebViewVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addJsApiCalledLog(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 14
    .param p1, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    const/4 v8, 0x0

    .line 285
    .local v8, "jsApiNum":I
    const-string/jumbo v6, ""

    .line 286
    .local v6, "jsApiList":Ljava/lang/String;
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    invoke-virtual {v11}, Lior;->e()Ljava/util/Map;

    move-result-object v10

    .line 287
    .local v10, "jsapiInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Liol;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 288
    .local v0, "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 290
    .local v5, "filterJSApiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 291
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Liol;

    .line 21026
    .local v9, "jsCallData":Liol;
    iget-object v7, v9, Liol;->a:Ljava/lang/String;

    .line 294
    .local v7, "jsApiName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 295
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 296
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 297
    .local v1, "count":I
    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 299
    .end local v1    # "count":I
    :cond_0
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    add-int/lit8 v8, v8, 0x1

    .line 305
    goto :goto_0

    .line 307
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    .end local v7    # "jsApiName":Ljava/lang/String;
    .end local v9    # "jsCallData":Liol;
    :cond_2
    const-string/jumbo v4, ""

    .line 308
    .local v4, "filterJSApiInfo":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 309
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 310
    .local v3, "filterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 311
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 313
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    goto :goto_1

    .line 318
    .end local v3    # "filterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    if-lez v8, :cond_5

    .line 319
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    const-string/jumbo v12, "jsApiNum"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    const-string/jumbo v12, "jsApiNames"

    invoke-virtual {v11, v12, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    const-string/jumbo v12, "filterJsapiLogs"

    .line 320
    invoke-virtual {v11, v12, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 322
    :cond_5
    return-void
.end method

.method private executeGetSystemWebViewVersion()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    const-string/jumbo v1, "h5_enableGetSystemWebViewVersion"

    .line 344
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "systemWebViewVersionSwitch":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string/jumbo v1, "NORMAL"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;-><init>(Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getDslVersion(Lior;)Ljava/lang/String;
    .locals 2
    .param p1, "pageData"    # Lior;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    if-eqz p1, :cond_0

    const-string/jumbo v0, "YES"

    .line 20960
    iget-object v1, p1, Lior;->at:Ljava/lang/String;

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getDslVersion(Lior;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getElapseFromStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    :try_start_0
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStartTime(Lior;)J

    move-result-wide v6

    .line 327
    .local v6, "start":J
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->performanceMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "endValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 329
    .local v4, "end":J
    const-wide/16 v2, 0x0

    .line 330
    .local v2, "elapsed":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 331
    sub-long v2, v4, v6

    .line 333
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 336
    .end local v1    # "endValue":Ljava/lang/String;
    .end local v2    # "elapsed":J
    .end local v4    # "end":J
    .end local v6    # "start":J
    :goto_0
    return-object v8

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5PerformanceLog"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    const-string/jumbo v8, "0"

    goto :goto_0
.end method

.method private getPageLevel()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    if-nez v2, :cond_1

    .line 233
    const-string/jumbo v1, ""

    .line 253
    :cond_0
    :goto_0
    return-object v1

    .line 236
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 237
    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string/jumbo v1, ""

    .line 238
    .local v1, "pageLevel":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 13474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 239
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isRpcDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    const-string/jumbo v1, "rpc"

    goto :goto_0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 14474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 241
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    const-string/jumbo v1, "alipay"

    goto :goto_0

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 15474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 243
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isSeriousAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    const-string/jumbo v1, "seriousAli"

    goto :goto_0

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 16474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 245
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    const-string/jumbo v1, "ali"

    goto :goto_0

    .line 247
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 17474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 247
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isPartnerDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    const-string/jumbo v1, "partner"

    goto :goto_0

    .line 250
    :cond_6
    const-string/jumbo v1, "else"

    goto :goto_0
.end method

.method private getSystemWebViewVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 371
    const-string/jumbo v5, "0.0.0.0"

    .line 374
    .local v5, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 377
    .local v4, "ua":Ljava/lang/String;
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 378
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 379
    const-string/jumbo v7, "H5PerformanceLog"

    const-string/jumbo v8, "getSystemWebViewVersion, getDefaultUserAgent"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    const-string/jumbo v7, "H5PerformanceLog"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getSystemWebViewVersion, ua = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 388
    const-string/jumbo v7, "Chrome/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, "chromeTagIndex":I
    add-int/lit8 v6, v0, 0x7

    .line 390
    .local v6, "versionStartIndex":I
    if-ltz v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 391
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "sub":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 394
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, "spaceIndex":I
    if-ltz v2, :cond_1

    .line 396
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 401
    .end local v0    # "chromeTagIndex":I
    .end local v2    # "spaceIndex":I
    .end local v3    # "sub":Ljava/lang/String;
    .end local v6    # "versionStartIndex":I
    :cond_1
    return-object v5

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5PerformanceLog"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getSystemWebViewVersion"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logJsApiCall(Ljava/lang/String;)V
    .locals 9
    .param p1, "jsApiConfig"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    const-class v6, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-static {p1, v6}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    .line 213
    .local v0, "jsApiConfigModel":Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 11338
    iget-object v7, v6, Lior;->aV:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, v6, Lior;->aV:Ljava/lang/String;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11339
    iget-object v7, v6, Lior;->aV:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v6, v6, Lior;->aV:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "jsApiDetail":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    const-string/jumbo v4, ""

    .line 216
    .local v4, "spdyDetail":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 11373
    iget-object v6, v6, Lior;->aW:Ljava/lang/String;

    .line 216
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Y`_`Y`_`"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 11465
    iget v7, v7, Lior;->v:I

    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "`_`"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 12373
    iget-object v7, v7, Lior;->aW:Ljava/lang/String;

    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    :goto_1
    const-string/jumbo v6, "H5_SEC_JSAPICALL"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "logVersion"

    const-string/jumbo v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "jsapi"

    .line 223
    invoke-virtual {v6, v7, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "spdy"

    invoke-virtual {v6, v7, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "pageLevel"

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->getPageLevel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 224
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 226
    .local v2, "jsApiLogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v6

    const-string/jumbo v7, "H5SECURITY"

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v3

    .line 227
    .local v3, "logConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 229
    .end local v2    # "jsApiLogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v3    # "logConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .end local v4    # "spdyDetail":Ljava/lang/String;
    :cond_0
    return-void

    .line 11341
    .end local v1    # "jsApiDetail":Ljava/lang/String;
    :cond_1
    iget-object v6, v6, Lior;->aV:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 219
    .restart local v1    # "jsApiDetail":Ljava/lang/String;
    .restart local v4    # "spdyDetail":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    const-string/jumbo v5, "N"

    .line 220
    .local v5, "useSpdy":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "`_`N`_``_`"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private logJsApiPerformance()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    const-string/jumbo v3, ""

    .line 258
    .local v3, "jsApiPerformance":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    invoke-virtual {v4}, Lior;->e()Ljava/util/Map;

    move-result-object v2

    .line 259
    .local v2, "jsApiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Liol;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 260
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liol;

    .line 262
    .local v0, "callData":Liol;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18026
    iget-object v6, v0, Liol;->a:Ljava/lang/String;

    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 18030
    iget-wide v6, v0, Liol;->b:J

    .line 263
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 265
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 19026
    iget-object v6, v0, Liol;->a:Ljava/lang/String;

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 19030
    iget-wide v6, v0, Liol;->b:J

    .line 265
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    goto :goto_0

    .line 268
    .end local v0    # "callData":Liol;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    :cond_1
    const-string/jumbo v4, "H5_JSAPI_PERFORMANCE"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 269
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 19498
    iget-object v5, v5, Lior;->bb:Ljava/lang/String;

    .line 269
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "appId"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 19870
    iget-object v6, v6, Lior;->ak:Ljava/lang/String;

    .line 270
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "url"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 20474
    iget-object v6, v6, Lior;->w:Ljava/lang/String;

    .line 270
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "jsApi"

    .line 271
    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 268
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 273
    :cond_2
    return-void
.end method

.method private logPagePerformance()V
    .locals 22

    .prologue
    .line 115
    const-string/jumbo v14, "H5_PAGE_PERFORMANCE"

    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    .line 116
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 2474
    iget-object v15, v15, Lior;->w:Ljava/lang/String;

    .line 116
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    .line 117
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 2879
    iget-object v14, v14, Lior;->al:Ljava/lang/String;

    .line 117
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 3870
    iget-object v14, v14, Lior;->ak:Ljava/lang/String;

    .line 118
    :goto_0
    const/16 v16, 0x0

    .line 117
    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    .line 119
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 4537
    iget-object v15, v15, Lior;->z:Ljava/lang/String;

    .line 119
    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    .line 120
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    invoke-static {v15}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPerformanceDataMap(Lior;)Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addToParam4:Ljava/util/Map;

    .line 121
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 122
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 124
    .local v8, "performanceData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->performanceMap:Ljava/util/Map;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->performanceMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 125
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->performanceMap:Ljava/util/Map;

    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 127
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "jsErrors"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    const-string/jumbo v17, "jsErrors"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lior;->b(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->performanceMap:Ljava/util/Map;

    const-string/jumbo v15, "pageLoad"

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 129
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "pageLoad"

    const-string/jumbo v16, "pageLoad"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->getElapseFromStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 131
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->performanceMap:Ljava/util/Map;

    const-string/jumbo v15, "domReady"

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 132
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "domReady"

    const-string/jumbo v16, "domReady"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->getElapseFromStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->availablePageData:Linv;

    .line 5043
    iget-wide v14, v14, Linv;->e:J

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->availablePageData:Linv;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLior;Linv;)J

    move-result-wide v10

    .line 138
    .local v10, "stopLoading":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->availablePageData:Linv;

    .line 5047
    iget-wide v14, v14, Linv;->g:J

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->availablePageData:Linv;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLior;Linv;)J

    move-result-wide v12

    .line 141
    .local v12, "stopLoadingWithoutLocating":J
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "stopLoading"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "stopLoadingWithoutLocating"

    .line 142
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 144
    const-string/jumbo v14, "no"

    const-string/jumbo v15, "h5_uploadCacheResNum"

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 145
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "cacheResNum"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 5439
    move-object/from16 v0, v16

    iget v0, v0, Lior;->aZ:I

    move/from16 v16, v0

    .line 145
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "aliResNum"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 5448
    const/16 v16, 0x0

    .line 146
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 149
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 150
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "enableBugmeDump"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 154
    :cond_3
    sget-boolean v14, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->sHasSetLastModifiedFail:Z

    if-eqz v14, :cond_4

    .line 155
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "lastModifiedFailPKGI"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 158
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 159
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_5

    .line 160
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v9

    .line 161
    .local v9, "width":I
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    .line 162
    .local v6, "height":I
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "screenDisplay"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 165
    .end local v6    # "height":I
    .end local v9    # "width":I
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "cpuHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 167
    const-string/jumbo v14, "\\s+"

    const-string/jumbo v15, ""

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "cpuHardware"

    invoke-virtual {v14, v15, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 171
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->addJsApiCalledLog(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 173
    sget-wide v14, Lior;->g:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_7

    .line 174
    sget-wide v14, Lior;->g:J

    sget-wide v16, Lior;->h:J

    sub-long v4, v14, v16

    .line 175
    .local v4, "cost":J
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "swFirstJsApiCallTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 176
    const-string/jumbo v14, "H5PerformanceLog"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "tinyApp swFirstJsApiCallTime "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-wide/16 v14, 0x0

    sput-wide v14, Lior;->g:J

    .line 181
    .end local v4    # "cost":J
    :cond_7
    sget-object v14, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 182
    const-string/jumbo v14, "0.0.0.0"

    sput-object v14, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    .line 184
    :cond_8
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "systemWebViewVersion"

    sget-object v16, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->systemWebViewVersion:Ljava/lang/String;

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 186
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "isLocal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 5942
    move-object/from16 v0, v16

    iget-object v0, v0, Lior;->ar:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 186
    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "containCORSRes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    const-string/jumbo v17, "containCORSRes"

    const/16 v18, 0x0

    .line 187
    invoke-virtual/range {v16 .. v18}, Lior;->b(Ljava/lang/String;Z)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "usePreRequest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 6302
    const/16 v16, 0x0

    .line 188
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "preConnectRequest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 6311
    const/16 v16, 0x0

    .line 189
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "abtestUsedTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 191
    const-string/jumbo v16, ""

    .line 190
    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "fallbackType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    const-string/jumbo v17, "fallbackType"

    const/16 v18, 0x0

    .line 192
    invoke-virtual/range {v16 .. v18}, Lior;->b(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "protocal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 8021
    const/16 v16, 0x0

    .line 193
    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v16

    const-string/jumbo v17, "responseDuration"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 8423
    const-wide/16 v18, 0x0

    iget-wide v0, v14, Lior;->j:J

    move-wide/from16 v20, v0

    cmp-long v15, v18, v20

    if-gtz v15, :cond_a

    .line 8424
    iget-wide v14, v14, Lior;->j:J

    .line 194
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v18, v0

    .line 9306
    move-object/from16 v0, v18

    iget-wide v0, v0, Lior;->j:J

    move-wide/from16 v18, v0

    .line 194
    sub-long v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "h2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    const-string/jumbo v17, "h2"

    .line 195
    invoke-virtual/range {v16 .. v17}, Lior;->k(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "spdy"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    const-string/jumbo v17, "spdy"

    .line 196
    invoke-virtual/range {v16 .. v17}, Lior;->k(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "h1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    const-string/jumbo v17, "h1"

    .line 197
    invoke-virtual/range {v16 .. v17}, Lior;->k(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "useWebViewPool"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 9320
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lior;->aT:Z

    move/from16 v16, v0

    .line 198
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "lottieLoadStart"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 9461
    move-object/from16 v0, v16

    iget-wide v0, v0, Lior;->aO:J

    move-wide/from16 v16, v0

    .line 199
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "lottieLoadEnd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 9478
    move-object/from16 v0, v16

    iget-wide v0, v0, Lior;->aP:J

    move-wide/from16 v16, v0

    .line 200
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "isLowerDevice"

    sget-object v16, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    .line 201
    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string/jumbo v15, "multiProcessMode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    move-object/from16 v16, v0

    .line 10435
    const/16 v16, 0x0

    .line 202
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 204
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v14

    const-string/jumbo v15, "webapp"

    .line 205
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v14

    const-string/jumbo v15, "H-MM"

    .line 206
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v7

    .line 208
    .local v7, "performanceConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 209
    return-void

    .line 118
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "cpuHardware":Ljava/lang/String;
    .end local v7    # "performanceConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    .end local v8    # "performanceData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v10    # "stopLoading":J
    .end local v12    # "stopLoadingWithoutLocating":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 3879
    iget-object v14, v14, Lior;->al:Ljava/lang/String;

    goto/16 :goto_0

    .line 8426
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "cpuHardware":Ljava/lang/String;
    .restart local v8    # "performanceData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .restart local v10    # "stopLoading":J
    .restart local v12    # "stopLoadingWithoutLocating":J
    :cond_a
    const-wide/16 v14, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->availablePageData:Linv;

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->logPagePerformance()V

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->jsError:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    const-string/jumbo v1, "H5_AL_PAGE_JSERROR"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->jsError:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "webViewVersion"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->mWebViewVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "dslVersion"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->pageData:Lior;

    .line 99
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->getDslVersion(Lior;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 103
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableJsApiPerformance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->logJsApiPerformance()V

    .line 108
    :cond_3
    const-string/jumbo v1, "h5_secJsApiCallConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "jsApiConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->logJsApiCall(Ljava/lang/String;)V

    goto :goto_0
.end method
