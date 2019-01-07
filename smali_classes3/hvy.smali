.class public final Lhvy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/ak;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/ak;)V
    .locals 0

    iput-object p1, p0, Lhvy;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 0
    move v0, v1

    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    :try_start_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->c()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lhvy;->a:Lcom/alibaba/security/biometrics/build/ak;

    .line 2000
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "cam_w"

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v4

    invoke-virtual {v4}, Lhyt;->b()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "cam_h"

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v4

    invoke-virtual {v4}, Lhyt;->c()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "cam_a"

    invoke-static {}, Lhyv;->c()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "act_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 3000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "KEY_ACTIVE_ACTION_THRESHOLD"

    sget v6, Lhys;->c:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "act_wr_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 4000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "KEY_NOTACTIVE_ACTION_THRESHOLD"

    sget v6, Lhys;->d:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->b()I

    move-result v4

    const-string/jumbo v0, "act_c"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-lez v4, :cond_1

    const-string/jumbo v5, "act_1"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lhwa;->d:Ljava/util/List;

    .line 2000
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-le v4, v7, :cond_2

    const-string/jumbo v5, "act_2"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lhwa;->d:Ljava/util/List;

    .line 2000
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-le v4, v8, :cond_3

    const-string/jumbo v5, "act_3"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lhwa;->d:Ljava/util/List;

    .line 2000
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-le v4, v9, :cond_4

    const-string/jumbo v5, "act_4"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 8000
    iget-object v0, v0, Lhwa;->d:Ljava/util/List;

    .line 2000
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    if-le v4, v10, :cond_5

    const-string/jumbo v4, "act_5"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lhwa;->d:Ljava/util/List;

    .line 2000
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string/jumbo v0, "retry_m"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 10000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "K_RT_THRESHOLD"

    sget v6, Lhys;->h:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "fail_m"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 11000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "KEY_MINE_THRESHHOLD"

    sget v6, Lhys;->i:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "aju_to"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 12000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "K_TIMEOUT"

    sget v6, Lhys;->j:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "act_to"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 13000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "K_TIMEOUT"

    sget v6, Lhys;->j:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "min_face_th"

    sget v4, Lhys;->k:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "act_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 14000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "KEY_ACTIVE_ACTION_THRESHOLD"

    sget v6, Lhys;->c:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "act_wr_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 15000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "KEY_NOTACTIVE_ACTION_THRESHOLD"

    sget v6, Lhys;->d:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "no_face_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 16000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "K_NF_T"

    sget v6, Lhys;->e:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "qua_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 17000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "KEY_MIN_QUALITY"

    sget v6, Lhys;->l:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "gblur_th"

    iget-object v4, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v4}, Lhvn;->a()Lhvj;

    move-result-object v4

    .line 18000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v5, "K_GUASSIAN_BLUR"

    sget v6, Lhys;->m:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "mblur_th"

    iget-object v2, v2, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v2}, Lhvn;->a()Lhvj;

    move-result-object v2

    .line 19000
    iget-object v2, v2, Lhxd;->a:Landroid/os/Bundle;

    .line 2000
    const-string/jumbo v4, "K_MOTION_BLUR"

    sget v5, Lhys;->n:F

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v2, "10003"

    invoke-virtual {v0, v2, v3}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lhye;->a(I)V

    const-string/jumbo v2, "aju_c"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v2

    const-string/jumbo v3, "10004"

    invoke-virtual {v2, v3, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhye;->b(I)V

    .line 0
    :cond_6
    return-void
.end method
