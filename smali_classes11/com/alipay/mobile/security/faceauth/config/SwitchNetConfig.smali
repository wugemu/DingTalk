.class public Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;
.super Ljava/lang/Object;
.source "SwitchNetConfig.java"


# instance fields
.field private a:I

.field private b:I

.field public cameraviewrotation:I

.field public faceBorder:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->a:I

    .line 14
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->b:I

    .line 24
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->cameraviewrotation:I

    .line 34
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->faceBorder:I

    return-void
.end method


# virtual methods
.method public getCameraviewrotation()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->cameraviewrotation:I

    return v0
.end method

.method public getFaceBorder()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->faceBorder:I

    return v0
.end method

.method public getRecord()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->a:I

    return v0
.end method

.method public getUploadMonitorPic()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->b:I

    return v0
.end method

.method public setCameraviewrotation(I)V
    .locals 0
    .param p1, "cameraviewrotation"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->cameraviewrotation:I

    .line 32
    return-void
.end method

.method public setFaceBorder(I)V
    .locals 0
    .param p1, "faceBorder"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->faceBorder:I

    .line 42
    return-void
.end method

.method public setRecord(I)V
    .locals 0
    .param p1, "record"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->a:I

    .line 12
    return-void
.end method

.method public setUploadMonitorPic(I)V
    .locals 0
    .param p1, "uploadMonitorPic"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;->b:I

    .line 22
    return-void
.end method
