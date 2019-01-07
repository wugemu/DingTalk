.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhqe$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
