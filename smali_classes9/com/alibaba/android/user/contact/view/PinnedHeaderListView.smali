.class public Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$a;,
        Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

.field private c:Landroid/view/View;

.field private d:I

.field private e:F

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 55
    iput v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->d:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->f:Z

    .line 58
    iput v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->g:I

    .line 64
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->d:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->f:Z

    .line 58
    iput v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->g:I

    .line 69
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->d:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->f:Z

    .line 58
    iput v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->g:I

    .line 74
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 75
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6
    .param p1, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->h:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 164
    .local v2, "widthSpec":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 165
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 166
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 170
    .local v0, "heightSpec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 173
    .end local v0    # "heightSpec":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthSpec":I
    :cond_0
    return-void

    .line 168
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "widthSpec":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "heightSpec":I
    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 181
    .local v0, "saveCount":I
    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->h:I

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->i:I

    .line 201
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 95
    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_0

    .line 96
    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 100
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    invoke-interface {v7}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;->getCount()I

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->f:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v7

    if-ge p2, v7, :cond_3

    .line 101
    :cond_1
    iput-object v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    .line 102
    iput v10, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->e:F

    .line 103
    add-int v3, p2, p3

    .line 104
    .local v3, "lastVisibleItem":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 105
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "header":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "lastVisibleItem":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr p2, v7

    .line 115
    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    invoke-interface {v7, p2}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;->a(I)I

    move-result v5

    .line 117
    .local v5, "section":I
    iget v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->d:I

    if-eqz v7, :cond_7

    .line 1148
    :goto_1
    iget v7, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->g:I

    if-ne v5, v7, :cond_4

    if-nez v6, :cond_8

    :cond_4
    const/4 v7, 0x1

    .line 1150
    :goto_2
    iget-object v9, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    invoke-interface {v9, v5, v6}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 1151
    if-eqz v7, :cond_5

    .line 1153
    invoke-direct {p0, v6}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a(Landroid/view/View;)V

    .line 1154
    iput v5, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->g:I

    .line 117
    :cond_5
    iput-object v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    .line 118
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a(Landroid/view/View;)V

    .line 119
    iput v8, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->d:I

    .line 121
    iput v10, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->e:F

    .line 122
    add-int v3, p2, p3

    .line 123
    .restart local v3    # "lastVisibleItem":I
    move v2, p2

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v3, :cond_a

    .line 124
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    invoke-interface {v6, v2}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;->b(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 125
    sub-int v6, v2, p2

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .restart local v0    # "header":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v1, v6

    .line 127
    .local v1, "headerTop":F
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v4, v6

    .line 128
    .local v4, "pinnedHeaderHeight":F
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 129
    cmpl-float v6, v4, v1

    if-ltz v6, :cond_9

    cmpl-float v6, v1, v10

    if-lez v6, :cond_9

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    iput v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->e:F

    .line 123
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "headerTop":F
    .end local v4    # "pinnedHeaderHeight":F
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    .end local v2    # "i":I
    .end local v3    # "lastVisibleItem":I
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    goto :goto_1

    :cond_8
    move v7, v8

    .line 1148
    goto :goto_2

    .line 131
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "headerTop":F
    .restart local v2    # "i":I
    .restart local v3    # "lastVisibleItem":I
    .restart local v4    # "pinnedHeaderHeight":F
    :cond_9
    cmpg-float v6, v1, v10

    if-gtz v6, :cond_6

    .line 132
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 137
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "headerTop":F
    .end local v4    # "pinnedHeaderHeight":F
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->invalidate()V

    .line 138
    .end local v5    # "section":I
    :cond_b
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 145
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->c:Landroid/view/View;

    .line 84
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    instance-of v0, p1, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->b:Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$a;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 193
    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0
    .param p1, "shouldPin"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/view/PinnedHeaderListView;->f:Z

    .line 79
    return-void
.end method
