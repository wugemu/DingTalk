.class public Lcom/taobao/accs/ACCSManager$AccsRequest;
.super Ljava/lang/Object;
.source "ACCSManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ACCSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccsRequest"
.end annotation


# instance fields
.field public businessId:Ljava/lang/String;

.field public data:[B

.field public dataId:Ljava/lang/String;

.field public host:Ljava/net/URL;

.field public isUnitBusiness:Z

.field public serviceId:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public targetServiceName:Ljava/lang/String;

.field public timeout:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 265
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    .line 268
    iput-object p4, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "dataId"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;
    .param p6, "host"    # Ljava/net/URL;
    .param p7, "businessId"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 254
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 256
    iput-object p3, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    .line 257
    iput-object p4, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 258
    iput-object p5, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    .line 259
    iput-object p6, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 260
    iput-object p7, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    .line 261
    return-void
.end method


# virtual methods
.method public setBusinessId(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessId"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setHost(Ljava/net/URL;)V
    .locals 0
    .param p1, "host"    # Ljava/net/URL;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 293
    return-void
.end method

.method public setIsUnitBusiness(Z)V
    .locals 0
    .param p1, "isUnitBusiness"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 281
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setTargetServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetServiceName"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    .line 277
    return-void
.end method
