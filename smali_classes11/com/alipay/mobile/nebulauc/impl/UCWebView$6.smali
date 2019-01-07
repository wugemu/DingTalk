.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getJS(I)Ljava/lang/String;
    .locals 8
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 843
    .local v1, "time":Ljava/lang/Long;
    const-string/jumbo v2, "H5UCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "begin load AlipayJSBridge type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v2, "UcLoadBridge_IO"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v6, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 847
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getJSBridge()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "js":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$400(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$400(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->getInjectJS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    :cond_0
    const-string/jumbo v2, "UcLoadBridge_IO"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v6, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 853
    const-string/jumbo v2, "H5UCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "begin load AlipayJSBridge type cost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 853
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-object v0
.end method
