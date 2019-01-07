.class public Lcom/alibaba/android/scan/widget/ScaleFinderView;
.super Landroid/view/View;
.source "ScaleFinderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/scan/widget/ScaleFinderView$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Paint;

.field private j:J

.field private k:F

.field private l:Lcom/alibaba/android/scan/widget/ScaleFinderView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0, p0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1049
    sget v1, Lelh$d;->viewfinder_left_top:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->e:Landroid/graphics/Bitmap;

    .line 1050
    sget v1, Lelh$d;->viewfinder_right_top:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->f:Landroid/graphics/Bitmap;

    .line 1051
    sget v1, Lelh$d;->viewfinder_left_bottom:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->g:Landroid/graphics/Bitmap;

    .line 1052
    sget v1, Lelh$d;->viewfinder_right_bottom:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->h:Landroid/graphics/Bitmap;

    .line 1056
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 71
    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->e:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->a:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->f:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->b:I

    iget-object v3, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->g:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->a:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    iget-object v4, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->h:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->b:I

    iget-object v3, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    iget-object v4, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->h:Landroid/graphics/Bitmap;

    .line 1088
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    .line 1087
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    const/high16 v2, -0x6a000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1094
    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1096
    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    int-to-float v2, v0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->a:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1098
    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->b:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1100
    iget v0, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_0

    .line 106
    const/4 v10, 0x0

    .line 151
    :goto_0
    return v10

    .line 108
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 109
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->k:F

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 111
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->j:J

    sub-long v10, v4, v10

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->l:Lcom/alibaba/android/scan/widget/ScaleFinderView$a;

    if-eqz v10, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->l:Lcom/alibaba/android/scan/widget/ScaleFinderView$a;

    invoke-interface {v10}, Lcom/alibaba/android/scan/widget/ScaleFinderView$a;->a()V

    .line 116
    :cond_1
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->j:J

    .line 120
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 118
    :cond_2
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->j:J

    goto :goto_1

    .line 121
    .end local v4    # "time":J
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 123
    const/4 v10, 0x0

    goto :goto_0

    .line 125
    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->k:F

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 126
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 127
    .local v6, "x1":F
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 128
    .local v8, "y1":F
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 129
    .local v7, "x2":F
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 130
    .local v9, "y2":F
    sub-float v10, v6, v7

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-float v12, v8, v9

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 131
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    .line 130
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->k:F

    .line 147
    :cond_5
    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 133
    .end local v6    # "x1":F
    .end local v7    # "x2":F
    .end local v8    # "y1":F
    .end local v9    # "y2":F
    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 134
    .restart local v6    # "x1":F
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 135
    .restart local v8    # "y1":F
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 136
    .restart local v7    # "x2":F
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 137
    .restart local v9    # "y2":F
    sub-float v10, v6, v7

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-float v12, v8, v9

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 138
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    .line 137
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 140
    .local v2, "distance":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->k:F

    sub-float v10, v2, v10

    float-to-int v10, v10

    div-int/lit8 v3, v10, 0x1e

    .line 141
    .local v3, "rate":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->l:Lcom/alibaba/android/scan/widget/ScaleFinderView$a;

    if-eqz v10, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->l:Lcom/alibaba/android/scan/widget/ScaleFinderView$a;

    int-to-float v11, v3

    invoke-interface {v10, v11}, Lcom/alibaba/android/scan/widget/ScaleFinderView$a;->setZoom(F)V

    goto :goto_2

    .line 150
    .end local v2    # "distance":F
    .end local v3    # "rate":I
    .end local v6    # "x1":F
    .end local v7    # "x2":F
    .end local v8    # "y1":F
    .end local v9    # "y2":F
    :cond_7
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->k:F

    .line 151
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public setListener(Lcom/alibaba/android/scan/widget/ScaleFinderView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/scan/widget/ScaleFinderView$a;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ScaleFinderView;->l:Lcom/alibaba/android/scan/widget/ScaleFinderView$a;

    .line 157
    return-void
.end method
