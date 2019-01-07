.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceGroupListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Lfzy;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lgde;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Lyb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 114
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->p:Lyb;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->o:I

    return v0
.end method

.method public static a(I)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;
    .locals 4
    .param p0, "mode"    # I

    .prologue
    .line 55
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;-><init>()V

    .line 56
    .local v1, "groupListFragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string/jumbo v2, "org_share_visible"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lgde;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    return-object v0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "isFirstInit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 228
    .line 2051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 228
    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 244
    new-instance v0, Lfzy;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lfzy;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->e:Lfzy;

    .line 245
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->e:Lfzy;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 248
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a()V

    .line 251
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "pref_space_sort_type"

    const/4 v2, 0x3

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 274
    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)Lfzy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->e:Lfzy;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 292
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$b;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 297
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Z)V

    .line 299
    :cond_1
    return-void

    .line 294
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$a;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$a;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "groupModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;>;"
    const/4 v3, 0x0

    .line 303
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->m:Z

    if-eqz v0, :cond_2

    .line 304
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    .line 305
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 306
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Z)V

    .line 2316
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2318
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    .line 2319
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d()V

    goto :goto_0

    .line 2321
    :cond_1
    new-instance v0, Lglg;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 2322
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)V

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V

    .line 2354
    invoke-virtual {v0}, Lglg;->a()V

    .line 313
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 134
    :try_start_0
    check-cast p1, Lgde;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    .line 135
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    invoke-interface {v1}, Lgde;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "group_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c:Ljava/util/ArrayList;

    .line 104
    const-string/jumbo v1, "org_share_visible"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->m:Z

    .line 105
    const-string/jumbo v1, "space_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->o:I

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->n:I

    .line 110
    invoke-static {}, Lth;->a()Lya;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->p:Lyb;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "cspace_dentry_chooser_cancel"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 144
    sget v1, Lfzs$g;->alm_cspace_group_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d:Landroid/widget/ListView;

    .line 146
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    sget v1, Lfzs$f;->loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a:Landroid/view/View;

    .line 148
    sget v1, Lfzs$f;->no_group_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->f:Landroid/widget/RelativeLayout;

    .line 149
    sget v1, Lfzs$f;->create_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->g:Landroid/widget/Button;

    .line 150
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->g:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v1, Lfzs$f;->rl_share_not_visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->h:Landroid/widget/RelativeLayout;

    .line 160
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->m:Z

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->b(Z)V

    .line 169
    :goto_0
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 170
    sget v1, Lfzs$f;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->i:Landroid/widget/RelativeLayout;

    .line 171
    sget v1, Lfzs$f;->right_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->k:Landroid/widget/TextView;

    .line 172
    sget v1, Lfzs$f;->tv_send_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->j:Landroid/widget/TextView;

    .line 173
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_0
    return-object v0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 192
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 193
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->p:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 194
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    .line 268
    .local v0, "groupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    invoke-interface {v1, v0}, Lgde;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onResume()V

    .line 199
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->c()I

    move-result v0

    .line 200
    .local v0, "sortType":I
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->n:I

    if-eq v1, v0, :cond_0

    .line 201
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->n:I

    .line 202
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->d()V

    .line 204
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->l:Lgde;

    invoke-interface {v1}, Lgde;->c()V

    .line 1213
    :cond_0
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1215
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v1

    invoke-virtual {v1}, Lgld;->b()I

    move-result v1

    .line 1216
    if-lez v1, :cond_2

    .line 1217
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1218
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->j:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->k:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    .line 1221
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1222
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->j:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
