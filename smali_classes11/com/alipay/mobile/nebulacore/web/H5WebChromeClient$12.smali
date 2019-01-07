.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;->val$apJsResult:Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;->val$apJsResult:Lcom/alipay/mobile/nebula/webview/APJsResult;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;->val$apJsResult:Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 732
    :cond_0
    return-void
.end method
