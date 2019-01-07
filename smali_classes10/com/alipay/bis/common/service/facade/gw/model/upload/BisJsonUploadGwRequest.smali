.class public Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;
.super Ljava/lang/Object;
.source "BisJsonUploadGwRequest.java"


# instance fields
.field public behavLog:Ljava/lang/String;

.field public behavLogSig:Ljava/lang/String;

.field public bisToken:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public contentSig:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->bisToken:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->content:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->contentSig:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLog:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLogSig:Ljava/lang/String;

    return-void
.end method
