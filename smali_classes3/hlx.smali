.class public Lhlx;
.super Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.source "MiniEmbedWebView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Liop;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;-><init>()V

    return-void
.end method

.method static synthetic a(Lhlx;)Liop;
    .locals 1
    .param p0, "x0"    # Lhlx;

    .prologue
    .line 55
    iget-object v0, p0, Lhlx;->b:Liop;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 509
    iget-object v1, p0, Lhlx;->b:Liop;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhlx;->b:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "AlipayJSBridge.trigger(\'"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "\');"

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "statement":Ljava/lang/String;
    iget-object v1, p0, Lhlx;->b:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 513
    .end local v0    # "statement":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 433
    :try_start_0
    iget-object v5, p0, Lhlx;->b:Liop;

    if-nez v5, :cond_0

    .line 459
    :goto_0
    return v4

    .line 440
    :cond_0
    iget-object v5, p0, Lhlx;->b:Liop;

    invoke-interface {v5}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    .line 441
    .local v0, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    :cond_1
    const-string/jumbo v5, "MiniEmbedWebView"

    const-string/jumbo v6, "interceptBackEvent...can not go back"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    .end local v0    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "MiniEmbedWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "interceptBackEvent...e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v3

    .line 447
    .local v3, "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 448
    .local v1, "currentIndex":I
    if-gtz v1, :cond_3

    .line 449
    const-string/jumbo v5, "MiniEmbedWebView"

    const-string/jumbo v6, "interceptBackEvent...webview with no history"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_3
    const-string/jumbo v5, "MiniEmbedWebView"

    const-string/jumbo v6, "interceptBackEvent...go back"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBack()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lhlx;)V
    .locals 4
    .param p0, "x0"    # Lhlx;

    .prologue
    .line 55
    .line 2237
    :try_start_0
    iget-object v0, p0, Lhlx;->b:Liop;

    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2238
    const-string/jumbo v0, "MiniEmbedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleChanged...title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lhlx;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    invoke-interface {v0}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :goto_0
    return-void

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    const-string/jumbo v1, "MiniEmbedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleChanged...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic c(Lhlx;)Z
    .locals 1
    .param p0, "x0"    # Lhlx;

    .prologue
    .line 55
    invoke-direct {p0}, Lhlx;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 469
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lhlx;->a:Landroid/view/View;

    .line 1482
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1484
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1485
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1486
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1488
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1489
    if-eqz v3, :cond_1

    .line 1490
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1495
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1492
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1
.end method

