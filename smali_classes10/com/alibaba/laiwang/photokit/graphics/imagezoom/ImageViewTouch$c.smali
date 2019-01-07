.class public final Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    .line 299
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget v2, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float v0, v2, v3

    .line 300
    .local v0, "targetScale":F
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->j:Z

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 302
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(FFF)V

    .line 303
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v3

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    .line 304
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iput v1, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->f:I

    .line 305
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$c;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->invalidate()V

    .line 308
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
