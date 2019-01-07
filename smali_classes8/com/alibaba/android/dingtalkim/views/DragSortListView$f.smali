.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;
.super Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field private e:I

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;FI)V
    .locals 2
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 1002
    const/high16 v0, 0x3f000000    # 0.5f

    const/16 v1, 0x96

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;FI)V

    .line 1003
    return-void
.end method

.method private d()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1015
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1016
    .local v0, "first":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1017
    .local v1, "otherAdjust":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->e:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1018
    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .line 1019
    .local v2, "targetY":I
    if-eqz v3, :cond_2

    .line 1020
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->e:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->f:I

    if-ne v4, v5, :cond_0

    .line 1021
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1034
    :goto_0
    return v2

    .line 1022
    :cond_0
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->e:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->f:I

    if-ge v4, v5, :cond_1

    .line 1024
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1027
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->g(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1954
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->e:I

    .line 1008
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->f:I

    .line 1009
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;I)I

    .line 1010
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->d()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->g:F

    .line 1011
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->h:F

    .line 1012
    return-void
.end method

.method public final a(F)V
    .locals 8
    .param p1, "smoothFrac"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->d()I

    move-result v4

    .line 1040
    .local v4, "targetY":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 1041
    .local v3, "targetX":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v1, v5

    .line 1042
    .local v1, "deltaY":F
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v0, v5

    .line 1043
    .local v0, "deltaX":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, p1

    .line 1044
    .local v2, "f":F
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->g:F

    div-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->h:F

    div-float v5, v0, v5

    .line 1045
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 1046
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->g:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1047
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->h:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1048
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Z)V

    .line 1050
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V

    .line 1055
    return-void
.end method
