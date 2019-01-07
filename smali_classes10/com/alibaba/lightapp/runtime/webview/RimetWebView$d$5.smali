.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$5;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/JsResult;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/JsResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$5;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$5;->a:Lcom/uc/webview/export/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$5;->a:Lcom/uc/webview/export/JsResult;

    invoke-interface {v0}, Lcom/uc/webview/export/JsResult;->cancel()V

    .line 1423
    return-void
.end method
