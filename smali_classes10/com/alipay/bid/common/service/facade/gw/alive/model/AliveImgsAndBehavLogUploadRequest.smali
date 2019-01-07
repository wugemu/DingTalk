.class public Lcom/alipay/bid/common/service/facade/gw/alive/model/AliveImgsAndBehavLogUploadRequest;
.super Lcom/alipay/bid/common/service/facade/gw/model/ServiceRequest;
.source "AliveImgsAndBehavLogUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public aliveImgs:[Lcom/alipay/bid/common/service/facade/gw/alive/model/AliveImage;

.field public behavLogJson:Ljava/lang/String;

.field public encodeKey:Ljava/lang/String;

.field public validImgs:[Lcom/alipay/bid/common/service/facade/gw/alive/model/AliveImage;

.field public vtoken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/bid/common/service/facade/gw/model/ServiceRequest;-><init>()V

    return-void
.end method
