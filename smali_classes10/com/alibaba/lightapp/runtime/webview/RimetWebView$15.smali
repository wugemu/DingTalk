.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$15;
.super Lcmi;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$15;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$15;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h()V

    .line 545
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 536
    .line 1539
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$15;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h()V

    .line 536
    return-void
.end method
