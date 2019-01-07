.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

.field final synthetic val$h5PromptDialog:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;->val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;->val$h5PromptDialog:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 781
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;->val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;->val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;->val$h5PromptDialog:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getInputContent()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->confirm(Ljava/lang/String;)V

    .line 784
    :cond_0
    return-void
.end method
