.class public abstract Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;
.super Ljava/lang/Object;
.source "UploadChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doUploadNineShoot(Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V
.end method

.method public abstract uploadFaceInfo(Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
