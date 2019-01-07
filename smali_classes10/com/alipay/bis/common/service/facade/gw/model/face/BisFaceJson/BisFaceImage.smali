.class public Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
.super Ljava/lang/Object;
.source "BisFaceImage.java"


# instance fields
.field public content:Ljava/lang/String;

.field public contentSig:Ljava/lang/String;

.field public height:I

.field public quality:I

.field public rectx:I

.field public recty:I

.field public taskidx:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->content:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->rectx:I

    .line 10
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->recty:I

    .line 11
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->width:I

    .line 12
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->height:I

    .line 13
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->quality:I

    .line 14
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->taskidx:I

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->contentSig:Ljava/lang/String;

    return-void
.end method
