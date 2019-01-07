.class public Lcom/alibaba/android/dingtalkim/views/DragSortItemView;
.super Landroid/view/ViewGroup;
.source "DragSortItemView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x30

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->a:I

    .line 27
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->a:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->a:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getMeasuredHeight()I

    move-result v3

    .line 54
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 66
    .local v1, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 68
    .local v4, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 70
    .local v2, "heightMode":I
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0, v6, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->setMeasuredDimension(II)V

    .line 93
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 78
    invoke-virtual {p0, v0, p1, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->measureChild(Landroid/view/View;II)V

    .line 82
    :cond_1
    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 85
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_3

    .line 86
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 88
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->a:I

    .line 36
    return-void
.end method
