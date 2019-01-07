.class final Lcom/uc/webview/export/internal/android/s;
.super Landroid/webkit/WebView$VisualStateCallback;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/WebView$b;

.field final synthetic b:Lcom/uc/webview/export/internal/android/WebViewAndroid;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Lcom/uc/webview/export/WebView$b;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/s;->b:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    iput-object p2, p0, Lcom/uc/webview/export/internal/android/s;->a:Lcom/uc/webview/export/WebView$b;

    invoke-direct {p0}, Landroid/webkit/WebView$VisualStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(J)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
