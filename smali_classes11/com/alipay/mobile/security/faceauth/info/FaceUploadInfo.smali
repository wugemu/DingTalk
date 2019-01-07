.class public Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;
.super Ljava/lang/Object;
.source "FaceUploadInfo.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, -0x5a

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;->a:I

    .line 9
    const/16 v0, 0xb4

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;->b:I

    return-void
.end method


# virtual methods
.method public getHorizontalAngle()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;->a:I

    return v0
.end method

.method public getVerticalAngle()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;->b:I

    return v0
.end method

.method public setHorizontalAngle(I)V
    .locals 0
    .param p1, "horizontalAngle"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;->a:I

    .line 17
    return-void
.end method

.method public setVerticalAngle(I)V
    .locals 0
    .param p1, "verticalAngle"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/FaceUploadInfo;->b:I

    .line 25
    return-void
.end method
