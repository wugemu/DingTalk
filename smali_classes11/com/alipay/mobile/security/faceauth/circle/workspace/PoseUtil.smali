.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;
.super Ljava/lang/Object;
.source "PoseUtil.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "config"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->a:I

    .line 21
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->b:F

    .line 22
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->c:F

    .line 23
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->d:F

    .line 24
    const v0, 0x3e2e147b    # 0.17f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->e:F

    .line 25
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->f:F

    .line 26
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->g:F

    .line 27
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->h:F

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->i:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->j:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->k:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->l:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->m:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->n:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->o:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->p:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->q:Z

    .line 1041
    if-nez p1, :cond_2

    .line 2068
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 2083
    :goto_1
    if-nez p1, :cond_4

    .line 140
    :cond_1
    :goto_2
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->q:Z

    .line 141
    return-void

    .line 1046
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_motion()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->b:F

    .line 1052
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_rectwidth()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->c:F

    .line 1053
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_pitch()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->d:F

    .line 1054
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_yaw()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->e:F

    .line 1055
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_light()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->f:F

    .line 1056
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_integrity()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->g:F

    .line 1057
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPose_gaussian()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->h:F

    .line 1059
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getUpload()Lcom/alipay/mobile/security/bio/config/bean/Upload;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Upload;->getMinquality()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->a:I

    goto :goto_0

    .line 2072
    :cond_3
    sget v0, Ligf$e;->topText_noface:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->i:Ljava/lang/String;

    .line 2073
    sget v0, Ligf$e;->topText_light:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->j:Ljava/lang/String;

    .line 2074
    sget v0, Ligf$e;->topText_rectwidth:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->k:Ljava/lang/String;

    .line 2075
    sget v0, Ligf$e;->topText_integrity:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->l:Ljava/lang/String;

    .line 2076
    sget v0, Ligf$e;->topText_angle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->m:Ljava/lang/String;

    .line 2077
    sget v0, Ligf$e;->topText_blur:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->n:Ljava/lang/String;

    .line 2078
    sget v0, Ligf$e;->topText_quality:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->o:Ljava/lang/String;

    .line 2079
    sget v0, Ligf$e;->topText_blink:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->p:Ljava/lang/String;

    goto/16 :goto_1

    .line 2086
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    .line 2087
    if-eqz v0, :cond_1

    .line 2092
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_noface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2093
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_noface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->i:Ljava/lang/String;

    .line 2096
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_light()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2097
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_light()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->j:Ljava/lang/String;

    .line 2099
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_rectwidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2100
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_rectwidth()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->k:Ljava/lang/String;

    .line 2102
    :cond_7
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_integrity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2103
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_integrity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->l:Ljava/lang/String;

    .line 2105
    :cond_8
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_angle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2106
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_angle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->m:Ljava/lang/String;

    .line 2108
    :cond_9
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blur()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2109
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blur()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->n:Ljava/lang/String;

    .line 2111
    :cond_a
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_quality()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2112
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_quality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->o:Ljava/lang/String;

    .line 2114
    :cond_b
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2115
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->p:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method public checkPose(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;
    .locals 9
    .param p1, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 144
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;-><init>()V

    .line 145
    .local v1, "status":Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v1

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setHasFace(Z)V

    .line 151
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->q:Z

    if-eqz v5, :cond_2

    .line 152
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseOk(Z)V

    .line 154
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "checkPose Light:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getBrightness()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Integrity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 155
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getIntegrity()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pose_yaw:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 156
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYawAngle()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pose_pitch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 157
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getPitchAngle()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pose_gaussian:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getGaussianBlur()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pose_motion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 159
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getMotionBlur()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " quality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 160
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getBrightness()F

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->f:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v0

    .line 169
    .local v0, "facePos":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 170
    .local v2, "width":F
    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 174
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "checkPose width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 175
    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->c:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_5

    .line 176
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getIntegrity()F

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->g:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_7

    .line 2126
    if-nez p1, :cond_8

    .line 180
    :cond_6
    :goto_1
    if-nez v3, :cond_9

    .line 181
    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2130
    :cond_8
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v5

    .line 2131
    if-eqz v5, :cond_6

    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_6

    iget v6, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v5, v6

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_6

    move v3, v4

    .line 2134
    goto :goto_1

    .line 185
    :cond_9
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYawAngle()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->e:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_a

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getPitchAngle()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->d:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    .line 186
    :cond_a
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_b
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getGaussianBlur()F

    move-result v3

    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->h:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_c

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getMotionBlur()F

    move-result v3

    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->b:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_d

    .line 191
    :cond_c
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_d
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setPoseOk(Z)V

    .line 197
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v3

    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->a:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 198
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->setQualityOk(Z)V

    .line 199
    iput-boolean v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->q:Z

    goto/16 :goto_0
.end method

.method public getTopText_blink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getTopText_noface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTopText_quality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->o:Ljava/lang/String;

    return-object v0
.end method
