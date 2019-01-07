.class final Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;
.super Ljava/lang/Object;
.source "ActionImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhsi;

.field final synthetic b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Lhsi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iput-object p2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 558
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    instance-of v4, v4, Lhsm;

    if-eqz v4, :cond_5

    .line 560
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 561
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 562
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lhsm;

    if-eqz v4, :cond_3

    .line 563
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhsm;

    .line 1040
    iget v4, v4, Lhsm;->a:F

    .line 563
    iput v4, v5, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    .line 567
    :cond_0
    if-gez v1, :cond_1

    .line 568
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    .line 571
    :cond_1
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget v4, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    div-float/2addr v4, v8

    rem-float/2addr v4, v7

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    .line 572
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->c(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v4, v5

    .line 576
    .local v3, "nextNormalRectF2scaleRectF":F
    :goto_1
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lhsy;

    move-result-object v5

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget v6, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    check-cast v4, Lhsm;

    .line 2040
    iget v4, v4, Lhsm;->a:F

    .line 576
    sub-float v4, v6, v4

    invoke-interface {v5, v4, v3}, Lhsy;->c(FF)V

    .line 577
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v7}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lhsi;->c([Ljava/lang/Object;)V

    .line 603
    .end local v1    # "i":I
    .end local v3    # "nextNormalRectF2scaleRectF":F
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->postInvalidate()V

    .line 604
    return-void

    .line 561
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 574
    :cond_4
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->c(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v4, v5

    .restart local v3    # "nextNormalRectF2scaleRectF":F
    goto :goto_1

    .line 578
    .end local v1    # "i":I
    .end local v3    # "nextNormalRectF2scaleRectF":F
    :cond_5
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    instance-of v4, v4, Lhsn;

    if-eqz v4, :cond_6

    .line 579
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lhsv;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lhsv;

    move-result-object v5

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    check-cast v4, Lhsn;

    invoke-interface {v5, v4}, Lhsv;->a(Lhsn;)V

    goto :goto_2

    .line 580
    :cond_6
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->a:Lhsi;

    instance-of v4, v4, Lhsj;

    if-eqz v4, :cond_2

    .line 581
    const/4 v2, 0x0

    .line 583
    .local v2, "lastCropAction":Lhsj;
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_7

    .line 584
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lhsj;

    if-eqz v4, :cond_9

    .line 585
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastCropAction":Lhsj;
    check-cast v2, Lhsj;

    .line 589
    .restart local v2    # "lastCropAction":Lhsj;
    :cond_7
    if-eqz v2, :cond_a

    .line 590
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v5, v2, Lhsj;->e:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Landroid/graphics/Rect;)V

    .line 591
    iget v4, v2, Lhsj;->i:F

    div-float/2addr v4, v8

    rem-float/2addr v4, v7

    cmpl-float v4, v4, v6

    if-nez v4, :cond_8

    .line 592
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v6}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->f(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v4, v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Landroid/graphics/RectF;)V

    .line 598
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->h(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsx;

    .line 599
    .local v0, "cropActionListener":Lhsx;
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-interface {v0, v5}, Lhsx;->b(Landroid/graphics/RectF;)V

    goto :goto_5

    .line 583
    .end local v0    # "cropActionListener":Lhsx;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 595
    :cond_a
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->g(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Landroid/graphics/RectF;)V

    goto :goto_4

    .line 601
    :cond_b
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;->b:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-static {v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->i(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->a(Lhsj;)V

    goto/16 :goto_2
.end method
