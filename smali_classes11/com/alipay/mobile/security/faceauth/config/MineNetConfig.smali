.class public Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/NetConfig;
.source "MineNetConfig.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/NetConfig;-><init>()V

    .line 5
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->a:I

    .line 6
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->b:I

    return-void
.end method


# virtual methods
.method public getDscore()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->a:I

    return v0
.end method

.method public getVideo()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->b:I

    return v0
.end method

.method public setDscore(I)V
    .locals 0
    .param p1, "dscore"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->a:I

    .line 14
    return-void
.end method

.method public setVideo(I)V
    .locals 0
    .param p1, "video"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->b:I

    .line 22
    return-void
.end method
