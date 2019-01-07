.class public Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;
.super Lcom/alibaba/security/biometrics/build/i;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lhvn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;,
        Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;

.field private B:Z

.field private C:Ljava/lang/Runnable;

.field private D:Z

.field private E:Landroid/hardware/SensorManager;

.field private F:Landroid/hardware/Sensor;

.field private G:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;

.field private final H:Landroid/content/BroadcastReceiver;

.field private I:Landroid/hardware/SensorEventListener;

.field public i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

.field public j:Lcom/alibaba/security/biometrics/build/ak;

.field public k:Z

.field l:Lhxw;

.field public m:D

.field public n:Z

.field o:Lcom/alibaba/security/biometrics/build/ak$b;

.field public p:Landroid/os/Handler;

.field q:Lcom/alibaba/security/biometrics/build/i$a;

.field private r:Landroid/media/AudioManager;

.field private s:Z

.field private t:Lhwn;

.field private u:Lhwm;

.field private v:J

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/i;-><init>()V

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->x:Z

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->y:Z

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->z:Z

    iput-boolean v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->m:D

    new-instance v0, Lhyf;

    invoke-direct {v0, p0}, Lhyf;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->o:Lcom/alibaba/security/biometrics/build/ak$b;

    new-instance v0, Lhyi;

    invoke-direct {v0, p0}, Lhyi;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    new-instance v0, Lhyj;

    invoke-direct {v0, p0}, Lhyj;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->q:Lcom/alibaba/security/biometrics/build/i$a;

    iput-boolean v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->B:Z

    new-instance v0, Lhyk;

    invoke-direct {v0, p0}, Lhyk;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->C:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->D:Z

    new-instance v0, Lcom/alibaba/security/biometrics/build/aa;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/build/aa;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->H:Landroid/content/BroadcastReceiver;

    new-instance v0, Lhyh;

    invoke-direct {v0, p0}, Lhyh;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->I:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private a(IZ)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/16 v0, 0x66

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->x:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10013"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10013"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->d()V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_0

    :pswitch_6
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10013"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0x9e

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_0

    :pswitch_7
    if-eqz p2, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "confirm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10027"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0x9f

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10027"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c()V

    goto/16 :goto_0

    :pswitch_8
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_0

    :pswitch_9
    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_0

    :pswitch_a
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_0

    :pswitch_b
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->d()V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Lhzi;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    .line 18000
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v9, :cond_9

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {p1}, Lhzi;->e()Landroid/graphics/RectF;

    move-result-object v3

    .line 19000
    iget-object v4, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->z:Landroid/view/View;

    if-eqz v3, :cond_d

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->y:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    int-to-float v7, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v7, v8

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v5, v8

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "==\u56fe\u7247\u5404\u4e2a\u89d2Left\uff1a"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "Right\uff1a"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "Top\uff1a"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "Bottom\uff1a"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_d

    add-float v3, v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_d

    add-float/2addr v0, v7

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_d

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "==isInRegion\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18000
    invoke-virtual {p1}, Lhzi;->b()I

    move-result v3

    if-lez v3, :cond_4

    move v3, v1

    :goto_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->d()Lhzi;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v6

    invoke-virtual {v6}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getBt()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget v6, Lhys;->q:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->e()Lhzi;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v5

    invoke-virtual {v5}, Lhye;->e()Lhzi;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhye;->a(Lhzi;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v5

    invoke-virtual {v5}, Lhye;->f()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setQi(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v6

    invoke-virtual {v6}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getBt()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget v6, Lhys;->q:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    .line 20000
    iput-boolean v1, v4, Lhye;->j:Z

    .line 18000
    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->d()Lhzi;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->d()Lhzi;

    move-result-object v4

    invoke-virtual {v4}, Lhzi;->c()F

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v5

    .line 21000
    iget-object v5, v5, Lhxd;->a:Landroid/os/Bundle;

    .line 18000
    const-string/jumbo v6, "KEY_MIN_QUALITY"

    sget v7, Lhys;->l:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move v4, v1

    :goto_2
    if-nez v4, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v5

    invoke-virtual {v5}, Lhye;->d()Lhzi;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bestFrame quality="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v6

    invoke-virtual {v6}, Lhye;->d()Lhzi;

    move-result-object v6

    invoke-virtual {v6}, Lhzi;->c()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",b="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v6

    invoke-virtual {v6}, Lhye;->d()Lhzi;

    move-result-object v6

    .line 22000
    iget-object v6, v6, Lhzi;->a:Lhzh;

    .line 18000
    invoke-virtual {v6}, Lhzh;->e()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "hasFace:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", inRegion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",isAngelReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",isQuailtyOK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    if-nez v0, :cond_6

    :cond_3
    :goto_3
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :cond_4
    move v3, v2

    goto/16 :goto_1

    :cond_5
    move v4, v2

    goto/16 :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    if-eqz v0, :cond_7

    if-eqz v4, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "frm_c"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->i()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "bri"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    .line 23000
    iget-object v3, v3, Lhzi;->a:Lhzh;

    .line 18000
    invoke-virtual {v3}, Lhzh;->e()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "gblur"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    .line 24000
    iget-object v3, v3, Lhzi;->a:Lhzh;

    .line 18000
    invoke-virtual {v3}, Lhzh;->c()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "mblur"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    .line 25000
    iget-object v3, v3, Lhzi;->a:Lhzh;

    .line 18000
    invoke-virtual {v3}, Lhzh;->d()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "qua"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    .line 26000
    iget-object v3, v3, Lhzi;->a:Lhzh;

    .line 18000
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v3, "10005"

    invoke-virtual {v1, v3, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->w:J

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0, v9}, Lhwa;->a(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->c()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    new-instance v1, Lhyo;

    invoke-direct {v1, p0}, Lhyo;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    sget v1, Lhyx$f;->face_ding:I

    invoke-interface {v0, v1}, Lhwn;->a(I)I

    move v1, v2

    .line 18000
    goto/16 :goto_3

    :cond_7
    const/16 v0, 0x3f5

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(I)V

    :cond_8
    move v1, v2

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_c

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->z:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->B:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->B:Z

    move v2, v1

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e()V

    goto/16 :goto_4

    :cond_c
    move v1, v2

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method public static a(D)Z
    .locals 4

    const/4 v0, 0x0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_0

    const-wide v2, 0x4074500000000000L    # 325.0

    cmpl-double v1, p0, v2

    if-gtz v1, :cond_1

    :cond_0
    const-wide v2, 0x4041800000000000L    # 35.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->z:Z

    return v0
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->z:Z

    return p1
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Lhwn;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    return-object v0
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->D:Z

    return v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->B:Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->g()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    new-instance v1, Lhym;

    invoke-direct {v1, p0}, Lhym;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->s:Z

    return v0
.end method

.method public static synthetic c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->s:Z

    return p1
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->D:Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->p:Landroid/os/Handler;

    new-instance v1, Lhyl;

    invoke-direct {v1, p0}, Lhyl;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, ""

    sget v0, Lhyx$c;->face_hint_light:I

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-static {v1}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "hint_c"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v3

    const-string/jumbo v4, "10007"

    invoke-virtual {v3, v4, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_toast_no_dectect_action:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lhyx$c;->face_dialog_hint_action_too_fast:I

    goto :goto_1

    :pswitch_2
    sget v0, Lhyx$c;->face_dialog_hint_eye_look_right:I

    iget-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->z:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_toast_not_in_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_toast_too_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lhyx$c;->face_dialog_hint_enough_light:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_toast_too_shake:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_toast_too_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_toast_too_far:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_7
    sget v0, Lhyx$c;->face_dialog_hint_eye_look_right:I

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_toast_pitch_angle_not_suitable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final b()Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->r:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->r:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->r:Landroid/media/AudioManager;

    return-object v0
.end method

.method public final b(I)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v0, 0x271d

    const/16 v1, 0x2714

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showAlertDialog:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->x:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->x:Z

    iput-boolean v8, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->z:Z

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e()V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    sparse-switch p1, :sswitch_data_0

    move v1, v8

    move-object v4, v6

    move v0, v8

    :goto_1
    invoke-static {v2}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_5

    .line 1000
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/security/biometrics/build/cl$a;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/build/cl$a;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_2

    .line 2000
    iput-object v2, v0, Lcom/alibaba/security/biometrics/build/cl$a;->b:Ljava/lang/String;

    .line 1000
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4, p0}, Lcom/alibaba/security/biometrics/build/cl$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/security/biometrics/build/cl$a;

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v0, v6, p0}, Lcom/alibaba/security/biometrics/build/cl$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/security/biometrics/build/cl$a;

    .line 3000
    :cond_4
    iput-boolean v5, v0, Lcom/alibaba/security/biometrics/build/cl$a;->h:Z

    .line 1000
    iput v1, p0, Lcom/alibaba/security/biometrics/build/i;->f:I

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl$a;->a()Lcom/alibaba/security/biometrics/build/cl;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/security/biometrics/build/cl;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v8}, Lcom/alibaba/security/biometrics/build/cl;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 0
    :sswitch_0
    const/16 v1, 0x2712

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_dialog_timeout_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_sure:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v5

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_dialog_interrupt_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_sure:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v8

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_dialog_too_much_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_retry:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v5

    goto/16 :goto_1

    :sswitch_3
    const/16 v1, 0x2717

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_dialog_network_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_reupload:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_4
    const/16 v1, 0x271a

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_dialog_algorithm_init_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_ok:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_5
    const/16 v1, 0x271b

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_camera_unconnect_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lhyx$g;->face_detect_camera_unconnect_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "\u5e94\u7528"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_camera_unconnect_cancle_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_camera_unconnect_ok_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_6
    const/16 v1, 0x2719

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_dialog_quality_not_enough_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_retry:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v5

    goto/16 :goto_1

    :sswitch_7
    const/16 v1, 0x2724

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_windows_close:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_sure:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_8
    const/16 v1, 0x271c

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lhyx$g;->face_detect_camera_no_permission_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lhyx$g;->face_detect_camera_no_permission_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_dialog_btn_sure:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lhyx$g;->face_detect_camera_open_permission_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_camera_configuration_cpu_low_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lhyx$g;->face_detect_dialog_btn_ok:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v6

    move-object v6, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$g;->face_detect_camera_configuration_nofront_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lhyx$g;->face_detect_camera_configuration_nofront_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lhyx$g;->face_detect_dialog_btn_ok:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v6

    move-object v6, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_1

    :cond_5
    move-object v0, p0

    move-object v5, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/security/biometrics/build/cl;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_6
        0x3f1 -> :sswitch_4
        0x3f4 -> :sswitch_2
        0x3f6 -> :sswitch_5
        0x3f7 -> :sswitch_8
        0x3f8 -> :sswitch_a
        0x3f9 -> :sswitch_9
        0x41b -> :sswitch_1
        0x2714 -> :sswitch_1
        0x2717 -> :sswitch_3
        0x2724 -> :sswitch_7
    .end sparse-switch
.end method

.method public final c(I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v5, 0x5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    const-string/jumbo v2, "K_CALLBACK_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "succ"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v3

    const-string/jumbo v4, "10031"

    invoke-virtual {v3, v4, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setEt(J)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setR(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setEt(J)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setR(I)V

    :cond_0
    const-string/jumbo v2, "K_RESULT_DATA"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_1
    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    invoke-interface {v2}, Lhwn;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    if-ge v0, v5, :cond_3

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    invoke-interface {v2}, Lhwn;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_2
    const-string/jumbo v2, "K_CALLBACK_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "K_CALLBACK_ERRORCODE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "succ"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v3

    const-string/jumbo v4, "10031"

    invoke-virtual {v3, v4, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendResponse error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    :goto_4
    return-void

    :cond_2
    :try_start_4
    const-string/jumbo v2, "sendResponse FaceContext.i().getLivenessResult() is null"

    invoke-static {v2}, Lhzj;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    throw v0

    :cond_3
    :try_start_5
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lhwa;->a(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    .line 4000
    :try_start_0
    iget v0, p0, Lcom/alibaba/security/biometrics/build/i;->f:I

    .line 0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->x:Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onclick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onclick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/security/biometrics/build/i;->onCreate(Landroid/os/Bundle;)V

    .line 5000
    const/4 v0, 0x0

    sput-object v0, Lhye;->a:Lhye;

    .line 6000
    const/4 v0, 0x0

    sput-object v0, Lhwb;->d:Lhwb;

    .line 0
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0, v3}, Lhwb;->a(Lcom/alibaba/security/biometrics/AuthContext;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v3

    .line 7000
    iget-object v3, v3, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v4, "K_SOUNDON"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "vol_s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    move v0, v1

    move-object v3, p0

    :goto_2
    iput-boolean v0, v3, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->s:Z

    :cond_0
    :goto_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->setVolumeControlStream(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "STEP_NAV"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "nav"

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v3

    const-string/jumbo v4, "10000"

    invoke-virtual {v3, v4, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lhyx$e;->face_liveness_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhxw;->a(Landroid/content/Context;)Lhxw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->l:Lhxw;

    sget v0, Lhyx$d;->abface_facedetect_pattern:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate FaceParams:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10000
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v0

    const-string/jumbo v3, "K_BACK_CAMERA_CFG"

    invoke-virtual {v0, v3}, Lhvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyv;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v0

    const-string/jumbo v3, "K_ROTATION_ANGLE_CFG"

    invoke-virtual {v0, v3}, Lhvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyv;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/security/biometrics/build/bk;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/build/bk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/alibaba/security/biometrics/build/ak;-><init>(Landroid/content/Context;Lhvn;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->o:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-virtual {v0, v3}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/build/ak$b;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    invoke-virtual {v0, v3}, Lcom/alibaba/security/biometrics/build/ak;->a(Lhwn;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->e()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0, v3}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->setSurfaceListener(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;)V

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->G:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->G:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->A:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.broad.autoclose"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->l:Lhxw;

    iget-object v4, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->A:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;

    invoke-virtual {v3, v4, v0}, Lhxw;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->v:J

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->F:Landroid/hardware/Sensor;

    :cond_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->F:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->I:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->F:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    iget-boolean v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    .line 11000
    iput-boolean v3, v0, Lhye;->j:Z

    .line 10000
    :cond_3
    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->s:Z

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->setSoundEnable(Z)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    iget-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->s:Z

    invoke-interface {v0, v2}, Lhwn;->a(Z)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    new-instance v2, Lhyn;

    invoke-direct {v2, p0}, Lhyn;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->setCallback(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;)V

    invoke-static {}, Lhyv;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->q:Lcom/alibaba/security/biometrics/build/i$a;

    .line 12000
    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/i;->g:Lcom/alibaba/security/biometrics/build/i$a;

    .line 10000
    :cond_4
    new-instance v0, Lcom/alibaba/security/biometrics/build/bg;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/security/biometrics/build/bg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->u:Lhwm;

    .line 0
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v0

    .line 13000
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_ACTION_COUNT"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->b()V

    :cond_5
    :goto_6
    return-void

    :cond_6
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "vol_s"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FaceLivenessActivity.onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v0

    .line 8000
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v3, "K_SOUNDON"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a()Lhvj;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v3, "K_SOUNDON"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    move-object v3, p0

    goto/16 :goto_2

    :cond_9
    move v0, v2

    move-object v3, p0

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v0, "(AudioManager) getSystemService(Context.AUDIO_SERVICE) failed"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FaceLivenessActivity.onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_6

    .line 10000
    :catch_2
    move-exception v0

    const/16 v0, 0x98

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->G:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->G:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->l:Lhxw;

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->l:Lhxw;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->A:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$a;

    invoke-virtual {v0, v1}, Lhxw;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->I:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->E:Landroid/hardware/SensorManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    iput-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->I:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->j()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    if-eqz v0, :cond_4

    :try_start_5
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->t:Lhwn;

    invoke-interface {v0}, Lhwn;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 16000
    :cond_4
    :goto_5
    sput-object v2, Lhye;->a:Lhye;

    .line 0
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhwb;->a(Lcom/alibaba/security/biometrics/AuthContext;)V

    .line 17000
    sput-object v2, Lhwb;->d:Lhwb;

    .line 0
    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/i;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    const/16 v6, 0x9f

    const/4 v1, 0x1

    const/4 v5, 0x5

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KEYCODE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ne v0, v5, :cond_4

    :goto_1
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    :cond_2
    move v0, v1

    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    :cond_3
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v2

    const-string/jumbo v3, "10028"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    if-ge v2, v5, :cond_0

    invoke-virtual {p0, v6}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/alibaba/security/biometrics/build/i;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x5

    .line 0
    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/i;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->y:Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v3, :cond_0

    const-string/jumbo v0, "M040"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    .line 15000
    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setVisibility(I)V

    .line 0
    :cond_0
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v1, "10028"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v3, :cond_1

    const/16 v0, 0x9f

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 0
    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/i;->onResume()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->u:Lhwm;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lhwm;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->u:Lhwm;

    invoke-interface {v0}, Lhwm;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v3, :cond_1

    const-string/jumbo v0, "M040"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    .line 14000
    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0, v2}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setVisibility(I)V

    .line 0
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->y:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->y:Z

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v1, "10029"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->f()V

    goto :goto_0
.end method
