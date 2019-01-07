.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$11;
.super Lcom/alibaba/lightapp/runtime/SecureWebView$a;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$11;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/SecureWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/SecureWebView;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$11;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$11;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
