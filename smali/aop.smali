.class final Laop;
.super Ljava/lang/Object;
.source "OrientationEvaluator.java"


# instance fields
.field private a:Laoq;

.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/Double;

.field private e:D

.field private f:D

.field private g:D

.field private final h:Laov;

.field private final i:Laoh;

.field private final j:Laoq;

.field private final k:Laoq;


# direct methods
.method constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 10
    .param p1, "constraintAlpha"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "constraintBeta"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "constraintGamma"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Laoq;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Laoq;-><init>(DDDD)V

    iput-object v1, p0, Laop;->a:Laoq;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Laop;->b:Ljava/lang/Double;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Laop;->c:Ljava/lang/Double;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Laop;->d:Ljava/lang/Double;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laop;->e:D

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laop;->f:D

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laop;->g:D

    .line 54
    new-instance v1, Laov;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Laov;-><init>(DDD)V

    iput-object v1, p0, Laop;->h:Laov;

    .line 55
    new-instance v0, Laoh;

    invoke-direct {v0}, Laoh;-><init>()V

    iput-object v0, p0, Laop;->i:Laoh;

    .line 56
    new-instance v0, Laoq;

    invoke-direct {v0}, Laoq;-><init>()V

    iput-object v0, p0, Laop;->j:Laoq;

    .line 57
    new-instance v1, Laoq;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Laoq;-><init>(DDDD)V

    iput-object v1, p0, Laop;->k:Laoq;

    .line 39
    iput-object p1, p0, Laop;->b:Ljava/lang/Double;

    .line 40
    iput-object p2, p0, Laop;->c:Ljava/lang/Double;

    .line 41
    iput-object p3, p0, Laop;->d:Ljava/lang/Double;

    .line 42
    return-void
.end method


