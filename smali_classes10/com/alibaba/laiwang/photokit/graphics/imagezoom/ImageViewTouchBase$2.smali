.class final Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:D

.field b:D

.field final synthetic c:D

.field final synthetic d:J

.field final synthetic e:D

.field final synthetic f:D

.field final synthetic g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;DJDD)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    .prologue
    const-wide/16 v0, 0x0

    .line 493
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iput-wide p2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->c:D

    iput-wide p4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->d:J

    iput-wide p6, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->e:D

    iput-wide p8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-wide v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->a:D

    .line 496
    iput-wide v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->b:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 501
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->c:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->d:J

    sub-long v10, v14, v10

    long-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 502
    .local v6, "currentMs":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->l:Lhbh;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->e:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->c:D

    invoke-interface/range {v5 .. v13}, Lhbh;->a(DDDD)D

    move-result-wide v16

    .line 503
    .local v16, "x":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->l:Lhbh;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->f:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->c:D

    invoke-interface/range {v5 .. v13}, Lhbh;->a(DDDD)D

    move-result-wide v18

    .line 504
    .local v18, "y":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->a:D

    sub-double v8, v16, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->b:D

    sub-double v10, v18, v10

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(DD)V

    .line 505
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->a:D

    .line 506
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->b:D

    .line 507
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->c:D

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v8, v8, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v4

    .line 511
    .local v4, "centerRect":Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;->g:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->c(FF)V

    goto :goto_0
.end method
