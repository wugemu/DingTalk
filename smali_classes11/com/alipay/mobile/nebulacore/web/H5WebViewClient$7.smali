.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->val$view:Lcom/alipay/mobile/nebula/webview/APWebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handle hasInputException"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->val$view:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;->val$url:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$700(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 1282
    return-void
.end method
