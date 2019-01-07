.class Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;
.super Ljava/lang/Object;
.source "H5ErrorPagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;->startFeedBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    const/4 v10, 0x0

    .line 65
    .local v10, "h5Page":Liop;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v10

    .line 69
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Liop;->getPageData()Lior;

    move-result-object v0

    if-nez v0, :cond_2

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-interface {v10}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    invoke-interface {v10}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v4, :cond_4

    .line 75
    invoke-interface {v10}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 76
    .local v14, "widths":I
    invoke-interface {v10}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 77
    .local v11, "heights":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    .local v3, "snapshot":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .local v1, "dstRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .local v2, "srcRect":Landroid/graphics/Rect;
    invoke-interface {v10}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    .line 84
    .end local v1    # "dstRect":Landroid/graphics/Rect;
    .end local v2    # "srcRect":Landroid/graphics/Rect;
    .end local v11    # "heights":I
    .end local v14    # "widths":I
    :goto_1
    const-string/jumbo v9, ""

    .line 85
    .local v9, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 86
    new-instance v8, Lcom/alipay/mobile/nebula/filecache/FileCache;

    invoke-interface {v10}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v10}, Liop;->getPageData()Lior;

    move-result-object v4

    .line 1870
    iget-object v4, v4, Lior;->ak:Ljava/lang/String;

    .line 86
    invoke-direct {v8, v0, v4}, Lcom/alipay/mobile/nebula/filecache/FileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    .local v8, "fileCache":Lcom/alipay/mobile/nebula/filecache/FileCache;
    invoke-interface {v10}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "png"

    .line 87
    invoke-virtual {v8, v0, v4, v5}, Lcom/alipay/mobile/nebula/filecache/FileCache;->getTempPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v3, v0, v9}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    .line 96
    .end local v8    # "fileCache":Lcom/alipay/mobile/nebula/filecache/FileCache;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;Liop;)Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;

    move-result-object v7

    .line 97
    .local v7, "feedbackReportData":Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    invoke-static {v7}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, "reportJsonStr":Ljava/lang/String;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v12, "params":Landroid/os/Bundle;
    const-string/jumbo v0, "feedBackBizId"

    invoke-interface {v10}, Liop;->getPageData()Lior;

    move-result-object v4

    .line 2870
    iget-object v4, v4, Lior;->ak:Ljava/lang/String;

    .line 99
    invoke-virtual {v12, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "feedBackImage"

    invoke-virtual {v12, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "feedBackInfo"

    invoke-virtual {v12, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v0

    invoke-interface {v10}, Liop;->getPageData()Lior;

    move-result-object v4

    .line 3870
    iget-object v4, v4, Lior;->ak:Ljava/lang/String;

    .line 103
    const-string/jumbo v5, "20000049"

    invoke-virtual {v0, v4, v5, v12}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 104
    .end local v3    # "snapshot":Landroid/graphics/Bitmap;
    .end local v7    # "feedbackReportData":Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin$FeedbackReportData;
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v12    # "params":Landroid/os/Bundle;
    .end local v13    # "reportJsonStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 105
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "H5ErrorPagePlugin"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 82
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Liop;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "snapshot":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 92
    .restart local v8    # "fileCache":Lcom/alipay/mobile/nebula/filecache/FileCache;
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
