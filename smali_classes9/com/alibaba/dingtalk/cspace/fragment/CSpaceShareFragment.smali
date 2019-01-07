.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceShareFragment.java"

# interfaces
.implements Lgac$a;
.implements Lgqp;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

.field private g:J

.field private h:I

.field private i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lgac;

.field private l:Z

.field private m:J

.field private n:Z

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lgdh;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->p:Ljava/util/List;

    return-void
.end method

.method public static a(JI)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;
    .locals 4
    .param p0, "orgId"    # J
    .param p2, "mode"    # I

    .prologue
    .line 100
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;-><init>()V

    .line 101
    .local v1, "shareFragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    const-string/jumbo v2, "space_mode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lgac;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lgdh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->q:Lgdh;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(I)V
    .locals 2
    .param p1, "sortType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 543
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    if-eq v0, p1, :cond_0

    .line 544
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    .line 545
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    .line 6094
    iput v1, v0, Lgac;->j:I

    .line 6095
    iget-object v1, v0, Lgac;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgac;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6096
    invoke-virtual {v0}, Lgac;->notifyDataSetChanged()V

    .line 549
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .prologue
    .line 70
    .line 6365
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 6366
    :cond_0
    :goto_0
    return-void

    .line 6368
    :cond_1
    new-instance v0, Lglg;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->p:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V

    .line 6404
    invoke-virtual {v0}, Lglg;->a()V

    goto :goto_0
.end method

.method private d()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x3

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "pref_space_sort_type"

    const/4 v2, 0x1

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 219
    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method private e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    .line 259
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lfzu;->b(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->m:J

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 265
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 266
    invoke-static {}, Lgpz;->a()Lgpz;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Lgpz;->b(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->l:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->m:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v2, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 279
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->p:Ljava/util/List;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_4
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->l:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->m:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v2, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 271
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    invoke-static {v2, v4, v5}, Lfzu;->a(Landroid/content/Context;J)V

    goto :goto_1

    .line 274
    :cond_6
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->l:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    :cond_7
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->m:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 275
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v2, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 277
    :cond_8
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_9
    new-instance v1, Lgac;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lgac;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    .line 285
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    .line 2090
    iput v2, v1, Lgac;->j:I

    .line 286
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->p:Ljava/util/List;

    .line 2157
    iput-object v2, v1, Lgac;->k:Ljava/util/List;

    .line 287
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 2651
    iput-object v2, v1, Lgac;->i:Landroid/app/Activity;

    .line 288
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    .line 3635
    iput-object p0, v1, Lgac;->a:Lgac$a;

    .line 289
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    .line 3643
    iput-wide v2, v1, Lgac;->g:J

    .line 290
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->l:Z

    .line 4639
    iput-boolean v2, v1, Lgac;->f:Z

    .line 291
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    .line 4647
    iput v2, v1, Lgac;->h:I

    .line 292
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.share.list"

    invoke-static {v1, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f()V

    .line 297
    return-void
.end method

.method private f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 334
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, "ordIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 337
    .local v0, "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v0    # "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$3;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V

    const-class v5, Lcma;

    .line 358
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 340
    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 360
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v3, v2, v4, v1}, Lgpr;->a(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcma;)V

    .line 362
    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v2    # "ordIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected final E_()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->E_()V

    .line 303
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->s:Z

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->e()V

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 319
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 321
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v1

    invoke-virtual {v1}, Lgld;->b()I

    move-result v0

    .line 322
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->d:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 331
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 327
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/Long;Lcem;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "conversationOwnerId"    # Ljava/lang/Long;
    .param p5, "orgConversationModel"    # Lcem;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->q:Lgdh;

    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->q:Lgdh;

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-interface/range {v1 .. v6}, Lgdh;->a(JLjava/lang/String;Lcem;I)V

    .line 419
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->q:Lgdh;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->q:Lgdh;

    invoke-interface {v0, p1, p2, p3, p4}, Lgdh;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->a(Landroid/os/Message;)V

    .line 475
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 477
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 478
    .local v2, "orgId":J
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 480
    .local v0, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 481
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 482
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->j:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 483
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->k:Lgac;

    invoke-virtual {v1}, Lgac;->notifyDataSetChanged()V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 1
    .param p1, "tvSafeFlag"    # Landroid/widget/TextView;
    .param p2, "isReadOnly"    # Z
    .param p3, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 447
    if-nez p1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 453
    if-eqz p2, :cond_0

    .line 457
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 459
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    sget v0, Lfzs$h;->dt_cspace_acl_safe:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 463
    :cond_2
    sget v0, Lfzs$h;->dt_space_auth_read_only:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a_(I)V
    .locals 2
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 469
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 470
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b_(I)V
    .locals 5
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 515
    :sswitch_0
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    if-eq v1, v4, :cond_0

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 519
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_addbutton_reorder_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "pref_space_sort_type"

    invoke-static {v1, v2, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 524
    invoke-direct {p0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->c(I)V

    goto :goto_0

    .line 501
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    if-eq v1, v3, :cond_0

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 506
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_addbutton_reorder_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 510
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "pref_space_sort_type"

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 512
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->c(I)V

    goto :goto_0

    .line 527
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_addbutton_folder_create_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/space/sharecreate.html"

    .line 531
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$5;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V

    .line 529
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 241
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b()V

    .line 247
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a()V

    .line 251
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->t:Z

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->e()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgdh;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lgdh;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->q:Lgdh;

    .line 173
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 118
    const-string/jumbo v1, "space_org_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "space_org_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    .line 121
    :cond_0
    const-string/jumbo v1, "space_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    .line 124
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->g:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 125
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->l:Z

    .line 128
    :cond_3
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.share.list"

    invoke-static {v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->r:Landroid/content/BroadcastReceiver;

    .line 1160
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1161
    const-string/jumbo v2, "com.alibaba.dingtalk.space.share.create"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    const-string/jumbo v2, "com.alibaba.dingtalk.space.share.delete"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v2, "com.alibaba.dingtalk.space.share.updatetitle"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 132
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 183
    sget v1, Lfzs$g;->alm_cspace_share:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->b:Landroid/widget/ListView;

    .line 185
    sget v1, Lfzs$f;->space_tool_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    .line 187
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 188
    sget v1, Lfzs$f;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->c:Landroid/widget/RelativeLayout;

    .line 189
    sget v1, Lfzs$f;->right_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->e:Landroid/widget/TextView;

    .line 190
    sget v1, Lfzs$f;->tv_send_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->d:Landroid/widget/TextView;

    .line 191
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->n:Z

    .line 211
    return-object v0

    .line 204
    :cond_1
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->h:I

    if-ne v1, v2, :cond_0

    .line 205
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setVisibility(I)V

    .line 206
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->d()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    .line 207
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setToolBarItemSelectListener(Lgqp;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 207
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onResume()V

    .line 6051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 5224
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a()V

    .line 316
    return-void

    .line 5227
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->d()I

    move-result v1

    .line 5228
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    if-eq v1, v2, :cond_0

    .line 5230
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->c(I)V

    .line 5231
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->f:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->o:I

    if-ne v2, v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    goto :goto_0
.end method
