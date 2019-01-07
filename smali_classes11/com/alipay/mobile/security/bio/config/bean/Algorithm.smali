.class public Lcom/alipay/mobile/security/bio/config/bean/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:F

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const v4, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->a:F

    .line 9
    const v0, 0x3e23d70a    # 0.16f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->b:F

    .line 10
    iput v1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->c:I

    .line 11
    iput v1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->d:I

    .line 12
    const/16 v0, 0x32

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->e:I

    .line 13
    iput v2, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->f:I

    .line 14
    iput v1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->g:I

    .line 15
    iput v2, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->h:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->i:I

    .line 17
    iput v2, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->j:I

    .line 18
    const-string/jumbo v0, "DragonflyLiveness#GeminiLiveness"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->k:Ljava/lang/String;

    .line 19
    const v0, 0x429f947b    # 79.79f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->l:F

    .line 21
    iput v3, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->m:F

    .line 22
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->n:F

    .line 23
    iput v4, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->o:F

    .line 24
    iput v4, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->p:F

    .line 25
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->q:F

    .line 26
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->r:F

    .line 27
    iput v3, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->s:F

    .line 29
    iput v1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->t:I

    .line 30
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->u:F

    .line 32
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->v:I

    return-void
.end method


# virtual methods
.method public getBlink()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->c:I

    return v0
.end method

.method public getDiffer()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->a:F

    return v0
.end method

.method public getDisWeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->h:I

    return v0
.end method

.method public getEyeHwratio()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->b:F

    return v0
.end method

.method public getFacesize()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->e:I

    return v0
.end method

.method public getLiveness_combinations()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLog_level()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->t:I

    return v0
.end method

.method public getMatching_score()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->l:F

    return v0
.end method

.method public getMinpose()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->g:I

    return v0
.end method

.method public getMouth()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->d:I

    return v0
.end method

.method public getPitchWeight()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->j:I

    return v0
.end method

.method public getPose_gaussian()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->s:F

    return v0
.end method

.method public getPose_integrity()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->r:F

    return v0
.end method

.method public getPose_light()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->q:F

    return v0
.end method

.method public getPose_motion()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->m:F

    return v0
.end method

.method public getPose_pitch()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->o:F

    return v0
.end method

.method public getPose_rectwidth()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->n:F

    return v0
.end method

.method public getPose_yaw()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->p:F

    return v0
.end method

.method public getQuality_min_quality()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->u:F

    return v0
.end method

.method public getStack_size()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->v:I

    return v0
.end method

.method public getYawWeight()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->i:I

    return v0
.end method

.method public getYunqiQuality()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->f:I

    return v0
.end method

.method public setBlink(I)V
    .locals 0
    .param p1, "blink"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->c:I

    .line 92
    return-void
.end method

.method public setDiffer(F)V
    .locals 0
    .param p1, "differ"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->a:F

    .line 108
    return-void
.end method

.method public setDisWeight(I)V
    .locals 0
    .param p1, "disWeight"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->h:I

    .line 52
    return-void
.end method

.method public setEyeHwratio(F)V
    .locals 0
    .param p1, "eyeHwratio"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->b:F

    .line 100
    return-void
.end method

.method public setFacesize(I)V
    .locals 0
    .param p1, "facesize"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->e:I

    .line 76
    return-void
.end method

.method public setLiveness_combinations(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveness_combinations"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->k:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setLog_level(I)V
    .locals 0
    .param p1, "log_level"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->t:I

    .line 201
    return-void
.end method

.method public setMatching_score(F)V
    .locals 0
    .param p1, "matching_score"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->l:F

    .line 192
    return-void
.end method

.method public setMinpose(I)V
    .locals 0
    .param p1, "minpose"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->g:I

    .line 60
    return-void
.end method

.method public setMouth(I)V
    .locals 0
    .param p1, "mouth"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->d:I

    .line 84
    return-void
.end method

.method public setPitchWeight(I)V
    .locals 0
    .param p1, "pitchWeight"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->j:I

    .line 36
    return-void
.end method

.method public setPose_gaussian(F)V
    .locals 0
    .param p1, "pose_gaussian"    # F

    .prologue
    .line 167
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->s:F

    .line 168
    return-void
.end method

.method public setPose_integrity(F)V
    .locals 0
    .param p1, "pose_integrity"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->r:F

    .line 160
    return-void
.end method

.method public setPose_light(F)V
    .locals 0
    .param p1, "pose_light"    # F

    .prologue
    .line 151
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->q:F

    .line 152
    return-void
.end method

.method public setPose_motion(F)V
    .locals 0
    .param p1, "pose_motion"    # F

    .prologue
    .line 119
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->m:F

    .line 120
    return-void
.end method

.method public setPose_pitch(F)V
    .locals 0
    .param p1, "pose_pitch"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->o:F

    .line 136
    return-void
.end method

.method public setPose_rectwidth(F)V
    .locals 0
    .param p1, "pose_rectwidth"    # F

    .prologue
    .line 127
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->n:F

    .line 128
    return-void
.end method

.method public setPose_yaw(F)V
    .locals 0
    .param p1, "pose_yaw"    # F

    .prologue
    .line 143
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->p:F

    .line 144
    return-void
.end method

.method public setQuality_min_quality(F)V
    .locals 0
    .param p1, "quality_min_quality"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->u:F

    .line 176
    return-void
.end method

.method public setStack_size(I)V
    .locals 0
    .param p1, "stack_size"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->v:I

    .line 209
    return-void
.end method

.method public setYawWeight(I)V
    .locals 0
    .param p1, "yawWeight"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->i:I

    .line 44
    return-void
.end method

.method public setYunqiQuality(I)V
    .locals 0
    .param p1, "yunqiQuality"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->f:I

    .line 68
    return-void
.end method
