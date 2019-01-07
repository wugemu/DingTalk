.class public Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.super Lcom/alibaba/android/oa/fragment/OAContentFragment;
.source "CommonOAFragment.java"

# interfaces
.implements Leer$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;
    }
.end annotation


# static fields
.field private static B:Z

.field private static final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lefv;",
            ">;>;"
        }
    .end annotation
.end field

.field private final C:Ljava/lang/Runnable;

.field public a:Landroid/support/v7/widget/RecyclerView;

.field public b:Leee;

.field public c:Landroid/view/View;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field public e:Z

.field public f:J

.field public g:Landroid/view/View;

.field private i:Landroid/view/GestureDetector;

.field private j:Landroid/view/View$OnTouchListener;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lefv;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Lcom/alibaba/doraemon/image/ImageMagician;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/TopPicObject;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private t:Leek;

.field private u:Lcrb;

.field private v:Z

.field private w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

.field private x:Leep;

.field private y:Leeq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 155
    sput-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, -0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, -0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, 0x9e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, -0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, -0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, -0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    const-wide/16 v2, -0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->B:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->v:Z

    .line 146
    iput-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    .line 148
    iput-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    .line 895
    new-instance v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$2;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->C:Ljava/lang/Runnable;

    .line 178
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/CommonOAFragment;I)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 87
    .line 14870
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14871
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "FIRST_SHOW_CREATE_TEAM_TIPS_KEY"

    invoke-static {v1, v4, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 14792
    :goto_0
    if-eqz v0, :cond_4

    .line 14798
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$15;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14809
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v3

    .line 14810
    :goto_1
    if-ge v1, v4, :cond_5

    .line 14811
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefv;

    .line 14812
    if-eqz v0, :cond_3

    .line 14813
    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 14814
    if-eqz v0, :cond_3

    .line 14815
    int-to-long v6, p1

    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    move v0, v1

    .line 14824
    :goto_2
    if-eq v0, v2, :cond_1

    .line 14828
    new-instance v1, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .line 14829
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .line 15071
    iput v0, v1, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->a:I

    .line 14830
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    .line 15076
    if-eqz v2, :cond_0

    .line 15077
    iget-object v4, v1, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 15078
    iget-object v1, v1, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14831
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .line 15084
    iput p1, v1, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->b:I

    .line 14832
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    new-instance v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;I)V

    .line 15265
    iput-object v2, v1, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 14843
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "FIRST_SHOW_CREATE_TEAM_TIPS_KEY"

    invoke-static {v0, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14847
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v3

    .line 14871
    goto :goto_0

    .line 14810
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14848
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->j()V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lefv;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;
    .param p1, "x1"    # Lefv;

    .prologue
    .line 87
    .line 13378
    if-eqz p1, :cond_0

    .line 13379
    iget v0, p1, Lefv;->a:I

    packed-switch v0, :pswitch_data_0

    .line 13384
    :cond_0
    :goto_0
    return-void

    .line 13381
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;-><init>(Landroid/content/Context;)V

    .line 13382
    iget-object v1, p1, Lefv;->c:Lgtr;

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a(Lgtr;J)V

    .line 13383
    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->show()V

    goto :goto_0

    .line 13387
    :pswitch_1
    iget-object v0, p1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 13388
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    goto :goto_0

    .line 13379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    const/4 v9, 0x1

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v2, "inLocationAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 579
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    invoke-interface {v7, v9, v0}, Leek;->a(ILcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 580
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    .end local v0    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    new-instance v6, Lcom/alibaba/android/oa/fragment/CommonOAFragment$13;

    invoke-direct {v6, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$13;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 591
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v1, "groupLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 594
    .local v4, "microAppObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget v6, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionId:I

    if-lez v6, :cond_3

    .line 595
    new-instance v5, Lefv;

    invoke-direct {v5, v4}, Lefv;-><init>(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 596
    .local v5, "microGridItemObject":Lefv;
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    iget v8, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    iget v8, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 601
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    iget v8, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    .end local v5    # "microGridItemObject":Lefv;
    :cond_3
    iget-object v6, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 604
    new-instance v5, Lefv;

    invoke-direct {v5, v4}, Lefv;-><init>(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 605
    .restart local v5    # "microGridItemObject":Lefv;
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 608
    .end local v5    # "microGridItemObject":Lefv;
    :cond_4
    iget-object v6, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupKey:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 609
    iget-object v8, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    iget-object v6, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupKey:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lefv;

    .line 610
    .restart local v5    # "microGridItemObject":Lefv;
    invoke-virtual {v5, v4}, Lefv;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    goto/16 :goto_1

    .line 613
    .end local v5    # "microGridItemObject":Lefv;
    :cond_5
    new-instance v5, Lefv;

    invoke-direct {v5, v9}, Lefv;-><init>(I)V

    .line 614
    .restart local v5    # "microGridItemObject":Lefv;
    invoke-virtual {v5, v4}, Lefv;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 615
    iget-object v6, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->groupKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 622
    .end local v4    # "microAppObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v5    # "microGridItemObject":Lefv;
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lefv;

    .line 623
    .restart local v5    # "microGridItemObject":Lefv;
    iget v7, v5, Lefv;->a:I

    if-ne v7, v9, :cond_7

    .line 624
    iget-object v7, v5, Lefv;->c:Lgtr;

    invoke-virtual {v7}, Lgtr;->a()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 625
    const/4 v7, 0x2

    iput v7, v5, Lefv;->a:I

    .line 626
    const/4 v7, 0x0

    iput-object v7, v5, Lefv;->c:Lgtr;

    goto :goto_2

    .line 630
    .end local v5    # "microGridItemObject":Lefv;
    :cond_8
    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    .line 5056
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/16 v8, 0x9

    if-eq v6, v8, :cond_9

    .line 5057
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v6, v6, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    if-eqz v6, :cond_9

    .line 5058
    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v6, v6, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    const/4 v8, -0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    .line 5059
    if-eqz v6, :cond_9

    .line 5060
    new-instance v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {v8}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 5061
    iget-object v9, v6, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mText:Ljava/lang/String;

    iput-object v9, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 5062
    iget-object v9, v6, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mUrl:Ljava/lang/String;

    iput-object v9, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    .line 5063
    iget-object v9, v6, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->corpId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    .line 5064
    iget-object v6, v6, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIcon:Ljava/lang/String;

    iput-object v6, v8, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 5065
    new-instance v6, Lefv;

    invoke-direct {v6, v8}, Lefv;-><init>(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 5066
    const/4 v8, 0x3

    iput v8, v6, Lefv;->a:I

    .line 5067
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_9
    return-void
.end method

.method public static b(Z)Lcom/alibaba/android/oa/fragment/CommonOAFragment;
    .locals 4
    .param p0, "hasBanner"    # Z

    .prologue
    .line 170
    new-instance v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;-><init>()V

    .line 171
    .local v1, "fragment":Lcom/alibaba/android/oa/fragment/CommonOAFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "has_banner"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {v1, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lefv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "microGridItemObjectList":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    if-nez p0, :cond_1

    .line 659
    :cond_0
    return-void

    .line 651
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v3, v4, 0x4

    .line 652
    .local v3, "remain":I
    if-lez v3, :cond_0

    .line 653
    rsub-int/lit8 v0, v3, 0x4

    .line 654
    .local v0, "add":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 655
    new-instance v2, Lefv;

    const/4 v4, -0x1

    invoke-direct {v2, v4}, Lefv;-><init>(I)V

    .line 656
    .local v2, "item":Lefv;
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public static c()Lcom/alibaba/android/oa/fragment/CommonOAFragment;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b(Z)Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lefv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "microMainGridItemList":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    const/4 v3, 0x0

    .line 1073
    sget-object v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 1074
    .local v1, "len":I
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    :cond_0
    move v2, v3

    .line 1086
    :goto_0
    return v2

    .line 1077
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1078
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lefv;

    iget-object v2, v2, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v2, :cond_2

    .line 1079
    sget-object v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->z:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lefv;

    iget-object v2, v2, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 1080
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1083
    goto :goto_0

    .line 1077
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1086
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->i:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 13878
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->o()Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 13884
    const/16 v0, 0x9e

    .line 87
    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method private i()Landroid/view/View;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Ledz$g;->fragment_common_oa_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 397
    .local v1, "headerView":Landroid/view/View;
    sget v2, Ledz$f;->oa_fragment_banner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    .line 398
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;B)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->i:Landroid/view/GestureDetector;

    .line 399
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    sget v3, Ledz$f;->banner_flipper:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    .line 400
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    new-instance v3, Lcom/alibaba/android/oa/fragment/CommonOAFragment$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$10;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOnViewChange(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;)V

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Ledz$a;->slide_left_in:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 419
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Ledz$a;->slide_left_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    new-instance v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment$11;

    invoke-direct {v2, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$11;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->j:Landroid/view/View$OnTouchListener;

    .line 431
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    sget v3, Ledz$f;->banner_txt:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->o:Landroid/widget/TextView;

    .line 433
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    sget v3, Ledz$f;->banner_dot_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->p:Landroid/widget/LinearLayout;

    .line 434
    return-object v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->dismiss()V

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->w:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .line 858
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g()V

    return-void
.end method

.method private k()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x3

    const/16 v6, 0x9

    .line 994
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "greaterThanMainGridViewItemSize":Z
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v6, :cond_0

    .line 997
    const/4 v0, 0x1

    .line 999
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v7, "orderList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lefv;>;>;"
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1002
    .local v8, "sectionId":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1004
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    iget-object v11, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v11, v11, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v11, v11, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1006
    iget-object v11, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v11, v11, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->sectionInfos:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    .line 1007
    .local v3, "marketInfoObject":Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    new-instance v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {v4}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 1008
    .local v4, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-object v11, v3, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mText:Ljava/lang/String;

    iput-object v11, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 1009
    iget-object v11, v3, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mUrl:Ljava/lang/String;

    iput-object v11, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    .line 1010
    iget-object v11, v3, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->corpId:Ljava/lang/String;

    iput-object v11, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    .line 1011
    iget-object v11, v3, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIcon:Ljava/lang/String;

    iput-object v11, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 1012
    new-instance v5, Lefv;

    invoke-direct {v5, v4}, Lefv;-><init>(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 1013
    .local v5, "microGridItemObject":Lefv;
    const/4 v11, 0x3

    iput v11, v5, Lefv;->a:I

    .line 1014
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    .end local v3    # "marketInfoObject":Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    .end local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v5    # "microGridItemObject":Lefv;
    :cond_1
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1019
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    .end local v8    # "sectionId":Ljava/lang/Integer;
    :cond_2
    new-instance v10, Lcom/alibaba/android/oa/fragment/CommonOAFragment$5;

    invoke-direct {v10, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$5;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1025
    const/4 v9, 0x0

    .line 1026
    .local v9, "sectionSize":I
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v6, :cond_3

    .line 1028
    .local v6, "offset":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 1029
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1030
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b(Ljava/util/List;)V

    .line 1031
    new-instance v5, Lefv;

    invoke-direct {v5, v12}, Lefv;-><init>(I)V

    .line 1032
    .restart local v5    # "microGridItemObject":Lefv;
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lefv;

    iget-object v10, v10, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v10, v10, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->sectionName:Ljava/lang/String;

    iput-object v10, v5, Lefv;->d:Ljava/lang/String;

    .line 1033
    invoke-interface {v2, v13, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1034
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    add-int v11, v6, v9

    invoke-interface {v10, v11, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1035
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1026
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    .end local v5    # "microGridItemObject":Lefv;
    .end local v6    # "offset":I
    :cond_3
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_1

    .line 1037
    .restart local v1    # "i":I
    .restart local v6    # "offset":I
    :cond_4
    if-eqz v0, :cond_5

    .line 1038
    new-instance v5, Lefv;

    invoke-direct {v5, v12}, Lefv;-><init>(I)V

    .line 1039
    .restart local v5    # "microGridItemObject":Lefv;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Ledz$h;->dt_work_oa_tab_other_app:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lefv;->d:Ljava/lang/String;

    .line 1040
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    add-int/lit8 v11, v9, 0x9

    invoke-interface {v10, v11, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1052
    .end local v0    # "greaterThanMainGridViewItemSize":Z
    .end local v1    # "i":I
    .end local v5    # "microGridItemObject":Lefv;
    .end local v6    # "offset":I
    .end local v7    # "orderList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lefv;>;>;"
    .end local v9    # "sectionSize":I
    :cond_5
    :goto_3
    return-void

    .line 1043
    :cond_6
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v6, :cond_5

    .line 1044
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lefv;

    iget v10, v10, Lefv;->a:I

    sget v11, Ledz$f;->oa_gridview_middle_title:I

    if-eq v10, v11, :cond_5

    .line 1045
    new-instance v5, Lefv;

    invoke-direct {v5, v12}, Lefv;-><init>(I)V

    .line 1046
    .restart local v5    # "microGridItemObject":Lefv;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Ledz$h;->dt_work_oa_tab_other_app:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lefv;->d:Ljava/lang/String;

    .line 1047
    iget-object v10, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v10, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method static synthetic k(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    const/4 v4, 0x2

    const/high16 v1, -0x3b860000    # -1000.0f

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 87
    .line 16131
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 16139
    :cond_0
    :goto_0
    return-void

    .line 16134
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 16135
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setAlpha(F)V

    .line 16136
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationX(F)V

    .line 16137
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationY(F)V

    .line 16138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    goto :goto_0

    .line 16141
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    sget v1, Ledz$f;->iv_blue_guide_down_arrow:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 16142
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    sget v2, Ledz$f;->iv_blue_guide_up_arrow:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 16143
    new-array v2, v4, [I

    .line 16144
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 16145
    new-array v3, v4, [I

    .line 16146
    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16147
    aget v4, v3, v8

    aget v5, v2, v8

    sub-int/2addr v4, v5

    aput v4, v3, v8

    .line 16148
    aget v4, v3, v9

    aget v2, v2, v9

    sub-int v2, v4, v2

    aput v2, v3, v9

    .line 16149
    new-instance v2, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16150
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 16151
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 16152
    new-instance v6, Landroid/graphics/PointF;

    aget v7, v3, v8

    iget-object v8, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    aget v3, v3, v9

    int-to-float v3, v3

    invoke-direct {v6, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16153
    invoke-static {v2, v4, v5, v6, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a(Landroid/graphics/PointF;FLandroid/graphics/RectF;Landroid/graphics/PointF;Z)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;

    move-result-object v2

    .line 16154
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iget v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->b:F

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationX(F)V

    .line 16155
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iget v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->c:F

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationY(F)V

    .line 16156
    iget v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->a:I

    if-ne v3, v9, :cond_3

    .line 16157
    iget v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 16161
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iget v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->a:I

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->fromValue(I)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setArrowOrientation(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;)V

    goto/16 :goto_0

    .line 16159
    :cond_3
    iget v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$a;->d:F

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method private l()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->marketInfo:Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->marketInfo:Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIsShow:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 1221
    :goto_0
    return v0

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v4, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-interface {v0, v4, v5}, Leek;->d(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1221
    invoke-static {}, Leeo;->a()Leeo;

    move-result-object v0

    const-string/jumbo v3, "1"

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v4, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "GLOBAL"

    .line 13105
    iget-object v6, v0, Leeo;->b:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, v0, Leeo;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 13106
    iget-object v0, v0, Leeo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leeo$b;

    .line 13107
    iget-object v7, v0, Leeo$b;->c:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, v0, Leeo$b;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 13108
    iget-object v0, v0, Leeo$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leeo$a;

    .line 13109
    iget-object v8, v0, Leeo$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Leeo$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v0, v0, Leeo$a;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 1221
    :goto_1
    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 13116
    goto :goto_1

    :cond_6
    move v0, v1

    .line 1221
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 10
    .param p1, "object"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 222
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lciq;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    invoke-interface {v0, p1}, Leek;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "micro_app_show_update"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    iget-wide v8, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 231
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 230
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintVersion:I

    invoke-static {v0, v2, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-virtual {v0}, Leee;->notifyDataSetChanged()V

    .line 234
    :cond_1
    invoke-static {p1}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v5, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 247
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v6, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "orgid"

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v0, "category_id"

    iget-wide v2, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v0, "agentid"

    iget-wide v2, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oa_category_click"

    invoke-interface {v0, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    iget-wide v2, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    iget-wide v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->h()V

    .line 258
    .end local v1    # "url":Ljava/lang/String;
    .end local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public final a(Lcrb;)V
    .locals 0
    .param p1, "listener"    # Lcrb;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->u:Lcrb;

    .line 702
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isDisallow"    # Z

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1091
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 756
    sput-boolean p1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->B:Z

    .line 10761
    sget-boolean v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->B:Z

    if-eqz v0, :cond_0

    .line 10762
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 10763
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$14;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 758
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 664
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v10

    .line 665
    .local v10, "orgId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_f

    .line 666
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    if-eqz v0, :cond_f

    .line 667
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    invoke-interface {v0, v10, v11}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v8

    .line 668
    .local v8, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v8, :cond_0

    .line 669
    iput-object v8, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 5262
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    if-eqz v0, :cond_1

    .line 5265
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5266
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leeq;->a(Z)V

    .line 7529
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_d

    .line 7533
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-eqz v0, :cond_d

    .line 8438
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 8696
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "has_banner"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8442
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->topPicList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->topPicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->officialTopPicList:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->officialTopPicList:Ljava/util/List;

    .line 8443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 8444
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8445
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    if-nez v0, :cond_7

    .line 8446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    .line 8450
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->topPicList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 8451
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->topPicList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8456
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->removeAllViews()V

    .line 8457
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8458
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->s:Ljava/util/List;

    if-nez v0, :cond_9

    .line 8459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->s:Ljava/util/List;

    .line 8464
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 8466
    const/4 v0, 0x0

    move v12, v0

    :goto_4
    if-ge v12, v13, :cond_a

    .line 8467
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    .line 8469
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8470
    sget v0, Ledz$h;->dt_accessibility_ads:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8472
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8473
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8474
    sget v0, Ledz$e;->oa_default_banner:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8476
    :try_start_0
    iget-object v0, v9, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->pic:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8477
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    const/16 v3, 0x280

    const/16 v4, 0x17c

    invoke-virtual {v2, v0, v3, v4}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 8478
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8483
    :goto_5
    new-instance v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;

    invoke-direct {v0, p0, v12, v9}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;ILcom/alibaba/dingtalk/oabase/models/TopPicObject;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8497
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8499
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->addView(Landroid/view/View;)V

    .line 8501
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8502
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8503
    sget v1, Ledz$e;->dot_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8504
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 8505
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8506
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8466
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto/16 :goto_4

    .line 5268
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leeq;->a(Z)V

    .line 5269
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->marketInfo:Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    .line 6196
    if-eqz v1, :cond_1

    iget-object v2, v0, Leeq;->a:Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 6197
    invoke-static {v1}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;)Ljava/lang/String;

    move-result-object v1

    .line 6198
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "#home/admin"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Leeq;->h:Ljava/lang/String;

    .line 6201
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6202
    iput-object v2, v0, Leeq;->h:Ljava/lang/String;

    .line 6203
    new-instance v2, Leeq$3;

    invoke-direct {v2, v0}, Leeq$3;-><init>(Leeq;)V

    .line 6211
    iget-object v3, v0, Leeq;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6214
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Leeq;->i:Ljava/lang/String;

    .line 6215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6216
    iput-object v1, v0, Leeq;->i:Ljava/lang/String;

    .line 6218
    new-instance v1, Leeq$4;

    invoke-direct {v1, v0}, Leeq$4;-><init>(Leeq;)V

    .line 6235
    iget-object v2, v0, Leeq;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7131
    iget-boolean v1, v0, Leeq;->j:Z

    if-nez v1, :cond_1

    .line 7132
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 7133
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->k:Ljava/lang/String;

    new-instance v4, Leeq$1;

    invoke-direct {v4, v0, v1}, Leeq$1;-><init>(Leeq;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 7162
    new-instance v2, Leeq$2;

    invoke-direct {v2, v0, v1}, Leeq$2;-><init>(Leeq;[Ljava/lang/String;)V

    .line 7190
    iget-object v1, v0, Leeq;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7191
    const/4 v1, 0x1

    iput-boolean v1, v0, Leeq;->j:Z

    goto/16 :goto_0

    .line 8448
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 8452
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->officialTopPicList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 8453
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->officialTopPicList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 8461
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_3

    .line 8479
    :catch_0
    move-exception v0

    .line 8480
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_5

    .line 8509
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Ledz$e;->dot_focused:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8510
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->r:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8512
    const/4 v0, 0x1

    if-ne v13, v0, :cond_10

    .line 8514
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setAutoStart(Z)V

    .line 8515
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->stopFlipping()V

    .line 8516
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7536
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 7538
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7539
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9563
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 9564
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Ledz$h;->dt_work_oa_tab_smart_moblie:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9569
    :goto_7
    new-instance v1, Lefv;

    const/4 v2, -0x3

    invoke-direct {v1, v2}, Lefv;-><init>(I)V

    .line 9570
    iput-object v0, v1, Lefv;->d:Ljava/lang/String;

    .line 9571
    const/4 v0, 0x1

    iput-boolean v0, v1, Lefv;->e:Z

    .line 9572
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7542
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Ljava/util/List;)V

    .line 7543
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b(Ljava/util/List;)V

    .line 7544
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    .line 9634
    if-eqz v0, :cond_c

    .line 9636
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    .line 9637
    if-nez v1, :cond_c

    .line 9639
    iget-boolean v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->v:Z

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l()Z

    move-result v1

    if-nez v1, :cond_c

    .line 9640
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-lt v1, v2, :cond_c

    .line 9641
    new-instance v1, Lefv;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lefv;-><init>(I)V

    .line 9642
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7545
    :cond_c
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k()V

    .line 7546
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-virtual {v0}, Leee;->notifyDataSetChanged()V

    .line 674
    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    if-eqz v0, :cond_e

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    invoke-virtual {v0, v10, v11}, Leep;->a(J)V

    .line 677
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d(Z)V

    .line 680
    .end local v8    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_f
    return-void

    .line 8518
    .restart local v8    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setAutoStart(Z)V

    .line 8519
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->startFlipping()V

    .line 8520
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 8524
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->m:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 9566
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Ledz$h;->dt_work_oa_tab_common_app:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 7549
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7550
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7551
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k()V

    .line 7552
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-virtual {v0}, Leee;->notifyDataSetChanged()V

    goto :goto_8
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 684
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->f()V

    .line 685
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v0

    .line 687
    .local v0, "orgId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    if-eqz v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    invoke-virtual {v2, v0, v1}, Leep;->a(J)V

    .line 693
    .end local v0    # "orgId":J
    :cond_0
    return-void
.end method

.method g()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 922
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->a()V

    .line 923
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 924
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 925
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 927
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 928
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leej$a;

    iget-object v3, v3, Leej$a;->a:Ljava/lang/String;

    .line 11079
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 929
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leej$a;

    iget-object v3, v3, Leej$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v4, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v3, v4}, Legf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "replaceUrl":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->t:Leek;

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Leek;->c(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 937
    new-array v3, v8, [Ljava/lang/String;

    aput-object v1, v3, v6

    const-string/jumbo v4, "1"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 942
    :goto_1
    new-instance v3, Lcom/alibaba/android/oa/fragment/CommonOAFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$3;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 12091
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 949
    move-object v2, v1

    .line 950
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Ljava/lang/String;)V

    .line 12095
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 961
    .end local v1    # "replaceUrl":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 962
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 963
    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "CommonOAFragment"

    const-string/jumbo v5, "show market dlg"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return-void

    .line 931
    :cond_1
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leej$a;

    iget-object v3, v3, Leej$a;->a:Ljava/lang/String;

    .line 11083
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 932
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leej$a;

    iget-object v3, v3, Leej$a;->a:Ljava/lang/String;

    .line 12079
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 933
    invoke-static {}, Leej;->e()Leei;

    move-result-object v3

    invoke-interface {v3}, Leei;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leej$a;

    iget-object v3, v3, Leej$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v4, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v3, v4}, Legf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "replaceUrl":Ljava/lang/String;
    goto :goto_0

    .line 939
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    aput-object v1, v3, v6

    const-string/jumbo v4, "0"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v2, -0x3b860000    # -1000.0f

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v0, :cond_0

    .line 1205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->e:Z

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setAlpha(F)V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationX(F)V

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationY(F)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1213
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 185
    new-instance v0, Leep;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Leep;-><init>(Landroid/app/Activity;Leer$a;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    .line 186
    new-instance v0, Leeq;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leeq;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 196
    .line 2205
    sget v0, Ledz$g;->fragment_common_oa_main:I

    .line 196
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c:Landroid/view/View;

    .line 2330
    sget v1, Ledz$f;->oa_fragment_gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2331
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2332
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2333
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 2334
    new-instance v0, Leee;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Leee;-><init>(Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    .line 2335
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2337
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_0

    .line 2339
    const-string/jumbo v1, "need_default_header"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2340
    const-string/jumbo v2, "default_header_height"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2341
    if-eqz v1, :cond_0

    .line 2342
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2343
    sget v2, Ledz$f;->fakeHeader:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 2344
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2345
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2347
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2348
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-virtual {v0, v1}, Leee;->a(Landroid/view/View;)Z

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Leee;->a(Landroid/view/View;)Z

    .line 2353
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    if-eqz v0, :cond_1

    .line 2354
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->y:Leeq;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    .line 3092
    iget-object v2, v0, Leeq;->a:Landroid/app/Activity;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 3093
    iget-object v2, v0, Leeq;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Leee;->a(Landroid/view/View;)Z

    .line 3094
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leeq;->a(Z)V

    .line 2356
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    if-eqz v0, :cond_2

    .line 2357
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    .line 4096
    iget-object v2, v1, Leep;->c:Landroid/app/Activity;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 4097
    iput-object v0, v1, Leep;->l:Leee;

    .line 4103
    iget-object v0, v1, Leep;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Ledz$g;->fragment_common_oa_expand_header:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Leep;->j:Landroid/view/View;

    .line 4104
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, v1, Leep;->c:Landroid/app/Activity;

    new-instance v3, Leep$a;

    invoke-direct {v3, v1, v4}, Leep$a;-><init>(Leep;B)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, v1, Leep;->i:Landroid/view/GestureDetector;

    .line 4105
    iget-object v0, v1, Leep;->j:Landroid/view/View;

    sget v2, Ledz$f;->expand_banner_flipper:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    iput-object v0, v1, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    .line 4106
    iget-object v0, v1, Leep;->j:Landroid/view/View;

    sget v2, Ledz$f;->expand_banner_dot_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Leep;->f:Landroid/widget/LinearLayout;

    .line 4107
    iget-object v0, v1, Leep;->j:Landroid/view/View;

    sget v2, Ledz$f;->view_divider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Leep;->g:Landroid/view/View;

    .line 4109
    iget-object v0, v1, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    new-instance v2, Leep$1;

    invoke-direct {v2, v1}, Leep$1;-><init>(Leep;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOnViewChange(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;)V

    .line 4122
    iget-object v0, v1, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    iget-object v2, v1, Leep;->c:Landroid/app/Activity;

    sget v3, Ledz$a;->slide_left_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 4123
    iget-object v0, v1, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    iget-object v2, v1, Leep;->c:Landroid/app/Activity;

    sget v3, Ledz$a;->slide_left_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 4124
    new-instance v0, Leep$b;

    invoke-direct {v0, v1}, Leep$b;-><init>(Leep;)V

    iput-object v0, v1, Leep;->k:Landroid/view/View$OnTouchListener;

    .line 4125
    iget-object v0, v1, Leep;->h:Ljava/util/List;

    if-nez v0, :cond_3

    .line 4126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Leep;->h:Ljava/util/List;

    .line 4130
    :goto_0
    iget-object v0, v1, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setAutoStart(Z)V

    .line 4131
    iget-object v0, v1, Leep;->l:Leee;

    iget-object v2, v1, Leep;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Leee;->a(Landroid/view/View;)Z

    .line 4132
    iget-object v0, v1, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setVisibility(I)V

    .line 4133
    iget-object v0, v1, Leep;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4134
    iget-object v0, v1, Leep;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2362
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    new-instance v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    .line 5032
    iput-object v1, v0, Leea;->d:Leea$b;

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d()V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c:Landroid/view/View;

    return-object v0

    .line 4128
    :cond_3
    iget-object v0, v1, Leep;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 982
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    .line 12346
    iget-object v1, v0, Leep;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, v0, Leep;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 12347
    iget-object v1, v0, Leep;->c:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Leep;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 12327
    :cond_0
    iput-object v3, v0, Leep;->d:Leer$a;

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;)V

    .line 988
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onDestroy()V

    .line 989
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 969
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onDetach()V

    .line 970
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->stopFlipping()V

    .line 973
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->x:Leep;

    .line 12292
    iget-object v1, v0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    if-eqz v1, :cond_0

    iget-object v1, v0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->isFlipping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12294
    iget-object v0, v0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->stopFlipping()V

    .line 977
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 749
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onResume()V

    .line 9903
    sget-boolean v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->B:Z

    if-eqz v0, :cond_1

    .line 9904
    invoke-static {}, Leej;->e()Leei;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Leei;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9905
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_upgrade_guide_showed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9906
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9907
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    .line 9910
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 205
    sget v0, Ledz$g;->fragment_common_oa_main:I

    return v0
.end method
