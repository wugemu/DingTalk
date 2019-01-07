.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:Landroid/view/View;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

.field private D:Z

.field private E:Z

.field private F:Ltl;

.field private G:Ljava/lang/String;

.field private H:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field private I:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private K:Z

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/lang/String;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/lang/String;

.field private Q:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

.field a:Landroid/os/Handler;

.field b:Lxm;

.field c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Lfzz$b;

.field e:Landroid/widget/AdapterView$OnItemClickListener;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:I

.field private q:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ltl;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lgaa;

.field private s:Lfzz;

.field private t:Landroid/widget/ListView;

.field private u:Landroid/view/ViewStub;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/GridView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->p:I

    .line 346
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    .line 510
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b:Lxm;

    .line 592
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c:Lcma;

    .line 654
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->d:Lfzz$b;

    .line 848
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->e:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->p:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->I:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ltl;)Ltl;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ltl;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->F:Ltl;

    return-object p1
.end method

.method private a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/16 v3, 0x14

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->E:Z

    .line 231
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->G:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->e()Lcma;

    move-result-object v5

    .line 2509
    invoke-static {v2, v6, v7, v3, v8}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lghk;

    move-result-object v4

    .line 2511
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v9, "CSpace.RPC"

    const-string/jumbo v10, "listFiles"

    invoke-static {v0, v9, v10}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    new-instance v0, Lgon$62;

    invoke-direct/range {v0 .. v8}, Lgon$62;-><init>(Lgon;Ljava/lang/String;Ljava/lang/String;Lghk;Lcma;Ljava/lang/String;ILjava/lang/String;)V

    .line 2534
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v4, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listFiles(Lghk;Liyv;)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v6, "searchOrgParam":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->p:I

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->e()Lcma;

    move-result-object v4

    .line 3456
    new-instance v7, Lgia;

    invoke-direct {v7}, Lgia;-><init>()V

    .line 3457
    iput-object v6, v7, Lgia;->a:Ljava/util/List;

    .line 3458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3459
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3460
    iput-object v0, v7, Lgia;->b:Ljava/util/List;

    .line 3461
    iput v2, v7, Lgia;->d:I

    .line 3462
    iput v3, v7, Lgia;->e:I

    .line 3463
    iget v0, v7, Lgia;->d:I

    if-gez v0, :cond_1

    .line 3464
    const/4 v0, 0x0

    iput v0, v7, Lgia;->d:I

    .line 3466
    :cond_1
    iget v0, v7, Lgia;->e:I

    if-gez v0, :cond_2

    .line 3467
    iput v3, v7, Lgia;->e:I

    .line 3374
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v8, "CSpace.RPC"

    const-string/jumbo v9, "searchDentryByCategory"

    invoke-static {v0, v8, v9}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    iget-object v8, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$11;

    invoke-direct/range {v0 .. v6}, Lgon$11;-><init>(Lgon;IILcma;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v8, v7, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->searchByTypes(Lgia;Liyv;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZ)V
    .locals 9
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "fromConversation"    # Z
    .param p3, "spaceType"    # I
    .param p4, "isAdmin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 921
    if-nez p1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    invoke-static {p2, p3}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v4

    .line 926
    .local v4, "from":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 927
    .local v8, "resId":I
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lfzs$e;->file_pic_36:I

    if-ne v8, v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->showLoadingDialog()V

    .line 930
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;

    invoke-direct {v1, p0, p1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 967
    :cond_2
    const/4 v3, 0x0

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->o:J

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v5, p3

    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLcma;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZI)V
    .locals 12
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isCreator"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "orgId"    # J
    .param p6, "fromConversation"    # Z
    .param p7, "spaceType"    # I

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-eqz v0, :cond_1

    .line 793
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h:Ljava/lang/String;

    .line 798
    .local v10, "spaceId":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3748
    if-eqz p1, :cond_0

    .line 3751
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3752
    sget v0, Lfzs$h;->network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3753
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceCategoryActivity"

    const-string/jumbo v2, "SpaceCategoryActivity.showOperationMenuForAliFiles: network disconnected"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_0
    :goto_1
    return-void

    .line 795
    .end local v10    # "spaceId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "spaceId":Ljava/lang/String;
    goto :goto_0

    .line 3756
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->Q:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    if-nez v0, :cond_3

    .line 3757
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->Q:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    .line 3759
    :cond_3
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$13;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V

    .line 3786
    const-class v0, Lcma;

    invoke-static {v1, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3787
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->Q:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 801
    invoke-direct/range {v2 .. v10}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V
    .locals 10
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isCreator"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "orgId"    # J
    .param p6, "fromConversation"    # Z
    .param p7, "spaceType"    # I
    .param p8, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 806
    if-eqz p1, :cond_0

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    new-instance v0, Lgmd;

    const/4 v2, 0x1

    move/from16 v1, p7

    move v3, p3

    move v4, p2

    move-object/from16 v5, p8

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lgmd;-><init>(IIZZLjava/lang/String;JZ)V

    .line 4105
    .local v0, "operationController":Lgmd;
    iput-object p1, v0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5101
    iput-object p0, v0, Lgmd;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 813
    new-instance v9, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$2;

    invoke-direct {v9, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    .line 828
    .local v9, "delteListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v9, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "delteListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v9, Lcma;

    .line 5109
    .restart local v9    # "delteListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iput-object v9, v0, Lgmd;->e:Lcma;

    .line 830
    invoke-virtual {v0}, Lgmd;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    .line 6224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->G:Ljava/lang/String;

    .line 6225
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->p:I

    .line 6226
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    .line 13689
    if-eqz p1, :cond_0

    .line 13693
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->n:Ljava/lang/String;

    invoke-static {p1, v2}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v2

    .line 13695
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-eqz v3, :cond_1

    .line 13696
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m:Z

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->o:J

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->k:Z

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZI)V

    :cond_0
    :goto_0
    return-void

    .line 13698
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 13699
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->d(Ljava/lang/String;)I

    move-result v11

    .line 13701
    const/4 v3, 0x4

    if-eq v11, v3, :cond_2

    const/4 v3, 0x3

    if-ne v11, v3, :cond_5

    :cond_2
    move v10, v1

    .line 13705
    :goto_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    move v5, v1

    .line 13706
    :goto_2
    if-eqz v5, :cond_3

    .line 13707
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->showLoadingDialog()V

    .line 13710
    :cond_3
    const-string/jumbo v0, "EVENTBUTLER"

    .line 13711
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;

    move-object v4, p0

    move-object v6, p1

    move v7, v2

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;ZLcom/alibaba/alimei/cspace/model/DentryModel;ZJZI)V

    const-class v1, Lcma;

    .line 13712
    invoke-interface {v0, v3, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13743
    invoke-static {p0, p1, v0}, Lgpr;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    goto :goto_0

    :cond_4
    move v5, v0

    .line 13705
    goto :goto_2

    :cond_5
    move v10, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZI)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # J
    .param p6, "x5"    # Z
    .param p7, "x6"    # I

    .prologue
    .line 77
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZI)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # J
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct/range {p0 .. p8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 77
    .line 6447
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6450
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->O:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 6451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->O:Ljava/util/HashMap;

    .line 6453
    :cond_0
    if-eqz p2, :cond_4

    .line 6454
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    if-nez v0, :cond_1

    .line 6455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    .line 6461
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6463
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->k:Z

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l:I

    invoke-static {v0, v2}, Lfzu;->a(ZI)Ljava/lang/String;

    .line 6464
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 6465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6466
    if-eqz v0, :cond_2

    .line 6470
    invoke-static {v0}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    move-result-object v3

    .line 6472
    if-eqz v3, :cond_2

    .line 6476
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6478
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6479
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6481
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6458
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    goto :goto_0

    .line 6484
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    if-eqz v0, :cond_7

    .line 6485
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    invoke-virtual {v0, v1}, Lgaa;->a(Ljava/util/List;)V

    .line 6486
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_6

    .line 6487
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setVisibility(I)V

    .line 6489
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    invoke-virtual {v0}, Lgaa;->notifyDataSetChanged()V

    .line 6490
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c()V

    .line 77
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/Map;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 77
    .line 12538
    if-eqz p1, :cond_5

    .line 12539
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12540
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12541
    const/4 v1, 0x0

    .line 12542
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 12543
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 12544
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 12545
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12546
    :cond_1
    const/4 v2, 0x1

    .line 12547
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v1, v2

    .line 12551
    goto :goto_1

    .line 12553
    :cond_3
    if-nez v1, :cond_4

    .line 12554
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 12556
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 77
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 77
    .line 14834
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14837
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->dismissLoadingDialog()V

    .line 14838
    if-nez p1, :cond_0

    .line 14839
    const/4 v0, 0x7

    invoke-static {v0, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 14840
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    .line 14841
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 14842
    const/16 v2, 0x68

    iput v2, v1, Landroid/os/Message;->what:I

    .line 14843
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14844
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    :cond_0
    return-void

    .line 14840
    :cond_1
    sget v0, Lfzs$h;->delete_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->D:Z

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->H:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->J:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ltl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->F:Ltl;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 304
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    .line 13869
    if-eqz p1, :cond_1

    .line 13871
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->n:Ljava/lang/String;

    invoke-static {p1, v2}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v6

    .line 13873
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 13874
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "image"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lfzs$e;->file_pic_36:I

    if-ne v2, v3, :cond_2

    .line 13875
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->k:Z

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l:I

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZ)V

    :cond_1
    :goto_0
    return-void

    .line 13877
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->d(Ljava/lang/String;)I

    move-result v5

    .line 13879
    const/4 v2, 0x4

    if-eq v5, v2, :cond_3

    const/4 v2, 0x3

    if-ne v5, v2, :cond_6

    :cond_3
    move v4, v1

    .line 13882
    :goto_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v6, :cond_5

    move v2, v1

    .line 13883
    :goto_2
    if-eqz v2, :cond_4

    .line 13884
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->showLoadingDialog()V

    .line 13887
    :cond_4
    const-string/jumbo v0, "EVENTBUTLER"

    .line 13888
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;ZLcom/alibaba/alimei/cspace/model/DentryModel;ZIZ)V

    const-class v1, Lcma;

    .line 13889
    invoke-interface {v7, v0, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13915
    invoke-static {p0, p1, v0}, Lgpr;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    goto :goto_0

    :cond_5
    move v2, v0

    .line 13882
    goto :goto_2

    :cond_6
    move v4, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Ljava/util/Map;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 77
    .line 12564
    if-eqz p1, :cond_6

    .line 12565
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12566
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->L:Ljava/util/List;

    .line 12568
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 12569
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 12570
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 12571
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12572
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->L:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12573
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->O:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->O:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 12574
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->O:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    .line 12575
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12576
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    if-eqz v5, :cond_2

    .line 12577
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    .line 13073
    if-eqz v1, :cond_2

    iget-object v6, v5, Lgaa;->a:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lgaa;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13074
    iget-object v6, v5, Lgaa;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13075
    iget-wide v6, v1, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->i:J

    invoke-virtual {v5, v6, v7}, Lgaa;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 13076
    iget-object v1, v5, Lgaa;->b:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    iget-object v1, v5, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13077
    iget-object v1, v5, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13078
    add-int/lit8 v1, v1, -0x1

    .line 13079
    if-lez v1, :cond_4

    .line 13080
    iget-object v5, v5, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 13082
    :cond_4
    iget-object v1, v5, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 12584
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->L:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12585
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 77
    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->E:Z

    return v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    .line 330
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 332
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->D:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->K:Z

    return v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->u:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 3514
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 341
    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 344
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->D:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->p:I

    return v0
.end method

.method private e()Lcma;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ltl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->q:Lcma;

    if-nez v0, :cond_0

    .line 618
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->q:Lcma;

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->q:Lcma;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    return-object v0
.end method

.method private f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1032
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lfzz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    const/16 v5, 0xa

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    .line 7243
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->d()V

    .line 7244
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 7245
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b()V

    .line 7246
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7247
    new-instance v0, Lgaa;

    invoke-direct {v0, p0}, Lgaa;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    .line 7248
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgaa;->a(Ljava/util/List;)V

    .line 7249
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 7250
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c()V

    .line 7252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7278
    :goto_0
    return-void

    .line 7255
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    if-nez v0, :cond_6

    .line 7257
    new-instance v0, Lfzz;

    invoke-direct {v0, p0, v1}, Lfzz;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    move v0, v1

    .line 7260
    :goto_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-nez v3, :cond_3

    move v3, v1

    .line 7794
    :goto_2
    iput-boolean v3, v4, Lfzz;->f:Z

    .line 7261
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    const/4 v4, 0x3

    .line 8790
    iput v4, v3, Lfzz;->e:I

    .line 7262
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m:Z

    .line 8814
    iput-boolean v4, v3, Lfzz;->b:Z

    .line 7263
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l:I

    .line 8822
    iput v4, v3, Lfzz;->d:I

    .line 7264
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    .line 9798
    iput-boolean v1, v3, Lfzz;->h:Z

    .line 7265
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h:Ljava/lang/String;

    .line 9826
    iput-object v3, v1, Lfzz;->g:Ljava/lang/String;

    .line 7266
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->n:Ljava/lang/String;

    .line 10818
    iput-object v3, v1, Lfzz;->c:Ljava/lang/String;

    .line 7267
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->d:Lfzz$b;

    .line 11806
    iput-object v3, v1, Lfzz;->k:Lfzz$b;

    .line 7268
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-virtual {v1, v3}, Lfzz;->a(Ljava/util/List;)V

    .line 7269
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lfzz;->a(Ljava/util/List;Z)V

    .line 7270
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v5, :cond_2

    .line 7271
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c()V

    .line 7273
    :cond_2
    if-nez v0, :cond_4

    .line 7274
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    invoke-virtual {v0}, Lfzz;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    move v3, v2

    .line 7260
    goto :goto_2

    .line 7276
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 12320
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12321
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 12322
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 12323
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 12324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->J:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->H:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->I:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->L:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    .line 12437
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b()V

    .line 12438
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    if-eqz v0, :cond_0

    .line 12439
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->s:Lfzz;

    invoke-virtual {v0}, Lfzz;->notifyDataSetChanged()V

    .line 12441
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    if-eqz v0, :cond_1

    .line 12442
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->r:Lgaa;

    invoke-virtual {v0}, Lgaa;->notifyDataSetChanged()V

    .line 77
    :cond_1
    return-void
.end method

.method static synthetic s(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a()V

    return-void
.end method

.method static synthetic u(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->d()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l:I

    return v0
.end method

.method static synthetic w(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->o:J

    return-wide v0
.end method

.method static synthetic x(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->N:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget v1, Lfzs$g;->alm_cspace_category:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 147
    const-string/jumbo v1, "space_category_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    .line 148
    const-string/jumbo v1, "space_category_current_space"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    .line 149
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-eqz v1, :cond_0

    .line 150
    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h:Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "space_category_current_folderId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->i:Ljava/lang/String;

    .line 152
    const-string/jumbo v1, "space_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->j:Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "from_conversation"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->k:Z

    .line 154
    const-string/jumbo v1, "space_type"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->l:I

    .line 155
    const-string/jumbo v1, "is_space_admin"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->m:Z

    .line 158
    :cond_0
    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->o:J

    .line 160
    const-string/jumbo v1, "space_category_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->P:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->n:Ljava/lang/String;

    .line 2177
    :cond_1
    const-string/jumbo v1, "document"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2178
    sget v1, Lfzs$h;->search_type_doc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lfzs$h;->space_category:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2195
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->u:Landroid/view/ViewStub;

    .line 2196
    sget v1, Lfzs$f;->rl_empty:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->v:Landroid/widget/RelativeLayout;

    .line 2197
    sget v1, Lfzs$f;->tv_category_head:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->x:Landroid/widget/TextView;

    .line 2198
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2199
    sget v1, Lfzs$f;->gv_footer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    .line 2200
    sget v1, Lfzs$f;->gv_split_line:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->A:Landroid/view/View;

    .line 2202
    :cond_2
    sget v1, Lfzs$f;->gv_pic:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    .line 2203
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2204
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->y:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2205
    sget v1, Lfzs$f;->gv_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->z:Landroid/widget/LinearLayout;

    .line 2206
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    .line 2207
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2286
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_category_list_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2287
    sget v1, Lfzs$f;->tv_category_head:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2288
    sget v4, Lfzs$h;->cspace_category_list_file:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->P:Ljava/lang/String;

    aput-object v2, v5, v7

    const-string/jumbo v2, "other"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    .line 2289
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lfzs$h;->search_type_other_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v8

    .line 2288
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2291
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2292
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2293
    sget v1, Lfzs$c;->uidic_global_color_transparent:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2294
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2300
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2211
    sget v1, Lfzs$f;->swipe_layout_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 2212
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Lfzs$c;->swipe_refresh_color1:I

    aput v3, v2, v7

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v2, v8

    sget v3, Lfzs$c;->swipe_refresh_color1:I

    aput v3, v2, v9

    const/4 v3, 0x3

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 2215
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->u:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 168
    const-class v1, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b:Lxm;

    invoke-static {v1, v2}, Lth;->a(Ljava/lang/Class;Lxm;)V

    .line 169
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->g:Z

    if-eqz v1, :cond_a

    .line 170
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a()V

    .line 174
    :goto_2
    return-void

    .line 2179
    :cond_3
    const-string/jumbo v1, "image"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2180
    sget v1, Lfzs$h;->search_type_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 2181
    :cond_4
    const-string/jumbo v1, "archive"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2182
    sget v1, Lfzs$h;->search_type_zip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 2183
    :cond_5
    const-string/jumbo v1, "video"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2184
    sget v1, Lfzs$h;->search_type_video:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 2185
    :cond_6
    const-string/jumbo v1, "audio"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2186
    sget v1, Lfzs$h;->search_type_audio_category:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 2187
    :cond_7
    const-string/jumbo v1, "app"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2188
    sget v1, Lfzs$h;->search_type_app:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 2190
    :cond_8
    sget v1, Lfzs$h;->search_type_other:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 2289
    :cond_9
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->M:Ljava/lang/String;

    goto/16 :goto_1

    .line 172
    :cond_a
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->c:Lcma;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcma;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1023
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 1024
    const-class v1, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b:Lxm;

    invoke-static {v1, v2}, Lth;->b(Ljava/lang/Class;Lxm;)V

    .line 1025
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->K:Z

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lfzt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {v0}, Lfzt;->a(Ljava/lang/String;)V

    .line 1029
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 998
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 973
    if-eqz p2, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 980
    .local v0, "isLast":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 6001
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->D:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 984
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->A:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->D:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 986
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setVisibility(I)V

    .line 987
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->A:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "isLast":Z
    :cond_3
    move v0, v2

    .line 977
    goto :goto_1

    .line 6005
    .restart local v0    # "isLast":Z
    :cond_4
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6006
    sget v1, Lfzs$h;->cspace_network_error:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 6007
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v1, :cond_2

    .line 6008
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_2

    .line 6013
    :cond_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v3, :cond_2

    .line 6014
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getCurrentPageType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->E:Z

    if-nez v3, :cond_2

    .line 6015
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 6016
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a()V

    goto :goto_2

    .line 989
    :cond_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->A:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
