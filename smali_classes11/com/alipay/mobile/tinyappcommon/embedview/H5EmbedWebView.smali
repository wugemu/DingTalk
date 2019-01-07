.class public Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;
.super Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.source "H5EmbedWebView.java"


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "postMessage"

.field public static final ON_TO_WEBVIEW_MESSAGE:Ljava/lang/String; = "onToWebViewMessage"

.field public static final WEB_VIEW_PAGE_TAG:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

.field public static final WEB_VIEW_TAG:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-TAG"

.field public static final WEB_VIEW_WORK_ID:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-WORKID"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Liop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 296
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    if-nez v5, :cond_0

    .line 322
    :goto_0
    return v4

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->canInterceptBackEvent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 299
    sget-object v5, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v6, "interceptBackEvent...can not intercept back event"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "interceptBackEvent...e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v5}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    .line 304
    .local v0, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v5

    if-nez v5, :cond_3

    .line 305
    :cond_2
    sget-object v5, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v6, "interceptBackEvent...can not go back"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v3

    .line 310
    .local v3, "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 311
    .local v1, "currentIndex":I
    if-gtz v1, :cond_4

    .line 312
    sget-object v5, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v6, "interceptBackEvent...webview with no history"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_4
    sget-object v5, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v6, "interceptBackEvent...go back"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBack()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    .prologue
    .line 41
    .line 2116
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2117
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleChanged...title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    invoke-interface {v0}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    sget-object v1, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

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

.method static synthetic access$100(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected canInterceptBackEvent()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->b:Landroid/view/View;

    .line 1345
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1347
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1348
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1349
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1351
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1352
    if-eqz v3, :cond_1

    .line 1353
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1358
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1355
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
    .line 327
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 10
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getView...width="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",param="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->b:Landroid/view/View;

    if-nez v7, :cond_3

    .line 64
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liop;

    .line 65
    .local v2, "h5Page":Liop;
    if-nez v2, :cond_0

    const/4 v7, 0x0

    .line 108
    .end local v2    # "h5Page":Liop;
    :goto_0
    return-object v7

    .line 67
    .restart local v2    # "h5Page":Liop;
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    .line 69
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v5, "param":Landroid/os/Bundle;
    const-string/jumbo v7, "createPageSence"

    const-string/jumbo v8, "H5Activity"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v7, "fragmentType"

    const-string/jumbo v8, "subtab"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "appId"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "currentAppId":Ljava/lang/String;
    const-string/jumbo v7, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {v2}, Liop;->getSession()Lipc;

    move-result-object v4

    .line 77
    .local v4, "h5Session":Lipc;
    const-string/jumbo v6, ""

    .line 78
    .local v6, "workId":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 79
    invoke-interface {v4}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v6

    .line 80
    sget-object v7, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "workId "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    const-string/jumbo v8, "element"

    const-string/jumbo v7, "id"

    invoke-interface {p5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v7, "viewId"

    invoke-virtual {v5, v7, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v7, "parentAppId"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Linz;

    invoke-direct {v0}, Linz;-><init>()V

    .line 1043
    .local v0, "bundle":Linz;
    iput-object v5, v0, Linz;->b:Landroid/os/Bundle;

    .line 90
    const-class v7, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 91
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v3, v7, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Linz;)Liop;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    .line 93
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    new-instance v8, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$1;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$1;-><init>(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V

    invoke-interface {v7, v8}, Liop;->setHandler(Liop$b;)V

    .line 100
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    const-string/jumbo v8, "MINI-PROGRAM-WEB-VIEW-WORKID"

    invoke-interface {v7, v8, v6}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    const-string/jumbo v8, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v7, v8, v2}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string/jumbo v7, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    iget-object v8, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v2, v7, v8}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v7}, Liop;->getContentView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->b:Landroid/view/View;

    .line 108
    .end local v0    # "bundle":Linz;
    .end local v1    # "currentAppId":Ljava/lang/String;
    .end local v2    # "h5Page":Liop;
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v4    # "h5Session":Lipc;
    .end local v5    # "param":Landroid/os/Bundle;
    .end local v6    # "workId":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->b:Landroid/view/View;

    goto/16 :goto_0
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
    .line 127
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
    .line 137
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
    .line 132
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
    .line 142
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
    .line 147
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 7
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 172
    const-string/jumbo v3, "postMessage"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    if-nez v3, :cond_1

    .line 174
    sget-object v3, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v4, "onReceivedMessage...mWebViewH5Page is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    if-nez p2, :cond_2

    .line 179
    sget-object v3, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceivedMessage...actionType="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 181
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "error"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v3, "errorMessage"

    const-string/jumbo v4, "data is null"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v3, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "onToWebViewMessage"

    invoke-interface {v3, v4, v2, v6}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 187
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v3, "callback"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "callback":I
    const-string/jumbo v3, "res"

    invoke-static {p2, v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 189
    .local v1, "res":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 190
    .restart local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "callback"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v3, "res"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v3, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "onToWebViewMessage"

    invoke-interface {v3, v4, v2, v6}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 5
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    if-nez v1, :cond_0

    .line 214
    sget-object v1, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v2, "onReceivedRender..webview h5Page is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedRender...url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v1, v0}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liop;

    invoke-interface {v1}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 1271
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liop;

    .line 1272
    if-eqz v1, :cond_3

    .line 1274
    const/4 v2, 0x0

    .line 1275
    invoke-interface {v1}, Liop;->getSession()Lipc;

    move-result-object v3

    .line 1276
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1278
    invoke-interface {v3}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v2

    .line 1279
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1283
    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "subtab"

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "fragmentType"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1285
    :cond_2
    const-string/jumbo v2, "showBackButton"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v1}, Liop;->getPluginManager()Liow;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$2;-><init>(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V

    invoke-interface {v1, v2}, Liow;->register(Liov;)Z

    .line 249
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liop;

    invoke-interface {v1}, Liop;->getPluginManager()Liow;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$3;-><init>(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V

    invoke-interface {v1, v2}, Liow;->register(Liov;)Z

    goto/16 :goto_0
.end method

.method public onWebViewDestory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v0, v1}, Liop;->setHandler(Liop$b;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    invoke-interface {v0}, Liop;->exitPage()Z

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->b:Landroid/view/View;

    .line 167
    iput-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->c:Liop;

    .line 168
    return-void
.end method

.method public onWebViewPause()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onWebViewResume()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string/jumbo v3, "triggerPreSnapshot..."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 339
    .local v1, "localBroadcastManager":Ldq;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "embedview.snapshot.complete"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 342
    return-void
.end method
