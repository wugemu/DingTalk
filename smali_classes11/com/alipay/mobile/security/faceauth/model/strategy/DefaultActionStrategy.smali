.class public Lcom/alipay/mobile/security/faceauth/model/strategy/DefaultActionStrategy;
.super Ljava/lang/Object;
.source "DefaultActionStrategy.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/strategy/ActionStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetectionTypes(I)Ljava/util/List;
    .locals 6
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/megvii/livenessdetection/Detector$DetectionType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/faceauth/model/strategy/DefaultActionStrategy;->getRandom(I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 56
    .local v3, "typelist":Ljava/util/List;, "Ljava/util/List<Lcom/megvii/livenessdetection/Detector$DetectionType;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 57
    .local v0, "item":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1064
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 1065
    packed-switch v5, :pswitch_data_0

    .line 58
    .local v2, "type":Lcom/megvii/livenessdetection/Detector$DetectionType;
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1067
    .end local v2    # "type":Lcom/megvii/livenessdetection/Detector$DetectionType;
    :pswitch_0
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->BLINK:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1070
    :pswitch_1
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->MOUTH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1073
    :pswitch_2
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1076
    :pswitch_3
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_LEFT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1079
    :pswitch_4
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_RIGHT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1082
    :pswitch_5
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1085
    :pswitch_6
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_UP:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 1088
    :pswitch_7
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_DOWN:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_1

    .line 60
    .end local v0    # "item":Ljava/lang/Integer;
    :cond_0
    return-object v3

    .line 1065
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

.method public getMotionCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getRandom(I)Ljava/util/List;
    .locals 7
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x5

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 27
    .local v3, "rand":Ljava/util/Random;
    new-array v0, v6, [Z

    .line 31
    .local v0, "bool":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 35
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 37
    .local v4, "randomNum":I
    aget-boolean v5, v0, v4

    if-nez v5, :cond_0

    .line 39
    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, p1, :cond_1

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v4    # "randomNum":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action list:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 48
    return-object v2
.end method
