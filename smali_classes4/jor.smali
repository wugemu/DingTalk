.class public final Ljor;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Ljor;->d:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 22
    iput p1, p0, Ljor;->e:I

    .line 23
    iput p2, p0, Ljor;->f:I

    .line 24
    return-void
.end method

.method public final b(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 27
    iput p1, p0, Ljor;->g:I

    .line 28
    iput p2, p0, Ljor;->h:I

    .line 29
    return-void
.end method

.method public final c(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    iget v10, p0, Ljor;->a:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_0

    iget v10, p0, Ljor;->a:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_1

    .line 45
    :cond_0
    move v6, p1

    .line 46
    .local v6, "tempSpec":I
    move p1, p2

    .line 47
    move p2, v6

    .line 50
    .end local v6    # "tempSpec":I
    :cond_1
    iget v10, p0, Ljor;->e:I

    invoke-static {v10, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    .line 51
    .local v7, "width":I
    iget v10, p0, Ljor;->f:I

    invoke-static {v10, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 52
    .local v1, "height":I
    iget v10, p0, Ljor;->d:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 53
    move v7, p1

    .line 54
    move v1, p2

    .line 184
    :cond_2
    :goto_0
    iput v7, p0, Ljor;->b:I

    .line 185
    iput v1, p0, Ljor;->c:I

    .line 186
    return-void

    .line 55
    :cond_3
    iget v10, p0, Ljor;->e:I

    if-lez v10, :cond_2

    iget v10, p0, Ljor;->f:I

    if-lez v10, :cond_2

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 57
    .local v8, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 58
    .local v9, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 59
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 61
    .local v3, "heightSpecSize":I
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_b

    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_b

    .line 62
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v5, v10, v11

    .line 64
    .local v5, "specAspectRatio":F
    iget v10, p0, Ljor;->d:I

    packed-switch v10, :pswitch_data_0

    .line 79
    iget v10, p0, Ljor;->e:I

    int-to-float v10, v10

    iget v11, p0, Ljor;->f:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 80
    .local v0, "displayAspectRatio":F
    iget v10, p0, Ljor;->g:I

    if-lez v10, :cond_4

    iget v10, p0, Ljor;->h:I

    if-lez v10, :cond_4

    .line 81
    iget v10, p0, Ljor;->g:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Ljor;->h:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 84
    :cond_4
    :goto_1
    cmpl-float v10, v0, v5

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 86
    .local v4, "shouldBeWider":Z
    :goto_2
    iget v10, p0, Ljor;->d:I

    packed-switch v10, :pswitch_data_1

    .line 117
    :pswitch_0
    if-eqz v4, :cond_a

    .line 119
    iget v10, p0, Ljor;->e:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 120
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto :goto_0

    .line 66
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    :pswitch_1
    const v0, 0x3fe38e39

    .line 67
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Ljor;->a:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_5

    iget v10, p0, Ljor;->a:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 68
    :cond_5
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_1

    .line 71
    .end local v0    # "displayAspectRatio":F
    :pswitch_2
    const v0, 0x3faaaaab

    .line 72
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Ljor;->a:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_6

    iget v10, p0, Ljor;->a:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 73
    :cond_6
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_1

    .line 84
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 90
    .restart local v4    # "shouldBeWider":Z
    :pswitch_3
    if-eqz v4, :cond_8

    .line 93
    move v7, v9

    int-to-float v10, v9

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto/16 :goto_0

    .line 97
    :cond_8
    move v1, v3

    int-to-float v10, v3

    mul-float/2addr v10, v0

    float-to-int v7, v10

    .line 99
    goto/16 :goto_0

    .line 101
    :pswitch_4
    if-eqz v4, :cond_9

    .line 104
    move v1, v3

    int-to-float v10, v3

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 108
    :cond_9
    move v7, v9

    int-to-float v10, v9

    div-float/2addr v10, v0

    float-to-int v1, v10

    .line 110
    goto/16 :goto_0

    .line 112
    :pswitch_5
    move v1, v3

    .line 113
    move v7, v9

    .line 114
    goto/16 :goto_0

    .line 123
    :cond_a
    iget v10, p0, Ljor;->f:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 124
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    .line 128
    goto/16 :goto_0

    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    .end local v5    # "specAspectRatio":F
    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_f

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_f

    .line 130
    move v7, v9

    .line 131
    move v1, v3

    .line 132
    int-to-float v10, v7

    int-to-float v11, v1

    div-float v5, v10, v11

    .line 133
    .restart local v5    # "specAspectRatio":F
    iget v10, p0, Ljor;->e:I

    int-to-float v10, v10

    iget v11, p0, Ljor;->f:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 134
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Ljor;->g:I

    if-lez v10, :cond_c

    iget v10, p0, Ljor;->h:I

    if-lez v10, :cond_c

    .line 135
    iget v10, p0, Ljor;->g:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Ljor;->h:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 137
    :cond_c
    cmpl-float v10, v0, v5

    if-lez v10, :cond_d

    const/4 v4, 0x1

    .line 139
    .restart local v4    # "shouldBeWider":Z
    :goto_3
    if-eqz v4, :cond_e

    .line 140
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto/16 :goto_0

    .line 137
    .end local v4    # "shouldBeWider":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    .line 143
    .restart local v4    # "shouldBeWider":Z
    :cond_e
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    .line 145
    goto/16 :goto_0

    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    .end local v5    # "specAspectRatio":F
    :cond_f
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_11

    .line 148
    move v7, v9

    iget v10, p0, Ljor;->f:I

    mul-int/2addr v10, v9

    iget v11, p0, Ljor;->e:I

    div-int v1, v10, v11

    .line 149
    iget v10, p0, Ljor;->g:I

    if-lez v10, :cond_10

    iget v10, p0, Ljor;->h:I

    if-lez v10, :cond_10

    .line 150
    iget v10, p0, Ljor;->h:I

    mul-int/2addr v10, v1

    iget v11, p0, Ljor;->g:I

    div-int v1, v10, v11

    .line 151
    :cond_10
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_2

    if-le v1, v3, :cond_2

    .line 153
    move v1, v3

    goto/16 :goto_0

    .line 155
    :cond_11
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_13

    .line 158
    move v1, v3

    iget v10, p0, Ljor;->e:I

    mul-int/2addr v10, v3

    iget v11, p0, Ljor;->f:I

    div-int v7, v10, v11

    .line 159
    iget v10, p0, Ljor;->g:I

    if-lez v10, :cond_12

    iget v10, p0, Ljor;->h:I

    if-lez v10, :cond_12

    .line 160
    iget v10, p0, Ljor;->g:I

    mul-int/2addr v10, v7

    iget v11, p0, Ljor;->h:I

    div-int v7, v10, v11

    .line 161
    :cond_12
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 163
    move v7, v9

    goto/16 :goto_0

    .line 167
    :cond_13
    iget v7, p0, Ljor;->e:I

    .line 168
    iget v1, p0, Ljor;->f:I

    .line 169
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_14

    if-le v1, v3, :cond_14

    .line 172
    move v1, v3

    iget v10, p0, Ljor;->e:I

    mul-int/2addr v10, v3

    iget v11, p0, Ljor;->f:I

    div-int v7, v10, v11

    .line 174
    :cond_14
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 177
    move v7, v9

    iget v10, p0, Ljor;->f:I

    mul-int/2addr v10, v9

    iget v11, p0, Ljor;->e:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 64
    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
