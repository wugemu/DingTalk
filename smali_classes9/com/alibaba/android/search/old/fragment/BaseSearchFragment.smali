.class public abstract Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.super Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
.source "BaseSearchFragment.java"


# instance fields
.field protected c:Landroid/widget/ListView;

.field protected d:Landroid/os/Handler;

.field protected e:Landroid/view/View;

.field protected f:Lemz;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:Lenx;

.field protected k:I

.field protected l:I

.field protected m:Landroid/widget/RelativeLayout;

.field protected n:Z

.field protected o:I

.field protected p:Leoe;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;-><init>()V

    .line 59
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->d:Landroid/os/Handler;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->i:I

    .line 79
    iput-boolean v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->n:Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->o:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->x:I

    .line 99
    iput-boolean v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->u:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->x:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->v:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->v:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->w:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->u:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->x:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->w:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 53
    .line 4292
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 4293
    :cond_0
    :goto_0
    return-void

    .line 4296
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->t:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$6;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    return-void
.end method

.method public a(Lenx;)V
    .locals 0
    .param p1, "listener"    # Lenx;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    .line 286
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c()V

    goto :goto_0
.end method

.method protected final b(Ljava/util/List;)V
    .locals 4
    .param p1, "dataList"    # Ljava/util/List;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->m:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->divider_common_contact_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->divider_common_contact_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->a(I)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->m:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 282
    :cond_0
    return-void
.end method

.method protected g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract h()I
.end method

.method protected abstract i()Z
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_search_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->m:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->footer_loading_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->t:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_0
    new-instance v0, Lemz;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->k:I

    iget v3, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->l:I

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lemz;-><init>(Landroid/app/Activity;IILcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    .line 1651
    iput-object v1, v0, Lemz;->f:Lenx;

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 1681
    iput-object v1, v0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->K:Lcif;

    .line 2647
    iput-object v1, v0, Lemz;->e:Lcif;

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lemz;->a(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c()V

    .line 198
    return-void

    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->footer_load_more:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->e:Landroid/view/View;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$3;-><init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->e:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_view_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->q:Landroid/widget/TextView;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->q:Landroid/widget/TextView;

    sget v1, Lemt$g;->search_text_view_more:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->h()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->i:I

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->h:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_fragment_title"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->y:Z

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->extend_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 126
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->y:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->header_search_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->s:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->s:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->r:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    return-object v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->extend_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/ExtendedListView;

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    .line 217
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onDestroy()V

    .line 218
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    .line 3647
    iput-object v1, v0, Lemz;->e:Lcif;

    .line 209
    iput-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->K:Lcif;

    .line 211
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onDetach()V

    .line 212
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 202
    sget v0, Lemt$f;->fragment_group_conversation_search:I

    return v0
.end method
