.class public final Lhxy;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lhvj;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p0}, Lhvj;->a()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.alibaba.security.biometrics.face.megvii.MegviiLivenessDetector"

    new-instance v1, Lhzg;

    invoke-direct {v1}, Lhzg;-><init>()V

    invoke-static {v0, v1}, Lhxy;->a(Ljava/lang/String;Lhzg;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lhzg;

    invoke-direct {v1}, Lhzg;-><init>()V

    sget v0, Lhys;->k:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lhzg;->c(F)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lhzg;->a(J)V

    sget-boolean v0, Lhzj;->a:Z

    invoke-virtual {v1, v0}, Lhzg;->a(Z)V

    .line 1000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_ACTIVE_ACTION_THRESHOLD"

    sget v3, Lhys;->c:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lhzg;->d(F)V

    .line 2000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_NOTACTIVE_ACTION_THRESHOLD"

    sget v3, Lhys;->d:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lhzg;->e(F)V

    .line 3000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "K_NF_T"

    sget v3, Lhys;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lhzg;->a(I)V

    .line 4000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_YAW_THRESHOLD"

    sget v3, Lhys;->f:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lhzg;->a(F)V

    .line 5000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_PITCH_THRESHOLD"

    sget v3, Lhys;->g:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lhzg;->b(F)V

    .line 6000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_COMPRESS_QUALITY"

    sget v3, Lhys;->p:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lhzg;->b(I)V

    new-instance v0, Lixx;

    invoke-direct {v0, v1}, Lixx;-><init>(Lhzg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lhzj;->b(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lhzg;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lhzg;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LivenessDetector is not supported:+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessDetector is not supported:+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lhzj;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessDetector is not supported:+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lhzj;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessDetector is not supported:+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lhzj;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessDetector is not supported:+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lhzj;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessDetector is not supported:+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lhzj;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Lhvj;)Lhwf;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 0
    invoke-virtual {p0}, Lhvj;->a()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lhwj;

    invoke-direct {v0}, Lhwj;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lhvj;->a()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 7000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "K_STRATEGY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8000
    iget-object v0, p0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v3, "K_STRATEGY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget v1, v3, v0

    invoke-static {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->valueOf(I)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lhwi;

    invoke-direct {v0, v2}, Lhwi;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lhwk;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v3, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v3, v2, v1

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v1, v2, v4

    const/4 v1, 0x2

    sget-object v3, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lhwk;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
