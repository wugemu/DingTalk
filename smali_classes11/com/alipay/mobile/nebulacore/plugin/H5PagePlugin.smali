.class public Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;
.super Lipd;
.source "H5PagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;
    }
.end annotation


# static fields
.field private static final COOL_LOADING_CTRL:Ljava/lang/String; = "coolLoadingCtrl"

.field private static final GET_STARTUP_PARAMS:Ljava/lang/String; = "getStartupParams"

.field private static final INPUT_FOCUS:Ljava/lang/String; = "inputFocus4Android"

.field public static final SHOW_SOFT_INPUT:Ljava/lang/String; = "showSoftInput"

.field private static final STOP_LOADING:Ljava/lang/String; = "stopLoading"

.field public static final TAG:Ljava/lang/String; = "H5PagePlugin"

.field public static final TOGGLE_SOFT_INPUT:Ljava/lang/String; = "toggleSoftInput"

.field private static final UNKNOWN_ERROR_NUM:I = 0xc


# instance fields
.field private backBehavior:I

.field private backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

.field private h5Bridge:Linx;

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private pageStatus:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 72
    invoke-direct {p0}, Lipd;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 74
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 75
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    .line 76
    sget v1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->NONE:I

    iput v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageStatus:I

    .line 77
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    .line 78
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "backBehavior"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "behavior":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->setBackBehavior(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->performBack()V

    return-void
.end method

.method private exit(Z)V
    .locals 3
    .param p1, "exitTabScene"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_2

    .line 537
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 540
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 541
    const-string/jumbo v0, "H5PagePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "h5page close, setRefer : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_1
    if-eqz p1, :cond_3

    .line 544
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitTabPage()Z

    .line 549
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lios;->d:Z

    .line 551
    :cond_2
    return-void

    .line 546
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    goto :goto_0
.end method

.method private getStartupParams(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0xc

    .line 445
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v6, :cond_0

    .line 446
    const-string/jumbo v6, "page is null"

    invoke-direct {p0, p2, v7, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->sendError(Liny;ILjava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 451
    .local v5, "startParams":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 452
    :cond_1
    const-string/jumbo v6, "params is null"

    invoke-direct {p0, p2, v7, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->sendError(Liny;ILjava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_2
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/Nebula;->removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 3121
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 459
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "key"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 460
    invoke-direct {p0, p2, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->sendResult(Liny;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 462
    :cond_3
    const-string/jumbo v6, "key"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 463
    .local v2, "keys":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 464
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 465
    .local v4, "resultObj":Lcom/alibaba/fastjson/JSONObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 466
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 468
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p2, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->sendResult(Liny;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 473
    .end local v0    # "i":I
    .end local v4    # "resultObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v6

    const-string/jumbo v7, "\u65e0\u6548\u7684api\u5165\u53c2"

    invoke-direct {p0, p2, v6, v7}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->sendError(Liny;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private loadData(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 646
    .line 6121
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 647
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "baseUrl"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "baseUrl":Ljava/lang/String;
    const-string/jumbo v0, "data"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "data":Ljava/lang/String;
    const-string/jumbo v0, "mimeType"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 650
    .local v4, "mimeType":Ljava/lang/String;
    const-string/jumbo v0, "encoding"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 651
    .local v5, "encoding":Ljava/lang/String;
    const-string/jumbo v0, "historyUrl"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, "historyUrl":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method private loadUrl(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 609
    .line 5121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 610
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "url"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 612
    const-string/jumbo v6, "H5PagePlugin"

    const-string/jumbo v7, "h5_url_isnull"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string/jumbo v6, "loadUrl"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "url"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-interface {v6, v5, v7}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 619
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerLoadUrlLink(Liop;)V

    .line 622
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v6, :cond_2

    .line 623
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 624
    .local v4, "startParams":Landroid/os/Bundle;
    const-string/jumbo v6, "openUrlMethod"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "method":Ljava/lang/String;
    const-string/jumbo v6, "POST"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 626
    const-string/jumbo v6, "openUrlPostParams"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "postParams":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 628
    const-string/jumbo v6, "openUrlMethod"

    const-string/jumbo v7, "GET"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v6, "openUrlPostParams"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 636
    .end local v1    # "method":Ljava/lang/String;
    .end local v3    # "postParams":Ljava/lang/String;
    .end local v4    # "startParams":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v6, "Referer"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    .local v0, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "Referer"

    const-string/jumbo v7, "Referer"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v6, v5, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 641
    .end local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private pageBack()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 558
    .local v6, "time":J
    iget v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageStatus:I

    sget v11, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iget-boolean v10, v10, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    if-nez v10, :cond_1

    move v5, v8

    .line 562
    .local v5, "sendIntent":Z
    :goto_0
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iget-wide v10, v10, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    move v2, v8

    .line 563
    .local v2, "enoughElapse":Z
    :goto_1
    if-eqz v5, :cond_0

    if-nez v2, :cond_3

    :cond_0
    move v3, v8

    .line 566
    .local v3, "ignoreBridge":Z
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 567
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v9

    .line 568
    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 569
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 570
    .local v0, "activity":Landroid/app/Activity;
    iget v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    sget v10, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    if-ne v9, v10, :cond_4

    .line 571
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Liop;Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 572
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 606
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_3
    return-void

    .end local v2    # "enoughElapse":Z
    .end local v3    # "ignoreBridge":Z
    .end local v5    # "sendIntent":Z
    :cond_1
    move v5, v9

    .line 558
    goto :goto_0

    .restart local v5    # "sendIntent":Z
    :cond_2
    move v2, v9

    .line 562
    goto :goto_1

    .restart local v2    # "enoughElapse":Z
    :cond_3
    move v3, v9

    .line 563
    goto :goto_2

    .line 576
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v3    # "ignoreBridge":Z
    :cond_4
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v9

    if-nez v9, :cond_6

    .line 577
    :cond_5
    const-string/jumbo v9, "H5PagePlugin"

    const-string/jumbo v10, "webview can\'t go back and do exit!"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Liop;Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 579
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_3

    .line 584
    :cond_6
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v4

    .line 585
    .local v4, "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 586
    .local v1, "currentIndex":I
    if-gtz v1, :cond_7

    .line 587
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Liop;Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 588
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_3

    .line 597
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "currentIndex":I
    .end local v4    # "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    :cond_7
    if-nez v3, :cond_8

    .line 598
    const-string/jumbo v9, "H5PagePlugin"

    const-string/jumbo v10, "send back event to bridge!"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iput-boolean v8, v9, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 600
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iput-wide v6, v8, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    .line 601
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    const-string/jumbo v9, "back"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    invoke-interface {v8, v9, v10, v11}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_3

    .line 603
    :cond_8
    const-string/jumbo v8, "H5PagePlugin"

    const-string/jumbo v9, "ignore bridge, perform back!"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->performBack()V

    goto/16 :goto_3
.end method

.method private performBack()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 663
    const-string/jumbo v2, "H5PagePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "perform back behavior "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    sget v3, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    if-ne v2, v3, :cond_1

    .line 666
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageClose"

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    sget v3, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    if-ne v2, v3, :cond_0

    .line 668
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v2

    if-nez v2, :cond_3

    .line 669
    :cond_2
    const-string/jumbo v2, "H5PagePlugin"

    const-string/jumbo v3, "webview can\'t go back and do exit!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageClose"

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 674
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v1

    .line 675
    .local v1, "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 676
    .local v0, "currentIndex":I
    if-gtz v0, :cond_4

    .line 677
    const-string/jumbo v2, "H5PagePlugin"

    const-string/jumbo v3, "webview with no history and do exit!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageClose"

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 682
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goBack()V

    goto :goto_0
.end method

.method private sendError(Liny;ILjava/lang/String;)V
    .locals 0
    .param p1, "bridgeContext"    # Liny;
    .param p2, "e"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    invoke-interface {p1, p2, p3}, Liny;->sendError(ILjava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method

.method private sendResult(Liny;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "bridgeContext"    # Liny;
    .param p2, "obj"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    invoke-interface {p1, p2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 488
    :cond_0
    return-void
.end method

.method private setBackBehavior(Ljava/lang/String;)V
    .locals 3
    .param p1, "behavior"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    const-string/jumbo v0, "H5PagePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBackBehavior "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "pop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget v0, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    sget v0, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    goto :goto_0
.end method

.method private simulateAutoFocus(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v4, :cond_1

    .line 492
    const-string/jumbo v4, "H5PagePlugin"

    const-string/jumbo v5, "inputFocus4Android h5WebView == null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-eqz p2, :cond_0

    .line 494
    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v12

    .line 499
    .local v12, "realWebView":Landroid/view/View;
    if-nez v12, :cond_2

    .line 500
    const-string/jumbo v4, "H5PagePlugin"

    const-string/jumbo v5, "inputFocus4Android realWebView == null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz p2, :cond_0

    .line 502
    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4121
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 507
    .local v11, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "coordinateX"

    invoke-static {v11, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 508
    .local v15, "xstr":Ljava/lang/String;
    const-string/jumbo v4, "coordinateY"

    invoke-static {v11, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 509
    .local v16, "ystr":Ljava/lang/String;
    const-string/jumbo v4, "H5PagePlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", y "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :try_start_0
    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 512
    .local v7, "x":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 513
    .local v8, "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 514
    .local v2, "downTime":J
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 516
    .local v10, "downEvent":Landroid/view/MotionEvent;
    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    .line 517
    const/4 v6, 0x1

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 519
    .local v14, "upEvent":Landroid/view/MotionEvent;
    invoke-virtual {v12, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 520
    invoke-virtual {v12, v14}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 521
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 522
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 523
    if-eqz p2, :cond_0

    .line 524
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 526
    .end local v2    # "downTime":J
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v10    # "downEvent":Landroid/view/MotionEvent;
    .end local v14    # "upEvent":Landroid/view/MotionEvent;
    :catch_0
    move-exception v13

    .line 527
    .local v13, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5PagePlugin"

    invoke-static {v4, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    if-eqz p2, :cond_0

    .line 529
    const/4 v4, 0x2

    const-string/jumbo v5, "invalid parameter!"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Liny;->sendError(ILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 44
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 151
    .line 2065
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2121
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v20, v0

    .line 153
    .local v20, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v39, "h5PageBackBehavior"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 154
    const-string/jumbo v39, "backBehavior"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "behavior":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->setBackBehavior(Ljava/lang/String;)V

    .line 441
    .end local v6    # "behavior":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v39, 0x1

    :goto_1
    return v39

    .line 156
    :cond_1
    const-string/jumbo v39, "h5PageLoadUrl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "current":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v32

    .line 160
    .local v32, "startbundle":Landroid/os/Bundle;
    if-eqz v32, :cond_2

    .line 161
    const-string/jumbo v39, "appId"

    const-string/jumbo v40, "appId"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v39, "preSSOLogin"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 163
    .local v23, "preSSOLogin":Ljava/lang/String;
    const-string/jumbo v39, "preSSOLoginBindingPage"

    .line 164
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 165
    .local v24, "preSSOLoginBindingPage":Ljava/lang/String;
    const-string/jumbo v39, "preSSOLoginUrl"

    .line 166
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 167
    .local v25, "preSSOLoginUrl":Ljava/lang/String;
    const-string/jumbo v39, "ps"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v39, "psb"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v39, "psu"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v23    # "preSSOLogin":Ljava/lang/String;
    .end local v24    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v25    # "preSSOLoginUrl":Ljava/lang/String;
    :cond_2
    const-string/jumbo v39, "start_up_url"

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "h5PageShouldLoadUrl"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 174
    .end local v32    # "startbundle":Landroid/os/Bundle;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->loadUrl(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 176
    .end local v10    # "current":Ljava/lang/String;
    :cond_4
    const-string/jumbo v39, "h5PageLoadData"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->loadData(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 178
    :cond_5
    const-string/jumbo v39, "h5PageDoLoadUrl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8

    .line 179
    const-string/jumbo v39, "url"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 180
    .local v37, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 181
    .restart local v10    # "current":Ljava/lang/String;
    const-string/jumbo v39, "force"

    const/16 v40, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v12

    .line 182
    .local v12, "force":Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setCheckingUrl(Ljava/lang/String;)V

    .line 187
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_7

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    if-eqz v12, :cond_0

    .line 188
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->loadUrl(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 190
    .end local v10    # "current":Ljava/lang/String;
    .end local v12    # "force":Z
    .end local v37    # "url":Ljava/lang/String;
    :cond_8
    const-string/jumbo v39, "h5PageReload"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V

    goto/16 :goto_0

    .line 192
    :cond_9
    const-string/jumbo v39, "h5PageBack"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageBack()V

    goto/16 :goto_0

    .line 194
    :cond_a
    const-string/jumbo v39, "h5PagePause"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 195
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "sendToWeb page event pause"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    move-object/from16 v39, v0

    if-eqz v39, :cond_b

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    move-object/from16 v39, v0

    const-string/jumbo v40, "pause"

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-interface/range {v39 .. v42}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 199
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    goto/16 :goto_0

    .line 202
    :cond_c
    const-string/jumbo v39, "h5PageResume"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_14

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-nez v39, :cond_d

    .line 204
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "resume fatal error"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v39, 0x1

    goto/16 :goto_1

    .line 207
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipc;->getData()Lioc;

    move-result-object v39

    const-string/jumbo v40, "h5_session_pop_param"

    .line 208
    invoke-interface/range {v39 .. v40}, Lioc;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 209
    .local v22, "popParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipc;->getData()Lioc;

    move-result-object v39

    const-string/jumbo v40, "h5_session_resume_param"

    .line 210
    invoke-interface/range {v39 .. v40}, Lioc;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 212
    .local v27, "resumeParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipc;->getData()Lioc;

    move-result-object v39

    const-string/jumbo v40, "h5_page_resume"

    .line 213
    invoke-interface/range {v39 .. v40}, Lioc;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 215
    .local v19, "pageResume":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 216
    .local v11, "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_e

    .line 217
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 218
    .local v16, "objData":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v16, :cond_12

    .line 219
    const-string/jumbo v39, "data"

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v16    # "objData":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    :goto_2
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_f

    .line 230
    const-string/jumbo v39, "resumeParams"

    invoke-static/range {v27 .. v27}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_f
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "sendToWeb page event resume"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_10

    .line 236
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "sendToWeb page event pageResume"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    move-object/from16 v39, v0

    const-string/jumbo v40, "pageResume"

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v11, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 240
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    move-object/from16 v39, v0

    const-string/jumbo v40, "resume"

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v11, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 242
    sget-boolean v39, Lios;->d:Z

    if-eqz v39, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v39

    sget-object v40, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 2505
    const-string/jumbo v41, "H5PageData"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string/jumbo v43, "setReferUrl: "

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lior;->y:Ljava/lang/String;

    .line 244
    sget-boolean v39, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v39, :cond_11

    .line 245
    const-string/jumbo v39, "H5PagePlugin"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string/jumbo v41, "h5page resume, getRefer : "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v41, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "H5_AL_PAGE_RESUME"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 248
    const/16 v39, 0x0

    sput-boolean v39, Lios;->d:Z

    goto/16 :goto_0

    .line 221
    .restart local v16    # "objData":Lcom/alibaba/fastjson/JSONObject;
    :cond_12
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 222
    .local v5, "arrayData":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v5, :cond_13

    .line 223
    const-string/jumbo v39, "data"

    move-object/from16 v0, v39

    invoke-virtual {v11, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 225
    :cond_13
    const-string/jumbo v39, "data"

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 250
    .end local v5    # "arrayData":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "objData":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "pageResume":Ljava/lang/String;
    .end local v22    # "popParam":Ljava/lang/String;
    .end local v27    # "resumeParam":Ljava/lang/String;
    :cond_14
    const-string/jumbo v39, "h5PageFontSize"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 251
    const-string/jumbo v39, "size"

    const/16 v40, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v30

    .line 252
    .local v30, "size":I
    const/16 v39, -0x1

    move/from16 v0, v30

    move/from16 v1, v39

    if-eq v0, v1, :cond_15

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 255
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 256
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipc;->getScenario()Lipa;

    move-result-object v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 257
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipc;->getScenario()Lipa;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipa;->getData()Lioc;

    move-result-object v39

    if-eqz v39, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipc;->getScenario()Lipa;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lipa;->getData()Lioc;

    move-result-object v39

    const-string/jumbo v40, "h5_font_size"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 259
    invoke-interface/range {v39 .. v41}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v30    # "size":I
    :cond_16
    const-string/jumbo v39, "h5PageStarted"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_18

    .line 262
    sget v39, Lcom/alipay/mobile/nebulacore/api/PageStatus;->LOADING:I

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageStatus:I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v31

    .line 264
    .local v31, "startParams":Landroid/os/Bundle;
    const-string/jumbo v39, "showLoading"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v39

    if-eqz v39, :cond_17

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "showLoading"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 266
    :cond_17
    const-string/jumbo v39, "showTitleLoading"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "showTitleLoading"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 269
    .end local v31    # "startParams":Landroid/os/Bundle;
    :cond_18
    const-string/jumbo v39, "h5PageFinished"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 275
    sget v39, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageStatus:I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getAutoHideLoading()Z

    move-result v39

    if-eqz v39, :cond_19

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 279
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "hideLoading"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "hideTitleLoading"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 283
    const-string/jumbo v39, "historySize"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v14

    .line 296
    .local v14, "historySize":I
    const/16 v39, 0x1

    move/from16 v0, v39

    if-le v14, v0, :cond_0

    sget v39, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backBehavior:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    sget-object v40, Liov$a;->E:Ljava/lang/String;

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 298
    .local v13, "hideCloseButton":Ljava/lang/String;
    const-string/jumbo v39, "yes"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 299
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "set hideCloseButton yes"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_1a
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 302
    .restart local v11    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v39, "show"

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "h5PageShowClose"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 306
    .end local v11    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "hideCloseButton":Ljava/lang/String;
    .end local v14    # "historySize":I
    :cond_1b
    const-string/jumbo v39, "h5PageReceivedTitle"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    .line 307
    sget v39, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageStatus:I

    goto/16 :goto_0

    .line 308
    :cond_1c
    const-string/jumbo v39, "h5PageClose"

    .line 309
    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1d

    const-string/jumbo v39, "h5PageClose_tab"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1f

    .line 310
    :cond_1d
    const-string/jumbo v39, "h5PageClose"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 311
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->exit(Z)V

    goto/16 :goto_0

    .line 313
    :cond_1e
    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->exit(Z)V

    goto/16 :goto_0

    .line 315
    :cond_1f
    const-string/jumbo v39, "h5ToolbarMenuBt"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2c

    .line 316
    const-string/jumbo v39, "tag"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 317
    .local v33, "tag":Ljava/lang/String;
    const-string/jumbo v39, "h5MenuActionOfFont"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_20

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "showFontBar"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 319
    :cond_20
    const-string/jumbo v39, "refresh"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_21

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "h5PageReload"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 321
    :cond_21
    const-string/jumbo v39, "copy"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_23

    .line 322
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 323
    .restart local v11    # "data":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getShareUrl()Ljava/lang/String;

    move-result-object v37

    .line 324
    .restart local v37    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-eqz v39, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    if-eqz v39, :cond_22

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 326
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    const-string/jumbo v40, "onlineHost"

    const-string/jumbo v41, ""

    invoke-static/range {v39 .. v41}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 327
    .local v17, "onlineHost":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_22

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_22

    .line 329
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 330
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    const-string/jumbo v40, "appId"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v40, v0

    .line 329
    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getShareLoadingScheme(Ljava/lang/String;Ljava/lang/String;Liop;)Ljava/lang/String;

    move-result-object v28

    .line 331
    .local v28, "scheme":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const-string/jumbo v40, "https://ds.alipay.com/?scheme="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    .line 338
    .end local v17    # "onlineHost":Ljava/lang/String;
    .end local v28    # "scheme":Ljava/lang/String;
    :cond_22
    :goto_3
    const-string/jumbo v39, "text"

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    const-string/jumbo v40, "setClipboard"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 340
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    sget v40, Lcom/alipay/mobile/nebula/R$string;->h5_copied:I

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 341
    .local v9, "copied":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 342
    .local v8, "context":Landroid/content/Context;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-static {v8, v9, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 332
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "copied":Ljava/lang/String;
    .restart local v17    # "onlineHost":Ljava/lang/String;
    :catch_0
    move-exception v34

    .line 333
    .local v34, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v39, "H5PagePlugin"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 343
    .end local v11    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "onlineHost":Ljava/lang/String;
    .end local v34    # "throwable":Ljava/lang/Throwable;
    .end local v37    # "url":Ljava/lang/String;
    :cond_23
    const-string/jumbo v39, "openInBrowser"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2b

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getShareUrl()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 345
    .local v36, "uri":Landroid/net/Uri;
    if-nez v36, :cond_24

    .line 346
    new-instance v26, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 347
    .local v26, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v39, "error"

    const/16 v40, 0x2

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 350
    .end local v26    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getShareUrl()Ljava/lang/String;

    move-result-object v37

    .line 352
    .restart local v37    # "url":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_25

    .line 353
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 356
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-eqz v39, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    if-eqz v39, :cond_26

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 358
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    const-string/jumbo v40, "onlineHost"

    const-string/jumbo v41, ""

    invoke-static/range {v39 .. v41}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 359
    .restart local v17    # "onlineHost":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_26

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_26

    .line 361
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 362
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v39

    const-string/jumbo v40, "appId"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v40, v0

    .line 361
    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getShareLoadingScheme(Ljava/lang/String;Ljava/lang/String;Liop;)Ljava/lang/String;

    move-result-object v28

    .line 363
    .restart local v28    # "scheme":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const-string/jumbo v40, "https://ds.alipay.com/?scheme="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 364
    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    .line 371
    .end local v17    # "onlineHost":Ljava/lang/String;
    .end local v28    # "scheme":Ljava/lang/String;
    :cond_26
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/Nebula;->getPackageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v21

    .line 372
    .local v21, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/Nebula;->getUCMPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v35

    .line 374
    .local v35, "ucmPkgName":Ljava/lang/String;
    const-string/jumbo v39, "https://ds.alipay.com/error/securityLink.htm"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_27

    const-string/jumbo v39, "https://ds.alipay.com/error/redirectLink.htm"

    .line 375
    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_28

    .line 376
    :cond_27
    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v39

    const-string/jumbo v40, "url"

    invoke-virtual/range {v39 .. v40}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 377
    const-string/jumbo v39, "H5PagePlugin"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string/jumbo v41, "competitive link special text is "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_28
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-eqz v39, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    .line 380
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v39

    if-eqz v39, :cond_2a

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    move-object/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Liny;)V

    .line 383
    const-string/jumbo v39, "H5_OPEN_URL_UC"

    invoke-static/range {v39 .. v39}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v39

    .line 384
    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v39

    const-string/jumbo v40, "url"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v39

    .line 383
    invoke-static/range {v39 .. v39}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 385
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "log open url in uc"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_29
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    sget-object v40, Liov$a;->o:Ljava/lang/String;

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 365
    .end local v21    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v35    # "ucmPkgName":Ljava/lang/String;
    .restart local v17    # "onlineHost":Ljava/lang/String;
    :catch_1
    move-exception v34

    .line 366
    .restart local v34    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v39, "H5PagePlugin"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 387
    .end local v17    # "onlineHost":Ljava/lang/String;
    .end local v34    # "throwable":Ljava/lang/Throwable;
    .restart local v21    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v35    # "ucmPkgName":Ljava/lang/String;
    :cond_2a
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v39, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v18, "openIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    sget v40, Lcom/alipay/mobile/nebula/R$string;->h5_menu_open_in_browser:I

    .line 389
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 388
    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    .line 390
    .local v7, "chooser":Landroid/content/Intent;
    const/high16 v39, 0x10000000

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    .line 391
    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v39

    if-eqz v39, :cond_29

    .line 393
    const/16 v39, 0x0

    move-object/from16 v0, v39

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    goto :goto_5

    .line 399
    .end local v7    # "chooser":Landroid/content/Intent;
    .end local v18    # "openIntent":Landroid/content/Intent;
    .end local v21    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v35    # "ucmPkgName":Ljava/lang/String;
    .end local v36    # "uri":Landroid/net/Uri;
    .end local v37    # "url":Ljava/lang/String;
    :cond_2b
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 401
    .end local v33    # "tag":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v39, "toggleSoftInput"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 402
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "input_method"

    .line 403
    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .line 404
    .local v15, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/16 v39, 0x0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v15, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 405
    .end local v15    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    const-string/jumbo v39, "showSoftInput"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_30

    .line 406
    const-string/jumbo v39, "show"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    if-eqz v39, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v39

    if-eqz v39, :cond_2f

    .line 407
    const-string/jumbo v39, "show"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v29

    .line 408
    .local v29, "show":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "input_method"

    .line 409
    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .line 410
    .restart local v15    # "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v38

    .line 411
    .local v38, "view":Landroid/view/View;
    if-eqz v29, :cond_2e

    .line 412
    const/16 v39, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 414
    :cond_2e
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v15, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 417
    .end local v15    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v29    # "show":Z
    .end local v38    # "view":Landroid/view/View;
    :cond_2f
    new-instance v26, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 418
    .restart local v26    # "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v39, "error"

    const/16 v40, 0x2

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v39, "H5PagePlugin"

    const-string/jumbo v40, "you should specify whether to or not to show soft input or internal error occurred!"

    invoke-static/range {v39 .. v40}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 423
    .end local v26    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_30
    const-string/jumbo v39, "stopLoading"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    goto/16 :goto_0

    .line 427
    :cond_31
    const-string/jumbo v39, "inputFocus4Android"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_32

    .line 428
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->simulateAutoFocus(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto/16 :goto_0

    .line 429
    :cond_32
    const-string/jumbo v39, "getStartupParams"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_33

    .line 430
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->getStartupParams(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto/16 :goto_0

    .line 431
    :cond_33
    const-string/jumbo v39, "coolLoadingCtrl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_35

    .line 432
    const-string/jumbo v39, "close"

    const-string/jumbo v40, "action"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_34

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 434
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    goto/16 :goto_0

    .line 436
    :cond_34
    sget-object v39, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual/range {v39 .. v39}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v39

    const-string/jumbo v40, "\u65e0\u6548\u7684api\u5165\u53c2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->sendError(Liny;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :cond_35
    const/16 v39, 0x0

    goto/16 :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 125
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 126
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return v1

    .line 130
    :cond_0
    const-string/jumbo v2, "h5PageError"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    sget v1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->ERROR:I

    iput v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->pageStatus:I

    .line 132
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const-string/jumbo v2, "h5PageBackground"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 97
    const-string/jumbo v0, "h5PageBackBehavior"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "h5PageLoadUrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "h5PageLoadData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "h5PageReload"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "h5PageFontSize"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "h5PageResume"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "h5PageError"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "h5PageClose"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "h5PageClose_tab"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "h5PageBackground"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "h5PageDoLoadUrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "toggleSoftInput"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "showSoftInput"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "h5PagePause"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "stopLoading"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "inputFocus4Android"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "getStartupParams"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "coolLoadingCtrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onRelease()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;

    .line 86
    .local v0, "cardShareProvider":Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;->release()V

    .line 89
    :cond_0
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Bridge:Linx;

    .line 90
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 91
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 92
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->backHandler:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    .line 93
    return-void
.end method
