.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1451
    check-cast p1, [Landroid/net/Uri;

    .line 2454
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;->a:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1451
    :cond_0
    return-void
.end method
