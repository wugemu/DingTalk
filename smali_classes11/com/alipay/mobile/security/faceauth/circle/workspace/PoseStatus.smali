.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;
.super Ljava/lang/Object;
.source "PoseStatus.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->a:Z

    .line 8
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->b:Z

    .line 9
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->c:Z

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPoseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isHasFace()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->c:Z

    return v0
.end method

.method public isPoseOk()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->a:Z

    return v0
.end method

.method public isQualityOk()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->b:Z

    return v0
.end method

.method public setHasFace(Z)V
    .locals 0
    .param p1, "hasFace"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->c:Z

    .line 43
    return-void
.end method

.method public setPoseOk(Z)V
    .locals 0
    .param p1, "poseOk"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->a:Z

    .line 19
    return-void
.end method

.method public setPoseText(Ljava/lang/String;)V
    .locals 0
    .param p1, "poseText"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->d:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setQualityOk(Z)V
    .locals 0
    .param p1, "qualityOk"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->b:Z

    .line 35
    return-void
.end method