# virtual methods
.method final a(DDD)Laoq;
    .locals 27
    .param p1, "deviceBeta"    # D
    .param p3, "deviceGamma"    # D
    .param p5, "normalizedAlpha"    # D

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->b:Ljava/lang/Double;

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->b:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 46
    .local v2, "alpha":D
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->c:Ljava/lang/Double;

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->c:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 47
    .local v4, "beta":D
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->d:Ljava/lang/Double;

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->d:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 49
    .local v6, "gamma":D
    move-object/from16 v0, p0

    iget-object v9, v0, Laop;->a:Laoq;

    .line 1060
    move-object/from16 v0, p0

    iget-object v10, v0, Laop;->i:Laoh;

    neg-double v12, v6

    const-string/jumbo v8, "YXZ"

    .line 2046
    iput-wide v4, v10, Laoh;->b:D

    .line 2047
    iput-wide v2, v10, Laoh;->c:D

    .line 2048
    iput-wide v12, v10, Laoh;->d:D

    .line 2050
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v8, "XYZ"

    :cond_0
    iput-object v8, v10, Laoh;->a:Ljava/lang/String;

    .line 1061
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->i:Laoh;

    .line 3048
    if-eqz v8, :cond_1

    iget-boolean v10, v8, Laoh;->e:Z

    if-nez v10, :cond_5

    .line 1062
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->k:Laoq;

    invoke-virtual {v9, v8}, Laoq;->a(Laoq;)Laoq;

    .line 1063
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->j:Laoq;

    move-object/from16 v0, p0

    iget-object v10, v0, Laop;->h:Laov;

    const-wide/high16 v12, -0x8000000000000000L

    .line 3112
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    .line 3113
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 3115
    iget-wide v0, v10, Laov;->a:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v14

    move-wide/from16 v0, v16

    iput-wide v0, v8, Laoq;->a:D

    .line 3116
    iget-wide v0, v10, Laov;->b:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v14

    move-wide/from16 v0, v16

    iput-wide v0, v8, Laoq;->b:D

    .line 3117
    iget-wide v10, v10, Laov;->c:D

    mul-double/2addr v10, v14

    iput-wide v10, v8, Laoq;->c:D

    .line 3118
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iput-wide v10, v8, Laoq;->d:D

    .line 1063
    invoke-virtual {v9, v8}, Laoq;->a(Laoq;)Laoq;

    .line 50
    move-object/from16 v0, p0

    iget-object v8, v0, Laop;->a:Laoq;

    return-object v8

    .line 45
    .end local v2    # "alpha":D
    .end local v4    # "beta":D
    .end local v6    # "gamma":D
    :cond_2
    const-wide/16 v8, 0x0

    add-double v8, v8, p5

    goto/16 :goto_0

    .line 46
    .restart local v2    # "alpha":D
    :cond_3
    const-wide/16 v8, 0x0

    add-double v8, v8, p1

    goto/16 :goto_1

    .line 47
    .restart local v4    # "beta":D
    :cond_4
    const-wide/16 v8, 0x0

    add-double v8, v8, p3

    goto :goto_2

    .line 3052
    .restart local v6    # "gamma":D
    :cond_5
    iget-wide v10, v8, Laoh;->b:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 3053
    iget-wide v12, v8, Laoh;->c:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 3054
    iget-wide v14, v8, Laoh;->d:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 3055
    iget-wide v0, v8, Laoh;->b:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 3056
    iget-wide v0, v8, Laoh;->c:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 3057
    iget-wide v0, v8, Laoh;->d:D

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 3059
    iget-object v8, v8, Laoh;->a:Ljava/lang/String;

    .line 3061
    const-string/jumbo v22, "XYZ"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 3063
    mul-double v22, v16, v12

    mul-double v22, v22, v14

    mul-double v24, v10, v18

    mul-double v24, v24, v20

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->a:D

    .line 3064
    mul-double v22, v10, v18

    mul-double v22, v22, v14

    mul-double v24, v16, v12

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->b:D

    .line 3065
    mul-double v22, v10, v12

    mul-double v22, v22, v20

    mul-double v24, v16, v18

    mul-double v24, v24, v14

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->c:D

    .line 3066
    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    mul-double v12, v16, v18

    mul-double v12, v12, v20

    sub-double/2addr v10, v12

    iput-wide v10, v9, Laoq;->d:D

    goto/16 :goto_3

    .line 3068
    :cond_6
    const-string/jumbo v22, "YXZ"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 3070
    mul-double v22, v16, v12

    mul-double v22, v22, v14

    mul-double v24, v10, v18

    mul-double v24, v24, v20

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->a:D

    .line 3071
    mul-double v22, v10, v18

    mul-double v22, v22, v14

    mul-double v24, v16, v12

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->b:D

    .line 3072
    mul-double v22, v10, v12

    mul-double v22, v22, v20

    mul-double v24, v16, v18

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->c:D

    .line 3073
    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    mul-double v12, v16, v18

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    iput-wide v10, v9, Laoq;->d:D

    goto/16 :goto_3

    .line 3075
    :cond_7
    const-string/jumbo v22, "ZXY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 3077
    mul-double v22, v16, v12

    mul-double v22, v22, v14

    mul-double v24, v10, v18

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->a:D

    .line 3078
    mul-double v22, v10, v18

    mul-double v22, v22, v14

    mul-double v24, v16, v12

    mul-double v24, v24, v20

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->b:D

    .line 3079
    mul-double v22, v10, v12

    mul-double v22, v22, v20

    mul-double v24, v16, v18

    mul-double v24, v24, v14

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->c:D

    .line 3080
    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    mul-double v12, v16, v18

    mul-double v12, v12, v20

    sub-double/2addr v10, v12

    iput-wide v10, v9, Laoq;->d:D

    goto/16 :goto_3

    .line 3082
    :cond_8
    const-string/jumbo v22, "ZYX"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 3084
    mul-double v22, v16, v12

    mul-double v22, v22, v14

    mul-double v24, v10, v18

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->a:D

    .line 3085
    mul-double v22, v10, v18

    mul-double v22, v22, v14

    mul-double v24, v16, v12

    mul-double v24, v24, v20

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->b:D

    .line 3086
    mul-double v22, v10, v12

    mul-double v22, v22, v20

    mul-double v24, v16, v18

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->c:D

    .line 3087
    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    mul-double v12, v16, v18

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    iput-wide v10, v9, Laoq;->d:D

    goto/16 :goto_3

    .line 3089
    :cond_9
    const-string/jumbo v22, "YZX"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 3091
    mul-double v22, v16, v12

    mul-double v22, v22, v14

    mul-double v24, v10, v18

    mul-double v24, v24, v20

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->a:D

    .line 3092
    mul-double v22, v10, v18

    mul-double v22, v22, v14

    mul-double v24, v16, v12

    mul-double v24, v24, v20

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->b:D

    .line 3093
    mul-double v22, v10, v12

    mul-double v22, v22, v20

    mul-double v24, v16, v18

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->c:D

    .line 3094
    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    mul-double v12, v16, v18

    mul-double v12, v12, v20

    sub-double/2addr v10, v12

    iput-wide v10, v9, Laoq;->d:D

    goto/16 :goto_3

    .line 3096
    :cond_a
    const-string/jumbo v22, "XZY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3098
    mul-double v22, v16, v12

    mul-double v22, v22, v14

    mul-double v24, v10, v18

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->a:D

    .line 3099
    mul-double v22, v10, v18

    mul-double v22, v22, v14

    mul-double v24, v16, v12

    mul-double v24, v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->b:D

    .line 3100
    mul-double v22, v10, v12

    mul-double v22, v22, v20

    mul-double v24, v16, v18

    mul-double v24, v24, v14

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v9, Laoq;->c:D

    .line 3101
    mul-double/2addr v10, v12

    mul-double/2addr v10, v14

    mul-double v12, v16, v18

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    iput-wide v10, v9, Laoq;->d:D

    goto/16 :goto_3
.end method
