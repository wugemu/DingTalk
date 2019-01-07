.class public Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/uc/webview/export/WebView;

.field protected b:Lcom/uc/webview/export/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation build Lcom/uc/webview/export/annotations/Jni;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v2, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, v2, p2, v0}, Lcom/uc/webview/export/WebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0

    .line 56
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;

    invoke-direct {v0, p0, p3}, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;-><init>(Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    goto :goto_0
.end method
