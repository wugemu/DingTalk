.class public Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;
.super Lipd;
.source "H5UrlInterceptPlugin.java"


# static fields
.field public static final BROADCAST_TITLE_URL:Ljava/lang/String; = "com.alipay.mobile.h5container.pageFinished"

.field public static final TAG:Ljava/lang/String; = "H5UrlInterceptPlugin"

.field private static final WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final xiaochengxuUrlHeader:Ljava/lang/String; = "https://render.alipay.com/p/s/h5misc/resource_error?url="


# instance fields
.field private appId:Ljava/lang/String;

.field private h5Page:Liop;

.field private isBackKeyPressed:Z

.field private offlineHost:Ljava/lang/String;

.field private tmpSchemeWhiteSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "tel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "mailto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "geo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lipd;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    return-object v0
.end method

.method private interceptHttpPage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 558
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    if-eqz v8, :cond_0

    const-string/jumbo v8, "http"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v7

    .line 562
    :cond_1
    const-string/jumbo v8, "h5_SSLVerifyDomain"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 567
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 568
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 572
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 574
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "rule":Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 576
    const-string/jumbo v2, "https://ds.alipay.com/fd-in15xm06/index.html"

    .line 577
    .local v2, "errorUrl":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "javascript:location.replace(\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 579
    const-string/jumbo v8, "H5UrlInterceptPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "url intercepted by pattern "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    const/4 v7, 0x1

    goto :goto_0

    .line 582
    .end local v2    # "errorUrl":Ljava/lang/String;
    .end local v4    # "rule":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 583
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5UrlInterceptPlugin"

    const-string/jumbo v9, "match http host exception."

    invoke-static {v8, v9, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Liop;Z)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;
    .param p3, "iframe"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 510
    const-string/jumbo v8, "https://render.alipay.com/p/s/h5misc/resource_error?url="

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v7

    .line 514
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 515
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v2, ""

    .line 516
    .local v2, "host":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 517
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_2

    sget-object v8, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->WHITE_LIST:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 521
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 524
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 526
    .local v1, "hasPermissionFile":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 527
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v8

    invoke-interface {v8, p1, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Liop;)Z

    move-result v1

    .line 530
    :cond_4
    const/4 v4, 0x0

    .line 531
    .local v4, "shouldIntercept":Z
    if-eqz v1, :cond_5

    .line 533
    if-eqz p3, :cond_7

    .line 534
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v8

    const-string/jumbo v9, "validDomain"

    .line 535
    invoke-interface {v8, p1, v2, v9, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionOnIframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v8

    if-nez v8, :cond_6

    move v4, v6

    .line 541
    :goto_1
    if-eqz v4, :cond_5

    .line 542
    const-string/jumbo v6, "H5_AL_NETWORK_PERMISSON_ERROR"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 543
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "BanMainURL"

    invoke-virtual {v6, v7, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 542
    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 544
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "https://render.alipay.com/p/s/h5misc/resource_error?url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "errorUrl":Ljava/lang/String;
    if-eqz p3, :cond_9

    .line 546
    invoke-interface {p2, v0}, Liop;->replace(Ljava/lang/String;)V

    .end local v0    # "errorUrl":Ljava/lang/String;
    :cond_5
    :goto_2
    move v7, v4

    .line 554
    goto/16 :goto_0

    :cond_6
    move v4, v7

    .line 535
    goto :goto_1

    .line 537
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v8

    const-string/jumbo v9, "validDomain"

    .line 538
    invoke-interface {v8, p1, v2, v9, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v8

    if-nez v8, :cond_8

    move v4, v6

    :goto_3
    goto :goto_1

    :cond_8
    move v4, v7

    goto :goto_3

    .line 548
    .restart local v0    # "errorUrl":Ljava/lang/String;
    :cond_9
    invoke-interface {p2, v0}, Liop;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private shouldInterceptUrl(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 52
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 130
    :try_start_0
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "isBackKeyPressed is "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    .line 132
    .local v37, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v47, "url"

    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 133
    .local v45, "url":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 134
    .local v44, "uri":Landroid/net/Uri;
    if-nez v44, :cond_0

    .line 135
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "load url intercepted for failed to parse url."

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v47, 0x1

    .line 496
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v44    # "uri":Landroid/net/Uri;
    .end local v45    # "url":Ljava/lang/String;
    :goto_0
    return v47

    .line 138
    .restart local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v44    # "uri":Landroid/net/Uri;
    .restart local v45    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v41

    .line 139
    .local v41, "scheme":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, "host":Ljava/lang/String;
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "url "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, " scheme "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, " host "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->appId:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Liop;Z)Z

    move-result v47

    if-eqz v47, :cond_1

    .line 144
    const/16 v47, 0x1

    goto :goto_0

    .line 147
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptHttpPage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_2

    .line 148
    const/16 v47, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_4

    const-string/jumbo v47, ".docx"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_3

    const-string/jumbo v47, ".doc"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_4

    .line 153
    :cond_3
    const-string/jumbo v47, "h5_open_doc"

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 154
    .local v46, "value":Ljava/lang/String;
    const-string/jumbo v47, "no"

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_4

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->openInBrowser(Liop;Ljava/lang/String;Liny;)V

    .line 156
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 162
    .end local v46    # "value":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 163
    .local v30, "mainFrameUri":Landroid/net/Uri;
    const/16 v27, 0x0

    .line 164
    .local v27, "mainFrameHost":Ljava/lang/String;
    if-eqz v30, :cond_5

    .line 165
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v27

    .line 168
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeInterceptUtil;->getCompetitiveListWarp()Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;->value:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 169
    .local v11, "comListDataTmp":Lcom/alibaba/fastjson/JSONObject;
    const/16 v24, 0x0

    .line 170
    .local v24, "isInCompetitiveAliWhiteList":Z
    if-eqz v11, :cond_6

    if-eqz v27, :cond_6

    .line 171
    const-string/jumbo v47, "aliWhiteList"

    .line 172
    move-object/from16 v0, v47

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 173
    .local v7, "aliWhiteList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v7, :cond_6

    .line 174
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v47

    move/from16 v0, v19

    move/from16 v1, v47

    if-ge v0, v1, :cond_6

    .line 175
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 176
    .local v40, "regex":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_9

    .line 177
    const/16 v24, 0x1

    .line 183
    .end local v7    # "aliWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v19    # "i":I
    .end local v40    # "regex":Ljava/lang/String;
    :cond_6
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "isInCompetitiveAliWhiteList "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    .line 186
    invoke-interface/range {v47 .. v47}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v47

    const-string/jumbo v48, "interceptJump"

    const/16 v49, 0x1

    invoke-static/range {v47 .. v49}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v20

    .line 187
    .local v20, "interceptJump":Z
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "interceptJump "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v10, 0x0

    .line 189
    .local v10, "comListData":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v20, :cond_7

    .line 190
    invoke-static {}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeInterceptUtil;->getCompetitiveListWarp()Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;->value:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 191
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "comListData "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_7
    if-nez v24, :cond_b

    if-eqz v10, :cond_b

    if-eqz v18, :cond_b

    .line 194
    const-string/jumbo v47, "competitiveLinkList"

    .line 195
    move-object/from16 v0, v47

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 196
    .local v12, "competitiveLinkja":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "competitiveLinkja:"

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/16 v32, 0x0

    .line 198
    .local v32, "matchesLink":Z
    if-eqz v12, :cond_8

    .line 199
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v47

    move/from16 v0, v19

    move/from16 v1, v47

    if-ge v0, v1, :cond_8

    .line 200
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 201
    .restart local v40    # "regex":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_a

    .line 202
    const/16 v32, 0x1

    .line 207
    .end local v19    # "i":I
    .end local v40    # "regex":Ljava/lang/String;
    :cond_8
    if-eqz v32, :cond_b

    .line 208
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_COMPETITIVE_LINK_LIST"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v47, Ljava/lang/StringBuilder;

    const-string/jumbo v48, "https://ds.alipay.com/error/securityLink.htm?url="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v48, "utf-8"

    .line 211
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 212
    .local v35, "nextUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 213
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 174
    .end local v10    # "comListData":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "competitiveLinkja":Lcom/alibaba/fastjson/JSONArray;
    .end local v20    # "interceptJump":Z
    .end local v32    # "matchesLink":Z
    .end local v35    # "nextUrl":Ljava/lang/String;
    .restart local v7    # "aliWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v19    # "i":I
    .restart local v40    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 199
    .end local v7    # "aliWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v10    # "comListData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v12    # "competitiveLinkja":Lcom/alibaba/fastjson/JSONArray;
    .restart local v20    # "interceptJump":Z
    .restart local v32    # "matchesLink":Z
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 217
    .end local v12    # "competitiveLinkja":Lcom/alibaba/fastjson/JSONArray;
    .end local v19    # "i":I
    .end local v32    # "matchesLink":Z
    .end local v40    # "regex":Ljava/lang/String;
    :cond_b
    const-string/jumbo v47, "file://"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->offlineHost:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_d

    .line 219
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "file url intercepted for safe strategy"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v34, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v34 .. v34}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 221
    .local v34, "newParam":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v35, "https://alipay.com/h5container/un_safe.html"

    .line 222
    .restart local v35    # "nextUrl":Ljava/lang/String;
    sget-boolean v47, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v47, :cond_c

    .line 223
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "?url="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 225
    :cond_c
    const-string/jumbo v47, "url"

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    const-string/jumbo v48, "h5PageLoadUrl"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 227
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 230
    .end local v34    # "newParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v35    # "nextUrl":Ljava/lang/String;
    :cond_d
    const-string/jumbo v47, "about:blank"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_e

    .line 231
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 232
    :cond_e
    const-string/jumbo v47, "about"

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_f

    const-string/jumbo v47, "data"

    .line 233
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_f

    const-string/jumbo v47, "http"

    .line 234
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_f

    const-string/jumbo v47, "https"

    .line 235
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_f

    const-string/jumbo v47, "ftp"

    .line 236
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_10

    .line 237
    :cond_f
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 238
    :cond_10
    const-string/jumbo v47, "file"

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_12

    .line 239
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "absPath":Ljava/lang/String;
    if-eqz v6, :cond_11

    const-string/jumbo v47, "/android_asset/"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_11

    .line 241
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "load asset "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_11
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 246
    .end local v6    # "absPath":Ljava/lang/String;
    :cond_12
    if-eqz v10, :cond_26

    if-eqz v41, :cond_26

    .line 248
    if-nez v24, :cond_13

    sget-object v47, Lcom/alipay/mobile/nebula/util/H5SchemeWhiteList;->sSchemeMap:Ljava/util/Set;

    .line 249
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_15

    .line 250
    :cond_13
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "hardcode scheme whitelist"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5Utils;->resolveExtApp(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_14

    .line 252
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 254
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->startExtApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    goto/16 :goto_0

    .line 257
    :cond_15
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v47

    const-class v48, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;

    .line 258
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;

    .line 259
    .local v17, "h5SchemeInterceptProvider":Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;
    if-eqz v17, :cond_16

    invoke-static {}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeInterceptUtil;->getCompetitiveListWarp()Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    move-result-object v47

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;->useNew:Z

    move/from16 v47, v0

    if-eqz v47, :cond_16

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;->handlerOnScheme(Ljava/lang/String;Liop;)Z

    move-result v47

    goto/16 :goto_0

    .line 263
    :cond_16
    const-string/jumbo v47, "schemeBlacklist"

    .line 264
    move-object/from16 v0, v47

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v42

    .line 265
    .local v42, "schemeBlackja":Lcom/alibaba/fastjson/JSONArray;
    const/16 v31, 0x0

    .line 266
    .local v31, "matchesBlackScheme":Z
    if-eqz v42, :cond_17

    .line 267
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v47

    move/from16 v0, v19

    move/from16 v1, v47

    if-ge v0, v1, :cond_17

    .line 268
    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 269
    .restart local v40    # "regex":Ljava/lang/String;
    invoke-static/range {v40 .. v41}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_1b

    .line 270
    const/16 v31, 0x1

    .line 276
    .end local v19    # "i":I
    .end local v40    # "regex":Ljava/lang/String;
    :cond_17
    const-string/jumbo v47, "schemeWhiteList"

    .line 277
    move-object/from16 v0, v47

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v43

    .line 278
    .local v43, "schemeWhiteja":Lcom/alibaba/fastjson/JSONArray;
    const/16 v33, 0x0

    .line 279
    .local v33, "matchesWhiteScheme":Z
    if-eqz v43, :cond_18

    .line 280
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v47

    move/from16 v0, v19

    move/from16 v1, v47

    if-ge v0, v1, :cond_18

    .line 281
    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 282
    .restart local v40    # "regex":Ljava/lang/String;
    invoke-static/range {v40 .. v41}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_1c

    .line 283
    const/16 v33, 0x1

    .line 288
    .end local v19    # "i":I
    .end local v40    # "regex":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Liop;->getLastTouch()J

    move-result-wide v28

    .line 289
    .local v28, "lastTouchTime":J
    const/16 v26, 0x1

    .line 290
    .local v26, "jumpToPP":Z
    const-string/jumbo v47, "h5_ppConfig"

    .line 291
    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v39

    .line 292
    .local v39, "ppConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v39, :cond_19

    .line 293
    const-string/jumbo v47, "YES"

    const-string/jumbo v48, "jumpToPP"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 295
    :cond_19
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "jumpToPP "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v47

    const-class v48, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 299
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 300
    .local v15, "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    const/4 v8, 0x0

    .line 301
    .local v8, "channel":Z
    if-eqz v15, :cond_1a

    .line 302
    invoke-interface {v15}, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;->getChannelId()Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "channelId":Ljava/lang/String;
    const-string/jumbo v47, "5136"

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 304
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "WalletChannelId is "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, ", isGooglePlayChannel "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v9    # "channelId":Ljava/lang/String;
    :cond_1a
    move/from16 v21, v8

    .line 308
    .local v21, "isGooglePlayChannel":Z
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "isGooglePlayChannel:"

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz v31, :cond_1e

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 311
    .local v22, "interceptTime":J
    sub-long v48, v22, v28

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->abs(J)J

    move-result-wide v48

    const-wide/16 v50, 0x190

    cmp-long v47, v48, v50

    if-gez v47, :cond_1d

    .line 312
    new-instance v25, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 313
    .local v25, "jo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v47, "url"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v47, "scheme"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v47, "type"

    const-string/jumbo v48, "blacklist"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    const-string/jumbo v48, "h5PageInterceptScheme"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 317
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_SCHEME_BLACK_LIST_MANUAL"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v47, Ljava/lang/StringBuilder;

    const-string/jumbo v48, "https://ds.alipay.com/error/securityLink.htm?url="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v48, "utf-8"

    .line 320
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 321
    .restart local v35    # "nextUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 322
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 267
    .end local v8    # "channel":Z
    .end local v15    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .end local v21    # "isGooglePlayChannel":Z
    .end local v22    # "interceptTime":J
    .end local v25    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v26    # "jumpToPP":Z
    .end local v28    # "lastTouchTime":J
    .end local v33    # "matchesWhiteScheme":Z
    .end local v35    # "nextUrl":Ljava/lang/String;
    .end local v39    # "ppConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v43    # "schemeWhiteja":Lcom/alibaba/fastjson/JSONArray;
    .restart local v19    # "i":I
    .restart local v40    # "regex":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 280
    .restart local v33    # "matchesWhiteScheme":Z
    .restart local v43    # "schemeWhiteja":Lcom/alibaba/fastjson/JSONArray;
    :cond_1c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 324
    .end local v19    # "i":I
    .end local v40    # "regex":Ljava/lang/String;
    .restart local v8    # "channel":Z
    .restart local v15    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .restart local v21    # "isGooglePlayChannel":Z
    .restart local v22    # "interceptTime":J
    .restart local v26    # "jumpToPP":Z
    .restart local v28    # "lastTouchTime":J
    .restart local v39    # "ppConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_1d
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_SCHEME_BLACK_LIST_AUTO"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 327
    .end local v22    # "interceptTime":J
    :cond_1e
    if-eqz v33, :cond_21

    .line 328
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_SCHEME_WHITE_LIST"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    if-eqz v26, :cond_1f

    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5Utils;->resolveExtApp(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_1f

    .line 330
    new-instance v36, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;ZLjava/lang/String;)V

    .line 376
    .local v36, "onGetQueryResult":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    const-string/jumbo v47, "URGENT"

    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v14

    .line 377
    .local v14, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->getInstance()Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    move-result-object v16

    .line 378
    .local v16, "h5PPQueryThread":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v48, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    move/from16 v2, v47

    move-object/from16 v3, v36

    move-object/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->setParams(Ljava/lang/String;ILcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;Liop;)V

    .line 379
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 380
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 382
    .end local v14    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v16    # "h5PPQueryThread":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    .end local v36    # "onGetQueryResult":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    :cond_1f
    const-string/jumbo v47, "pp"

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_20

    .line 384
    const-string/jumbo v47, "www.25pp.com/down"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_20

    .line 385
    new-instance v38, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v38 .. v38}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 386
    .local v38, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v47, "type"

    const-string/jumbo v48, "pp"

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v47, "downloadUrl"

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    const-string/jumbo v48, "h5PageJumpPPDownload"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 391
    .end local v38    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_20
    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5Utils;->resolveExtApp(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_26

    .line 392
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 395
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    move/from16 v47, v0

    if-eqz v47, :cond_22

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->clear()V

    .line 398
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 399
    .restart local v22    # "interceptTime":J
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    new-instance v48, Ljava/lang/StringBuilder;

    const-string/jumbo v49, "lastTouchTime is "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, " ,interceptTime is "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, " ,delta is "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    sub-long v50, v22, v28

    .line 401
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->abs(J)J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, "tmpSchemeWhiteSet contains "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    move-object/from16 v49, v0

    .line 403
    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 399
    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v47, Ljava/lang/StringBuilder;

    const-string/jumbo v48, "https://ds.alipay.com/error/redirectLink.htm?url="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v48, "utf-8"

    .line 406
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 407
    .restart local v35    # "nextUrl":Ljava/lang/String;
    sub-long v48, v22, v28

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->abs(J)J

    move-result-wide v48

    const-wide/16 v50, 0x190

    cmp-long v47, v48, v50

    if-gez v47, :cond_24

    .line 408
    new-instance v25, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 409
    .restart local v25    # "jo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v47, "url"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v47, "scheme"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v47, "type"

    const-string/jumbo v48, "greylist"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    const-string/jumbo v48, "h5PageInterceptScheme"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 413
    if-eqz v26, :cond_23

    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5Utils;->resolveExtApp(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    move-object/from16 v47, v0

    .line 414
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v47

    if-nez v47, :cond_23

    .line 415
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_SCHEME_ELSE_MANUAL_PP"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v36, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v41

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;ZLjava/lang/String;Ljava/lang/String;)V

    .line 464
    .restart local v36    # "onGetQueryResult":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    const-string/jumbo v47, "URGENT"

    .line 465
    invoke-static/range {v47 .. v47}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v14

    .line 466
    .restart local v14    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->getInstance()Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    move-result-object v16

    .line 467
    .restart local v16    # "h5PPQueryThread":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v48, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    move/from16 v2, v47

    move-object/from16 v3, v36

    move-object/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->setParams(Ljava/lang/String;ILcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;Liop;)V

    .line 468
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 469
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    .line 470
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 473
    .end local v14    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v16    # "h5PPQueryThread":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    .end local v36    # "onGetQueryResult":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v47

    if-nez v47, :cond_25

    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5Utils;->resolveExtApp(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_25

    .line 474
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_SCHEME_ELSE_MANUAL_NORMAL"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 477
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    .line 478
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 481
    .end local v25    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :cond_24
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "DEFAULT_SCHEME_ELSE_AUTO"

    invoke-static/range {v47 .. v48}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    .line 483
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 485
    .restart local v25    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :cond_25
    invoke-static/range {v45 .. v45}, Lcom/alipay/mobile/nebula/util/H5Utils;->resolveExtApp(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_26

    .line 486
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 491
    .end local v8    # "channel":Z
    .end local v15    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .end local v17    # "h5SchemeInterceptProvider":Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;
    .end local v21    # "isGooglePlayChannel":Z
    .end local v22    # "interceptTime":J
    .end local v25    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v26    # "jumpToPP":Z
    .end local v28    # "lastTouchTime":J
    .end local v31    # "matchesBlackScheme":Z
    .end local v33    # "matchesWhiteScheme":Z
    .end local v35    # "nextUrl":Ljava/lang/String;
    .end local v39    # "ppConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v42    # "schemeBlackja":Lcom/alibaba/fastjson/JSONArray;
    .end local v43    # "schemeWhiteja":Lcom/alibaba/fastjson/JSONArray;
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->startExtApp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v47

    goto/16 :goto_0

    .line 493
    .end local v10    # "comListData":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "comListDataTmp":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "host":Ljava/lang/String;
    .end local v20    # "interceptJump":Z
    .end local v24    # "isInCompetitiveAliWhiteList":Z
    .end local v27    # "mainFrameHost":Ljava/lang/String;
    .end local v30    # "mainFrameUri":Landroid/net/Uri;
    .end local v37    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v41    # "scheme":Ljava/lang/String;
    .end local v44    # "uri":Landroid/net/Uri;
    .end local v45    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 494
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v47, "H5UrlInterceptPlugin"

    const-string/jumbo v48, "check url exception."

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-static {v0, v1, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    const/16 v47, 0x1

    goto/16 :goto_0
.end method

.method private startExtApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 591
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "javascript"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 595
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 602
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 604
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    .line 605
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 608
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->startExtActivity(Landroid/content/Intent;)V

    .line 609
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 610
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    invoke-interface {v5}, Liop;->exitPage()Z

    .line 612
    :cond_1
    const-string/jumbo v5, "H5UrlInterceptPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "start ext app: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 620
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, "ex":Ljava/net/URISyntaxException;
    const-string/jumbo v3, "H5UrlInterceptPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bad uri "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 598
    goto :goto_0

    .line 614
    .end local v1    # "ex":Ljava/net/URISyntaxException;
    .restart local v2    # "launchIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5UrlInterceptPlugin"

    const-string/jumbo v5, "exception detail"

    invoke-static {v3, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 616
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 620
    goto :goto_0
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 85
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 86
    .local v0, "action":Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, "intercepted":Z
    const-string/jumbo v9, "h5PageShouldLoadUrl"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 88
    const-string/jumbo v9, "H5UrlInterceptPlugin"

    const-string/jumbo v10, "H5_PAGE_SHOULD_LOAD_URL"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->shouldInterceptUrl(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v3

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    const-string/jumbo v9, "h5PageReceivedTitle"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    .line 1121
    .local v1, "activity":Landroid/app/Activity;
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 93
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "title"

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "title":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "h5PageShowClose"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 100
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    invoke-interface {v9}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 101
    .local v5, "params":Landroid/os/Bundle;
    const-string/jumbo v9, "publicId"

    const-string/jumbo v10, ""

    invoke-static {v5, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "publicId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 106
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "publicId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "h5ToolbarBack"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    const-string/jumbo v9, "H5UrlInterceptPlugin"

    const-string/jumbo v10, "H5_TOOLBAR_BACK"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-boolean v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    goto :goto_0

    .line 109
    :cond_4
    const-string/jumbo v9, "h5PagePhysicalBack"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 110
    const-string/jumbo v9, "H5UrlInterceptPlugin"

    const-string/jumbo v10, "H5_PAGE_PHYSICAL_BACK"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-boolean v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->isBackKeyPressed:Z

    goto :goto_0

    .line 112
    :cond_5
    const-string/jumbo v9, "h5PageFinished"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 114
    .restart local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "url"

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "url":Ljava/lang/String;
    const-string/jumbo v9, "title"

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .restart local v7    # "title":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "com.alipay.mobile.h5container.pageFinished"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v9, "title"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v9, "url"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v9, "H5UrlInterceptPlugin"

    const-string/jumbo v10, "send page finished broadcast."

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v9

    invoke-virtual {v9, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method public onInitialize(Liob;)V
    .locals 3
    .param p1, "coreNode"    # Liob;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    check-cast p1, Liop;

    .end local p1    # "coreNode":Liob;
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->appId:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "offlineHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->offlineHost:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "H5UrlInterceptPlugin"

    const-string/jumbo v2, "url interception."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 634
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 635
    const-string/jumbo v0, "h5PageShowClose"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 636
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 637
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 627
    const-string/jumbo v0, "H5UrlInterceptPlugin"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->h5Page:Liop;

    .line 629
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->tmpSchemeWhiteSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 630
    return-void
.end method
