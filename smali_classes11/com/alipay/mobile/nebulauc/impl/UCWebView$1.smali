.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateOnMainWithDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$002(Z)Z

    .line 133
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "WebView is pre-created"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preCreate exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$002(Z)Z

    .line 133
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "WebView is pre-created"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$002(Z)Z

    .line 133
    const-string/jumbo v2, "H5UCWebView"

    const-string/jumbo v3, "WebView is pre-created"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
