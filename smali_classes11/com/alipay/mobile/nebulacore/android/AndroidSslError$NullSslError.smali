.class Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;
.super Landroid/net/http/SslError;
.source "AndroidSslError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/android/AndroidSslError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullSslError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/android/AndroidSslError;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidSslError;ILandroid/net/http/SslCertificate;)V
    .locals 0
    .param p2, "error"    # I
    .param p3, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidSslError;

    .line 54
    invoke-direct {p0, p2, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addError(I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryError()I
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasError(I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "Null SslError instance"

    return-object v0
.end method
