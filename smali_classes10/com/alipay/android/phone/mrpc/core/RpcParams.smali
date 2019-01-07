.class public Lcom/alipay/android/phone/mrpc/core/RpcParams;
.super Ljava/lang/Object;
.source "RpcParams.java"


# instance fields
.field private gwUrl:Ljava/lang/String;

.field private gzip:Z

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGwUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcParams;->gwUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcParams;->headers:Ljava/util/List;

    return-object v0
.end method

.method public isGzip()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcParams;->gzip:Z

    return v0
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "gwUrl"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcParams;->gwUrl:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setGzip(Z)V
    .locals 0
    .param p1, "gzip"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcParams;->gzip:Z

    .line 41
    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcParams;->headers:Ljava/util/List;

    .line 33
    return-void
.end method
