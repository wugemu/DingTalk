.class public Lcom/alipay/mobile/security/faceauth/FaceRpcGwRequest;
.super Ljava/lang/Object;
.source "FaceRpcGwRequest.java"


# instance fields
.field public bisBehavLog:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

.field public bisFaceUploadContent:Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;

.field public faceRpcChannel:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

.field public invokeType:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public isNineShoot:Z

.field public publicKey:Ljava/lang/String;

.field public userVerifyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->JSON:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/FaceRpcGwRequest;->faceRpcChannel:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/FaceRpcGwRequest;->publicKey:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/FaceRpcGwRequest;->isNineShoot:Z

    return-void
.end method
