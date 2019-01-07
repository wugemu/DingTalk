.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CSpaceSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;
    }
.end annotation


# instance fields
.field protected a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/ListView;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ProgressBar;

.field private q:I

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->i:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j:Z

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a:I

    .line 104
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->k:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d:Ljava/util/List;

    .line 116
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    .line 118
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    .line 120
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p:Landroid/widget/ProgressBar;

    .line 122
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    .line 476
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method public static a(IJLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .locals 3
    .param p0, "searchType"    # I
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "folderId"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;-><init>()V

    .line 134
    .local v1, "searchFragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_search_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    const-string/jumbo v2, "space_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v2, "space_category_current_folderId"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/util/List;ZZ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 65
    .line 3434
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3437
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    if-nez v0, :cond_0

    .line 3438
    new-instance v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    .line 3439
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3441
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    .line 4069
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->a:Ljava/lang/String;

    .line 3443
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;ZILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->g:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->f:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    return-object v0
.end method

.method private c()V
    .locals 18

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    .line 333
    .local v5, "keyword":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->k:Ljava/lang/String;

    .line 335
    .local v12, "loadMoreId":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(ZILjava/lang/String;)V

    .line 336
    new-instance v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v12}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v4, "listener":Lcma;, "Lcma<Lghi;>;"
    const-class v2, Lcma;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "listener":Lcma;, "Lcma<Lghi;>;"
    check-cast v4, Lcma;

    .line 429
    .restart local v4    # "listener":Lcma;, "Lcma<Lghi;>;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(ZILjava/lang/String;)V

    .line 430
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->q:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->r:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->t:Ljava/lang/String;

    .line 2218
    if-eqz v4, :cond_2

    .line 2221
    const/4 v2, 0x0

    const/16 v6, 0x14

    .line 2430
    new-instance v14, Lgib;

    invoke-direct {v14}, Lgib;-><init>()V

    .line 2431
    iput-object v5, v14, Lgib;->d:Ljava/lang/String;

    .line 2432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2433
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v14, Lgib;->g:Ljava/util/List;

    .line 2435
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Lgib;->b:Ljava/lang/Integer;

    .line 2436
    const/4 v2, 0x2

    if-ne v7, v2, :cond_3

    .line 2437
    iput-object v10, v14, Lgib;->a:Ljava/lang/String;

    .line 2441
    :cond_1
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "0"

    :goto_1
    iput-object v2, v14, Lgib;->j:Ljava/lang/String;

    .line 2442
    iput-object v12, v14, Lgib;->k:Ljava/lang/String;

    move v2, v6

    .line 2443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Lgib;->f:Ljava/lang/Integer;

    .line 2222
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v6, "CSpace.RPC"

    const-string/jumbo v13, "search"

    invoke-static {v2, v6, v13}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-object v15, v3, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v2, Lgon$9;

    const/4 v6, 0x0

    const/16 v13, 0x14

    invoke-direct/range {v2 .. v13}, Lgon$9;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v14, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->searchV2(Lgib;Liyv;)V

    .line 431
    :cond_2
    return-void

    .line 2438
    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-lez v2, :cond_1

    .line 2439
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lgib;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v2, v11

    .line 2441
    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->h:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->f:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->g:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->h:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->i:I

    return v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->q:I

    return v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->r:J

    return-wide v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    .line 1306
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 311
    :goto_0
    if-nez v0, :cond_1

    .line 325
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1306
    goto :goto_0

    .line 315
    :cond_1
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->k:Ljava/lang/String;

    .line 316
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j:Z

    .line 317
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a:I

    .line 318
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;->a()V

    .line 324
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c()V

    goto :goto_1
.end method

.method public a(ZILjava/lang/String;)V
    .locals 3
    .param p1, "isShowFooter"    # Z
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 453
    :cond_0
    if-eqz p1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    packed-switch p2, :pswitch_data_0

    .line 466
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_click_to_load_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->I:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    .line 186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->m:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v1, "space_search_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->q:I

    .line 158
    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->r:J

    .line 159
    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->s:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "space_category_current_folderId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->t:Ljava/lang/String;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->q:I

    goto :goto_0
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
    .line 173
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_fragment_search_footer:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    .line 174
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    .line 175
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->p:Landroid/widget/ProgressBar;

    .line 176
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->n:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 177
    .local v0, "searchIcon":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->o:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_space_click_to_load_more:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lfzs$g;->cspace_search_fragment:I

    return v0
.end method
