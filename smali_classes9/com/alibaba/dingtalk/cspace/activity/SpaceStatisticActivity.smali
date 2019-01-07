.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

.field private d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

.field private e:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;

.field private f:Landroid/view/MenuItem;

.field private g:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:J

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->j:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m:Ljava/util/Map;

    .line 105
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->o:J

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->p:I

    .line 666
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lghd;)Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
    .param p1, "x1"    # Lghd;

    .prologue
    .line 82
    .line 6464
    if-nez p1, :cond_0

    .line 6465
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6468
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;

    iget-object v1, p1, Lghd;->a:Ljava/lang/Long;

    iget-object v2, p1, Lghd;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;-><init>(Ljava/lang/Long;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x0

    .line 82
    .line 10606
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 10607
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->o:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 10608
    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    .line 10609
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v1

    .line 10608
    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;I)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v2

    .line 10610
    iput-boolean v7, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    .line 10612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10614
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 10615
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 10616
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10619
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10620
    const-string/jumbo v0, "ding_source"

    const/16 v4, 0xb

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10621
    const-string/jumbo v0, "ding_text_content"

    sget v4, Lfzs$h;->dt_space_statistics_ding_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10622
    const-string/jumbo v0, "ding_attachment"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10623
    const-string/jumbo v2, "seleced_members"

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10625
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 287
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n:I

    invoke-static {v0}, Lgqu;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 4371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4372
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceStatisticActivity"

    const-string/jumbo v2, "getUsersUnreadOfCooperation: null conversationId"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    if-eqz v0, :cond_0

    .line 4374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    .line 5307
    :cond_0
    :goto_0
    return-void

    .line 4379
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4380
    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4381
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4382
    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4383
    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4385
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 4386
    if-eqz v0, :cond_0

    .line 4390
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 4447
    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->listMembersByRole(Ljava/lang/String;Ljava/util/List;Liyv;)V

    goto :goto_0

    .line 5298
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 5302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5303
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceStatisticActivity"

    const-string/jumbo v2, "getUsersUnreadOfGroup: null conversationId"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    if-eqz v0, :cond_0

    .line 5305
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0

    .line 5310
    :cond_3
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V

    .line 5358
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5360
    invoke-static {p1, v0}, Lgop;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    .line 6633
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 6634
    sget v0, Lfzs$h;->dt_cspace_statistics_read:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 6636
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_statistics_read:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "999+"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    const/4 v3, 0x0

    .line 82
    .line 7227
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_2

    .line 7232
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 7234
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n:I

    invoke-static {v0}, Lgqu;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7235
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfzv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7240
    :cond_0
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7242
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7243
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Ljava/lang/String;)V

    .line 7250
    :cond_2
    :goto_0
    return-void

    .line 7247
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 7248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7249
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8043
    :cond_4
    new-instance v2, Lgah$a;

    invoke-direct {v2}, Lgah$a;-><init>()V

    .line 8056
    iput-object v1, v2, Lgah$a;->a:Ljava/lang/String;

    .line 8065
    iput-boolean v3, v2, Lgah$a;->b:Z

    .line 8074
    iput-boolean v3, v2, Lgah$a;->c:Z

    .line 8083
    iput-boolean v3, v2, Lgah$a;->d:Z

    .line 7258
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/lang/String;)V

    .line 7282
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7283
    invoke-static {v2, v0}, Lgah;->a(Lgah$a;Lcma;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    .line 8474
    const/4 v0, 0x0

    .line 8476
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8477
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8481
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 8483
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->setLeave(Z)V

    move v0, v2

    :goto_1
    move v1, v0

    .line 8485
    goto :goto_0

    .line 8487
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    if-eqz v0, :cond_2

    .line 8488
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    .line 8491
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 8493
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 8494
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8546
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8498
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 9454
    if-nez v0, :cond_4

    move-object v1, v3

    .line 8500
    :goto_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8501
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Ljava/lang/Long;Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;)V

    goto :goto_2

    .line 9458
    :cond_4
    new-instance v1, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;

    invoke-direct {v1, v0, v3}, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;-><init>(Ljava/lang/Long;Ljava/util/Map;)V

    goto :goto_3

    .line 82
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    .line 9646
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 9647
    sget v0, Lfzs$h;->dt_cspace_statistics_unread:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 9649
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_statistics_unread:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "999+"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->o:J

    return-wide v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget v0, Lfzs$g;->activity_space_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->hideToolbarDivide()V

    .line 1509
    sget v0, Lfzs$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1510
    sget v0, Lfzs$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->b:Landroid/support/v4/view/ViewPager;

    .line 1512
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;

    .line 1513
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1514
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1515
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 1516
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->dt_cspace_filelist_action_statistics:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2124
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2125
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "dentry_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2130
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "space_type"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->n:I

    .line 2131
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "space_org_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->o:J

    .line 2140
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 2143
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    .line 2144
    if-eqz v7, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2149
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 4109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    sget-object v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->d:Ljava/lang/Integer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2153
    sget-object v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->e:Ljava/lang/Integer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2155
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;JJLjava/util/List;)V

    .line 2223
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2, v6, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listUidsByFileIdAndAccessType(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 521
    sget v0, Lfzs$h;->tab_ding:I

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->f:Landroid/view/MenuItem;

    .line 522
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->f:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 524
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 657
    invoke-static {}, Lgpq;->a()Lgpq;

    move-result-object v0

    .line 6075
    iget-object v0, v0, Lgpq;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 658
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 529
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_viewstat_ding_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5560
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 5564
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_1

    .line 5590
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5591
    sget v1, Lfzs$h;->dt_space_statistics_ding_too_many_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5592
    sget v1, Lfzs$h;->and_guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5598
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5599
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 534
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 5569
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V

    .line 5585
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5586
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 663
    return-void
.end method
