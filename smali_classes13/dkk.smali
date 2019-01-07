.class public final Ldkk;
.super Ljava/lang/Object;
.source "RedPacketsAnimatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/views/IMBanner;Lnl/dionsegijn/konfetti/KonfettiView;)V
    .locals 18
    .param p0, "banner"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .param p1, "confetti"    # Lnl/dionsegijn/konfetti/KonfettiView;

    .prologue
    .line 34
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 38
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcms;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_animator_confetti"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_2
    if-eqz p1, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_6

    .line 48
    :try_start_0
    invoke-static {v10}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v15, v2

    .line 49
    .local v15, "screenWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v10, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sub-float v13, v2, v3

    .line 50
    .local v13, "minX":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v10, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    add-float v12, v2, v3

    .line 51
    .local v12, "maxX":F
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v10, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 52
    .local v16, "y":F
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lnl/dionsegijn/konfetti/KonfettiView;->setVisibility(I)V

    .line 2038
    new-instance v5, Lklu;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lklu;-><init>(Lnl/dionsegijn/konfetti/KonfettiView;)V

    .line 53
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 54
    const-string/jumbo v3, "colors"

    invoke-static {v2, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    iput-object v2, v5, Lklu;->c:[I

    .line 2103
    iget-object v2, v5, Lklu;->b:Lkmd;

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 3015
    iput-wide v6, v2, Lkmd;->a:D

    .line 2104
    iget-object v2, v5, Lklu;->b:Lkmd;

    const-wide v6, 0x4061800000000000L    # 140.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 3021
    iput-object v3, v2, Lkmd;->b:Ljava/lang/Double;

    .line 3122
    iget-object v2, v5, Lklu;->b:Lkmd;

    const/high16 v3, 0x41700000    # 15.0f

    .line 4028
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    const/4 v3, 0x0

    iput v3, v2, Lkmd;->c:F

    .line 3123
    :goto_1
    iget-object v2, v5, Lklu;->b:Lkmd;

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 4036
    if-nez v3, :cond_3

    invoke-static {}, Lkib;->a()V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lkmd;->d:Ljava/lang/Float;

    .line 4142
    :goto_2
    iget-object v2, v5, Lklu;->f:Lklz;

    const-wide/16 v6, 0x4b0

    .line 5008
    iput-wide v6, v2, Lklz;->b:J

    .line 57
    const/4 v2, 0x1

    new-array v2, v2, [Lnl/dionsegijn/konfetti/models/Shape;

    const/4 v3, 0x0

    sget-object v4, Lnl/dionsegijn/konfetti/models/Shape;->RECT:Lnl/dionsegijn/konfetti/models/Shape;

    aput-object v4, v2, v3

    .line 58
    const-string/jumbo v3, "shapes"

    invoke-static {v2, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5082
    check-cast v2, [Ljava/lang/Object;

    .line 5223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 5230
    const/4 v4, 0x0

    :goto_3
    array-length v6, v2

    if-ge v4, v6, :cond_8

    aget-object v6, v2, v4

    instance-of v7, v6, Lnl/dionsegijn/konfetti/models/Shape;

    if-eqz v7, :cond_4

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4028
    :cond_5
    iput v3, v2, Lkmd;->c:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v12    # "maxX":F
    .end local v13    # "minX":F
    .end local v15    # "screenWidth":F
    .end local v16    # "y":F
    :catch_0
    move-exception v11

    .line 64
    .local v11, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Fail play confetti animator, error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 65
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 64
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v11    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_4
    invoke-static {v10}, Lcms;->b(Landroid/content/Context;)I

    move-result v14

    .line 70
    .local v14, "screenHeight":I
    neg-int v2, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setTranslationY(F)V

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 72
    new-instance v2, Ldkk$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v10, v0}, Ldkk$1;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4036
    .end local v14    # "screenHeight":I
    .restart local v12    # "maxX":F
    .restart local v13    # "minX":F
    .restart local v15    # "screenWidth":F
    .restart local v16    # "y":F
    :cond_7
    :try_start_1
    iput-object v3, v2, Lkmd;->d:Ljava/lang/Float;

    goto :goto_2

    .line 5231
    :cond_8
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 5232
    check-cast v3, Ljava/util/Collection;

    .line 5233
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lnl/dionsegijn/konfetti/models/Shape;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    new-instance v2, Lkotlin/TypeCastException;

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Lnl/dionsegijn/konfetti/models/Shape;

    iput-object v2, v5, Lklu;->e:[Lnl/dionsegijn/konfetti/models/Shape;

    .line 58
    const/4 v2, 0x5

    new-array v2, v2, [Lkmb;

    const/4 v3, 0x0

    new-instance v4, Lkmb;

    const/16 v6, 0x10

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v6, v7}, Lkmb;-><init>(IF)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lkmb;

    const/16 v6, 0xe

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v6, v7}, Lkmb;-><init>(IF)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lkmb;

    const/16 v6, 0xc

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v6, v7}, Lkmb;-><init>(IF)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lkmb;

    const/16 v6, 0xa

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v6, v7}, Lkmb;-><init>(IF)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lkmb;

    const/16 v6, 0x8

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v6, v7}, Lkmb;-><init>(IF)V

    aput-object v4, v2, v3

    .line 59
    invoke-virtual {v5, v2}, Lklu;->a([Lkmb;)Lklu;

    move-result-object v17

    .line 61
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 6055
    move-object/from16 v0, v17

    iget-object v3, v0, Lklu;->a:Lkma;

    .line 7035
    iput v13, v3, Lkma;->a:F

    .line 7036
    iput-object v2, v3, Lkma;->b:Ljava/lang/Float;

    .line 6056
    move-object/from16 v0, v17

    iget-object v2, v0, Lklu;->a:Lkma;

    const/4 v3, 0x0

    .line 7044
    move/from16 v0, v16

    iput v0, v2, Lkma;->c:F

    .line 7045
    iput-object v3, v2, Lkma;->d:Ljava/lang/Float;

    .line 7162
    new-instance v9, Lklx;

    invoke-direct {v9}, Lklx;-><init>()V

    const/16 v2, 0x96

    const-wide/16 v4, 0x4b0

    .line 8027
    const/4 v3, -0x1

    .line 8028
    iput v3, v9, Lklx;->b:I

    .line 8029
    iput-wide v4, v9, Lklx;->c:J

    .line 8030
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v2, v2

    div-float v2, v3, v2

    iput v2, v9, Lklx;->d:F

    .line 7163
    check-cast v9, Lklv;

    .line 8193
    new-instance v2, Lklw;

    move-object/from16 v0, v17

    iget-object v3, v0, Lklu;->a:Lkma;

    move-object/from16 v0, v17

    iget-object v4, v0, Lklu;->b:Lkmd;

    move-object/from16 v0, v17

    iget-object v5, v0, Lklu;->d:[Lkmb;

    move-object/from16 v0, v17

    iget-object v6, v0, Lklu;->e:[Lnl/dionsegijn/konfetti/models/Shape;

    move-object/from16 v0, v17

    iget-object v7, v0, Lklu;->c:[I

    move-object/from16 v0, v17

    iget-object v8, v0, Lklu;->f:Lklz;

    invoke-direct/range {v2 .. v9}, Lklw;-><init>(Lkma;Lkmd;[Lkmb;[Lnl/dionsegijn/konfetti/models/Shape;[ILklz;Lklv;)V

    move-object/from16 v0, v17

    iput-object v2, v0, Lklu;->g:Lklw;

    .line 8203
    move-object/from16 v0, v17

    iget-object v2, v0, Lklu;->h:Lnl/dionsegijn/konfetti/KonfettiView;

    const-string/jumbo v3, "particleSystem"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9062
    iget-object v3, v2, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9063
    iget-object v3, v2, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lkly;

    if-eqz v3, :cond_a

    iget-object v3, v2, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 9064
    :cond_a
    invoke-virtual {v2}, Lnl/dionsegijn/konfetti/KonfettiView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 53
    :array_0
    .array-data 4
        0xff2f27
        0x47c0ff
        0x7b5cff
        0xffc329
        0xff5b86
        0x953aff
    .end array-data
.end method
