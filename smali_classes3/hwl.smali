.class public final Lhwl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhwl$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field protected c:Lhwl$a;

.field protected d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

.field protected e:Lhwd;

.field protected f:Lhwe;

.field protected g:Landroid/graphics/Rect;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Landroid/hardware/SensorManager;

.field protected j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/security/biometrics/build/ax;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lhwl;->a:I

    sput v0, Lhwl;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhwd;Lhwe;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhwl;->h:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhwl;->j:Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string/jumbo v0, "context is null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lhwl;->k:Landroid/content/Context;

    iput-object p2, p0, Lhwl;->e:Lhwd;

    iput-object p3, p0, Lhwl;->f:Lhwe;

    invoke-virtual {p2}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lhvj;->a(Landroid/os/Bundle;)Lhvj;

    move-result-object v0

    invoke-static {v0}, Lhxy;->a(Lhvj;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    move-result-object v0

    iput-object v0, p0, Lhwl;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    .line 1000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lhwl;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v1, p0, Lhwl;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhwl;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v1, p0, Lhwl;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Landroid/content/Context;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lhwl;->c:Lhwl$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhwl;->c:Lhwl$a;

    const/16 v2, 0x3f1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lhwl$a;->a(ILhwd;)V

    const-string/jumbo v1, "face detect error: init"

    invoke-static {v1}, Lhzj;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Detector init:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 0
    iget-object v0, p0, Lhwl;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0, p0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v2, -0x3b860000    # -1000.0f

    iget-object v0, p0, Lhwl;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lhwl;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/build/ax;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->b()I

    move-result v11

    if-ne v11, v8, :cond_9

    cmpl-float v11, v7, v2

    if-nez v11, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v1

    aget v3, v1, v9

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v1

    aget v1, v1, v8

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v0

    aget v0, v0, v12

    move v4, v1

    move v5, v1

    move v6, v3

    move v7, v3

    move v1, v0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v11

    aget v11, v11, v9

    cmpg-float v11, v7, v11

    if-gez v11, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v7

    aget v7, v7, v9

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v11

    aget v11, v11, v9

    cmpl-float v11, v6, v11

    if-lez v11, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v6

    aget v6, v6, v9

    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v11

    aget v11, v11, v8

    cmpg-float v11, v5, v11

    if-gez v11, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v5

    aget v5, v5, v8

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v11

    aget v11, v11, v8

    cmpl-float v11, v4, v11

    if-lez v11, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v4

    aget v4, v4, v8

    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v11

    aget v11, v11, v12

    cmpg-float v11, v3, v11

    if-gez v11, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v3

    aget v3, v3, v12

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v11

    aget v11, v11, v12

    cmpl-float v11, v1, v11

    if-lez v11, :cond_9

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ax;->a()[F

    move-result-object v0

    aget v1, v0, v12

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    :goto_1
    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    sub-float v0, v7, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v2, v5, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "==sensorDataCheck diff = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    move v0, v8

    :goto_2
    return v0

    :cond_7
    move v0, v9

    goto :goto_2

    :cond_8
    move v0, v9

    goto :goto_2

    :cond_9
    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 0
    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lhwe;->a(J)V

    iget-object v0, p0, Lhwl;->f:Lhwe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhwe;->a(I)V

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0, v4}, Lhwe;->a(Z)V

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lhwl;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2000
    iget-object v0, p0, Lhwl;->k:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string/jumbo v0, "context == null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lhwl;->k:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    :cond_2
    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    if-nez v0, :cond_3

    const-string/jumbo v0, "sensorManager == null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_1
    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0, v4}, Lhwe;->d(Z)V

    goto :goto_1
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lhwl;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V
    .locals 0

    return-void
.end method

.method public final a(Lhwl$a;)V
    .locals 0

    iput-object p1, p0, Lhwl;->c:Lhwl$a;

    return-void
.end method

