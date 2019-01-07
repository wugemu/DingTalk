.class public Lcom/uc/webview/export/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/WebView;

.field private b:Lcom/uc/webview/export/WebView;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/uc/webview/export/WebView$WebViewTransport;->a:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Lcom/uc/webview/export/WebView;
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/WebView$WebViewTransport;->b:Lcom/uc/webview/export/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Lcom/uc/webview/export/WebView;)V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/uc/webview/export/WebView$WebViewTransport;->b:Lcom/uc/webview/export/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
