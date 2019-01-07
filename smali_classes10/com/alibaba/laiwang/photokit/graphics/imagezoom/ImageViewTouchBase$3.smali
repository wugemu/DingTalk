.class final Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;FJFFFF)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->a:F

    iput-wide p3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->b:J

    iput p5, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->c:F

    iput p6, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->d:F

    iput p7, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->e:F

    iput p8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 536
    .local v12, "now":J
    iget v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->a:F

    iget-wide v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->b:J

    sub-long v2, v12, v2

    long-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 537
    .local v0, "currentMs":F
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->l:Lhbh;

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->c:F

    float-to-double v6, v6

    iget v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->a:F

    float-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lhbh;->b(DDDD)D

    move-result-wide v2

    double-to-float v10, v2

    .line 538
    .local v10, "newScale":F
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->d:F

    add-float/2addr v2, v10

    iget v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->e:F

    iget v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->f:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FFF)V

    .line 540
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 543
    :cond_0
    iget v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(F)V

    .line 547
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    invoke-virtual {v1, v11, v11}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(ZZ)V

    goto :goto_0
.end method
