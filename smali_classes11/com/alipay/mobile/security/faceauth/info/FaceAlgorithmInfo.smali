.class public Lcom/alipay/mobile/security/faceauth/info/FaceAlgorithmInfo;
.super Lcom/alipay/mobile/security/faceauth/info/AlgorithmInfo;
.source "FaceAlgorithmInfo.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/info/AlgorithmInfo;-><init>()V

    .line 5
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/FaceAlgorithmInfo;->a:I

    return-void
.end method


# virtual methods
.method public getRotationAngle()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/FaceAlgorithmInfo;->a:I

    return v0
.end method

.method public setRotationAngle(I)V
    .locals 0
    .param p1, "rotationAngle"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/FaceAlgorithmInfo;->a:I

    .line 13
    return-void
.end method
