.class final Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CustomHorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 11
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 156
    if-nez p2, :cond_1

    .line 157
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/LinearLayoutManager;

    .line 158
    .local v6, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 159
    .local v1, "fir":I
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 161
    .local v0, "end":I
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v7, v10}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 163
    .local v3, "left":I
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getPaddingLeft()I

    move-result v4

    .line 164
    .local v4, "leftEdge":I
    sub-int v7, v3, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 165
    .local v5, "leftMagin":I
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->c(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_0

    .line 166
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->d(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_0
    if-lez v5, :cond_4

    .line 172
    iget-object v8, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .line 1227
    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1228
    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v9

    .line 1229
    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    .line 1230
    if-ge v1, v9, :cond_2

    .line 1231
    invoke-virtual {v8, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->smoothScrollToPosition(I)V

    .line 179
    .end local v0    # "end":I
    .end local v1    # "fir":I
    .end local v2    # "firstView":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "leftEdge":I
    .end local v5    # "leftMagin":I
    .end local v6    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_1
    :goto_0
    return-void

    .line 1232
    .restart local v0    # "end":I
    .restart local v1    # "fir":I
    .restart local v2    # "firstView":Landroid/view/View;
    .restart local v3    # "left":I
    .restart local v4    # "leftEdge":I
    .restart local v5    # "leftMagin":I
    .restart local v6    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    if-gt v1, v7, :cond_3

    .line 1233
    sub-int v7, v1, v9

    .line 1234
    if-ltz v7, :cond_1

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 1235
    invoke-virtual {v8, v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1236
    invoke-virtual {v8, v7, v10}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1239
    :cond_3
    invoke-virtual {v8, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->smoothScrollToPosition(I)V

    .line 1240
    const/4 v7, 0x1

    iput-boolean v7, v8, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->b:Z

    .line 1241
    iput v1, v8, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->c:I

    goto :goto_0

    .line 174
    :cond_4
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->e(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 175
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->e(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;->a(II)V

    goto :goto_0
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 184
    if-lez p2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;Z)Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;Z)Z

    goto :goto_0
.end method
