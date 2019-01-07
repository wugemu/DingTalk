.class final Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;
.super Landroid/graphics/drawable/Drawable;
.source "DtPullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:F

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 279
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    .line 272
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    rem-float v0, p1, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->invalidateSelf()V

    .line 277
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const v6, 0x441d8000    # 630.0f

    const/high16 v3, 0x43870000    # 270.0f

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    sget v1, Lecj$b;->ui_common_level2_icon_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    sget v0, Lecj$c;->dp6:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->b:I

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->b:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->b:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->b:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->b:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 296
    iget v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    const v1, 0x3edb6db7

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 297
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    mul-float v3, v0, v6

    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    const v1, 0x3f124925

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    sub-float v2, v0, v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 300
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    sub-float v2, v0, v3

    const/high16 v0, 0x43b40000    # 360.0f

    iget v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->c:F

    mul-float/2addr v5, v6

    sub-float v3, v5, v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method protected final onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 307
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 311
    return-void
.end method