.method public final a(Lhzi;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v5, -0x1

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lhwl;->f:Lhwe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 3000
    :cond_1
    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 4000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 3000
    if-eqz v0, :cond_2

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    .line 5000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 3000
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lhwl;->b:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 0
    :cond_2
    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->e()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v6, p0, Lhwl;->f:Lhwe;

    .line 6000
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_c

    .line 7000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 6000
    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "====liveChedk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 6000
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    .line 9000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 6000
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lhwl;->b:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v11, :cond_d

    const/4 v0, 0x0

    iget-object v1, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move-object v3, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    if-nez v3, :cond_4

    move-object v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x5

    if-gt v8, v9, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v8, 0x5

    if-le v0, v8, :cond_1c

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_6
    if-lt v1, v11, :cond_b

    move v0, v4

    .line 0
    :goto_3
    invoke-virtual {v6, v0}, Lhwe;->c(Z)V

    :cond_7
    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->f()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-direct {p0}, Lhwl;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lhwe;->d(Z)V

    :cond_8
    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_1b

    .line 10000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 0
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->d()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0, v4}, Lhwe;->b(Z)V

    :cond_9
    :goto_4
    const/16 v0, 0x7530

    iget-object v1, p0, Lhwl;->e:Lhwd;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lhwl;->e:Lhwd;

    invoke-virtual {v1}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lhwl;->e:Lhwd;

    invoke-virtual {v1}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lhwl;->e:Lhwd;

    invoke-virtual {v0}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_TIMEOUT"

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v1}, Lhwe;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhwl;->b()V

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    const/16 v1, 0x3eb

    iget-object v2, p0, Lhwl;->e:Lhwd;

    invoke-interface {v0, v1, v2}, Lhwl$a;->a(ILhwd;)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 6000
    goto :goto_3

    :cond_c
    iget-object v0, p0, Lhwl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    move v0, v2

    goto/16 :goto_3

    .line 11000
    :cond_e
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_10

    .line 12000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 11000
    if-eqz v0, :cond_10

    .line 13000
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_12

    .line 14000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 13000
    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "==faceSize:   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 13000
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Rect;

    .line 16000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 13000
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const-wide v6, -0x403ccccccccccccdL    # -0.15

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    double-to-int v1, v6

    const-wide v6, -0x4046666666666666L    # -0.1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 17000
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v3

    if-lez v3, :cond_f

    .line 18000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 17000
    if-eqz v3, :cond_f

    .line 19000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 17000
    invoke-virtual {v3}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 20000
    iget-object v6, p1, Lhzi;->a:Lhzh;

    .line 17000
    invoke-virtual {v6}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-double v6, v6

    int-to-double v8, v3

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 21000
    iget-object v6, p1, Lhzi;->a:Lhzh;

    .line 17000
    invoke-virtual {v6}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-double v6, v6

    int-to-double v8, v3

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 22000
    iget-object v6, p1, Lhzi;->a:Lhzh;

    .line 17000
    invoke-virtual {v6}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    int-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 23000
    iget-object v6, p1, Lhzi;->a:Lhzh;

    .line 17000
    invoke-virtual {v6}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    int-to-double v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v3, v6

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 13000
    :cond_f
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lhzi;->f()I

    move-result v6

    invoke-virtual {p1}, Lhzi;->g()I

    move-result v7

    invoke-direct {v3, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "==faceRect:   "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "==displayRect:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lhwl;->g:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhwl;->g:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    .line 24000
    :goto_5
    invoke-virtual {p1}, Lhzi;->f()I

    move-result v1

    .line 25000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 24000
    invoke-virtual {v3}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v6, v3

    int-to-double v8, v1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_13

    move v1, v5

    .line 11000
    :goto_6
    iget-object v3, p0, Lhwl;->f:Lhwe;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v3}, Lhwe;->e()Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    :goto_7
    iget-object v5, p0, Lhwl;->f:Lhwe;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v5}, Lhwe;->f()Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v4

    :goto_8
    if-gez v1, :cond_18

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    const/16 v1, 0x3ef

    invoke-interface {v0, v1}, Lhwl$a;->a(I)V

    .line 0
    :cond_10
    :goto_9
    if-eqz v2, :cond_9

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lhwl;->b()V

    iget-object v0, p0, Lhwl;->f:Lhwe;

    sget v1, Lhwe;->f:I

    invoke-virtual {v0, v1}, Lhwe;->a(I)V

    iget-object v0, p0, Lhwl;->e:Lhwd;

    invoke-virtual {v0}, Lhwd;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SensorData"

    iget-object v2, p0, Lhwl;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    iget-object v1, p0, Lhwl;->e:Lhwd;

    invoke-interface {v0, v1}, Lhwl$a;->a(Lhwd;)V

    goto/16 :goto_4

    :cond_11
    move v0, v2

    .line 13000
    goto :goto_5

    :cond_12
    move v0, v2

    goto :goto_5

    .line 24000
    :cond_13
    int-to-double v6, v3

    int-to-double v8, v1

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    cmpg-double v1, v6, v8

    if-gez v1, :cond_14

    move v1, v4

    goto :goto_6

    .line 26000
    :cond_14
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 24000
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v6, v1

    int-to-double v8, v3

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v1, p0, Lhwl;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v8, v1

    cmpl-double v1, v6, v8

    if-lez v1, :cond_15

    move v1, v5

    goto/16 :goto_6

    :cond_15
    move v1, v2

    goto/16 :goto_6

    :cond_16
    move v3, v2

    .line 11000
    goto :goto_7

    :cond_17
    move v5, v2

    goto :goto_8

    :cond_18
    if-lez v1, :cond_19

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    const/16 v1, 0x3f0

    invoke-interface {v0, v1}, Lhwl$a;->a(I)V

    goto :goto_9

    :cond_19
    if-nez v0, :cond_1a

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lhwl$a;->a(I)V

    goto/16 :goto_9

    :cond_1a
    if-eqz v0, :cond_10

    if-nez v1, :cond_10

    if-eqz v3, :cond_10

    if-eqz v5, :cond_10

    move v2, v4

    goto/16 :goto_9

    .line 0
    :cond_1b
    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lhwl$a;->a(I)V

    goto/16 :goto_4

    :cond_1c
    move v0, v1

    goto/16 :goto_2
