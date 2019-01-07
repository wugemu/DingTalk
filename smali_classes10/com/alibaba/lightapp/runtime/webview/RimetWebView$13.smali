.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$13;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhpe$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V
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
    .line 471
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$13;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "len"    # J

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$13;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$13;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    move-result-object v0

    long-to-double v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->commit(Ljava/lang/String;D)V

    .line 477
    :cond_0
    return-void
.end method