.method public getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 464
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "MiniEmbedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getView...width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->a:Landroid/view/View;

    if-nez v1, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Liop;

    .line 87
    .local v9, "h5Page":Liop;
    if-nez v9, :cond_0

    const/4 v1, 0x0

    .line 141
    .end local v9    # "h5Page":Liop;
    :goto_0
    return-object v1

    .line 89
    .restart local v9    # "h5Page":Liop;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v12, "param":Landroid/os/Bundle;
    const-string/jumbo v1, "createPageSence"

    const-string/jumbo v2, "H5Activity"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "fragmentType"

    const-string/jumbo v2, "subtab"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v9}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "currentAppId":Ljava/lang/String;
    const-string/jumbo v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-virtual {v12, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v9}, Liop;->getSession()Lipc;

    move-result-object v11

    .line 99
    .local v11, "h5Session":Lipc;
    const-string/jumbo v13, ""

    .line 100
    .local v13, "workId":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 101
    invoke-interface {v11}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v13

    .line 102
    const-string/jumbo v1, "MiniEmbedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "workId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    const-string/jumbo v2, "element"

    const-string/jumbo v1, "id"

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "viewId"

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "parentAppId"

    invoke-virtual {v12, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "sessionId"

    invoke-interface {v9}, Liop;->getSession()Lipc;

    move-result-object v2

    invoke-interface {v2}, Lipc;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v7, Linz;

    invoke-direct {v7}, Linz;-><init>()V

    .line 1043
    .local v7, "bundle":Linz;
    iput-object v12, v7, Linz;->b:Landroid/os/Bundle;

    .line 113
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 114
    .local v10, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v10, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v10, v1, v7}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Linz;)Liop;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lhlx;->b:Liop;

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    if-nez v1, :cond_3

    .line 118
    const-string/jumbo v1, "MiniEmbedWebView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mWebViewH5Page is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 123
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    new-instance v2, Lhlx$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lhlx$1;-><init>(Lhlx;)V

    invoke-interface {v1, v2}, Liop;->setHandler(Liop$b;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    const-string/jumbo v2, "MINI-PROGRAM-WEB-VIEW-WORKID"

    invoke-interface {v1, v2, v13}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    const-string/jumbo v2, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v1, v2, v9}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v1, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    move-object/from16 v0, p0

    iget-object v2, v0, Lhlx;->b:Liop;

    invoke-interface {v9, v1, v2}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    invoke-interface {v1}, Liop;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lhlx;->a:Landroid/view/View;

    .line 1150
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Liop;

    .line 1151
    if-eqz v6, :cond_5

    .line 1154
    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1156
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 1157
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    .line 1158
    if-nez v1, :cond_6

    .line 1159
    const-string/jumbo v1, "MiniEmbedWebView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "provider manager is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .end local v7    # "bundle":Linz;
    .end local v8    # "currentAppId":Ljava/lang/String;
    .end local v9    # "h5Page":Liop;
    .end local v10    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v11    # "h5Session":Lipc;
    .end local v12    # "param":Landroid/os/Bundle;
    .end local v13    # "workId":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 1163
    .restart local v7    # "bundle":Linz;
    .restart local v8    # "currentAppId":Ljava/lang/String;
    .restart local v9    # "h5Page":Liop;
    .restart local v10    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v11    # "h5Session":Lipc;
    .restart local v12    # "param":Landroid/os/Bundle;
    .restart local v13    # "workId":Ljava/lang/String;
    :cond_6
    const-class v2, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1164
    if-nez v4, :cond_7

    .line 1165
    const-string/jumbo v1, "MiniEmbedWebView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "api manager is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1169
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v1, :cond_9

    .line 1170
    :cond_8
    const-string/jumbo v1, "MiniEmbedWebView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mWebViewH5Page is null or not an H5PageImpl"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1174
    :cond_9
    invoke-interface {v6}, Liop;->getSession()Lipc;

    move-result-object v14

    .line 1175
    if-nez v14, :cond_a

    .line 1176
    const-string/jumbo v1, "MiniEmbedWebView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "h5Page.getSession() is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1180
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lhlx;->b:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v15

    .line 1181
    if-nez v15, :cond_b

    .line 1182
    const-string/jumbo v1, "MiniEmbedWebView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mWebViewH5Page.getWebView() is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1186
    :cond_b
    new-instance v1, Lhlx$2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhlx;->b:Liop;

    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lhlx$2;-><init>(Lhlx;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;Ljava/lang/String;Liop;)V

    .line 1221
    invoke-interface {v14}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V

    .line 1222
    invoke-interface {v15, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 1224
    invoke-interface {v15}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_5

    .line 1226
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1227
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " dd-web"

    aput-object v4, v2, v3

    .line 1226
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 7
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 299
    const-string/jumbo v3, "postMessage"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lhlx;->b:Liop;

    if-nez v3, :cond_1

    .line 301
    const-string/jumbo v3, "MiniEmbedWebView"

    const-string/jumbo v4, "onReceivedMessage...mWebViewH5Page is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    if-nez p2, :cond_2

    .line 306
    const-string/jumbo v3, "MiniEmbedWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceivedMessage...actionType="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 308
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "error"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v3, "errorMessage"

    const-string/jumbo v4, "data is null"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v3, p0, Lhlx;->b:Liop;

    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "onToWebViewMessage"

    invoke-interface {v3, v4, v2, v6}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 314
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v3, "callback"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, "callback":I
    const-string/jumbo v3, "res"

    invoke-static {p2, v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 316
    .local v1, "res":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 317
    .restart local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "callback"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v3, "res"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v3, p0, Lhlx;->b:Liop;

    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "onToWebViewMessage"

    invoke-interface {v3, v4, v2, v6}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 342
    iget-object v1, p0, Lhlx;->b:Liop;

    if-nez v1, :cond_1

    .line 343
    const-string/jumbo v1, "MiniEmbedWebView"

    const-string/jumbo v2, "onReceivedRender..webview h5Page is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "MiniEmbedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedRender...url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "hybrid_dd_web_only_https"

    invoke-static {v1, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    if-eqz v0, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_2
    iget-object v1, p0, Lhlx;->b:Liop;

    invoke-interface {v1, v0}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lhlx;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liop;

    invoke-interface {v1}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lhlx;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liop;

    .line 1409
    if-eqz v1, :cond_5

    .line 1411
    const/4 v2, 0x0

    .line 1412
    invoke-interface {v1}, Liop;->getSession()Lipc;

    move-result-object v3

    .line 1413
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1415
    invoke-interface {v3}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v2

    .line 1416
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1420
    :cond_3
    if-eq v2, v5, :cond_4

    const-string/jumbo v2, "subtab"

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "fragmentType"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1422
    :cond_4
    const-string/jumbo v2, "showBackButton"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 365
    :cond_5
    iget-object v1, p0, Lhlx;->b:Liop;

    invoke-interface {v1}, Liop;->getPluginManager()Liow;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$3;-><init>(Lhlx;)V

    invoke-interface {v1, v2}, Liow;->register(Liov;)Z

    .line 386
    iget-object v1, p0, Lhlx;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liop;

    invoke-interface {v1}, Liop;->getPluginManager()Liow;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$4;-><init>(Lhlx;)V

    invoke-interface {v1, v2}, Liow;->register(Liov;)Z

    goto/16 :goto_0
.end method

.method public onWebViewDestory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lhlx;->b:Liop;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lhlx;->b:Liop;

    invoke-interface {v0, v1}, Liop;->setHandler(Liop$b;)V

    .line 291
    iget-object v0, p0, Lhlx;->b:Liop;

    invoke-interface {v0}, Liop;->exitPage()Z

    .line 293
    :cond_0
    iput-object v1, p0, Lhlx;->a:Landroid/view/View;

    .line 294
    iput-object v1, p0, Lhlx;->b:Liop;

    .line 295
    return-void
.end method

.method public onWebViewPause()V
    .locals 1

    .prologue
    .line 283
    const-string/jumbo v0, "pause"

    invoke-direct {p0, v0}, Lhlx;->a(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onWebViewResume()V
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "resume"

    invoke-direct {p0, v0}, Lhlx;->a(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 474
    const-string/jumbo v2, "MiniEmbedWebView"

    const-string/jumbo v3, "triggerPreSnapshot..."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lhlx;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 476
    .local v1, "localBroadcastManager":Ldq;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "embedview.snapshot.complete"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 479
    return-void
.end method
