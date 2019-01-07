.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;->a:Lcom/uc/webview/export/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1516
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;->a:Lcom/uc/webview/export/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Lcom/uc/webview/export/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 1517
    return-void
.end method
