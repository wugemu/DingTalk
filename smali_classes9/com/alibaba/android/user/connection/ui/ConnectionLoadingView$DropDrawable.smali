.class Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ConnectionLoadingView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropDrawable"
.end annotation


# instance fields
.field private mBounceInterpolator:Landroid/view/animation/BounceInterpolator;

.field private mDropProcess:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 197
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mBounceInterpolator:Landroid/view/animation/BounceInterpolator;

    .line 199
    iput v1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPullDistance:F

    .line 200
    iput v1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mDropProcess:F

    .line 203
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 221
    iget-object v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_0

    .line 222
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    .line 223
    iget-object v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b()F

    move-result v7

    div-float v5, v7, v9

    .line 229
    .local v5, "r":F
    invoke-static {}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b()F

    move-result v7

    div-float v3, v7, v9

    .line 230
    .local v3, "px":F
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-static {}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c()F

    move-result v8

    sub-float v1, v7, v8

    .line 231
    .local v1, "defaultPy":F
    iget v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPullDistance:F

    sub-float v7, v1, v7

    iget-object v8, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mBounceInterpolator:Landroid/view/animation/BounceInterpolator;

    iget v9, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mDropProcess:F

    invoke-virtual {v8, v9}, Landroid/view/animation/BounceInterpolator;->getInterpolation(F)F

    move-result v8

    iget v9, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPullDistance:F

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    .line 232
    .local v4, "py":F
    sub-float v6, v1, v4

    .line 233
    .local v6, "realDistance":F
    const v7, 0x3f19999a    # 0.6f

    mul-float v2, v6, v7

    .line 234
    .local v2, "ovalLongR":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 235
    iget-object v7, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    invoke-static {}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b()F

    move-result v7

    invoke-virtual {p1, v11, v4, v7, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 239
    new-instance v7, Landroid/graphics/RectF;

    sub-float v8, v4, v2

    invoke-static {}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b()F

    move-result v9

    add-float v10, v4, v2

    invoke-direct {v7, v11, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 244
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 247
    return-void
.end method

.method public setDropProcess(F)V
    .locals 0
    .param p1, "process"    # F

    .prologue
    .line 216
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mDropProcess:F

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->invalidateSelf()V

    .line 218
    return-void
.end method

.method public setPullDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 206
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 207
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPullDistance:F

    .line 211
    :goto_0
    iput v1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mDropProcess:F

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->invalidateSelf()V

    .line 213
    return-void

    .line 209
    :cond_0
    iput v1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->mPullDistance:F

    goto :goto_0
.end method