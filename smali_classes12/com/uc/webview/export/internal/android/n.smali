.class public final Lcom/uc/webview/export/internal/android/n;
.super Lcom/uc/webview/export/WebMessagePort;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field a:Landroid/webkit/WebMessagePort;


# direct methods
.method constructor <init>(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/uc/webview/export/WebMessagePort;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/n;->a:Landroid/webkit/WebMessagePort;

    .line 15
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/n;->a:Landroid/webkit/WebMessagePort;

    invoke-virtual {v0}, Landroid/webkit/WebMessagePort;->close()V

    .line 25
    return-void
.end method

.method public final postMessage(Lcom/uc/webview/export/WebMessage;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public final setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$a;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/android/n;->setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$a;Landroid/os/Handler;)V

    .line 30
    return-void
.end method

.method public final setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$a;Landroid/os/Handler;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/n;->a:Landroid/webkit/WebMessagePort;

    new-instance v1, Lcom/uc/webview/export/internal/android/o;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/android/o;-><init>(Lcom/uc/webview/export/internal/android/n;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    .line 40
    return-void
.end method
