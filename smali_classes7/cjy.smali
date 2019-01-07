.class final Lcjy;
.super Ljava/lang/Object;
.source "FrameUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13
    :cond_0
    const/4 v9, 0x0

    .line 26
    :goto_0
    return v9

    .line 16
    :cond_1
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 17
    .local v6, "timeNanos":J
    sget-wide v10, Lcju;->e:J

    div-long v10, v6, v10

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1030
    .local v3, "frame":I
    if-eqz p0, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1031
    :cond_2
    const/4 v5, 0x0

    .line 20
    .local v5, "skippedFrames":I
    :goto_1
    sget v9, Lcju;->d:F

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 21
    .local v4, "multiplier":F
    sub-int v9, v3, v5

    int-to-float v9, v9

    mul-float v8, v4, v9

    .line 22
    .local v8, "value":F
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_0

    .line 1034
    .end local v4    # "multiplier":F
    .end local v5    # "skippedFrames":I
    .end local v8    # "value":F
    :cond_3
    const/4 v11, 0x0

    .line 1035
    const-wide/16 v12, -0x1

    .line 1036
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1037
    if-eqz v9, :cond_7

    .line 1038
    const-wide/16 v16, -0x1

    cmp-long v10, v12, v16

    if-eqz v10, :cond_6

    .line 1039
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1048
    const/4 v10, 0x0

    .line 1049
    sub-long v12, v16, v12

    .line 1051
    sget-wide v16, Lcju;->e:J

    cmp-long v15, v12, v16

    if-lez v15, :cond_4

    .line 1052
    sget-wide v16, Lcju;->e:J

    div-long v12, v12, v16

    long-to-int v10, v12

    .line 1039
    :cond_4
    add-int v12, v11, v10

    .line 1041
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    move v9, v12

    :goto_4
    move-wide v12, v10

    move v11, v9

    .line 1043
    goto :goto_2

    :cond_5
    move v5, v11

    .line 1044
    goto :goto_1

    .line 23
    .end local v3    # "frame":I
    .end local v6    # "timeNanos":J
    :catch_0
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "frame":I
    .restart local v6    # "timeNanos":J
    :cond_6
    move v12, v11

    goto :goto_3

    :cond_7
    move v9, v11

    move-wide v10, v12

    goto :goto_4
.end method
