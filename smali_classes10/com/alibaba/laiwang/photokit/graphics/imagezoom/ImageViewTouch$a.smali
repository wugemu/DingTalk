.class public final Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->i:Z

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 242
    .local v0, "scale":F
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(FF)F

    move-result v1

    .line 243
    .local v1, "targetScale":F
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iput v1, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->d:F

    .line 245
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(FFFF)V

    .line 246
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->invalidate()V

    .line 249
    .end local v0    # "scale":F
    .end local v1    # "targetScale":F
    :cond_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;)Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$b;

    .line 253
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->setPressed(Z)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->performLongClick()Z

    .line 271
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 259
    .local v0, "result":Z
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch$a;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->performClick()Z

    .line 260
    return v0
.end method
