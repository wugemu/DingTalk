.class public Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
.super Ljava/lang/Object;
.source "H5CustomHttpResponse.java"


# instance fields
.field private headers:[Lorg/apache/http/Header;

.field private inputStream:Ljava/io/InputStream;

.field private resData:[B

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->resData:[B

    return-object v0
.end method

.method public getResStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->statusCode:I

    return v0
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->headers:[Lorg/apache/http/Header;

    .line 32
    return-void
.end method

.method public setResData([B)V
    .locals 0
    .param p1, "resData"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->resData:[B

    .line 40
    return-void
.end method

.method public setResStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->inputStream:Ljava/io/InputStream;

    .line 48
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->statusCode:I

    .line 24
    return-void
.end method
