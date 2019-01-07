.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;
.source "CSpaceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lgqp;


# instance fields
.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private final N:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lgoj;

.field private Q:Z

.field private R:Ltl;

.field private S:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ltl;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ltl;",
            ">;"
        }
    .end annotation
.end field

.field private U:Z

.field private final V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public a:I

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/widget/ListView;

.field private ab:Lfzz;

.field private ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

.field private ah:Lgpe$b;

.field private ai:Landroid/widget/RelativeLayout;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/TextView;

.field private al:Ljava/lang/String;

.field private am:Landroid/widget/TextView;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private aq:J

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private final as:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private at:I

.field private au:Landroid/widget/RelativeLayout;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/TextView;

.field private final ax:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ay:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private az:Landroid/view/ViewStub;

.field public b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:J

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Lgdf;

.field m:Lyb;

.field n:Lxm;

.field o:Lgoi;

.field p:Lfzz$a;

.field q:Lfzz$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->J:Z

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->N:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->O:Ljava/util/HashMap;

    .line 159
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->T:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->V:Ljava/util/List;

    .line 168
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->W:Z

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Z:Ljava/util/HashMap;

    .line 176
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ad:I

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->as:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ax:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ay:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 242
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aH:Z

    .line 574
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$18;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$18;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m:Lyb;

    .line 1312
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n:Lxm;

    .line 1495
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$6;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o:Lgoi;

    .line 1569
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->p:Lfzz$a;

    .line 1678
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->q:Lfzz$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aq:J

    return-wide p1
.end method

