.class final Lcom/uc/webview/export/internal/android/WebViewAndroid$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/android/WebViewAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

.field private b:Landroid/webkit/WebView$HitTestResult;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/webkit/WebView$HitTestResult;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;->b:Landroid/webkit/WebView$HitTestResult;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/webkit/WebView$HitTestResult;B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;-><init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/webkit/WebView$HitTestResult;)V

    return-void
.end method


# virtual methods
.method public final getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;->b:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;->b:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    return v0
.end method
