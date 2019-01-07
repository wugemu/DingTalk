.class public abstract Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;
.source "CSpaceListBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lgqp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lgqp;"
    }
.end annotation


# instance fields
.field protected H:I

.field protected I:Z

.field protected J:Z

.field protected K:I

.field protected final L:I

.field protected final M:I

.field protected final N:I

.field protected final O:I

.field private a:Z

.field protected f:Landroid/widget/ListView;

.field protected g:Landroid/widget/RelativeLayout;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/RelativeLayout;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/ImageView;

.field protected n:Landroid/view/ViewStub;

.field protected o:Landroid/view/View;

.field protected p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field protected q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->J:Z

    .line 79
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    .line 81
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->L:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->M:I

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->N:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->O:I

    return-void
.end method

.method private b(Z)V
    .locals 6
    .param p1, "selectAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v4

    if-nez v4, :cond_0

    .line 454
    :goto_0
    return-void

    .line 425
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->I:Z

    .line 427
    if-eqz p1, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 429
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v5

    invoke-virtual {v5, v2}, Lfzr;->c(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v5

    invoke-virtual {v5, v2}, Lfzr;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 434
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v4

    invoke-virtual {v4}, Lfzr;->a()V

    .line 437
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 438
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 444
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgkz;

    if-eqz v4, :cond_4

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgkz;

    .line 450
    .local v3, "viewHolder":Lgkz;
    iget-object v4, v3, Lgkz;->h:Landroid/widget/CheckBox;

    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 437
    .end local v3    # "viewHolder":Lgkz;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 453
    .end local v0    # "childView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method

.method private c(I)V
    .locals 2
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 485
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_3

    .line 490
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    .line 495
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0

    .line 1501
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_2

    .line 1506
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_5

    .line 1508
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_4

    .line 1509
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1511
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1

    .line 1514
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected final E_()V
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a:Z

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    goto :goto_0
.end method

.method public J_()V
    .locals 0

    .prologue
    .line 268
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v0, 0x0

    .line 88
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->a()V

    .line 89
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->c(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->e(Z)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setToolBarItemSelectListener(Lgqp;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->e()V

    .line 95
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a()V

    .line 97
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "loadType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v1, 0x1

    .line 282
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-ne p1, v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->o:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 287
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final a(Ljava/util/List;Z)V
    .locals 4
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v1

    .line 462
    .local v1, "manager":Lfzr;, "Lfzr<TT;>;"
    if-eqz v1, :cond_0

    .line 466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {v1, v0}, Lfzr;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    invoke-virtual {v1, v0}, Lfzr;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 479
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final a(ZLjava/util/List;Z)V
    .locals 3
    .param p1, "empty"    # Z
    .param p3, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    .local p2, "allData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x3

    .line 293
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->p()V

    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->g()V

    .line 315
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 300
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->a(Ljava/util/List;)V

    .line 306
    :cond_1
    if-eqz p3, :cond_2

    .line 307
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->c(I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->c(I)V

    goto :goto_0
.end method

.method public final b_(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 327
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->H:I

    if-eq v0, v2, :cond_0

    .line 341
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->H:I

    .line 342
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->H:I

    if-eq v0, v1, :cond_0

    .line 333
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->H:I

    .line 334
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->m()V

    goto :goto_0

    .line 351
    :pswitch_4
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;)V

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public abstract c()Z
.end method

.method public abstract e()V
.end method

.method public f()Lgoa;
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract g()V
.end method

.method public abstract h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v2, 0x2

    .line 382
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    if-ne v1, v2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 386
    :cond_0
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    .line 387
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v0

    .line 388
    .local v0, "adapter":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter<TT;>;"
    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->a(I)V

    .line 390
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->notifyDataSetChanged()V

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->g:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public n()Lfzr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfzr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 258
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->left_operate:I

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->o()V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a(Z)V

    .line 163
    :cond_0
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    if-ne v2, v5, :cond_1

    .line 164
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->I:Z

    if-eqz v2, :cond_2

    .line 165
    const/16 v2, 0x10

    sget v3, Lfzs$h;->space_op_uncheck_all:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 166
    .local v1, "menuItemUnSelect":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    .end local v1    # "menuItemUnSelect":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    const/16 v2, 0xf

    sget v3, Lfzs$h;->space_op_select_all:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 169
    .local v0, "menuItemSelecta":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 102
    sget v1, Lfzs$g;->alm_cspace_list:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a()V

    .line 105
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    sget v1, Lfzs$f;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->g:Landroid/widget/RelativeLayout;

    .line 109
    sget v1, Lfzs$f;->left_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h:Landroid/widget/TextView;

    .line 110
    sget v1, Lfzs$f;->right_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->i:Landroid/widget/TextView;

    .line 111
    sget v1, Lfzs$f;->no_file_guide_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->j:Landroid/widget/TextView;

    .line 112
    sget v1, Lfzs$f;->first_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->k:Landroid/widget/RelativeLayout;

    .line 114
    sget v1, Lfzs$f;->guide_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->l:Landroid/widget/TextView;

    .line 115
    sget v1, Lfzs$f;->guide_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->m:Landroid/widget/ImageView;

    .line 116
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n:Landroid/view/ViewStub;

    .line 117
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 124
    sget v1, Lfzs$f;->swipe_layout_mail_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 125
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v2, v5

    const/4 v3, 0x2

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 127
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 134
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a:Z

    .line 136
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->t:Z

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 152
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 145
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->setHasOptionsMenu(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->J_()V

    .line 150
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 194
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-ne p2, v3, :cond_1

    .line 195
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "itemData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 205
    move-object v1, v0

    .line 207
    .local v1, "temp":Ljava/lang/Object;, "TT;"
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgkz;

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgkz;

    .line 214
    .local v2, "tempViewHolder":Lgkz;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfzr;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, v2, Lgkz;->h:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfzr;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v3, v2, Lgkz;->h:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfzr;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    .end local v2    # "tempViewHolder":Lgkz;
    :cond_3
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    if-ne v3, v5, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v0, 0x1

    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 414
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 403
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->b(Z)V

    goto :goto_0

    .line 406
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->b(Z)V

    goto :goto_0

    .line 409
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 242
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(Landroid/widget/ListView;I)V

    .line 243
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    packed-switch p2, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 279
    return-void
.end method

.method protected final q()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v2, 0x1

    .line 364
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    if-ne v1, v2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 368
    :cond_0
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    .line 369
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v0

    .line 370
    .local v0, "adapter":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter<TT;>;"
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->a(I)V

    .line 372
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->notifyDataSetChanged()V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final r()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    const/4 v0, 0x1

    .line 525
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 526
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    .line 527
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->a(I)V

    .line 528
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->notifyDataSetChanged()V

    .line 529
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 530
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 531
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->n()Lfzr;

    move-result-object v1

    invoke-virtual {v1}, Lfzr;->a()V

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 539
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;, "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment<TT;>;"
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->K:I

    return v0
.end method