.method public static a(Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .locals 3
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    .prologue
    .line 281
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;-><init>()V

    .line 282
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_args"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;
    .param p4, "isAdmin"    # Z
    .param p5, "isPublic"    # Z
    .param p6, "mode"    # I
    .param p7, "unSaveFileUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)",
            "Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;"
        }
    .end annotation

    .prologue
    .line 264
    .local p8, "repathModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p9, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;-><init>()V

    .line 265
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v2, "space_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v2, "folder_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v2, "is_admin"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    const-string/jumbo v2, "is_public"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    const-string/jumbo v2, "save_file"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v2, "repath_list"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string/jumbo v2, "batch_save_file_list"

    invoke-virtual {v0, v2, p9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 276
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 277
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x1

    .line 124
    .line 30995
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 29999
    :goto_0
    if-eqz v0, :cond_0

    .line 30002
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30003
    :cond_0
    return-object p1

    .line 30995
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 30005
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30006
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30007
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 30008
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30011
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 704
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, p1

    .line 725
    :cond_1
    return-object v1

    .line 708
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v2, "existIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 710
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_3

    .line 713
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    .local v1, "distinctList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 718
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 721
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ax:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 4
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "dataChange"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x3

    .line 2600
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V

    .line 2601
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2602
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v1, :cond_0

    .line 2603
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v0

    .line 28034
    if-eqz p1, :cond_0

    iget-object v1, v0, Lgld;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, v0, Lgld;->b:I

    if-ge v1, v2, :cond_0

    .line 28035
    iget-object v0, v0, Lgld;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    :goto_1
    if-eqz p2, :cond_1

    .line 2613
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u()V

    .line 2615
    :cond_1
    return-void

    .line 2600
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2607
    :cond_3
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v1, :cond_4

    .line 2608
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v0

    .line 28040
    if-eqz p1, :cond_4

    .line 28041
    iget-object v0, v0, Lgld;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;JJ)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 124
    .line 35441
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35442
    :cond_0
    :goto_0
    return-void

    .line 35445
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->O:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 35447
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ad:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 35449
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 35452
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 35453
    if-eqz v0, :cond_2

    .line 35457
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_2

    move-object v2, v0

    .line 35463
    :goto_1
    if-eqz v2, :cond_0

    .line 35467
    invoke-virtual {v2, p3, p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 35468
    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 35473
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfzz$c;

    if-eqz v0, :cond_0

    .line 35474
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzz$c;

    .line 35475
    iget-object v4, v0, Lfzz$c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35476
    iget-object v4, v0, Lfzz$c;->E:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35477
    iget-object v4, v0, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 35478
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    .line 36046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 35478
    aput-object v6, v5, v1

    const/4 v6, 0x1

    const-string/jumbo v7, " / "

    aput-object v7, v5, v6

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    .line 37046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 35478
    aput-object v6, v5, v8

    .line 35477
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35479
    iget-object v4, v0, Lfzz$c;->F:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35480
    iget-object v4, v0, Lfzz$c;->F:Landroid/widget/TextView;

    sget v5, Lfzs$h;->cspace_upload_pause:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35481
    iget-object v4, v0, Lfzz$c;->F:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$5;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35487
    iget-object v4, v0, Lfzz$c;->G:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35488
    iget-object v4, v0, Lfzz$c;->G:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35489
    iget-object v3, v0, Lfzz$c;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 35490
    iget-object v3, v0, Lfzz$c;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v0

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    .line 124
    .line 37407
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v5, :cond_1

    .line 37408
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 37409
    if-eqz v0, :cond_0

    .line 37412
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 37413
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 37414
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 37415
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 37416
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 37417
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 37418
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadId(Ljava/lang/String;)V

    .line 37419
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 37420
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExpireTime(J)V

    .line 37421
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 37422
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadErrorMsg(Ljava/lang/String;)V

    .line 37423
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setESafeNetEncrypt(Z)V

    .line 37424
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 37429
    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v5, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aq:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 37431
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    if-nez v0, :cond_4

    .line 37432
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void

    .line 37433
    :cond_4
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 37434
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 124
    .line 37553
    if-eqz p1, :cond_1

    .line 37558
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 37559
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_1

    .line 37560
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    invoke-static {p1, v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lgdf;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    .line 37590
    :cond_1
    :goto_0
    return-void

    .line 37562
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 37563
    :cond_3
    const-string/jumbo v0, "folder"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37564
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 37565
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 37566
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37567
    sget v0, Lfzs$h;->cspace_repath_sub_folder_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 37569
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_1

    .line 37570
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    invoke-static {p1, v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lgdf;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto :goto_0

    .line 37574
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_1

    .line 37575
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    invoke-static {p1, v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lgdf;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto :goto_0

    .line 37579
    :cond_6
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 37580
    invoke-direct {p0, p1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto/16 :goto_0

    .line 37581
    :cond_7
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 37582
    invoke-static {p1}, Lfzu;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37585
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v0

    invoke-virtual {v0}, Lgld;->b()I

    move-result v0

    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v1

    .line 38054
    iget v1, v1, Lgld;->b:I

    .line 37585
    if-ne v0, v1, :cond_8

    .line 37586
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lfzs$h;->select_max_count_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v3

    .line 39054
    iget v3, v3, Lgld;->b:I

    .line 37586
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 37589
    :cond_8
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37590
    invoke-direct {p0, p1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto/16 :goto_0

    .line 37592
    :cond_9
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_1

    .line 37593
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    invoke-static {p1, v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lgdf;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 124
    .line 41051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 40805
    if-eqz v0, :cond_1

    .line 40808
    invoke-static {p2, p3}, Lglc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40809
    if-eqz p1, :cond_2

    .line 40810
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_0

    .line 40811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40812
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40813
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lgdf;->a(ZLjava/util/List;)V

    .line 40815
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40816
    sget v0, Lfzs$h;->cspace_save_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 40817
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 40829
    :cond_1
    :goto_0
    return-void

    .line 40820
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_3

    .line 40821
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lgdf;->a(ZLjava/util/List;)V

    .line 40823
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40824
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/16 v0, 0xa

    invoke-static {v0, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 40825
    const-string/jumbo v1, "13026000"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40826
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 40828
    :cond_4
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 40829
    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 40831
    :cond_5
    sget v0, Lfzs$h;->cspace_save_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 124
    .line 40051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 39418
    if-eqz v0, :cond_1

    .line 39423
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->at:I

    if-ne v0, v4, :cond_5

    .line 40510
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 40511
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v1, :cond_2

    .line 40512
    sget v0, Lfzs$h;->cspace_repath_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->a(Ljava/lang/String;I)V

    .line 40513
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_0

    .line 40514
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0}, Lgdf;->r()V

    .line 40516
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40517
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 39495
    .end local p3    # "x3":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 40519
    .restart local p3    # "x3":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v4, :cond_1

    .line 40520
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_1

    .line 40521
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0, v2}, Lgdf;->c(I)V

    goto :goto_0

    .line 40525
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 40526
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v0, Lfzs$h;->cspace_repath_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 40528
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_1

    .line 40529
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0}, Lgdf;->r()V

    goto :goto_0

    .line 40526
    :cond_4
    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    goto :goto_1

    .line 39428
    :cond_5
    const-string/jumbo v0, "6000000"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39431
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_6

    .line 39432
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0, v2, v5}, Lgdf;->a(ZLjava/util/List;)V

    .line 39435
    :cond_6
    sget v0, Lfzs$h;->cspace_save_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 39502
    .end local p3    # "x3":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 39441
    .restart local p3    # "x3":Ljava/lang/String;
    :cond_8
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->at:I

    if-ne v0, v2, :cond_e

    .line 39442
    if-eqz p1, :cond_a

    .line 39443
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_9

    .line 39444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39445
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39446
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v1, v2, v0}, Lgdf;->a(ZLjava/util/List;)V

    .line 39449
    :cond_9
    sget v0, Lfzs$h;->cspace_save_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 39453
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_b

    .line 39454
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0, p2, p3}, Lgdf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39457
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 39458
    const-string/jumbo v0, "13026000"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39459
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39461
    :cond_c
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39465
    :cond_d
    sget v0, Lfzs$h;->cspace_save_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39472
    :cond_e
    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 39473
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_f

    .line 39474
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0, v2, v5}, Lgdf;->a(ZLjava/util/List;)V

    .line 39477
    :cond_f
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v3, :cond_10

    .line 39478
    sget v0, Lfzs$h;->cspace_save_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 39479
    :cond_10
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v1, :cond_1

    .line 39480
    sget v0, Lfzs$h;->cspace_repath_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 39485
    :cond_11
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_12

    .line 39486
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v0, p2, p3}, Lgdf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39489
    :cond_12
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v3, :cond_16

    .line 39490
    const-string/jumbo v0, "13026000"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 39491
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    .line 39492
    :cond_13
    const-string/jumbo v0, "13020005"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 39493
    sget v0, Lfzs$h;->dt_cspace_error_no_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    .line 39495
    :cond_14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Lfzs$h;->cspace_save_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "x3":Ljava/lang/String;
    :cond_15
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39498
    .restart local p3    # "x3":Ljava/lang/String;
    :cond_16
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v1, :cond_1

    .line 39499
    const-string/jumbo v0, "13026000"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 39500
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    .line 39502
    :cond_17
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lfzs$h;->cspace_repath_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/Map;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 124
    .line 35344
    if-eqz p1, :cond_2

    .line 35345
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35346
    if-eqz v0, :cond_0

    .line 35350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35351
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35353
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35355
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aH:Z

    if-nez v0, :cond_3

    .line 35356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aD:Z

    .line 35360
    :cond_2
    :goto_0
    return-void

    .line 35358
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ltl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Ltl;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ltl;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;ZLtl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ltl;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 124
    .line 32051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 31532
    if-eqz v0, :cond_1

    .line 31535
    if-eqz p1, :cond_3

    .line 32931
    invoke-static {}, Lglr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 33031
    iget-object v0, p2, Ltl;->d:Ljava/util/List;

    .line 32932
    if-eqz v0, :cond_0

    .line 34031
    iget-object v0, p2, Ltl;->d:Ljava/util/List;

    .line 32932
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v3, :cond_2

    .line 32934
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ltl;)V

    .line 32935
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    .line 32936
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l()V

    .line 31536
    :cond_1
    :goto_0
    return-void

    .line 35031
    :cond_2
    iget-object v1, p2, Ltl;->d:Ljava/util/List;

    .line 32941
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ltl;)V

    .line 32968
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 32969
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lgon;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 35051
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 31538
    if-eqz v0, :cond_7

    .line 31539
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_4

    .line 31540
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 31542
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, p3, p4}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 31543
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 31544
    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 31548
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 31549
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 31552
    :cond_5
    const-string/jumbo v0, "13020005"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "13024000"

    .line 31553
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31554
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 31555
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->what:I

    .line 31556
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31557
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->handleMessage(Landroid/os/Message;)V

    .line 31558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 31559
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->J:Z

    .line 31569
    :cond_7
    :goto_2
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    .line 31570
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l()V

    goto :goto_0

    .line 31546
    :cond_8
    sget v0, Lfzs$h;->alm_load_failed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 31561
    :cond_9
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31563
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 31564
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 31565
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31566
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->handleMessage(Landroid/os/Message;)V

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p2, "targetSpaceId"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "targetFolderId"    # Ljava/lang/String;
    .param p5, "isCut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2385
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2386
    if-eqz p5, :cond_1

    .line 2387
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->at:I

    .line 2396
    :goto_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$13;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$13;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    const-class v3, Lcma;

    .line 2413
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 2396
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V

    .line 2415
    :cond_0
    return-void

    .line 2389
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2390
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->at:I

    goto :goto_0

    .line 2392
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->at:I

    goto :goto_0
.end method

.method private a(Ltl;)V
    .locals 2
    .param p1, "result"    # Ltl;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 610
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 611
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 612
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 614
    return-void
.end method

.method private a(ZLjava/util/List;)V
    .locals 4
    .param p1, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v2, 0x0

    .line 2862
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2863
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2864
    .local v0, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_0

    .line 2867
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V

    .line 2868
    invoke-direct {p0, v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2867
    goto :goto_1

    .line 2870
    .end local v0    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v1, :cond_3

    .line 2871
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v1}, Lfzz;->notifyDataSetChanged()V

    .line 2874
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->s()V

    .line 2875
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "checkDentryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2320
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return v1

    .line 2323
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2324
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2327
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v8

    .line 26973
    invoke-virtual {p0, v8}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v8

    .line 26974
    if-nez v8, :cond_4

    move-wide v2, v6

    .line 2328
    .local v2, "editor":J
    :goto_1
    cmp-long v8, v2, v6

    if-lez v8, :cond_2

    .line 2329
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    move v1, v4

    .line 2330
    .local v1, "isMultiFile":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2, v3, v1, v0}, Lgfg;->a(Landroid/app/Activity;JZLcom/alibaba/alimei/cspace/model/DentryModel;)V

    move v1, v4

    .line 2331
    goto :goto_0

    .line 26974
    .end local v1    # "isMultiFile":Z
    .end local v2    # "editor":J
    :cond_4
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ljava/util/Map;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 124
    .line 35367
    if-eqz p1, :cond_5

    .line 35368
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35369
    if-eqz v0, :cond_0

    .line 35373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35374
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 35376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35377
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 35378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 35379
    if-eqz v1, :cond_1

    .line 35383
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 35384
    if-eqz v2, :cond_2

    .line 35387
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 35388
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35389
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35395
    :cond_4
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 35396
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 35397
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35398
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 35399
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 124
    :cond_5
    return-void
