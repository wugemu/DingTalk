.class public abstract Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.super Lcom/alibaba/android/search/widget/SearchBaseFragment;
.source "BaseSearchFragment.java"


# instance fields
.field protected A:Lerw$a;

.field protected B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field protected C:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private D:Landroid/widget/TextView;

.field private E:I

.field private F:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Landroid/database/DataSetObserver;

.field protected c:Landroid/widget/ListView;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:Landroid/os/Handler;

.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Lemz;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/lang/String;

.field protected n:I

.field protected o:Lenx;

.field protected p:I

.field protected q:I

.field protected r:Landroid/view/View;

.field protected s:I

.field protected t:Landroid/widget/TextView;

.field protected u:Landroid/widget/TextView;

.field protected v:Landroid/view/View;

.field protected w:Landroid/view/View;

.field protected x:Lcom/alibaba/android/search/widget/LoadingStatView;

.field protected y:Z

.field protected z:Leqp$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;-><init>()V

    .line 80
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->e:Landroid/os/Handler;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->n:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->s:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->N:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->O:Z

    .line 134
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->E:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->N:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->F:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->F:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->M:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->E:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->N:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/BaseSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->M:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->O:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 73
    .line 5783
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->isAdded()Z

    move-result v0

    .line 73
    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    const/16 v1, 0x8

    .line 73
    .line 6644
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    if-nez v0, :cond_1

    .line 6645
    :cond_0
    :goto_0
    return-void

    .line 6648
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6649
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 563
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$7;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    sget v0, Lemt$e;->tv_keyword:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 1
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v0, p1}, Leqp$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 746
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->C:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 747
    return-void
.end method

.method protected a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V
    .locals 1
    .param p1, "clickLogModel"    # Lcom/alibaba/android/search/model/SearchClickLogModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 719
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 720
    return-void
.end method

.method public final a(Lenx;)V
    .locals 0
    .param p1, "listener"    # Lenx;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->o:Lenx;

    .line 522
    return-void
.end method

.method public final a(Leqp$a;)V
    .locals 0
    .param p1, "presenter"    # Leqp$a;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    .line 733
    return-void
.end method

.method public final a(Lerw$a;)V
    .locals 0
    .param p1, "tabPresenter"    # Lerw$a;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->A:Lerw$a;

    .line 737
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 755
    .line 5760
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    .line 5763
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    .line 5764
    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->b(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;III)V

    .line 5765
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 5766
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->C:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-interface {v0, v1}, Leqp$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 5769
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->d()V

    .line 5772
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v0, p1}, Leqp$a;->a(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method protected final a(Ljava/util/Collection;Lenj;)V
    .locals 2
    .param p2, "presenter"    # Lenj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Lenj;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 632
    .local p1, "dataList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lenj;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 192
    if-eqz p1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 198
    if-eqz p1, :cond_4

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 666
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->A:Lerw$a;

    if-eqz v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->A:Lerw$a;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v4

    invoke-interface {v3, v4}, Lerw$a;->c(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 671
    :cond_0
    const-string/jumbo v3, "search_more_click_type"

    const-string/jumbo v4, "type=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v7

    invoke-static {v7}, Letd;->a(Lcom/alibaba/android/search/SearchGroupType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 675
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v3}, Leqp$a;->j()Leoe;

    move-result-object v1

    .line 676
    .local v1, "queryLog":Leoe;
    if-eqz v1, :cond_1

    .line 5084
    iget-object v3, v1, Leoe;->a:Ljava/lang/String;

    .line 677
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 5092
    iget v3, v1, Leoe;->b:I

    .line 678
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->a(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 681
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 683
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 685
    invoke-static {}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    .line 686
    .local v2, "searchGroupType":Lcom/alibaba/android/search/SearchGroupType;
    if-eqz v2, :cond_2

    .line 687
    sget-object v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment$2;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 712
    :cond_2
    :goto_0
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 713
    return-void

    .line 689
    :pswitch_0
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    goto :goto_0

    .line 692
    :pswitch_1
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    goto :goto_0

    .line 695
    :pswitch_2
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    goto :goto_0

    .line 698
    :pswitch_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    goto :goto_0

    .line 701
    :pswitch_4
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    goto :goto_0

    .line 704
    :pswitch_5
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b(Ljava/util/List;)V
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
    .line 542
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 543
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m()V

    .line 547
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 724
    return-void
.end method

.method protected final c(Ljava/util/List;)V
    .locals 8
    .param p1, "dataList"    # Ljava/util/List;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 589
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    sget v5, Lemt$e;->ll_empty_footer_network_search:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 594
    .local v1, "viewNetworkSearch":Landroid/view/View;
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    sget v5, Lemt$e;->ll_empty_hint:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 595
    .local v0, "viewEmptyHint":Landroid/view/View;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v4}, Leqp$a;->f()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v4}, Leqp$a;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 596
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 597
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 598
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 599
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 600
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 601
    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 602
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    if-eqz v4, :cond_0

    .line 608
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v5}, Leqp$a;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto :goto_0

    .line 604
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 608
    goto :goto_2

    .line 613
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 614
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 615
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 616
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 618
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    sget v3, Lemt$g;->dt_search_empty_hint_without_keyword:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 620
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    sget v5, Lemt$g;->dt_search_no_result_tips_AT2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 623
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 624
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    if-eqz v4, :cond_0

    .line 626
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v5}, Leqp$a;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {v4, v2}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 518
    :cond_0
    return-void
