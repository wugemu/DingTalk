.class public Lhwg;
.super Ljava/lang/Object;

# interfaces
.implements Lhwf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    invoke-virtual {p0, p1}, Lhwg;->b(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1000
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    packed-switch v3, :pswitch_data_0

    .line 0
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1000
    :pswitch_0
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->BLINK:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_LEFT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_RIGHT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_1

    .line 0
    :cond_0
    return-object v1

    .line 1000
    :pswitch_data_0
    .packed-switch 0x0
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

.method public b(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v6, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-array v3, v6, [Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-boolean v5, v3, v4

    if-nez v5, :cond_0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, p1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "action list:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1
.end method
