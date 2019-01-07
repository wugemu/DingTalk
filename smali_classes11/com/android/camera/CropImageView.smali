.class public Lcom/android/camera/CropImageView;
.super Lcom/android/camera/ImageViewTouchBase;
.source "CropImageView.java"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/HighlightRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/android/camera/HighlightRectangle;

.field private k:F

.field private l:F

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/camera/CropImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CropImageView;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    .line 21
    iput-object v2, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method

.method private a(Lcom/android/camera/HighlightRectangle;)V
    .locals 10
    .param p1, "hv"    # Lcom/android/camera/HighlightRectangle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 181
    iget-object v6, p1, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 183
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 184
    .local v1, "panDeltaX1":I
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 186
    .local v2, "panDeltaX2":I
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 187
    .local v4, "panDeltaY1":I
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 189
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_2

    move v0, v1

    .line 190
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 192
    .local v3, "panDeltaY":I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 193
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/CropImageView;->b(FF)V

    .line 195
    :cond_1
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_2
    move v0, v2

    .line 189
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_3
    move v3, v5

    .line 190
    goto :goto_1
.end method

.method private b(Lcom/android/camera/HighlightRectangle;)V
    .locals 14
    .param p1, "hv"    # Lcom/android/camera/HighlightRectangle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v1, p1, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 202
    .local v1, "drawRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 203
    .local v5, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 205
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 206
    .local v4, "thisWidth":F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 208
    .local v3, "thisHeight":F
    div-float v9, v4, v5

    const v10, 0x3f19999a    # 0.6f

    mul-float v6, v9, v10

    .line 209
    .local v6, "z1":F
    div-float v9, v3, v2

    const v10, 0x3f19999a    # 0.6f

    mul-float v7, v9, v10

    .line 211
    .local v7, "z2":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 212
    .local v8, "zoom":F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 213
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v10, v9

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 216
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    .line 217
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 218
    .local v0, "coordinates":[F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43960000    # 300.0f

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/camera/CropImageView;->a(FFFF)V

    .line 222
    .end local v0    # "coordinates":[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->a(Lcom/android/camera/HighlightRectangle;)V

    .line 223
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/camera/ImageViewTouchBase;->a()V

    return-void
.end method

.method protected final a(FF)V
    .locals 3
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->a(FF)V

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightRectangle;

    .line 80
    .local v0, "hv":Lcom/android/camera/HighlightRectangle;
    iget-object v2, v0, Lcom/android/camera/HighlightRectangle;->e:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    invoke-virtual {v0}, Lcom/android/camera/HighlightRectangle;->c()V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "hv":Lcom/android/camera/HighlightRectangle;
    :cond_0
    return-void
.end method

.method protected final a(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ImageViewTouchBase;->a(FFF)V

    .line 51
    iget-object v1, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightRectangle;

    .line 52
    .local v0, "hv":Lcom/android/camera/HighlightRectangle;
    iget-object v2, v0, Lcom/android/camera/HighlightRectangle;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 53
    invoke-virtual {v0}, Lcom/android/camera/HighlightRectangle;->c()V

    goto :goto_0

    .line 55
    .end local v0    # "hv":Lcom/android/camera/HighlightRectangle;
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public final bridge synthetic a(Liuz;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->a(Liuz;Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    invoke-super/range {p0 .. p1}, Lcom/android/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightRectangle;

    .line 2102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2104
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 3087
    iget-boolean v3, v2, Lcom/android/camera/HighlightRectangle;->o:Z

    .line 2105
    if-nez v3, :cond_1

    .line 2106
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2109
    :cond_1
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->m:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 2110
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->a:Landroid/view/View;

    iget-object v4, v2, Lcom/android/camera/HighlightRectangle;->m:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2113
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->l:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v2, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :try_start_1
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->l:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2121
    :goto_2
    :try_start_2
    iget-object v4, v2, Lcom/android/camera/HighlightRectangle;->m:Landroid/graphics/Rect;

    .line 4087
    iget-boolean v3, v2, Lcom/android/camera/HighlightRectangle;->o:Z

    .line 2121
    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->i:Landroid/graphics/Paint;

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2125
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2127
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->l:Landroid/graphics/Path;

    iget-object v4, v2, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2129
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->n:Lcom/android/camera/HighlightRectangle$ModifyMode;

    sget-object v4, Lcom/android/camera/HighlightRectangle$ModifyMode;->Move:Lcom/android/camera/HighlightRectangle$ModifyMode;

    if-eq v3, v4, :cond_0

    .line 2130
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 4141
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    .line 4142
    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    .line 4143
    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x4

    .line 4144
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x3

    .line 4146
    iget-object v8, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 4147
    iget-object v9, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 4148
    iget-object v10, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 4149
    iget-object v11, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 4151
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 4153
    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v14, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    .line 4156
    iget-object v13, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    sub-int v14, v4, v8

    sub-int v15, v3, v9

    add-int/2addr v4, v8

    add-int v16, v3, v9

    .line 4157
    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4159
    iget-object v4, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4161
    iget-object v4, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    sub-int v13, v5, v8

    sub-int v14, v3, v9

    add-int/2addr v5, v8

    add-int/2addr v3, v9

    invoke-virtual {v4, v13, v14, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4164
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4166
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    sub-int v4, v12, v11

    sub-int v5, v6, v10

    add-int v8, v12, v11

    add-int/2addr v6, v10

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4169
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4171
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    sub-int v4, v12, v11

    sub-int v5, v7, v10

    add-int v6, v12, v11

    add-int/2addr v7, v10

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4174
    iget-object v2, v2, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 2117
    :catch_1
    move-exception v3

    .line 2118
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 2121
    :cond_2
    iget-object v3, v2, Lcom/android/camera/HighlightRectangle;->j:Landroid/graphics/Paint;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 234
    :cond_3
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/CropImageView;->d:Liuz;

    .line 1046
    iget-object v1, v1, Liuz;->a:Landroid/graphics/Bitmap;

    .line 29
    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightRectangle;

    .line 31
    .local v0, "hv":Lcom/android/camera/HighlightRectangle;
    iget-object v2, v0, Lcom/android/camera/HighlightRectangle;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/camera/HighlightRectangle;->c()V

    .line 33
    iget-boolean v2, v0, Lcom/android/camera/HighlightRectangle;->o:Z

    if-eqz v2, :cond_0

    .line 34
    invoke-direct {p0, v0}, Lcom/android/camera/CropImageView;->b(Lcom/android/camera/HighlightRectangle;)V

    goto :goto_0

    .line 38
    .end local v0    # "hv":Lcom/android/camera/HighlightRectangle;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CropImage;

    .line 111
    .local v0, "cropImage":Lcom/android/camera/CropImage;
    iget-boolean v4, v0, Lcom/android/camera/CropImage;->a:Z

    if-eqz v4, :cond_0

    .line 112
    const/4 v4, 0x0

    .line 176
    :goto_0
    return v4

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 161
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 176
    :cond_2
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 117
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightRectangle;

    .line 119
    .local v2, "hv":Lcom/android/camera/HighlightRectangle;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1186
    invoke-virtual {v2}, Lcom/android/camera/HighlightRectangle;->b()Landroid/graphics/Rect;

    move-result-object v9

    .line 1188
    const/4 v6, 0x1

    .line 1192
    iget v4, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_7

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v4, v5

    cmpg-float v4, v8, v4

    if-gez v4, :cond_7

    const/4 v4, 0x1

    .line 1194
    :goto_4
    iget v5, v9, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v5, v10

    cmpl-float v5, v7, v5

    if-ltz v5, :cond_8

    iget v5, v9, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    const/high16 v10, 0x41a00000    # 20.0f

    add-float/2addr v5, v10

    cmpg-float v5, v7, v5

    if-gez v5, :cond_8

    const/4 v5, 0x1

    .line 1198
    :goto_5
    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    if-eqz v4, :cond_3

    .line 1199
    const/4 v6, 0x3

    .line 1201
    :cond_3
    iget v10, v9, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    if-eqz v4, :cond_4

    .line 1202
    or-int/lit8 v6, v6, 0x4

    .line 1204
    :cond_4
    iget v4, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v10, 0x41a00000    # 20.0f

    cmpg-float v4, v4, v10

    if-gez v4, :cond_5

    if-eqz v5, :cond_5

    .line 1205
    or-int/lit8 v6, v6, 0x8

    .line 1207
    :cond_5
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v10, 0x41a00000    # 20.0f

    cmpg-float v4, v4, v10

    if-gez v4, :cond_1d

    if-eqz v5, :cond_1d

    .line 1208
    or-int/lit8 v6, v6, 0x10

    move v1, v6

    .line 1212
    :goto_6
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    float-to-int v4, v7

    float-to-int v5, v8

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1213
    const/16 v1, 0x20

    .line 120
    .local v1, "edge":I
    :cond_6
    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    .line 121
    iput v1, p0, Lcom/android/camera/CropImageView;->m:I

    .line 122
    iput-object v2, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->k:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->l:F

    .line 125
    iget-object v5, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    const/16 v4, 0x20

    if-ne v1, v4, :cond_9

    sget-object v4, Lcom/android/camera/HighlightRectangle$ModifyMode;->Move:Lcom/android/camera/HighlightRectangle$ModifyMode;

    :goto_7
    invoke-virtual {v5, v4}, Lcom/android/camera/HighlightRectangle;->a(Lcom/android/camera/HighlightRectangle$ModifyMode;)V

    goto/16 :goto_1

    .line 1192
    .end local v1    # "edge":I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1194
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 125
    .restart local v1    # "edge":I
    :cond_9
    sget-object v4, Lcom/android/camera/HighlightRectangle$ModifyMode;->Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;

    goto :goto_7

    .line 117
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 134
    .end local v1    # "edge":I
    .end local v2    # "hv":Lcom/android/camera/HighlightRectangle;
    .end local v3    # "i":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    if-eqz v4, :cond_b

    .line 135
    iget-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    sget-object v5, Lcom/android/camera/HighlightRectangle$ModifyMode;->Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/HighlightRectangle;->a(Lcom/android/camera/HighlightRectangle$ModifyMode;)V

    .line 136
    iget-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    invoke-direct {p0, v4}, Lcom/android/camera/CropImageView;->b(Lcom/android/camera/HighlightRectangle;)V

    .line 138
    :cond_b
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    goto/16 :goto_1

    .line 141
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    sget-object v5, Lcom/android/camera/HighlightRectangle$ModifyMode;->Move:Lcom/android/camera/HighlightRectangle$ModifyMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/HighlightRectangle;->a(Lcom/android/camera/HighlightRectangle$ModifyMode;)V

    .line 143
    iget-object v6, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    iget v7, p0, Lcom/android/camera/CropImageView;->m:I

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/CropImageView;->k:F

    sub-float v5, v4, v5

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v8, p0, Lcom/android/camera/CropImageView;->l:F

    sub-float/2addr v4, v8

    .line 1221
    invoke-virtual {v6}, Lcom/android/camera/HighlightRectangle;->b()Landroid/graphics/Rect;

    move-result-object v8

    .line 1222
    const/4 v9, 0x1

    if-eq v7, v9, :cond_c

    .line 1224
    const/16 v9, 0x20

    if-ne v7, v9, :cond_d

    .line 1226
    iget-object v7, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float/2addr v5, v7

    iget-object v7, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    .line 1227
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v4, v7

    .line 1247
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1249
    iget-object v8, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v8, v5, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1252
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v8, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v8, 0x0

    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    .line 1253
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1252
    invoke-virtual {v4, v5, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 1255
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v8, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v8, 0x0

    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v10

    .line 1256
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1255
    invoke-virtual {v4, v5, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 1258
    invoke-virtual {v6}, Lcom/android/camera/HighlightRectangle;->b()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v6, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 1259
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1260
    const/16 v4, -0xa

    const/16 v5, -0xa

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1261
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->a:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 146
    :cond_c
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->k:F

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->l:F

    .line 155
    iget-object v4, p0, Lcom/android/camera/CropImageView;->j:Lcom/android/camera/HighlightRectangle;

    invoke-direct {p0, v4}, Lcom/android/camera/CropImageView;->a(Lcom/android/camera/HighlightRectangle;)V

    goto/16 :goto_1

    .line 1229
    :cond_d
    and-int/lit8 v9, v7, 0x6

    if-nez v9, :cond_e

    .line 1230
    const/4 v5, 0x0

    .line 1233
    :cond_e
    and-int/lit8 v9, v7, 0x18

    if-nez v9, :cond_f

    .line 1234
    const/4 v4, 0x0

    .line 1238
    :cond_f
    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v5, v9

    .line 1239
    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v9, v8

    mul-float/2addr v8, v4

    .line 1240
    and-int/lit8 v4, v7, 0x2

    if-eqz v4, :cond_17

    const/4 v4, -0x1

    :goto_9
    int-to-float v4, v4

    mul-float/2addr v5, v4

    and-int/lit8 v4, v7, 0x8

    if-eqz v4, :cond_18

    const/4 v4, -0x1

    :goto_a
    int-to-float v4, v4

    mul-float/2addr v4, v8

    .line 1266
    iget-boolean v7, v6, Lcom/android/camera/HighlightRectangle;->f:Z

    if-eqz v7, :cond_10

    .line 1267
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_19

    .line 1268
    iget v4, v6, Lcom/android/camera/HighlightRectangle;->g:F

    div-float v4, v5, v4

    .line 1277
    :cond_10
    :goto_b
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1278
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_11

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_11

    .line 1279
    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    .line 1281
    iget-boolean v8, v6, Lcom/android/camera/HighlightRectangle;->f:Z

    if-eqz v8, :cond_11

    .line 1282
    iget v4, v6, Lcom/android/camera/HighlightRectangle;->g:F

    div-float v4, v5, v4

    .line 1285
    :cond_11
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_12

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_12

    .line 1286
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    .line 1288
    iget-boolean v8, v6, Lcom/android/camera/HighlightRectangle;->f:Z

    if-eqz v8, :cond_12

    .line 1289
    iget v5, v6, Lcom/android/camera/HighlightRectangle;->g:F

    mul-float/2addr v5, v4

    .line 1293
    :cond_12
    neg-float v5, v5

    neg-float v4, v4

    invoke-virtual {v7, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1297
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x41c80000    # 25.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    .line 1298
    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 1300
    :cond_13
    iget-boolean v4, v6, Lcom/android/camera/HighlightRectangle;->f:Z

    if-eqz v4, :cond_1a

    const/high16 v4, 0x41c80000    # 25.0f

    iget v5, v6, Lcom/android/camera/HighlightRectangle;->g:F

    div-float/2addr v4, v5

    .line 1302
    :goto_c
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_14

    .line 1303
    const/4 v5, 0x0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v4, v8

    neg-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    invoke-virtual {v7, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1307
    :cond_14
    iget v4, v7, Landroid/graphics/RectF;->left:F

    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1b

    .line 1308
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1312
    :cond_15
    :goto_d
    iget v4, v7, Landroid/graphics/RectF;->top:F

    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1c

    .line 1313
    const/4 v4, 0x0

    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v8, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v8

    invoke-virtual {v7, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1318
    :cond_16
    :goto_e
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1319
    invoke-virtual {v6}, Lcom/android/camera/HighlightRectangle;->b()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v6, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 1320
    iget-object v4, v6, Lcom/android/camera/HighlightRectangle;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto/16 :goto_8

    .line 1240
    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_a

    .line 1269
    :cond_19
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_10

    .line 1270
    iget v5, v6, Lcom/android/camera/HighlightRectangle;->g:F

    mul-float/2addr v5, v4

    goto/16 :goto_b

    .line 1300
    :cond_1a
    const/high16 v4, 0x41c80000    # 25.0f

    goto :goto_c

    .line 1309
    :cond_1b
    iget v4, v7, Landroid/graphics/RectF;->right:F

    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_15

    .line 1310
    iget v4, v7, Landroid/graphics/RectF;->right:F

    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_d

    .line 1314
    :cond_1c
    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    .line 1315
    const/4 v4, 0x0

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, v6, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v8

    neg-float v5, v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_e

    .line 163
    :pswitch_3
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 170
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 171
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .restart local v2    # "hv":Lcom/android/camera/HighlightRectangle;
    .restart local v3    # "i":I
    :cond_1d
    move v1, v6

    goto/16 :goto_6

    .line 115
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setRecycler(Lcom/android/camera/ImageViewTouchBase$a;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/camera/ImageViewTouchBase;->setRecycler(Lcom/android/camera/ImageViewTouchBase$a;)V

    return-void
.end method