.end method

.method public final a([BLandroid/hardware/Camera;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhwl;->f:Lhwe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhwl;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lhwl;->b()V

    iget-object v0, p0, Lhwl;->c:Lhwl$a;

    const/16 v1, 0x3f1

    iget-object v2, p0, Lhwl;->e:Lhwd;

    invoke-interface {v0, v1, v2}, Lhwl$a;->a(ILhwd;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v2}, Lhwe;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v0}, Lhwe;->a()I

    move-result v0

    sget v1, Lhwe;->f:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPreviewFrame yuv running,w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhwl;->e:Lhwd;

    invoke-virtual {v2}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "K_ANGLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhwl;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Lhwl;->e:Lhwd;

    invoke-virtual {v3}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "K_ANGLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a([BIII)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "onPreviewFrame doDetect failed"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b(Lhzi;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    return-object v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhwl;->f:Lhwe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhwe;->a(Z)V

    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwl;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lhwl;->f:Lhwe;

    invoke-virtual {v1}, Lhwe;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lhwl;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/alibaba/security/biometrics/build/ax;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v5, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/security/biometrics/build/ax;-><init>(J[FII)V

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lhwl;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Lhwl;->a:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lhwl;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    const-string/jumbo v1, "TYPE_GAME_ROTATION_VECTOR"

    :cond_3
    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-string/jumbo v1, "TYPE_ACCELEROMETER"

    goto :goto_0

    :cond_5
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    const-string/jumbo v1, "TYPE_LINEAR_ACCELERATION"

    goto :goto_0

    :cond_6
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const-string/jumbo v1, "TYPE_GYROSCOPE"

    goto :goto_0

    :cond_7
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    const-string/jumbo v1, "TYPE_GYROSCOPE_UNCALIBRATED"

    goto :goto_0

    :cond_8
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    const-string/jumbo v1, "TYPE_ROTATION_VECTOR"

    goto :goto_0

    :cond_9
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    const-string/jumbo v1, "TYPE_GRAVITY"

    goto/16 :goto_0
.end method
