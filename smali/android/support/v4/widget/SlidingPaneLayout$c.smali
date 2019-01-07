.class final Landroid/support/v4/widget/SlidingPaneLayout$c;
.super Lhu$a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lhu$a;-><init>()V

    .line 1286
    return-void
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1352
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1355
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1356
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 1357
    invoke-virtual {v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    iget v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 1358
    .local v3, "startBound":I
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    sub-int v0, v3, v4

    .line 1359
    .local v0, "endBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1365
    .local v2, "newLeft":I
    :goto_0
    return v2

    .line 1361
    .end local v0    # "endBound":I
    .end local v2    # "newLeft":I
    .end local v3    # "startBound":I
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v4, v5

    .line 1362
    .restart local v3    # "startBound":I
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    add-int v0, v3, v4

    .line 1363
    .restart local v0    # "endBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "newLeft":I
    goto :goto_0
.end method

.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    return v0
.end method

.method public final onEdgeDragStarted(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1377
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lhu;->a(Landroid/view/View;I)V

    .line 1378
    return-void
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()V

    .line 1315
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x20

    .line 1299
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    .line 1423
    iget v0, v0, Lhu;->a:I

    .line 1299
    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1301
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V

    .line 1302
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    .line 2348
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 1303
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    .line 3341
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 1306
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:Z

    goto :goto_0
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1319
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 3941
    iget-object v0, v3, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3943
    const/4 v0, 0x0

    iput v0, v3, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    .line 1320
    .end local p2    # "left":I
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    .line 1321
    return-void

    .line 3946
    .restart local p2    # "left":I
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v4

    .line 3947
    iget-object v0, v3, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 3949
    iget-object v1, v3, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3950
    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    sub-int p2, v2, v1

    .line 3952
    .end local p2    # "left":I
    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    move v2, v1

    .line 3953
    :goto_1
    if-eqz v4, :cond_5

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 3954
    :goto_2
    add-int/2addr v1, v2

    .line 3956
    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, v3, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v3, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    .line 3958
    iget v1, v3, Landroid/support/v4/widget/SlidingPaneLayout;->f:I

    if-eqz v1, :cond_3

    .line 3959
    iget v1, v3, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)V

    .line 3962
    :cond_3
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v0, :cond_0

    .line 3963
    iget-object v0, v3, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    iget v1, v3, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    iget v2, v3, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_0

    .line 3952
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    move v2, v1

    goto :goto_1

    .line 3953
    :cond_5
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1325
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1328
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1329
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    iget v5, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 1330
    .local v3, "startToRight":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 1331
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    add-int/2addr v3, v4

    .line 1333
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1334
    .local v0, "childWidth":I
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int v1, v4, v0

    .line 1341
    .end local v0    # "childWidth":I
    .end local v3    # "startToRight":I
    .local v1, "left":I
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->g:Lhu;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lhu;->a(II)Z

    .line 1342
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    .line 1343
    return-void

    .line 1336
    .end local v1    # "left":I
    :cond_3
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v1, v4, v5

    .line 1337
    .restart local v1    # "left":I
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_4

    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->c:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 1338
    :cond_4
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->d:I

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 1290
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->e:Z

    if-eqz v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    goto :goto_0
.end method
