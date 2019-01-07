.class Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;
.super Ljava/lang/Object;
.source "AndroidSslErrorHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;


# instance fields
.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .param p1, "sslErrorHandler"    # Landroid/webkit/SslErrorHandler;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 16
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 21
    return-void
.end method

.method public proceed()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 27
    return-void
.end method
