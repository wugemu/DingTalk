.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$apJsResult:Lcom/alipay/mobile/nebula/webview/APJsResult;

.field final synthetic val$h5Dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;->val$apJsResult:Lcom/alipay/mobile/nebula/webview/APJsResult;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;->val$h5Dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;->val$apJsResult:Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APJsResult;->confirm()V

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;->val$h5Dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->dismiss()V

    .line 686
    return-void
.end method