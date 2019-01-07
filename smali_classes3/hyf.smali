.class public final Lhyf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/security/biometrics/build/ak$b;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V
    .locals 0

    iput-object p1, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->g()V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(I)V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;II)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 0
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v1, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    .line 2000
    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    sget-object v2, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3000
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->R:Z

    iget-object v2, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "hint_c"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v4

    const-string/jumbo v5, "10007"

    invoke-virtual {v4, v5, v3}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4000
    iget-object v2, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->p:Landroid/view/animation/Animation;

    new-instance v3, Lhxh;

    invoke-direct {v3, v1, v0}, Lhxh;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 0
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DetectStep start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    .line 2000
    :pswitch_0
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_blink:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_mounth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_raise_head:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_pitch_down_head:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_turn_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_turn_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_action_turn_right_or_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 3000
    :cond_3
    invoke-static {v2}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5000
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h()V

    invoke-static {v0}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 6000
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h()V

    iget-object v2, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->p:Landroid/view/animation/Animation;

    new-instance v3, Lhxj;

    invoke-direct {v3, v1, v0}, Lhxj;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    new-instance v2, Lhxl;

    invoke-direct {v2, v1}, Lhxl;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 2000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Lhzi;)V
    .locals 1

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v0, p1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Lhzi;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    return-void
.end method

.method public final b(I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDetectError\uff1d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-boolean v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->n:Z

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    new-instance v1, Lhyg;

    invoke-direct {v1, p0}, Lhyg;-><init>(Lhyf;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v2, v4

    const-wide v4, 0x409f400000000000L    # 2000.0

    add-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x400

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "retry_tt"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10012"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(I)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;II)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DetectStep stop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne p2, p3, :cond_0

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->f()V

    :cond_0
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->h()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(I)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v2, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DetectStep complete:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v0, v2}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lhwa;->a(I)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "img1_ts"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getT()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "result"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "bri"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getB()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "mblur"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getMb()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "gblur"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getGb()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "qua"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getQ()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v2, "img2_ts"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getT()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    const-string/jumbo v2, "img3_ts"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getT()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v2, "img4_ts"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getT()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_3

    const-string/jumbo v2, "img5_ts"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getT()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v2, "10014"

    invoke-virtual {v0, v2, v1}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lhzj;->b(Ljava/lang/Exception;)V

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    const/16 v0, 0x41a

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyf;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(I)V

    goto :goto_0
.end method
