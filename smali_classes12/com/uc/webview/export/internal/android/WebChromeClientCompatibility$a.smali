.class final Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;
.super Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;

.field private b:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->a:Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility;

    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 20
    return-void
.end method


# virtual methods
.method public final createIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getAcceptTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFilenameHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebChromeClientCompatibility$a;->b:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    return v0
.end method
