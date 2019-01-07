.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;


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


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;->val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;->val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;->val$apJsPromptResult:Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 794
    :cond_0
    return-void
.end method
