.class public Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;
.super Landroid/widget/ImageView;
.source "BaseGestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$b;,
        Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View$OnClickListener;

.field protected b:Landroid/view/View$OnLongClickListener;

.field protected c:Lhck;

.field protected d:Landroid/view/MotionEvent;

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Matrix;

.field private h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

.field private i:Z

.field private j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->e:F

    .line 33
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    .line 36
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-direct {v2, p0, v9}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;B)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .line 46
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v9

    move v13, v9

    .line 47
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->d:Landroid/view/MotionEvent;

    .line 55
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->e:F

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;-><init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;B)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .line 46
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 47
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->d:Landroid/view/MotionEvent;

    .line 65
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    .prologue
    .line 24
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->e:F

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->i:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 196
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    move v2, v3

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 203
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 204
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 205
    .local v0, "bound":Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 206
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public b()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 212
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    move v2, v3

    .line 216
    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 219
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 220
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 221
    .local v0, "bound":Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 222
    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    .line 229
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V

    .line 230
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->invalidate()V

    .line 231
    return-void
.end method

.method public getImageFitMatrix()Landroid/graphics/Matrix;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 156
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 157
    .local v4, "result":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v1, v7

    .line 160
    .local v1, "displayWidth":F
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v0, v7

    .line 161
    .local v0, "displayHeight":F
    cmpl-float v7, v1, v8

    if-lez v7, :cond_1

    cmpl-float v7, v0, v8

    if-lez v7, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v3, v7

    .line 164
    .local v3, "imageWidth":F
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v2, v7

    .line 165
    .local v2, "imageHeight":F
    cmpl-float v7, v3, v8

    if-lez v7, :cond_1

    cmpl-float v7, v2, v8

    if-lez v7, :cond_1

    .line 167
    div-float v5, v1, v3

    .line 168
    .local v5, "scale":F
    mul-float v7, v5, v2

    cmpg-float v7, v7, v0

    if-gez v7, :cond_2

    const/4 v6, 0x1

    .line 170
    .local v6, "translateToCenter":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 171
    neg-float v7, v3

    div-float/2addr v7, v9

    neg-float v8, v2

    div-float/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 173
    :cond_0
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 174
    if-eqz v6, :cond_1

    .line 175
    div-float v7, v1, v9

    div-float v8, v0, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    .end local v0    # "displayHeight":F
    .end local v1    # "displayWidth":F
    .end local v2    # "imageHeight":F
    .end local v3    # "imageWidth":F
    .end local v5    # "scale":F
    .end local v6    # "translateToCenter":Z
    :cond_1
    return-object v4

    .line 168
    .restart local v0    # "displayHeight":F
    .restart local v1    # "displayWidth":F
    .restart local v2    # "imageHeight":F
    .restart local v3    # "imageWidth":F
    .restart local v5    # "scale":F
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getMatrixBaseFit()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c()V

    .line 137
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getImageFitMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 74
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 75
    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 77
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->f:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->j:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->j:Landroid/graphics/RectF;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 83
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 86
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->i:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    .line 1117
    iput-boolean v3, v0, Lhck;->a:Z

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    invoke-static {v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    .line 2117
    iput-boolean v3, v0, Lhck;->a:Z

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->h:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-virtual {v0, p0, p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    invoke-virtual {v0, p0, p1}, Lhck;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->d:Landroid/view/MotionEvent;

    goto :goto_0
.end method

.method public setMAX_SCALE(F)V
    .locals 0
    .param p1, "maxScale"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->e:F

    .line 116
    return-void
.end method

.method public setMatrixBaseFit(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/Matrix;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->g:Landroid/graphics/Matrix;

    .line 152
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a:Landroid/view/View$OnClickListener;

    .line 122
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->b:Landroid/view/View$OnLongClickListener;

    .line 128
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 142
    return-void
.end method

.method public setSwipeToDismissTouchListener(Lhck;)V
    .locals 0
    .param p1, "listener"    # Lhck;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    .line 132
    return-void
.end method

.method public setTileBackgroundColor(I)V
    .locals 2
    .param p1, "tileBgColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->f:Landroid/graphics/Paint;

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->invalidate()V

    .line 242
    return-void

    .line 237
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->f:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
