.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APHitTestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/uc/webview/export/WebView$HitTestResult;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/uc/webview/export/WebView$HitTestResult;)V
    .locals 0
    .param p2, "hitTestResult"    # Lcom/uc/webview/export/WebView$HitTestResult;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;->a:Lcom/uc/webview/export/WebView$HitTestResult;

    .line 1102
    return-void
.end method


# virtual methods
.method public final getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;->a:Lcom/uc/webview/export/WebView$HitTestResult;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;->a:Lcom/uc/webview/export/WebView$HitTestResult;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result v0

    return v0
.end method
