.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ListAdapter;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 489
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 490
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 501
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 559
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 560
    check-cast v2, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;

    .line 561
    .local v2, "v":Lcom/alibaba/android/dingtalkim/views/DragSortItemView;
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 563
    .local v1, "oldChild":Landroid/view/View;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-interface {v3, p1, v1, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 568
    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->removeViewAt(I)V

    .line 571
    :cond_0
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->addView(Landroid/view/View;)V

    .line 584
    .end local v1    # "oldChild":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;ILandroid/view/View;Z)V

    .line 586
    return-object v2

    .line 574
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "v":Lcom/alibaba/android/dingtalkim/views/DragSortItemView;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-interface {v3, p1, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 575
    .restart local v0    # "child":Landroid/view/View;
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 576
    .restart local v2    # "v":Lcom/alibaba/android/dingtalkim/views/DragSortItemView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