.end method

.method private b(Ljava/util/List;Z)V
    .locals 2
    .param p2, "head"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 687
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p2, :cond_1

    .line 688
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 695
    if-eqz p1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 699
    :cond_2
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aH:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aF:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgpe$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->q()Lgpe$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c()V

    return-void
.end method

.method private g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aB:Z

    .line 472
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    .line 474
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h()Lcma;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcma;)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->w()V

    return-void
.end method

.method private h()Lcma;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->S:Lcma;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$17;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$17;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->S:Lcma;

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->S:Lcma;

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 507
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->S:Lcma;

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f:J

    return-wide v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 4514
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 526
    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method private l(Z)V
    .locals 17
    .param p1, "isFirst"    # Z

    .prologue
    .line 1163
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aA:Z

    .line 1164
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v2, v3, :cond_2

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->as:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1166
    .local v16, "size":I
    if-lez v16, :cond_1

    move/from16 v0, v16

    new-array v8, v0, [Ljava/lang/String;

    .line 1167
    .local v8, "excludePaths":[Ljava/lang/String;
    :goto_0
    if-lez v16, :cond_0

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->as:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "excludePaths":[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 1171
    .restart local v8    # "excludePaths":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->P:Lgoj;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->p()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o:Lgoi;

    invoke-virtual/range {v2 .. v8}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V

    .line 1200
    .end local v8    # "excludePaths":[Ljava/lang/String;
    .end local v16    # "size":I
    :goto_1
    return-void

    .line 1166
    .restart local v16    # "size":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1173
    .end local v16    # "size":I
    :cond_2
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v2, v3, :cond_3

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v2, v3, :cond_4

    .line 1174
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->P:Lgoj;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->p()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o:Lgoi;

    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    invoke-virtual/range {v9 .. v15}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V

    goto :goto_1

    .line 1177
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->X:Z

    if-eqz v2, :cond_6

    .line 1178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->X:Z

    .line 1179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aE:Z

    .line 1180
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1182
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->W:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Z:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->T:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Z:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->T:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    .line 1185
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o()V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto/16 :goto_1

    .line 1188
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    .line 1189
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    .line 1190
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h()Lcma;

    move-result-object v15

    invoke-virtual/range {v9 .. v15}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcma;)V

    .line 1197
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->P:Lgoj;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->p()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o:Lgoi;

    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    invoke-virtual/range {v9 .. v15}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1194
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->P:Lgoj;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->p()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o:Lgoi;

    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    invoke-virtual/range {v9 .. v15}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 729
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_2

    .line 730
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    .line 731
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$19;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$19;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 748
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    if-eqz v0, :cond_5

    .line 749
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 753
    :goto_1
    return-void

    .line 4760
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_0

    .line 4762
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4763
    if-eqz v0, :cond_4

    .line 4764
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_3

    .line 4765
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4772
    :catch_0
    move-exception v0

    .line 4773
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4767
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 4770
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 751
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n()V

    goto :goto_1
.end method

.method private m(Z)V
    .locals 4
    .param p1, "exception"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1525
    .line 5051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1525
    if-eqz v0, :cond_0

    .line 1526
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aA:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aB:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1527
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aA:Z

    .line 1528
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aB:Z

    .line 1529
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aA:Z

    .line 1535
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 1536
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1540
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1541
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1542
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1544
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 1546
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    if-eqz v0, :cond_4

    .line 1547
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->d()V

    .line 1550
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1552
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1553
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->av:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1558
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aw:Landroid/widget/TextView;

    sget v1, Lfzs$h;->cspace_no_file_guide_1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1559
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1560
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aw:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_no_file_in_the_pulic_area:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1555
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->av:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1561
    :cond_6
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v0}, Lgqu;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgpv;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1563
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aw:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_personal_file_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 756
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 757
    return-void
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->t()V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Z)V

    goto :goto_0
.end method

.method private p()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1204
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1205
    :cond_0
    const/4 v0, 0x0

    .line 1207
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    return v0
.end method

.method private q()Lgpe$b;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ah:Lgpe$b;

    if-nez v0, :cond_0

    .line 1637
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$8;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ah:Lgpe$b;

    .line 1669
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ah:Lgpe$b;

    const-class v1, Lgpe$b;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpe$b;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ah:Lgpe$b;

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ah:Lgpe$b;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->V:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->N:Ljava/util/HashMap;

    return-object v0
.end method

.method private r()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1810
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v1

    invoke-virtual {v1}, Lgld;->b()I

    move-result v0

    .line 1811
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1812
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->am:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1813
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->am:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1814
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1819
    :goto_0
    return-void

    .line 1816
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1817
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->am:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgdf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    return-object v0
.end method

.method private s()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1822
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lgdf;->b(I)V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1827
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1828
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1834
    :goto_0
    return-void

    .line 1830
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1831
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1832
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    return-object v0
.end method

