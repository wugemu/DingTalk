.class public Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/NetConfig;
.source "DetectNetConfig.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/NetConfig;-><init>()V

    .line 4
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->a:F

    .line 5
    const v0, -0x41b33333    # -0.2f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->b:F

    .line 6
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->c:F

    .line 7
    const v0, 0x3f3851ec    # 0.72f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->d:F

    .line 8
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->e:I

    .line 9
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->f:I

    .line 10
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->g:F

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->h:F

    .line 12
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->i:F

    return-void
.end method


# virtual methods
.method public getBorderScale()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->i:F

    return v0
.end method

.method public getFar()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->h:F

    return v0
.end method

.method public getMaxangle()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->c:F

    return v0
.end method

.method public getMinangle()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->b:F

    return v0
.end method

.method public getMinlight()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->a:F

    return v0
.end method

.method public getNear()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->g:F

    return v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->f:I

    return v0
.end method

.method public getTargetratio()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->d:F

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->e:I

    return v0
.end method

.method public setBorderScale(F)V
    .locals 0
    .param p1, "borderScale"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->i:F

    .line 86
    return-void
.end method

.method public setFar(F)V
    .locals 0
    .param p1, "far"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->h:F

    .line 77
    return-void
.end method

.method public setMaxangle(F)V
    .locals 0
    .param p1, "maxangle"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->c:F

    .line 37
    return-void
.end method

.method public setMinangle(F)V
    .locals 0
    .param p1, "minangle"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->b:F

    .line 29
    return-void
.end method

.method public setMinlight(F)V
    .locals 0
    .param p1, "minlight"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->a:F

    .line 21
    return-void
.end method

.method public setNear(F)V
    .locals 0
    .param p1, "near"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->g:F

    .line 69
    return-void
.end method

.method public setRetry(I)V
    .locals 0
    .param p1, "retry"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->f:I

    .line 61
    return-void
.end method

.method public setTargetratio(F)V
    .locals 0
    .param p1, "targetratio"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->d:F

    .line 45
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->e:I

    .line 53
    return-void
.end method
