.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$2;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;

    .prologue
    .line 2603
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$2;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dialogCallbackFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2613
    return-void
.end method

.method public final dialogCallbackSuccess(ILjava/lang/String;)V
    .locals 2
    .param p1, "buttonIndex"    # I
    .param p2, "callbackValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2606
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2607
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$2;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 2609
    :cond_0
    return-void
.end method
