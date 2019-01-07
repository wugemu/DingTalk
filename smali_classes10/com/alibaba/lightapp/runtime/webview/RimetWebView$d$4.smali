.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$4;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1413
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$4;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$4;->a:Lcom/uc/webview/export/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$4;->a:Lcom/uc/webview/export/JsResult;

    invoke-interface {v0}, Lcom/uc/webview/export/JsResult;->cancel()V

    .line 1417
    return-void
.end method
