.class final Landroid/support/v4/widget/DrawerLayout$d;
.super Lhu$a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:I

.field b:Lhu;

.field final synthetic c:Landroid/support/v4/widget/DrawerLayout;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p2, "gravity"    # I

    .prologue
    .line 2055
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Lhu$a;-><init>()V

    .line 2049
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$d$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$d$1;-><init>(Landroid/support/v4/widget/DrawerLayout$d;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->d:Ljava/lang/Runnable;

    .line 2056
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:I

    .line 2057
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2064
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2065
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v0, 0x3

    .line 2106
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x5

    .line 2107
    .local v0, "otherGrav":I
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v1

    .line 2108
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2109
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 2650
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 2111
    :cond_1
    return-void
.end method

.method public final clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 2197
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2198
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2201
    :goto_0
    return v1

    .line 2200
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2201
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 2207
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2192
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onEdgeDragStarted(II)V
    .locals 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 2179
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2180
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 2185
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2186
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:Lhu;

    invoke-virtual {v1, v0, p2}, Lhu;->a(Landroid/view/View;I)V

    .line 2188
    :cond_0
    return-void

    .line 2182
    .end local v0    # "toCapture":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public final onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .prologue
    .line 2173
    const/4 v0, 0x0

    return v0
.end method

.method public final onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 2134
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2135
    return-void
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 2100
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    .line 2102
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout$d;->b()V

    .line 2103
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:Lhu;

    .line 2477
    iget-object v1, v1, Lhu;->j:Landroid/view/View;

    .line 2077
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V

    .line 2078
    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 2083
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2086
    .local v0, "childWidth":I
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2087
    add-int v3, v0, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 2092
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 2093
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2094
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2095
    return-void

    .line 2089
    .end local v1    # "offset":F
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 2090
    .local v2, "width":I
    sub-int v3, v2, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1    # "offset":F
    goto :goto_0

    .line 2093
    .end local v2    # "width":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 2117
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)F

    move-result v2

    .line 2118
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2121
    .local v0, "childWidth":I
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2122
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    cmpl-float v4, v2, v7

    if-lez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2128
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->b:Lhu;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lhu;->a(II)Z

    .line 2129
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2130
    return-void

    .line 2122
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    goto :goto_0

    .line 2124
    :cond_2
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    .line 2125
    .local v3, "width":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_3

    cmpl-float v4, p2, v6

    if-nez v4, :cond_4

    cmpl-float v4, v2, v7

    if-lez v4, :cond_4

    :cond_3
    sub-int v1, v3, v0

    .restart local v1    # "left":I
    :goto_1
    goto :goto_0

    .end local v1    # "left":I
    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 2071
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$d;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$d;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 2072
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
