.class final Lcom/uc/webview/export/internal/android/p;
.super Lcom/uc/webview/export/WebSettings;
.source "ProGuard"


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/uc/webview/export/WebSettings;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/p;->mSettings:Landroid/webkit/WebSettings;

    .line 12
    return-void
.end method
