.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$14;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhpe$e;


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
    .line 481
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$14;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 485
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$14;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1208
    iget-object v0, v0, Lhpe;->b:Lhpe$b;

    .line 1537
    iget-object v0, v0, Lhpe$b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 1538
    invoke-interface {v0, p1, v1}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequestStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 493
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$14;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2212
    iget-object v0, v0, Lhpe;->b:Lhpe$b;

    .line 2543
    iget-object v0, v0, Lhpe$b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 2544
    invoke-interface {v0, p1, v1}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method
