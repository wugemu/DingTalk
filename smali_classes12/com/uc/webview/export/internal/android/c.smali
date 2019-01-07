.class final Lcom/uc/webview/export/internal/android/c;
.super Lcom/uc/webview/export/HttpAuthHandler;
.source "ProGuard"


# direct methods
.method constructor <init>(Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/uc/webview/export/HttpAuthHandler;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/c;->mHandler:Landroid/webkit/HttpAuthHandler;

    .line 9
    return-void
.end method
