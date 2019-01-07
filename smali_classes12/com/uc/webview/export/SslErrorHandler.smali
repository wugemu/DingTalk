.class public Lcom/uc/webview/export/SslErrorHandler;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field public mHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/SslErrorHandler;->mHandler:Landroid/webkit/SslErrorHandler;

    .line 13
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uc/webview/export/SslErrorHandler;->mHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 30
    return-void
.end method

.method public proceed()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/uc/webview/export/SslErrorHandler;->mHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 21
    return-void
.end method
