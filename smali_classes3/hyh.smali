.class public final Lhyh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V
    .locals 0

    iput-object p1, p0, Lhyh;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 0
    iget-object v0, p0, Lhyh;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyh;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0, p1}, Lcom/alibaba/security/biometrics/build/ak;->a(Landroid/hardware/SensorEvent;)V

    :cond_0
    iget-object v0, p0, Lhyh;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    .line 1000
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v10

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "gra"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lhws;->a(FF)D

    move-result-wide v4

    invoke-static {v2, v1}, Lhws;->a(FF)D

    move-result-wide v2

    iput-wide v4, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->m:D

    invoke-static {v4, v5}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->a(D)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v9, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    :goto_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    iget-boolean v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    .line 2000
    iput-boolean v0, v1, Lhye;->j:Z

    .line 0
    return-void

    .line 1000
    :cond_1
    iput-boolean v8, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->k:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "v1:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " v2:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " v3:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "zAngle:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " xAngle:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