.end method

.method protected abstract g()Z
.end method

.method protected abstract h()Lcom/alibaba/android/search/SearchGroupType;
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    .line 814
    invoke-interface {v0}, Leqp$a;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 175
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->y:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->w:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 180
    goto :goto_1
.end method

.method protected final k()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-nez v7, :cond_2

    .line 350
    :cond_0
    const/4 v3, 0x0

    .line 384
    :cond_1
    return-object v3

    .line 353
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    invoke-virtual {v7}, Lemz;->c()Ljava/util/List;

    move-result-object v3

    .line 354
    .local v3, "negativeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-nez v3, :cond_1

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "negativeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .restart local v3    # "negativeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 358
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 359
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lemt$c;->global_search_tab_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    sub-int v5, v7, v8

    .line 362
    .local v5, "visibleHeight":I
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 364
    .local v1, "lastVisiblePos":I
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    const/16 v8, 0x9b

    if-lt v7, v8, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x428c0000    # 70.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    div-int v6, v5, v7

    .line 366
    .local v6, "visibleItems":I
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    add-int v1, v7, v6

    .line 369
    .end local v6    # "visibleItems":I
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 370
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 373
    :cond_4
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-gt v0, v7, :cond_1

    .line 374
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .line 375
    .local v2, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_5

    .line 379
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/BaseModel;->setListPosition(I)V

    .line 380
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 433
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 511
    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    return-object v0
.end method

.method public final o()Lemz;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v2, Lemt$e;->ll_search_empty_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v2, Lemt$e;->tv_empty_hint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->D:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/search/fragment/BaseSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1787
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lemt$f;->detailed_search_loading_footer:I

    invoke-static {v0, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1788
    sget v0, Lemt$e;->ll_footer_network_search:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 1789
    sget v0, Lemt$e;->feedback_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1791
    sget v0, Lemt$e;->ll_loading:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/LoadingStatView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    .line 1792
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    new-instance v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$10;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/widget/LoadingStatView;->setReloadClickListener(Landroid/view/View$OnClickListener;)V

    .line 1801
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    sget v2, Lemt$e;->empty_layout_feedback_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/search/fragment/BaseSearchFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$3;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_0
    new-instance v0, Lemz;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->p:I

    iget v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->q:I

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-direct {v0, v2, v3, v4, v5}, Lemz;-><init>(Landroid/app/Activity;IILcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->o:Lenx;

    .line 2651
    iput-object v2, v0, Lemz;->f:Lenx;

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 2681
    iput-object v2, v0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->K:Lcif;

    .line 3647
    iput-object v2, v0, Lemz;->e:Lcif;

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v0, v2}, Lemz;->a(Ljava/util/List;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->A:Lerw$a;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->A:Lerw$a;

    invoke-interface {v2}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->b(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v2

    .line 3685
    iput v2, v0, Lemz;->h:I

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/search/fragment/BaseSearchFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$4;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4388
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lemt$f;->footer_load_more:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    .line 4389
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    sget v2, Lemt$e;->ll_footer_load_more:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g:Landroid/view/View;

    .line 4390
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/search/fragment/BaseSearchFragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$6;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4397
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g:Landroid/view/View;

    sget v2, Lemt$e;->tv_search_view_more:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->t:Landroid/widget/TextView;

    .line 4399
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget v2, Lemt$g;->dt_search_result_org_count_at:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4401
    sget v2, Lemt$g;->search_text_view_more:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4402
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->u:Landroid/widget/TextView;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4407
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    sget v1, Lemt$e;->ll_footer_network_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h:Landroid/view/View;

    .line 4408
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    sget v1, Lemt$e;->view_footer_network_search_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->i:Landroid/view/View;

    .line 4409
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f:Landroid/view/View;

    sget v1, Lemt$e;->top_divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->j:Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 320
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r()V

    .line 322
    :cond_2
    return-void

    .line 289
    :cond_3
    new-instance v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;-><init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->P:Landroid/database/DataSetObserver;

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->P:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lemz;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 4402
    goto :goto_1

    .line 4404
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->t:Landroid/widget/TextView;

    sget v2, Lemt$g;->search_text_view_more:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->n:I

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_fragment_title"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->O:Z

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_recall_search_results"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->y:Z

    .line 147
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
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->extend_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->header_search_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    sget v1, Lemt$e;->layout_fuzzy_search_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->w:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->w:Landroid/view/View;

    sget v1, Lemt$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->w:Landroid/view/View;

    sget v1, Lemt$e;->top_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->v:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->u:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->O:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Z)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->extend_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->o:Lenx;

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->P:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->P:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lemz;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 344
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onDestroy()V

    .line 345
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->K:Lcif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    .line 4647
    iput-object v1, v0, Lemz;->e:Lcif;

    .line 333
    iput-object v1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->K:Lcif;

    .line 335
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onDetach()V

    .line 336
    return-void
.end method

.method protected final p()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 728
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 729
    return-void
.end method

.method public final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 805
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 326
    sget v0, Lemt$f;->fragment_base_search:I

    return v0
.end method

.method protected abstract z_()I
.end method
