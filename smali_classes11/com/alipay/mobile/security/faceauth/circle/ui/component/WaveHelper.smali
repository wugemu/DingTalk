.class public Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;
.super Ljava/lang/Object;
.source "WaveHelper.java"


# instance fields
.field private a:Lcom/alipay/biometrics/ui/widget/WaveView;

.field private b:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/alipay/biometrics/ui/widget/WaveView;)V
    .locals 8
    .param p1, "waveView"    # Lcom/alipay/biometrics/ui/widget/WaveView;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const-string/jumbo v2, "waveShiftRatio"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1052
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1053
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1054
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1055
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const-string/jumbo v2, "waterLevelRatio"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1061
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1062
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1063
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const-string/jumbo v2, "amplitudeRatio"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1069
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1070
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1071
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1072
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1073
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    .line 1076
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 24
    return-void

    .line 1050
    .line 1059
    .line 1067
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x38d1b717    # 1.0E-4f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    invoke-virtual {v0}, Lcom/alipay/biometrics/ui/widget/WaveView;->isShowWave()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/WaveView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/WaveView;->setShowWave(Z)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method

.method public setBorder(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "color"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/biometrics/ui/widget/WaveView;->setBorder(II)V

    .line 36
    return-void
.end method

.method public setWaveColor(II)V
    .locals 1
    .param p1, "behindWaveColor"    # I
    .param p2, "frontWaveColor"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/biometrics/ui/widget/WaveView;->setWaveColor(II)V

    .line 42
    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/WaveView;->setShowWave(Z)V

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->a:Lcom/alipay/biometrics/ui/widget/WaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/WaveView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 32
    :cond_0
    return-void
.end method
