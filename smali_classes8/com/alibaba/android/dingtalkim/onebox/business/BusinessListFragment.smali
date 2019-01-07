.class public Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
.super Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;
.source "BusinessListFragment.java"


# instance fields
.field protected b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:Ldvq;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->m:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->b:Z

    .line 62
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->n:J

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->o:Ljava/util/List;

    .line 66
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->j:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->m:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    .line 2233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->i:Ldvq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->i:Ldvq;

    invoke-virtual {v0}, Ldvq;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a:Ldbx;

    if-eqz v0, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a:Ldbx;

    invoke-interface {v0, v2}, Ldbx;->a(I)V

    .line 48
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 12
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    new-instance v6, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;-><init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Z)V

    .line 228
    .local v6, "listener":Lcma;, "Lcma<Ldqn;>;"
    const-class v0, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ldqn;>;"
    check-cast v6, Lcma;

    .line 229
    .restart local v6    # "listener":Lcma;, "Lcma<Ldqn;>;"
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->o:Ljava/util/List;

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->p:J

    iget-wide v10, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->n:J

    .line 2208
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 2210
    new-instance v5, Ldyi$11;

    invoke-direct {v5, v2, v6}, Ldyi$11;-><init>(Ldyi;Lcma;)V

    .line 2217
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->getBusinessItemsByOpenIds(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 230
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->k:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->k:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->l:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->j:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->m:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->l:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldvq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->i:Ldvq;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldbx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a:Ldbx;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldbx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a:Ldbx;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string/jumbo v2, "conversation_total_members_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "openIdTotalNum":I
    iget v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    if-le v0, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->d:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_externalcontact_orgs_over_limit_AT:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 109
    const-string/jumbo v2, "uid_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    invoke-static {v2}, Lcob;->a([J)Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v1, :cond_2

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_2
    const-string/jumbo v2, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->p:J

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    if-le v2, v3, :cond_3

    .line 118
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->d:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_externalcontact_orgs_over_limit_AT:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->g:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_contact_business_total_des_at2:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "0"

    aput-object v5, v4, v6

    const-string/jumbo v5, "0"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Z)V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "ext_org_contact_count"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 81
    iput v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    .line 83
    iget v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    if-gtz v1, :cond_1

    .line 84
    const/16 v1, 0x32

    iput v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->q:I

    .line 2130
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->I:Landroid/view/View;

    sget v2, Lctk$f;->ll_empty_not_support:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->c:Landroid/view/View;

    .line 2131
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->I:Landroid/view/View;

    sget v2, Lctk$f;->tv_empty_des:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->d:Landroid/widget/TextView;

    .line 2132
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->I:Landroid/view/View;

    sget v2, Lctk$f;->ll_business:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f:Landroid/view/View;

    .line 2133
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->I:Landroid/view/View;

    sget v2, Lctk$f;->tv_total_des:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->g:Landroid/widget/TextView;

    .line 2134
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->I:Landroid/view/View;

    sget v2, Lctk$f;->list_business:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->h:Landroid/widget/ListView;

    .line 2135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->footer_loading_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e:Landroid/view/View;

    .line 2136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2137
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    new-instance v1, Ldvq;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Ldvq;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->i:Ldvq;

    .line 2139
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->i:Ldvq;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2140
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2141
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->h:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lctk$g;->activity_business_list_all:I

    return v0
.end method
