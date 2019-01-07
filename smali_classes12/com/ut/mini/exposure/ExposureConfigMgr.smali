.class public Lcom/ut/mini/exposure/ExposureConfigMgr;
.super Ljava/lang/Object;
.source "ExposureConfigMgr.java"


# static fields
.field private static final EXP_CONFIG_TAG:Ljava/lang/String; = "autoExposure"

.field public static dimThreshold:D

.field private static mConfig:Ljava/lang/String;

.field public static maxTimeThreshold:I

.field public static notClearTagAfterDisAppear:Z

.field public static timeThreshold:I

.field public static trackerExposureOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    .line 24
    const/16 v0, 0x1f4

    sput v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 26
    const v0, 0x36ee80

    sput v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->maxTimeThreshold:I

    .line 31
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sput-wide v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 6

    .prologue
    .line 37
    invoke-static {}, Laju;->a()Laju;

    move-result-object v1

    .line 1042
    iget-object v1, v1, Laju;->a:Landroid/content/Context;

    .line 37
    const-string/jumbo v2, "autoExposure"

    invoke-static {v1, v2}, Land;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/exposure/TrackerManager;->getThreadHandle()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ut/mini/exposure/ExposureConfigMgr$1;

    invoke-direct {v2}, Lcom/ut/mini/exposure/ExposureConfigMgr$1;-><init>()V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method

.method public static updateExposureConfig()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    const-string/jumbo v1, "autoExposure"

    invoke-static {v1}, Lcom/alibaba/analytics/AnalyticsMgr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateExposureConfig(Ljava/lang/String;)V
    .locals 14
    .param p0, "config"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 58
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_0
    if-nez p0, :cond_1

    sget-object v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 61
    :cond_1
    sput-object p0, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    .line 62
    invoke-static {}, Laju;->a()Laju;

    move-result-object v9

    .line 2042
    iget-object v9, v9, Laju;->a:Landroid/content/Context;

    .line 62
    const-string/jumbo v10, "autoExposure"

    sget-object v11, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_7

    .line 65
    :try_start_1
    sget-object v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    const-class v10, Ljava/util/Map;

    invoke-static {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 67
    .local v3, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turnOn"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "turnOnString":Ljava/lang/String;
    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 70
    const/4 v9, 0x1

    sput-boolean v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    .line 75
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "timeThreshold"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 76
    .local v7, "timeThresholdString":Ljava/lang/String;
    const/4 v6, -0x1

    .line 78
    .local v6, "timeThresholdInt":I
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .line 82
    :goto_1
    if-ltz v6, :cond_2

    .line 83
    :try_start_3
    sput v6, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 86
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "areaThreshold"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 87
    .local v2, "areaThresholdString":Ljava/lang/String;
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 89
    .local v0, "areaThresholdDouble":D
    :try_start_4
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v0

    .line 93
    :goto_2
    const-wide/16 v10, 0x0

    cmpl-double v9, v0, v10

    if-ltz v9, :cond_3

    .line 94
    :try_start_5
    sput-wide v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    .line 97
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notClearTag"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "notClearTagString":Ljava/lang/String;
    const-string/jumbo v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 99
    const/4 v9, 0x1

    sput-boolean v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 117
    .end local v0    # "areaThresholdDouble":D
    .end local v2    # "areaThresholdString":Ljava/lang/String;
    .end local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "notClearTagString":Ljava/lang/String;
    .end local v6    # "timeThresholdInt":I
    .end local v7    # "timeThresholdString":Ljava/lang/String;
    .end local v8    # "turnOnString":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string/jumbo v9, "ExposureConfigMgr"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "trackerExposureOpen"

    aput-object v11, v10, v13

    sget-boolean v11, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x2

    const-string/jumbo v12, "timeThreshold"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget v12, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, " dimThreshold"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-wide v12, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void

    .line 72
    .restart local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "turnOnString":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    :try_start_6
    sput-boolean v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 104
    .end local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "turnOnString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto :goto_3

    .line 101
    .restart local v0    # "areaThresholdDouble":D
    .restart local v2    # "areaThresholdString":Ljava/lang/String;
    .restart local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "notClearTagString":Ljava/lang/String;
    .restart local v6    # "timeThresholdInt":I
    .restart local v7    # "timeThresholdString":Ljava/lang/String;
    .restart local v8    # "turnOnString":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    :try_start_8
    sput-boolean v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 108
    .end local v0    # "areaThresholdDouble":D
    .end local v2    # "areaThresholdString":Ljava/lang/String;
    .end local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "notClearTagString":Ljava/lang/String;
    .end local v6    # "timeThresholdInt":I
    .end local v7    # "timeThresholdString":Ljava/lang/String;
    .end local v8    # "turnOnString":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    :try_start_9
    sput-boolean v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    .line 109
    const/16 v9, 0x1f4

    sput v9, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 110
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sput-wide v10, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .restart local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "timeThresholdInt":I
    .restart local v7    # "timeThresholdString":Ljava/lang/String;
    .restart local v8    # "turnOnString":Ljava/lang/String;
    :catch_2
    move-exception v9

    goto/16 :goto_1

    .restart local v0    # "areaThresholdDouble":D
    .restart local v2    # "areaThresholdString":Ljava/lang/String;
    :catch_3
    move-exception v9

    goto/16 :goto_2
.end method