.method private t()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x3

    .line 1884
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aA:Z

    .line 1885
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 1886
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1887
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->au:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1889
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    if-eqz v6, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->v()V

    .line 1893
    :cond_0
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v6, :cond_1

    .line 1894
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1896
    :cond_1
    const/4 v2, 0x0

    .line 1897
    .local v2, "isInit":Z
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-nez v6, :cond_2

    .line 1898
    const/4 v2, 0x1

    .line 1899
    new-instance v6, Lfzz;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    invoke-direct {v6, v7, v8}, Lfzz;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    .line 1901
    :cond_2
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    .line 6814
    iput-boolean v7, v6, Lfzz;->b:Z

    .line 1902
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    .line 7790
    iput v7, v6, Lfzz;->e:I

    .line 1903
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    .line 7822
    iput v7, v6, Lfzz;->d:I

    .line 1905
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    .line 7826
    iput-object v7, v6, Lfzz;->g:Ljava/lang/String;

    .line 1906
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    .line 8818
    iput-object v7, v6, Lfzz;->c:Ljava/lang/String;

    .line 1907
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->p:Lfzz$a;

    .line 9802
    iput-object v7, v6, Lfzz;->j:Lfzz$a;

    .line 1908
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->q:Lfzz$b;

    .line 9806
    iput-object v7, v6, Lfzz;->k:Lfzz$b;

    .line 1909
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->N:Ljava/util/HashMap;

    .line 9830
    iput-object v7, v6, Lfzz;->i:Ljava/util/Map;

    .line 1910
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-virtual {v6, v7}, Lfzz;->a(Ljava/util/List;)V

    .line 1911
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lfzz;->a(Ljava/util/List;Z)V

    .line 9979
    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 9980
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 9981
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 9982
    if-eqz v6, :cond_3

    .line 9985
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 9986
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1973
    .end local v2    # "isInit":Z
    :catch_0
    move-exception v1

    .line 1974
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1976
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 9988
    .restart local v2    # "isInit":Z
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V

    goto :goto_0

    .line 1913
    :cond_5
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v6, :cond_6

    .line 1914
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lgdf;->a(ILjava/lang/String;)V

    .line 1917
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->x()I

    move-result v4

    .line 1918
    .local v4, "position":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    .end local v4    # "position":I
    .local v5, "position":I
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1919
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_7

    .line 1922
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "position":I
    .restart local v4    # "position":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    const-string/jumbo v7, "file"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1924
    new-instance v3, Lgpa;

    invoke-direct {v3}, Lgpa;-><init>()V

    .line 1925
    .local v3, "param":Lgpa;
    iput-object v0, v3, Lgpa;->a:Ljava/lang/Object;

    .line 1926
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v7

    iput-boolean v7, v3, Lgpa;->c:Z

    .line 1927
    const/4 v7, 0x0

    iput-boolean v7, v3, Lgpa;->d:Z

    .line 1928
    const/4 v7, 0x1

    iput v7, v3, Lgpa;->g:I

    .line 1929
    invoke-static {v0}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v7

    iput v7, v3, Lgpa;->f:I

    .line 1930
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v7

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->q()Lgpe$b;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lgpe;->a(Lgpa;Lgpe$b;)V

    .line 1932
    .end local v3    # "param":Lgpa;
    :cond_8
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v7, v12, :cond_a

    .line 1933
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    .line 10071
    iget-object v7, v7, Lgld;->a:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 1933
    if-eqz v7, :cond_9

    .line 1934
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    .line 1935
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V

    move v5, v4

    .end local v4    # "position":I
    .restart local v5    # "position":I
    goto/16 :goto_2

    .line 1937
    .end local v5    # "position":I
    .restart local v4    # "position":I
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V

    :cond_a
    move v5, v4

    .line 1940
    .end local v4    # "position":I
    .restart local v5    # "position":I
    goto/16 :goto_2

    .line 1941
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_b
    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v6, v12, :cond_c

    .line 1942
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->r()V

    .line 1949
    :cond_c
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_d

    .line 1950
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m()V

    .line 1952
    :cond_d
    if-nez v2, :cond_e

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eq v6, v7, :cond_11

    .line 1953
    :cond_e
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1954
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v6}, Lfzz;->notifyDataSetChanged()V

    .line 1961
    :cond_f
    :goto_3
    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v6, v13, :cond_10

    .line 1962
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v6}, Lfzz;->notifyDataSetChanged()V

    .line 1963
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 1965
    :cond_10
    sget-object v7, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v8, "CSpace"

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v6, v12, :cond_12

    const-string/jumbo v6, "space.list.appear.time"

    :goto_4
    invoke-static {v7, v8, v6}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    sget-object v7, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v8, "CSpace"

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v6, v12, :cond_13

    const-string/jumbo v6, "space.list.sort.time"

    :goto_5
    invoke-static {v7, v8, v6}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1956
    :cond_11
    iget v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v6, v12, :cond_f

    .line 1957
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v6}, Lfzz;->notifyDataSetChanged()V

    .line 1958
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_3

    .line 1965
    :cond_12
    const-string/jumbo v6, "space.list.appear.letter"

    goto :goto_4

    .line 1969
    :cond_13
    const-string/jumbo v6, "space.list.sort.letter"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private u()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1996
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1997
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->s()V

    .line 2001
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v0, :cond_2

    .line 2002
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lfzz;->a(Ljava/util/List;Z)V

    .line 2003
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    .line 10810
    iput v1, v0, Lfzz;->a:I

    .line 2004
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c()V

    .line 2005
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2006
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v0, :cond_2

    .line 2007
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lgdf;->a(ILjava/lang/String;)V

    .line 2012
    :cond_2
    return-void

    .line 1998
    :cond_3
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1999
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->r()V

    goto :goto_0
.end method

.method static synthetic u(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l()V

    return-void
.end method

.method private v()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2368
    .local v1, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2369
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2374
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_1
    return-object v1
.end method

.method private w()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 2745
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    if-nez v0, :cond_1

    .line 2768
    :cond_0
    :goto_0
    return-void

    .line 2749
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 2749
    if-eqz v0, :cond_2

    .line 2750
    sget v0, Lfzs$h;->cspace_network_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2751
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0

    .line 2757
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    .line 28055
    iget-boolean v0, v0, Ltl;->c:Z

    .line 2757
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getCurrentPageType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    if-nez v0, :cond_4

    .line 2758
    iput-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aC:Z

    .line 2759
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    .line 29047
    iget-object v5, v5, Ltl;->b:Ljava/lang/String;

    .line 2760
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h()Lcma;

    move-result-object v6

    .line 2759
    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcma;)V

    .line 2761
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0

    .line 2760
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2762
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_0

    .line 2763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    .line 2764
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    .line 29055
    iget-boolean v0, v0, Ltl;->c:Z

    .line 2764
    if-nez v0, :cond_0

    .line 2765
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n()V

    goto/16 :goto_0
.end method

.method private x()I
    .locals 1

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final E_()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E_()V

    .line 515
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aG:Z

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    .locals 1
    .param p1, "dentryId"    # Ljava/lang/String;

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    return-object v0
.end method

