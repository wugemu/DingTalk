.class public final Lcom/uc/webview/export/internal/android/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IWebViewDatabase;


# instance fields
.field private a:Landroid/webkit/WebViewDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    .line 14
    return-void
.end method


# virtual methods
.method public final clearFormData()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 38
    return-void
.end method

.method public final clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 30
    return-void
.end method

.method public final clearUsernamePassword()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 22
    return-void
.end method

.method public final hasFormData()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasFormData()Z

    move-result v0

    return v0
.end method

.method public final hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public final hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/u;->a:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasUsernamePassword()Z

    move-result v0

    return v0
.end method
