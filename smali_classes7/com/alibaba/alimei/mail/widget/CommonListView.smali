.class public Lcom/alibaba/alimei/mail/widget/CommonListView;
.super Landroid/widget/FrameLayout;
.source "CommonListView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$b;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/CommonListView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ListView;

.field public b:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public c:Landroid/view/View;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

.field private g:Lcom/alibaba/alimei/mail/widget/CommonListView$a;

.field private h:I

.field private i:I

.field private j:Landroid/widget/AbsListView$OnScrollListener;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->d()V

    .line 118
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->e()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->d()V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->e()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->d()V

    .line 132
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->e()V

    .line 133
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    sget v1, Laxo$g;->base_common_listview:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "root":Landroid/view/View;
    sget v1, Laxo$f;->listview:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    .line 138
    sget v1, Laxo$f;->refresh_layout:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 139
    sget v1, Laxo$f;->progressContainer:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->c:Landroid/view/View;

    .line 140
    sget v1, Laxo$f;->progress_text:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->e:Landroid/widget/TextView;

    .line 141
    sget v1, Laxo$f;->list_empty_view:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 143
    new-instance v1, Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    .line 144
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->addView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 154
    return-void
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 159
    return-void

    .line 157
    nop

    :array_0
    .array-data 4
        0x106001b
        0x1060014
        0x1060018
        0x1060016
    .end array-data
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    .line 393
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->g:Lcom/alibaba/alimei/mail/widget/CommonListView$a;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->g:Lcom/alibaba/alimei/mail/widget/CommonListView$a;

    invoke-interface {v0}, Lcom/alibaba/alimei/mail/widget/CommonListView$a;->j_()V

    goto :goto_0

    .line 2334
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setVisibility(I)V

    .line 2409
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->g:Lcom/alibaba/alimei/mail/widget/CommonListView$a;

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->setEnabled(Z)V

    .line 340
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->setFootViewVisible(Z)V

    .line 341
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 419
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 422
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 366
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 431
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 434
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getFootViewsCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    if-ne v0, p1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->f()V

    .line 272
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 236
    iput p2, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->k:I

    .line 238
    iput p2, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->h:I

    .line 239
    iput p3, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->i:I

    .line 241
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 244
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 196
    :cond_0
    if-nez p2, :cond_1

    .line 197
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    if-nez v0, :cond_2

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->h:I

    iget v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->i:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->f()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    return-void
.end method

.method public setCommonListener(Lcom/alibaba/alimei/mail/widget/CommonListView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/mail/widget/CommonListView$a;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->g:Lcom/alibaba/alimei/mail/widget/CommonListView$a;

    .line 280
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    .line 168
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 314
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 318
    return-void
.end method

.method public setFootViewVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, p1}, Lss;->a(Landroid/view/View;Z)V

    .line 326
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->f:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 327
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 292
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 296
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->j:Landroid/widget/AbsListView$OnScrollListener;

    .line 288
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "overScrollMode"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelector(I)V

    .line 306
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CommonListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method
