.class public Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/NetConfig;
.source "AlgorithmNetConfig.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/NetConfig;-><init>()V

    .line 5
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->a:I

    .line 6
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->b:I

    .line 7
    const/16 v0, 0x96

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->c:I

    return-void
.end method


# virtual methods
.method public getBlink()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->b:I

    return v0
.end method

.method public getFacesize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->c:I

    return v0
.end method

.method public getMouth()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->a:I

    return v0
.end method

.method public setBlink(I)V
    .locals 0
    .param p1, "blink"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->b:I

    .line 23
    return-void
.end method

.method public setFacesize(I)V
    .locals 0
    .param p1, "facesize"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->c:I

    .line 31
    return-void
.end method

.method public setMouth(I)V
    .locals 0
    .param p1, "mouth"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;->a:I

    .line 15
    return-void
.end method
