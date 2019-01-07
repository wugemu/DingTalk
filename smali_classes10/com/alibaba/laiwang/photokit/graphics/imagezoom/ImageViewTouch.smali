.class public Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;
.super Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;
.source "ImageViewTouch.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;,
        Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;,
        Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String;


# instance fields
.field private D:Z

.field private E:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;

.field protected a:Landroid/view/ScaleGestureDetector;

.field protected b:Landroid/view/GestureDetector;

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:I

.field protected g:Landroid/view/GestureDetector$OnGestureListener;

.field protected h:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected i:Z

.field protected j:Z

.field protected k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->j:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->k:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->j:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->k:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->j:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->k:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->E:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;

    return-object v0
.end method


# virtual methods
.method protected final a(FF)F
    .locals 2
    .param p1, "scale"    # F
    .param p2, "maxZoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 157
    iget v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->f:I

    if-ne v0, v1, :cond_1

    .line 158
    iget v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->e:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->e:F

    add-float p2, p1, v0

    .line 166
    .end local p2    # "maxZoom":F
    :goto_0
    return p2

    .line 161
    .restart local p2    # "maxZoom":F
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->f:I

    goto :goto_0

    .line 165
    :cond_1
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->f:I

    .line 166
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a()V

    .line 1313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 62
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->c:I

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->g:Landroid/view/GestureDetector$OnGestureListener;

    .line 2289
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->h:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 68
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->h:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    .line 69
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->g:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    .line 72
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    .line 73
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->f:I

    .line 74
    return-void

    .line 1313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(F)V

    .line 4289
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 139
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    .line 142
    :cond_0
    return-void
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 108
    .local v0, "v":[F
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 109
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    .line 110
    return-void
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "reset"    # Z
    .param p3, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p4, "maxZoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->e:F

    .line 116
    return-void
.end method

.method public final a(I)Z
    .locals 9
    .param p1, "direction"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 215
    .local v0, "bitmapRect":Landroid/graphics/RectF;
    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v4

    .line 218
    :cond_1
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->B:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 219
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 220
    .local v1, "imageViewRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getScale()F

    move-result v6

    cmpg-float v6, v6, v8

    if-lez v6, :cond_0

    .line 226
    if-gez p1, :cond_2

    .line 228
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 231
    :cond_2
    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->B:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v2, v6

    .line 232
    .local v2, "bitmapScrollRectDelta":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->k:Z

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 6289
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 175
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 181
    neg-float v0, p3

    neg-float v2, p4

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->c(FF)V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->invalidate()V

    move v0, v1

    .line 183
    goto :goto_0
.end method

.method protected final b(F)V
    .locals 2
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(F)V

    .line 5289
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 147
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->b(FF)V

    .line 154
    :cond_1
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    iget-boolean v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->k:Z

    if-nez v4, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 7289
    iget-boolean v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 190
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 195
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .line 197
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    .line 198
    :cond_3
    div-float v2, v0, v6

    div-float v4, v1, v6

    const-wide v6, 0x4072c00000000000L    # 300.0

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(FFD)V

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->invalidate()V

    move v2, v3

    .line 200
    goto :goto_0
.end method

.method public getDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->i:Z

    return v0
.end method

.method protected getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;-><init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method protected getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;-><init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    .line 3289
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->D:Z

    .line 120
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 126
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 133
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->b(FF)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->i:Z

    .line 82
    return-void
.end method

.method public setDoubleTapListener(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->E:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;

    .line 78
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->j:Z

    .line 86
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->k:Z

    .line 90
    return-void
.end method
