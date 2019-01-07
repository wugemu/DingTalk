.class Lcom/alipay/mobile/nebulacore/android/AndroidSslError;
.super Landroid/net/http/SslError;
.source "AndroidSslError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;
    }
.end annotation


# instance fields
.field private sslError:Landroid/net/http/SslError;


# direct methods
.method constructor <init>(ILandroid/net/http/SslCertificate;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .param p3, "sslError"    # Landroid/net/http/SslError;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;)V

    .line 19
    if-nez p3, :cond_0

    .line 20
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidSslError;ILandroid/net/http/SslCertificate;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    goto :goto_0
.end method


# virtual methods
.method public addError(I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    invoke-virtual {v0, p1}, Landroid/net/http/SslError;->addError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryError()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasError(I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->sslError:Landroid/net/http/SslError;

    invoke-virtual {v0, p1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    return v0
.end method
