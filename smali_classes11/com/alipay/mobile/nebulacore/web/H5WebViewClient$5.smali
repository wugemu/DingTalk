.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$statusCode:I

.field final synthetic val$view:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->val$view:Lcom/alipay/mobile/nebula/webview/APWebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->val$requestUrl:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->val$statusCode:I

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
    .line 913
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->val$view:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->val$requestUrl:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;->val$statusCode:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$700(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 914
    return-void
.end method
