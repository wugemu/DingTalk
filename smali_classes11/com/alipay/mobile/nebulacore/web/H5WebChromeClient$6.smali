.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

.field final synthetic val$result:Lcom/alipay/mobile/nebula/webview/APJsResult;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->val$result:Lcom/alipay/mobile/nebula/webview/APJsResult;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->val$result:Lcom/alipay/mobile/nebula/webview/APJsResult;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->val$result:Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APJsResult;->confirm()V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->disMissDialog()V

    .line 629
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->release()V

    .line 630
    return-void
.end method
