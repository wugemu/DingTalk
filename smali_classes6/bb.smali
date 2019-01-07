.class public final Lbb;
.super Lbz;
.source "SidePropagation.java"


# instance fields
.field public a:I

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lbz;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lbb;->b:F

    .line 36
    const/16 v0, 0x50

    iput v0, p0, Lbb;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Lbh;Lbh;)J
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/support/transition/Transition;
    .param p3, "startValues"    # Lbh;
    .param p4, "endValues"    # Lbh;

    .prologue
    .line 75
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 76
    const-wide/16 v20, 0x0

    .line 118
    :goto_0
    return-wide v20

    .line 78
    :cond_0
    const/4 v3, 0x1

    .line 79
    .local v3, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v8

    .line 81
    .local v8, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    invoke-static/range {p3 .. p3}, Lbb;->b(Lbh;)I

    move-result v19

    if-nez v19, :cond_3

    .line 82
    :cond_1
    move-object/from16 v14, p3

    .line 83
    .local v14, "positionValues":Lbh;
    const/4 v3, -0x1

    .line 1091
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lbz;->a(Lbh;I)I

    move-result v17

    .line 1102
    .local v17, "viewCenterX":I
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v14, v0}, Lbz;->a(Lbh;I)I

    move-result v18

    .line 91
    .local v18, "viewCenterY":I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [I

    .line 92
    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 93
    const/16 v19, 0x0

    aget v19, v12, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v11, v19, v20

    .line 94
    .local v11, "left":I
    const/16 v19, 0x1

    aget v19, v12, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v16, v19, v20

    .line 95
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v19

    add-int v15, v11, v19

    .line 96
    .local v15, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    add-int v2, v16, v19

    .line 100
    .local v2, "bottom":I
    if-eqz v8, :cond_4

    .line 101
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 102
    .local v9, "epicenterX":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 1124
    .local v10, "epicenterY":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lbb;->a:I

    move/from16 v19, v0

    const v20, 0x800003

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1125
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    .line 1127
    :goto_3
    if-eqz v19, :cond_6

    const/16 v19, 0x5

    :goto_4
    move/from16 v20, v19

    .line 1135
    :goto_5
    const/16 v19, 0x0

    .line 1136
    sparse-switch v20, :sswitch_data_0

    .line 108
    :goto_6
    move/from16 v0, v19

    int-to-float v4, v0

    .line 1154
    .local v4, "distance":F
    move-object/from16 v0, p0

    iget v0, v0, Lbb;->a:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_1

    .line 1161
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    .line 110
    :goto_7
    move/from16 v0, v19

    int-to-float v13, v0

    .line 111
    .local v13, "maxDistance":F
    div-float v5, v4, v13

    .line 113
    .local v5, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v6

    .line 114
    .local v6, "duration":J
    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-gez v19, :cond_2

    .line 115
    const-wide/16 v6, 0x12c

    .line 118
    :cond_2
    int-to-long v0, v3

    move-wide/from16 v20, v0

    mul-long v20, v20, v6

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbb;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v19, v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_0

    .line 85
    .end local v2    # "bottom":I
    .end local v4    # "distance":F
    .end local v5    # "distanceFraction":F
    .end local v6    # "duration":J
    .end local v9    # "epicenterX":I
    .end local v10    # "epicenterY":I
    .end local v11    # "left":I
    .end local v12    # "loc":[I
    .end local v13    # "maxDistance":F
    .end local v14    # "positionValues":Lbh;
    .end local v15    # "right":I
    .end local v16    # "top":I
    .end local v17    # "viewCenterX":I
    .end local v18    # "viewCenterY":I
    :cond_3
    move-object/from16 v14, p4

    .restart local v14    # "positionValues":Lbh;
    goto/16 :goto_1

    .line 104
    .restart local v2    # "bottom":I
    .restart local v11    # "left":I
    .restart local v12    # "loc":[I
    .restart local v15    # "right":I
    .restart local v16    # "top":I
    .restart local v17    # "viewCenterX":I
    .restart local v18    # "viewCenterY":I
    :cond_4
    add-int v19, v11, v15

    div-int/lit8 v9, v19, 0x2

    .line 105
    .restart local v9    # "epicenterX":I
    add-int v19, v16, v2

    div-int/lit8 v10, v19, 0x2

    .restart local v10    # "epicenterY":I
    goto :goto_2

    .line 1125
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 1127
    :cond_6
    const/16 v19, 0x3

    goto :goto_4

    .line 1128
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lbb;->a:I

    move/from16 v19, v0

    const v20, 0x800005

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1129
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    .line 1131
    :goto_8
    if-eqz v19, :cond_9

    const/16 v19, 0x3

    :goto_9
    move/from16 v20, v19

    .line 1132
    goto/16 :goto_5

    .line 1129
    :cond_8
    const/16 v19, 0x0

    goto :goto_8

    .line 1131
    :cond_9
    const/16 v19, 0x5

    goto :goto_9

    .line 1133
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lbb;->a:I

    move/from16 v19, v0

    move/from16 v20, v19

    goto/16 :goto_5

    .line 1138
    :sswitch_0
    sub-int v19, v15, v17

    sub-int v20, v10, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v19, v19, v20

    .line 1139
    goto/16 :goto_6

    .line 1141
    :sswitch_1
    sub-int v19, v2, v18

    sub-int v20, v9, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v19, v19, v20

    .line 1142
    goto/16 :goto_6

    .line 1144
    :sswitch_2
    sub-int v19, v17, v11

    sub-int v20, v10, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v19, v19, v20

    .line 1145
    goto/16 :goto_6

    .line 1147
    :sswitch_3
    sub-int v19, v18, v16

    sub-int v20, v9, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v19, v19, v20

    goto/16 :goto_6

    .line 1159
    .restart local v4    # "distance":F
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v19

    goto/16 :goto_7

    .line 1136
    .line 1154
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_4
        0x5 -> :sswitch_4
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_4
    .end sparse-switch
.end method
