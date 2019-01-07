.class public Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/NetConfig;
.source "UploadNetConfig.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/NetConfig;-><init>()V

    .line 5
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;->a:I

    return-void
.end method


# virtual methods
.method public getMinquality()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;->a:I

    return v0
.end method

.method public setMinquality(I)V
    .locals 0
    .param p1, "minquality"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;->a:I

    .line 13
    return-void
.end method