.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 884
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->a()V

    .line 886
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->v:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e(Z)V

    .line 888
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Z)V

    .line 890
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    .line 891
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setVisibility(I)V

    .line 896
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 890
    goto :goto_0

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(I)V
    .locals 5
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1717
    :try_start_0
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    .line 1719
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-eq v2, v4, :cond_0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_5

    .line 1720
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ai:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1721
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1722
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v2, :cond_1

    .line 1723
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a(Z)V

    .line 1725
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1726
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1727
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_2

    .line 1730
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1804
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :catch_0
    move-exception v1

    .line 1805
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1807
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1733
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1734
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->F:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1736
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d(Z)V

    .line 1737
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f(Z)V

    .line 1738
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h(Z)V

    .line 1739
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Landroid/widget/ListView;Z)V

    .line 1803
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u()V

    goto :goto_1

    .line 1742
    :cond_5
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1743
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1744
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d(Z)V

    .line 1745
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f(Z)V

    .line 1746
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h(Z)V

    .line 1747
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k(Z)V

    .line 1754
    :cond_6
    :goto_3
    invoke-static {}, Lgqd;->a()Lgqd;

    .line 1755
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ai:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1756
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1757
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1758
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1760
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    packed-switch v2, :pswitch_data_0

    .line 1801
    :cond_7
    :goto_4
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->al:Ljava/lang/String;

    goto :goto_2

    .line 1749
    :cond_8
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 1750
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->F:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_3

    .line 1762
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1763
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    sget v3, Lfzs$h;->cspace_send:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    .line 1768
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    sget v3, Lfzs$h;->cspace_operate_delete:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1769
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->cspace_bottom_delete_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1770
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    sget v3, Lfzs$h;->cspace_operate_repath:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1771
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1772
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    .line 1776
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    sget v3, Lfzs$h;->space_op_create_folder:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1777
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    sget v3, Lfzs$h;->cspace_repath_current_dir:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1781
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    sget v3, Lfzs$h;->space_op_create_folder:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    sget v3, Lfzs$h;->cspace_save_current_dir:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1784
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 5083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1784
    if-eqz v2, :cond_7

    .line 1785
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1786
    :cond_9
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addFolder"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1787
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addFile"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1792
    :pswitch_5
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    sget v3, Lfzs$h;->space_op_create_folder:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1794
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 6083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1794
    if-eqz v2, :cond_b

    .line 1795
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1796
    :cond_a
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addFolder"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1798
    :cond_b
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    sget v3, Lfzs$h;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1760
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2029
    .line 11051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v8

    .line 2029
    if-nez v8, :cond_1

    .line 22903
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2035
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_4

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_4

    .line 2036
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 2038
    .local v6, "tempList":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v7, :cond_2

    .line 2039
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 2040
    .local v2, "listDeleted":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 2041
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2046
    .end local v2    # "listDeleted":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_2
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 2047
    :cond_3
    invoke-direct {p0, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Z)V

    .line 2048
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->T:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 2049
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Z:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 2050
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g()V

    .line 2054
    .end local v6    # "tempList":Ljava/util/List;
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->x()I

    move-result v4

    .line 2057
    .local v4, "position":I
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 2058
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2059
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_5

    .line 2063
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 2064
    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_1

    .line 2067
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u()V

    .line 2068
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v7, v13, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v7, :cond_0

    .line 2069
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v7, v12}, Lgdf;->c(I)V

    goto/16 :goto_0

    .line 2074
    .end local v4    # "position":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c()V

    goto/16 :goto_0

    .line 2077
    :pswitch_3
    const/4 v1, 0x0

    .line 2078
    .local v1, "exception":Z
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 2079
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2081
    :cond_7
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Z)V

    goto/16 :goto_0

    .line 12051
    .end local v1    # "exception":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    .line 2085
    if-eqz v7, :cond_0

    .line 2086
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v7, :cond_8

    .line 2087
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v7, v9}, Lgdf;->c(I)V

    .line 2089
    :cond_8
    invoke-direct {p0, v12}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Z)V

    goto/16 :goto_0

    .line 13051
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v8

    .line 2094
    if-eqz v8, :cond_0

    .line 2095
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v8, :cond_9

    .line 2096
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v8, v12, v7}, Lgdf;->a(ZLjava/util/List;)V

    .line 2099
    :cond_9
    sget v7, Lfzs$h;->cspace_save_success:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Lcms;->a(Ljava/lang/String;I)V

    .line 2100
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 14051
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v8

    .line 2105
    if-eqz v8, :cond_0

    .line 2106
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v8, :cond_a

    .line 2107
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v8, v11, v7}, Lgdf;->a(ZLjava/util/List;)V

    .line 2110
    :cond_a
    sget v7, Lfzs$h;->cspace_save_error:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2114
    :pswitch_7
    sget v7, Lfzs$h;->alm_load_failed:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 2115
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    .line 2116
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 2120
    :pswitch_8
    iget-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->J:Z

    if-eqz v8, :cond_c

    :goto_2
    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 2121
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v7, :cond_b

    .line 2122
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v7}, Lfzz;->notifyDataSetChanged()V

    .line 14509
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l()V

    .line 14511
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 14512
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 14519
    :catch_0
    move-exception v7

    .line 14520
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2120
    :cond_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    goto :goto_2

    .line 14514
    :cond_d
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v7, :cond_e

    .line 14515
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lgdf;->a(ILjava/lang/String;)V

    .line 14517
    :cond_e
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aF:Z

    invoke-direct {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 15287
    :pswitch_9
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aH:Z

    if-eqz v7, :cond_f

    .line 15288
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v7, :cond_0

    .line 15289
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v7}, Lfzz;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 15292
    :cond_f
    iput-boolean v12, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->U:Z

    goto/16 :goto_0

    .line 2130
    :pswitch_a
    const/4 v3, 0x0

    .line 2131
    .local v3, "loadMoreResult":Ltl;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_10

    .line 2132
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "loadMoreResult":Ltl;
    check-cast v3, Ltl;

    .line 15617
    .restart local v3    # "loadMoreResult":Ltl;
    :cond_10
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    .line 15618
    if-eqz v3, :cond_0

    .line 16039
    iget-boolean v7, v3, Ltl;->a:Z

    .line 15619
    if-eqz v7, :cond_18

    .line 15620
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_17

    .line 15621
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 15622
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 15623
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v10

    if-nez v10, :cond_11

    .line 15624
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15627
    :cond_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_13

    .line 15628
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 17031
    :cond_13
    iget-object v7, v3, Ltl;->d:Ljava/util/List;

    .line 15630
    invoke-direct {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Ljava/util/List;Z)V

    .line 15634
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o()V

    .line 15657
    :cond_14
    :goto_5
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    if-eqz v7, :cond_15

    .line 15658
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->T:Ljava/util/HashMap;

    iget v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->R:Ltl;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15660
    :cond_15
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 15661
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Z:Ljava/util/HashMap;

    iget v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15664
    :cond_16
    iput-boolean v12, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->W:Z

    .line 22055
    iget-boolean v7, v3, Ltl;->c:Z

    .line 15666
    if-eqz v7, :cond_1c

    .line 15667
    iput-boolean v12, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    .line 15668
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m()V

    .line 15669
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lgoj$a;->a(Ltl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 15670
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->w()V

    goto/16 :goto_0

    .line 18031
    :cond_17
    iget-object v7, v3, Ltl;->d:Ljava/util/List;

    .line 15632
    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    goto :goto_4

    .line 15636
    :cond_18
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-nez v7, :cond_19

    .line 19031
    iget-object v7, v3, Ltl;->d:Ljava/util/List;

    .line 15637
    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 15638
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o()V

    goto :goto_5

    .line 20031
    :cond_19
    iget-object v7, v3, Ltl;->d:Ljava/util/List;

    .line 15640
    if-eqz v7, :cond_14

    .line 21031
    iget-object v7, v3, Ltl;->d:Ljava/util/List;

    .line 15640
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 22031
    iget-object v7, v3, Ltl;->d:Ljava/util/List;

    .line 15641
    invoke-direct {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 15642
    invoke-direct {p0, v7, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Ljava/util/List;Z)V

    .line 15643
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v8, :cond_1a

    .line 15644
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v8, v7, v12}, Lfzz;->a(Ljava/util/List;Z)V

    .line 15646
    :cond_1a
    iget v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v8, v13, :cond_1b

    iget v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k:I

    if-ne v8, v9, :cond_1b

    .line 15647
    invoke-direct {p0, v12, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(ZLjava/util/List;)V

    goto/16 :goto_5

    .line 15649
    :cond_1b
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v7, :cond_14

    .line 15650
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v7}, Lfzz;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 15673
    :cond_1c
    iput-boolean v11, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Q:Z

    .line 15674
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v7, :cond_0

    .line 15675
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n()V

    goto/16 :goto_0

    .line 2137
    .end local v3    # "loadMoreResult":Ltl;
    :pswitch_b
    invoke-direct {p0, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Z)V

    goto/16 :goto_0

    .line 22899
    :pswitch_c
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ax:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 22900
    :cond_1d
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 22901
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    invoke-virtual {v7, v11}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 22906
    :cond_1e
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v7, :cond_1f

    .line 22907
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 22928
    :cond_1f
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    if-eqz v7, :cond_22

    .line 22932
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 22933
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v7, :cond_20

    .line 22934
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    .line 22935
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    .line 22936
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d:Ljava/lang/String;

    .line 22937
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgqu;->a(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    .line 22940
    :cond_20
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v7

    .line 22941
    if-eqz v7, :cond_21

    .line 22942
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    .line 22943
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v8

    iput v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    .line 22944
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getOrg()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v7

    .line 22945
    if-eqz v7, :cond_21

    .line 22946
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->getId()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f:J

    .line 22950
    :cond_21
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iget-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->checkAdmin(Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    .line 22952
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v7

    .line 22953
    if-eqz v7, :cond_22

    .line 22954
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V

    .line 23004
    :cond_22
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 22961
    :cond_23
    :goto_6
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 23016
    invoke-virtual {p0, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Z)V

    .line 23018
    invoke-virtual {p0, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e(Z)V

    .line 23019
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v7}, Lgqu;->d(I)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 23055
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    if-eqz v7, :cond_24

    .line 23056
    invoke-virtual {p0, v12}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e(Z)V

    .line 23057
    new-instance v7, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Landroid/view/View$OnClickListener;)V

    .line 23027
    :cond_24
    :goto_7
    new-instance v7, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$22;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$22;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Landroid/view/View$OnClickListener;)V

    .line 23034
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v7, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setToolBarItemSelectListener(Lgqp;)V

    .line 22965
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22966
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22968
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v8, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$20;

    invoke-direct {v8, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$20;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 22975
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v8, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;

    invoke-direct {v8, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22998
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(I)V

    .line 23000
    iput-boolean v12, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aG:Z

    .line 22914
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    if-eqz v7, :cond_25

    .line 22915
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    invoke-virtual {v7, v11}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 22917
    :cond_25
    invoke-direct {p0, v12}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Z)V

    .line 22919
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->t:Z

    if-nez v7, :cond_0

    .line 22920
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g()V

    goto/16 :goto_0

    .line 23007
    :cond_26
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v7

    .line 23008
    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Ljava/lang/String;)V

    .line 23009
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v8

    .line 23010
    if-eqz v8, :cond_23

    instance-of v9, v8, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    if-nez v9, :cond_23

    .line 23011
    invoke-virtual {v8, v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 23021
    :cond_27
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v7}, Lgqu;->h(I)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 23109
    invoke-virtual {p0, v12}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e(Z)V

    .line 23110
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    if-eqz v7, :cond_28

    sget v7, Lfzs$h;->and_setting_rights:I

    :goto_8
    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d(I)V

    .line 23111
    new-instance v7, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$2;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 23110
    :cond_28
    sget v7, Lfzs$h;->dt_external_contact_view_permission:I

    goto :goto_8

    .line 23023
    :cond_29
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    invoke-static {v7}, Lgqu;->g(I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 23140
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    if-eqz v7, :cond_24

    .line 23141
    invoke-virtual {p0, v12}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e(Z)V

    .line 23142
    new-instance v7, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 2033
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2618
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2619
    sget v1, Lfzs$h;->network_error:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 2620
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v1, :cond_0

    .line 2621
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lgdf;->a(ZLjava/util/List;)V

    .line 2647
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    const-string/jumbo v1, "_"

    invoke-static {p2, v1}, Lgpv;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2629
    .local v0, "nameFilterInvalid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ao:Ljava/lang/String;

    .line 2630
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ao:Ljava/lang/String;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$14;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$14;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    const-class v6, Lcma;

    .line 2646
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 2630
    invoke-interface {v1, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v3, v4, p1, v1}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 10
    .param p2, "needUpload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "saveModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1841
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1842
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->x()I

    move-result v2

    .line 1843
    .local v2, "position":I
    invoke-direct {p0, p1, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Ljava/util/List;Z)V

    .line 1845
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eq v4, v7, :cond_1

    .line 1846
    :cond_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1849
    :cond_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v4, :cond_2

    .line 1850
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lfzz;->a(Ljava/util/List;Z)V

    .line 1851
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 1852
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c()V

    .line 1855
    :cond_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1857
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_3

    .line 1861
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 1862
    .end local v3    # "position":I
    .restart local v2    # "position":I
    goto :goto_0

    .line 1863
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    if-eqz p2, :cond_7

    .line 1864
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1865
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    new-instance v1, Lgpa;

    invoke-direct {v1}, Lgpa;-><init>()V

    .line 1866
    .local v1, "param":Lgpa;
    iput-object v0, v1, Lgpa;->a:Ljava/lang/Object;

    .line 1867
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, v1, Lgpa;->c:Z

    .line 1868
    iput-boolean v6, v1, Lgpa;->d:Z

    .line 1869
    iput v5, v1, Lgpa;->g:I

    .line 1870
    invoke-static {v0}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v4

    iput v4, v1, Lgpa;->f:I

    .line 1871
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v4

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->q()Lgpe$b;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_1

    :cond_5
    move v4, v6

    .line 1867
    goto :goto_2

    .line 1875
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "param":Lgpa;
    .end local v2    # "position":I
    :cond_6
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    .line 1876
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1877
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->t()V

    .line 1880
    :cond_7
    return-void
.end method

.method public final a(ZILcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 6
    .param p1, "isModifying"    # Z
    .param p2, "modifyOperation"    # I
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2910
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v0

    .line 2911
    .local v0, "baseActivity":Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez v0, :cond_1

    .line 2928
    :cond_0
    :goto_0
    return-void

    .line 2914
    :cond_1
    const/16 v3, 0xc8

    if-eq p2, v3, :cond_2

    const/16 v3, 0xc9

    if-ne p2, v3, :cond_0

    .line 2916
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2917
    .local v2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2918
    invoke-virtual {p0, v2, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V

    .line 2919
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->f()V

    .line 2920
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->V:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2921
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->V:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2922
    .local v1, "dbDentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2923
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2924
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aD:Z

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "resultMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2535
    .line 27051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 2535
    if-nez v2, :cond_1

    .line 2550
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    const/4 v0, 0x0

    .line 2539
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 2540
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v2, :cond_2

    .line 2541
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lgdf;->c(I)V

    .line 2547
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v2, :cond_0

    .line 2548
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v2, p1, v0}, Lgdf;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 2544
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x7

    invoke-static {v2, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v1

    .line 2545
    .local v1, "exception":Lggs;
    iget-object v2, v1, Lggs;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, v1, Lggs;->b:Ljava/lang/String;

    :goto_2
    goto :goto_1

    :cond_4
    sget v2, Lfzs$h;->delete_error:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(ZLjava/util/List;)V

    .line 2859
    return-void
.end method

.method public final b_(I)V
    .locals 6
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 2783
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2841
    :cond_0
    :goto_0
    return-void

    .line 2786
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2800
    :pswitch_0
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-eq v2, v5, :cond_0

    .line 2803
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2804
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "time"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_addbutton_reorder_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 2807
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "pref_space_sort_type"

    invoke-static {v2, v3, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2808
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(I)V

    goto :goto_0

    .line 2788
    .end local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-eq v2, v4, :cond_0

    .line 2792
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2793
    .restart local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "alpha"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_addbutton_reorder_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 2796
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "pref_space_sort_type"

    invoke-static {v2, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2797
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(I)V

    goto :goto_0

    .line 2811
    .end local v1    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_addbutton_folder_create_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2813
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v2, :cond_0

    .line 2814
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v2}, Lgdf;->p()V

    goto :goto_0

    .line 2818
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v2, :cond_0

    .line 2819
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lgdf;->c(I)V

    goto :goto_0

    .line 2823
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Z)V

    goto/16 :goto_0

    .line 2826
    :pswitch_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Z)V

    goto/16 :goto_0

    .line 2829
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d()Lgoa;

    move-result-object v0

    .line 2833
    .local v0, "categoryParam":Lgoa;
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$15;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lgoa;)V

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V

    goto/16 :goto_0

    .line 2786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    .line 1284
    return-void
.end method

.method public final c(I)V
    .locals 4
    .param p1, "sortType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2775
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    .line 2776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->X:Z

    .line 2777
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace"

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "space.list.sort.time"

    :goto_0
    invoke-static {v1, v2, v0}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Z)V

    .line 2779
    return-void

    .line 2777
    :cond_0
    const-string/jumbo v0, "space.list.sort.letter"

    goto :goto_0
.end method

.method public final d()Lgoa;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2844
    new-instance v0, Lgoa;

    invoke-direct {v0}, Lgoa;-><init>()V

    .line 2845
    .local v0, "paramModel":Lgoa;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgoa;->d:Z

    .line 2846
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->a:Ljava/lang/String;

    .line 2847
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->b:Ljava/lang/String;

    .line 2848
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->c:Ljava/lang/String;

    .line 2849
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    iput v1, v0, Lgoa;->e:I

    .line 2850
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    iput-boolean v1, v0, Lgoa;->j:Z

    .line 2851
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g:Z

    iput-boolean v1, v0, Lgoa;->h:Z

    .line 2852
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f:J

    iput-wide v2, v0, Lgoa;->f:J

    .line 2853
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->i:Ljava/lang/String;

    .line 2854
    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a()V

    .line 2881
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v0, :cond_0

    .line 2885
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b()V

    .line 2887
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 840
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 843
    :try_start_0
    check-cast p1, Lgdf;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2172
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lfzs$f;->right_operate:I

    if-ne v4, v5, :cond_15

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2175
    sget v4, Lfzs$h;->cspace_network_error:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 24109
    :cond_0
    :goto_0
    return-void

    .line 2179
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2184
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->v()Ljava/util/ArrayList;

    move-result-object v10

    .line 2189
    .local v10, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v4, v10}, Lgdf;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2195
    .end local v10    # "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 2197
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_selectpage_send_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2199
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v4

    invoke-virtual {v4}, Lgld;->c()Ljava/util/List;

    move-result-object v11

    .line 2200
    .local v11, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v4, v11}, Lgdf;->a(Ljava/util/List;)V

    goto :goto_0

    .line 2203
    .end local v11    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 2205
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_selectpage_move_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2212
    .local v13, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2213
    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 2214
    .local v12, "index":I
    const/4 v4, -0x1

    if-eq v12, v4, :cond_4

    .line 2215
    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    .line 2218
    .end local v12    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2219
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lfzs$h;->cspace_files_has_in_target:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    .line 2220
    .local v14, "toast":Landroid/widget/Toast;
    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 2221
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2225
    .end local v14    # "toast":Landroid/widget/Toast;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v4}, Lgdf;->q()V

    goto/16 :goto_0

    .line 2229
    .end local v13    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_14

    .line 2231
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_selectpage_save_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ap:Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 23338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_7

    .line 23339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lgdf;->a(Z)V

    .line 23341
    :cond_7
    new-instance v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$11;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    .line 23362
    const-class v5, Lcma;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 23363
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ap:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    .line 24098
    if-eqz v4, :cond_0

    .line 24101
    iget-object v6, v7, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v6, :cond_8

    .line 24102
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "SpaceRPC"

    const-string/jumbo v7, "addDentryByBatch: mCSpaceService is null"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24104
    const-string/jumbo v5, "SERVICE_NULL"

    const-string/jumbo v6, "mCSpaceService is null"

    invoke-interface {v4, v5, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24107
    :cond_8
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 24108
    :cond_9
    const-string/jumbo v5, "INVALID_PARAM"

    const-string/jumbo v6, "fileModels is null or empty"

    invoke-interface {v4, v5, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24677
    :cond_a
    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 24678
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 24112
    :goto_1
    iget-object v6, v7, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v8, Lgon$58;

    invoke-direct {v8, v7, v4}, Lgon$58;-><init>(Lgon;Lcma;)V

    invoke-interface {v6, v5, v8}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->addDentryByBatch(Ljava/util/List;Liyv;)V

    goto/16 :goto_0

    .line 24680
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24681
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;

    .line 24682
    if-eqz v5, :cond_d

    .line 24685
    new-instance v17, Lggu;

    invoke-direct/range {v17 .. v17}, Lggu;-><init>()V

    .line 25109
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v8, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v18

    .line 24686
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lggu;->c:Ljava/lang/Long;

    .line 24687
    move-object/from16 v0, v17

    iput-object v9, v0, Lggu;->d:Ljava/lang/String;

    .line 24688
    move-object/from16 v0, v17

    iput-object v15, v0, Lggu;->i:Ljava/lang/String;

    .line 24689
    iget-object v0, v5, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->spaceId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 26109
    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v18

    .line 24689
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lggu;->a:Ljava/lang/Long;

    .line 24690
    iget-object v0, v5, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->fileId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lggu;->b:Ljava/lang/String;

    .line 24691
    iget-object v0, v5, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lggu;->e:Ljava/lang/String;

    .line 24692
    iget-object v0, v5, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lggu;->j:Ljava/lang/String;

    .line 24693
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lggu;->f:Ljava/lang/Integer;

    .line 24694
    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->cid:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v5, v0, Lggu;->h:Ljava/lang/String;

    .line 24695
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    move-object v5, v6

    .line 24697
    goto/16 :goto_1

    .line 2238
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 2239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_10

    .line 2240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lgdf;->a(Z)V

    .line 2242
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2246
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->an:Ljava/lang/String;

    .line 26270
    invoke-static {v4}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v4

    .line 2246
    if-eqz v4, :cond_13

    .line 2248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_12

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lgdf;->a(Z)V

    .line 2252
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->P:Lgoj;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->an:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$10;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    invoke-virtual/range {v4 .. v9}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;)V

    goto/16 :goto_0

    .line 2271
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->an:Ljava/lang/String;

    invoke-interface {v4, v5}, Lgdf;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2275
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lgdf;->a(Z)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lgdf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2282
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lfzs$f;->left_operate:I

    if-ne v4, v5, :cond_0

    .line 2283
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    .line 2284
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2285
    sget v4, Lfzs$h;->cspace_network_error:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2289
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2293
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->v()Ljava/util/ArrayList;

    move-result-object v10

    .line 2298
    .restart local v10    # "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v4, v10}, Lgdf;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2304
    .end local v10    # "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 2306
    :cond_18
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_selectpage_newfolder_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v4, :cond_0

    .line 2309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    invoke-interface {v4}, Lgdf;->p()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3301
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 3302
    if-eqz v1, :cond_4

    .line 3303
    const-string/jumbo v0, "space_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    .line 3304
    const-string/jumbo v0, "path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    .line 3305
    const-string/jumbo v0, "folder_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    .line 3306
    const-string/jumbo v0, "is_admin"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    .line 3307
    const-string/jumbo v0, "mode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    .line 3309
    const-string/jumbo v0, "save_file"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    const-string/jumbo v0, "save_file"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->an:Ljava/lang/String;

    .line 3312
    :cond_0
    const-string/jumbo v0, "batch_save_file_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3313
    const-string/jumbo v0, "batch_save_file_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ap:Ljava/util/ArrayList;

    .line 3315
    :cond_1
    const-string/jumbo v0, "repath_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3316
    const-string/jumbo v0, "repath_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    .line 3319
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3320
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3321
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3322
    if-eqz v0, :cond_2

    .line 3326
    const-string/jumbo v3, "folder"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3327
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3333
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->H:Ljava/lang/String;

    .line 3336
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3337
    const-string/jumbo v0, "/"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    .line 3345
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g:Z

    if-eqz v0, :cond_8

    .line 3346
    iput v7, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    .line 3351
    :goto_2
    if-eqz v1, :cond_6

    .line 3352
    const-string/jumbo v0, "intent_key_args"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    .line 3353
    if-eqz v0, :cond_6

    .line 3354
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getMode()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    .line 3355
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->I:Z

    .line 3356
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isFromConversation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g:Z

    .line 3357
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getConversationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h:Ljava/lang/String;

    .line 3358
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getRePathDentryList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ar:Ljava/util/List;

    .line 3359
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ao:Ljava/lang/String;

    .line 3360
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getBatchSaveFileList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ap:Ljava/util/ArrayList;

    .line 3361
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    .line 3362
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getDentryId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    .line 3363
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 3364
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    if-eqz v0, :cond_6

    .line 3365
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3374
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_9

    .line 3376
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ax:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 294
    :goto_3
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace"

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v0, v7, :cond_c

    const-string/jumbo v0, "space.list.appear.time"

    :goto_4
    invoke-static {v1, v2, v0}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n:Lxm;

    invoke-static {v0, v1}, Lth;->a(Ljava/lang/Class;Lxm;)V

    .line 4431
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m:Lyb;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "cspace_dentry_chooser_cancel"

    aput-object v3, v2, v6

    const-string/jumbo v3, "cspace_dentry_download"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 4434
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->P:Lgoj;

    .line 4438
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4439
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aI:Landroid/content/BroadcastReceiver;

    .line 4465
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void

    .line 3340
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->L:Ljava/lang/String;

    goto/16 :goto_1

    .line 3348
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    invoke-static {v0, v2}, Lgpr;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    goto/16 :goto_2

    .line 3380
    :cond_9
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ax:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto/16 :goto_3

    .line 3386
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3387
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    .line 4054
    :cond_b
    new-instance v1, Lgaf$a;

    invoke-direct {v1}, Lgaf$a;-><init>()V

    .line 3389
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    .line 4067
    iput-object v0, v1, Lgaf$a;->a:Ljava/lang/String;

    .line 3390
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->M:Ljava/lang/String;

    .line 4076
    iput-object v0, v1, Lgaf$a;->b:Ljava/lang/String;

    .line 4094
    iput-boolean v6, v1, Lgaf$a;->c:Z

    .line 4103
    iput-boolean v5, v1, Lgaf$a;->d:Z

    .line 4112
    iput-boolean v5, v1, Lgaf$a;->e:Z

    .line 4121
    iput-boolean v5, v1, Lgaf$a;->f:Z

    .line 4130
    iput-boolean v6, v1, Lgaf$a;->g:Z

    .line 3397
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lgaf$a;)V

    .line 3425
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3426
    invoke-static {v1, v0}, Lgaf;->a(Lgaf$a;Lcma;)V

    goto/16 :goto_3

    .line 294
    :cond_c
    const-string/jumbo v0, "space.list.appear.letter"

    goto/16 :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 852
    sget v1, Lfzs$g;->alm_cspace_list:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    .line 855
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a()V

    .line 856
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 857
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 859
    sget v1, Lfzs$f;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ai:Landroid/widget/RelativeLayout;

    .line 860
    sget v1, Lfzs$f;->left_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aj:Landroid/widget/TextView;

    .line 861
    sget v1, Lfzs$f;->right_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ak:Landroid/widget/TextView;

    .line 862
    sget v1, Lfzs$f;->no_file_guide_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->av:Landroid/widget/TextView;

    .line 863
    sget v1, Lfzs$f;->first_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->au:Landroid/widget/RelativeLayout;

    .line 864
    sget v1, Lfzs$f;->tv_send_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->am:Landroid/widget/TextView;

    .line 865
    sget v1, Lfzs$f;->guide_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aw:Landroid/widget/TextView;

    .line 866
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->az:Landroid/view/ViewStub;

    .line 868
    sget v1, Lfzs$f;->swipe_layout_mail_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 869
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Lfzs$c;->swipe_refresh_color1:I

    aput v3, v2, v5

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v2, v6

    const/4 v3, 0x2

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 873
    sget v1, Lfzs$f;->plus_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 874
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Z)V

    .line 876
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 877
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    .line 879
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1304
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n:Lxm;

    invoke-static {v0, v1}, Lth;->b(Ljava/lang/Class;Lxm;)V

    .line 1305
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 1306
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1307
    invoke-static {}, Lgpe;->a()Lgpe;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgpe;->a(Landroid/content/Context;I)V

    .line 1309
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onDestroy()V

    .line 1310
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1298
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onPause()V

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aH:Z

    .line 1300
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1212
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onResume()V

    .line 1214
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ax:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aG:Z

    if-nez v3, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v0

    .line 1219
    .local v0, "baseActivity":Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1220
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e()V

    .line 1223
    :cond_2
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1224
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->r()V

    .line 1226
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aH:Z

    .line 1228
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g:Z

    if-nez v3, :cond_4

    .line 1229
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    invoke-static {v3, v4}, Lgpr;->a(Landroid/content/Context;I)I

    move-result v1

    .line 1230
    .local v1, "sortType":I
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-eq v1, v3, :cond_6

    .line 1232
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    .line 1233
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aD:Z

    .line 1234
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->X:Z

    .line 1240
    .end local v1    # "sortType":I
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aD:Z

    if-eqz v3, :cond_7

    .line 1241
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aD:Z

    .line 1242
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->U:Z

    .line 1244
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->W:Z

    .line 1245
    invoke-direct {p0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Z)V

    .line 1246
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v3, :cond_0

    .line 1247
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->Y:I

    if-ne v4, v2, :cond_5

    const/4 v2, 0x2

    :cond_5
    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    goto :goto_0

    .line 1236
    .restart local v1    # "sortType":I
    :cond_6
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->X:Z

    goto :goto_1

    .line 1250
    .end local v1    # "sortType":I
    :cond_7
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->U:Z

    if-eqz v2, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lfzz;->a(Ljava/util/List;Z)V

    .line 1252
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ab:Lfzz;

    invoke-virtual {v2}, Lfzz;->notifyDataSetChanged()V

    .line 1253
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->U:Z

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2734
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ae:I

    .line 2735
    add-int v0, p2, p3

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->af:I

    .line 2736
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->af:I

    if-ne v0, p4, :cond_0

    .line 2737
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->w()V

    .line 2739
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2740
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Landroid/widget/ListView;I)V

    .line 2742
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 2729
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->ad:I

    .line 2730
    return-void
.end method
