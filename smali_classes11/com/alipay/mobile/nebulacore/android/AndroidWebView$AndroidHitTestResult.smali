.class Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APHitTestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/android/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidHitTestResult"
.end annotation


# instance fields
.field droidHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/webkit/WebView$HitTestResult;)V
    .locals 0
    .param p2, "hitTestResult"    # Landroid/webkit/WebView$HitTestResult;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->droidHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 548
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->droidHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;->droidHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    return v0
.end method
