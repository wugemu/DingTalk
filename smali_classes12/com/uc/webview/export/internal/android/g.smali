.class final Lcom/uc/webview/export/internal/android/g;
.super Lcom/uc/webview/export/SslErrorHandler;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# direct methods
.method constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/uc/webview/export/SslErrorHandler;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/g;->mHandler:Landroid/webkit/SslErrorHandler;

    .line 15
    return-void
.end method
