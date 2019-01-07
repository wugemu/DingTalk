.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$2;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$2;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$2;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->c:Lcom/uc/webview/export/SslErrorHandler;

    invoke-virtual {v0}, Lcom/uc/webview/export/SslErrorHandler;->cancel()V

    .line 2151
    return-void
.end method
