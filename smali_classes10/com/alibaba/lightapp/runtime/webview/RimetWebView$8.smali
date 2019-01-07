.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$8;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


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
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 2260
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$8;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$8;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2260
    check-cast p1, [Landroid/net/Uri;

    .line 3263
    if-nez p1, :cond_0

    .line 3265
    const/4 v0, 0x1

    new-array p1, v0, [Landroid/net/Uri;

    .line 3266
    const/4 v0, 0x0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    aput-object v1, p1, v0

    .line 3268
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$8;->a:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2260
    return-void
.end method
