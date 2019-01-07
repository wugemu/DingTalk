.class public Lcom/alibaba/android/user/settings/fragment/MineFragment;
.super Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;
.source "MineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfwo$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/fragment/MineFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/support/v4/widget/NestedScrollView;

.field private C:Landroid/view/View;

.field private D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private E:Z

.field private F:Z

.field private M:J

.field private N:Landroid/content/BroadcastReceiver;

.field private O:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

.field private P:Lcom/alibaba/android/user/model/SWPersonObject;

.field private Q:Lfbw;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Ljava/lang/String;

.field private U:Lfwq;

.field private V:Lfwo$a;

.field private W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

.field private X:Z

.field private Y:Z

.field private Z:Z

.field a:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aa:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

.field private ae:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private af:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private ag:Lfwk;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Z

.field private az:Z

.field b:Lfub;

.field c:Lfuj$a;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;-><init>()V

    .line 170
    const-string/jumbo v0, "https://perks.dingtalk.com/fulishe/index.html?dingtalkid=__DINGTALKID__"

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w:Ljava/lang/String;

    .line 206
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Y:Z

    .line 207
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Z:Z

    .line 526
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ah:Z

    .line 527
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ai:Z

    .line 528
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aj:Z

    .line 529
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ak:Z

    .line 530
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->al:Z

    .line 531
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->am:Z

    .line 532
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->an:Z

    .line 533
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ao:Z

    .line 534
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ap:Z

    .line 535
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aq:Z

    .line 536
    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ar:Z

    .line 538
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->as:Z

    .line 539
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->at:Z

    .line 540
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->au:Z

    .line 541
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->av:Z

    .line 542
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aw:Z

    .line 543
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ax:Z

    .line 544
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ay:Z

    .line 545
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->az:Z

    .line 546
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aA:Z

    .line 558
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aK:Z

    .line 559
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aL:Z

    .line 560
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aM:Z

    .line 561
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aN:Z

    .line 562
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aO:Z

    .line 563
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aP:Z

    .line 564
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aQ:Z

    .line 565
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aR:Z

    .line 566
    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aS:Z

    .line 567
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;

    invoke-direct {v0}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;

    .line 1153
    new-instance v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$9;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c:Lfuj$a;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lfwq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->U:Lfwq;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->O:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ac:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 695
    sget v0, Lezg$h;->ll_ding_index:I

    iget-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aj:Z

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 696
    return-void
.end method

.method private a(IIZ)V
    .locals 1
    .param p1, "widgetId"    # I
    .param p2, "visibility"    # I
    .param p3, "configControl"    # Z

    .prologue
    .line 680
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    .line 681
    return-void
.end method

.method private static a(Landroid/view/View;IZ)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I
    .param p2, "configControl"    # Z

    .prologue
    .line 684
    if-nez p0, :cond_0

    .line 692
    :goto_0
    return-void

    .line 687
    :cond_0
    if-nez p2, :cond_1

    .line 688
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 691
    :cond_1
    invoke-static {p0, p1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 8
    .param p1, "orgEmployeeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1339
    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->E:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1340
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    :goto_0
    iput-wide v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->M:J

    .line 1343
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v1

    .line 31573
    .local v1, "isOrgNationCN":Z
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->n()Z

    move-result v3

    .line 31574
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i:Landroid/view/View;

    if-eqz v3, :cond_5

    move v3, v6

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v2

    .line 1347
    .local v2, "isWalletEnabled":Z
    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Y:Z

    if-eq v3, v2, :cond_1

    .line 1349
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g()V

    .line 1351
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_setting_balance:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    move v3, v6

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    sget v4, Lezg$h;->ll_study_center:I

    if-eqz v1, :cond_7

    move v3, v6

    :goto_3
    iget-boolean v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->al:Z

    invoke-direct {p0, v4, v3, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 1353
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->J:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aN:Z

    if-eqz v3, :cond_8

    :cond_2
    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1354
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->i()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o()Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_5
    invoke-direct {p0, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(I)V

    .line 1357
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    .line 1358
    .local v0, "isConnectionsEnabled":Z
    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Z:Z

    if-eq v3, v0, :cond_3

    .line 1359
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f()V

    .line 1362
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h()V

    .line 1363
    return-void

    .line 1340
    .end local v0    # "isConnectionsEnabled":Z
    .end local v1    # "isOrgNationCN":Z
    .end local v2    # "isWalletEnabled":Z
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_0

    .restart local v1    # "isOrgNationCN":Z
    :cond_5
    move v3, v7

    .line 31574
    goto :goto_1

    .restart local v2    # "isWalletEnabled":Z
    :cond_6
    move v3, v7

    .line 1351
    goto :goto_2

    :cond_7
    move v3, v7

    .line 1352
    goto :goto_3

    :cond_8
    move v3, v6

    .line 1353
    goto :goto_4

    :cond_9
    move v6, v7

    .line 1354
    goto :goto_5
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    const/4 v2, 0x1

    .line 133
    .line 34474
    if-eqz p1, :cond_0

    .line 34477
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setMine(Z)V

    .line 34478
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v1

    .line 35180
    iput-boolean v1, v0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->d:Z

    .line 35181
    iput-boolean v2, v0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->e:Z

    .line 35182
    iput-boolean v2, v0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->f:Z

    .line 35183
    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setDataToView(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 34479
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34480
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v0, :cond_0

    .line 34482
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->initedCard:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ab:Z

    .line 133
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 133
    .line 34441
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 34442
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 34443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;

    .line 34444
    if-eqz v0, :cond_0

    .line 34445
    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34448
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34449
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 34450
    sget-object v2, Lbld;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 34451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    .line 34452
    new-instance v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 34453
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    sget-object v3, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v3

    shl-int v3, v4, v3

    iput v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    .line 34454
    new-instance v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 34455
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput-boolean v4, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 34456
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    iput v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 34457
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V

    .line 34459
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34460
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 34461
    sget-object v1, Lbld;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 34462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    .line 34463
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 34464
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    sget-object v2, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v2

    shl-int v2, v4, v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    .line 34465
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 34466
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 34467
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 34468
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V

    .line 133
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ab:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aI:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/model/SWPersonObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->P:Lcom/alibaba/android/user/model/SWPersonObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aG:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aD:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->T:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aH:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    .line 33656
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "intent_key_update_mine_found_red_dot"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33657
    const-string/jumbo v2, "intent_key_update_mine_found_red_dot_show_bool"

    .line 33665
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->as:Z

    if-nez v0, :cond_8

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aC:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->at:Z

    if-nez v0, :cond_8

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aD:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aw:Z

    if-nez v0, :cond_8

    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aE:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aA:Z

    if-nez v0, :cond_8

    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aF:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ax:Z

    if-nez v0, :cond_8

    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aG:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->au:Z

    if-nez v0, :cond_8

    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aH:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->av:Z

    if-nez v0, :cond_8

    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aI:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->az:Z

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aJ:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ay:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    .line 33657
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33658
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 133
    return-void

    .line 33665
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aC:Z

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 699
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Z:Z

    .line 701
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_mine_connection:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Z:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 702
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_new_friend:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Z:Z

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 703
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v3, Lble;->aj:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$2;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 737
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->af()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->ll_nearby_card:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 742
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 701
    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aE:Z

    return p1
.end method

.method static synthetic g(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method private g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 746
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Y:Z

    .line 748
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->rl_setting_wallet:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 749
    .local v0, "layoutWallet":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->tv_wallet_tips:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r:Landroid/widget/TextView;

    .line 750
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->view_wallet_red_dot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 751
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Y:Z

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->tv_wallet_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 754
    .local v1, "walletName":Landroid/widget/TextView;
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    sget v2, Lezg$l;->dt_pay_purse:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 759
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 763
    .end local v1    # "walletName":Landroid/widget/TextView;
    :goto_1
    const-string/jumbo v2, "wallet_red_dot"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 765
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_pay_wallet_red_envelope_tips:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 770
    :goto_2
    return-void

    .line 757
    .restart local v1    # "walletName":Landroid/widget/TextView;
    :cond_0
    sget v2, Lezg$l;->dt_pay_wallet:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 761
    .end local v1    # "walletName":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 768
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic g(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    .line 35333
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aJ:Z

    .line 35334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_recommend_info_first_show_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35335
    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/namecard/widget/NameCardView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    return-object v0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    if-nez v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_mine_connection:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_new_friend:I

    .line 807
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->view_line_mine_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 813
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_new_friend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_nearby_card:I

    .line 814
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->view_line_new_friend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 819
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_nearby_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    .line 820
    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->view_line_nearby_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 826
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Z:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_nearby_card:I

    .line 827
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    .line 828
    invoke-static {v0}, Lfxp;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 829
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->section_divider_cell_found_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->view_line_mine_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 817
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->view_line_new_friend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 823
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->view_line_nearby_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 831
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->section_divider_cell_found_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ab:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lfwk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ag:Lfwk;

    return-object v0
.end method

.method private i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1063
    iget-boolean v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v6, "communityCenter"

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1064
    .local v0, "communityOn":Z
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v6, Lezg$h;->ll_community:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v0, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18891
    const-string/jumbo v4, "pref_key_entry_switch_invitation"

    invoke-static {v4, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 1065
    if-eqz v4, :cond_2

    .line 1066
    sget v2, Lezg$h;->ll_promotion:I

    iget-boolean v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->an:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 1067
    sget v4, Lezg$h;->ll_recommend:I

    move-object v1, p0

    .line 1074
    .end local p0    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    :goto_2
    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ap:Z

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 1076
    return-void

    .end local v0    # "communityOn":Z
    .restart local p0    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    :cond_0
    move v0, v3

    .line 1063
    goto :goto_0

    .restart local v0    # "communityOn":Z
    :cond_1
    move v4, v5

    .line 1064
    goto :goto_1

    .line 1069
    :cond_2
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b()Z

    move-result v4

    if-nez v4, :cond_3

    .line 19891
    const-string/jumbo v4, "pref_key_entry_switch_invitation"

    invoke-static {v4, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 1069
    if-nez v4, :cond_3

    .line 1070
    sget v2, Lezg$h;->ll_promotion:I

    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->an:Z

    invoke-direct {p0, v2, v5, v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 1071
    sget v2, Lezg$h;->ll_recommend:I

    move-object v1, p0

    .end local p0    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .local v1, "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    :goto_3
    move v3, v5

    move v4, v2

    .line 1074
    goto :goto_2

    .line 1073
    .end local v1    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .restart local p0    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    :cond_3
    sget v6, Lezg$h;->ll_promotion:I

    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    :goto_4
    iget-boolean v7, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->an:Z

    invoke-direct {p0, v6, v4, v7}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 1074
    sget v4, Lezg$h;->ll_recommend:I

    .line 20891
    const-string/jumbo v6, "pref_key_entry_switch_invitation"

    invoke-static {v6, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1074
    if-eqz v2, :cond_5

    move-object v1, p0

    goto :goto_2

    :cond_4
    move v4, v5

    .line 1073
    goto :goto_4

    :cond_5
    move v2, v4

    move-object v1, p0

    .end local p0    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .restart local v1    # "this":Lcom/alibaba/android/user/settings/fragment/MineFragment;
    goto :goto_3
.end method

.method static synthetic i(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aB:Z

    return p1
.end method

.method static synthetic j(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1117
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    if-eqz v2, :cond_1

    .line 1123
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->view_divider_new_version_mini_app:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->my_mini_app_stub_v2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1129
    .local v1, "stub":Landroid/view/ViewStub;
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    .line 1130
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ar:Z

    invoke-static {v2, v4, v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    .line 1131
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->my_mini_app_red_dot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 1134
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v2

    sget-object v3, Lble;->ab:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$8;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v2, v3, v4}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 1149
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    sget v3, Lezg$h;->my_mini_app_list_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1150
    .local v0, "lastestLayout":Landroid/widget/LinearLayout;
    new-instance v2, Lfwq;

    invoke-direct {v2, v0}, Lfwq;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->U:Lfwq;

    goto :goto_0

    .line 1126
    .end local v0    # "lastestLayout":Landroid/widget/LinearLayout;
    .end local v1    # "stub":Landroid/view/ViewStub;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->my_mini_app_stub:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .restart local v1    # "stub":Landroid/view/ViewStub;
    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aF:Z

    return p1
.end method

.method static synthetic k(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l()V

    .line 1234
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method private l()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1237
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i()V

    .line 1239
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    if-eqz v3, :cond_1

    .line 1240
    iget-object v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 30608
    iget-object v3, v5, Lcom/alibaba/android/user/namecard/widget/NameCardView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v3, :cond_1

    .line 30612
    iget-object v3, v5, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v3, :cond_0

    iget-object v3, v5, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 30616
    :cond_0
    iget-object v3, v5, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v3, :cond_4

    iget-object v3, v5, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 30617
    :goto_0
    iget-object v5, v5, Lcom/alibaba/android/user/namecard/widget/NameCardView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v5, v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_1
    iput-boolean v7, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->F:Z

    .line 1244
    iput-boolean v7, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->E:Z

    .line 1246
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v3, :cond_3

    .line 1247
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1248
    .local v1, "employeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1250
    .local v0, "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_2

    .line 1253
    iget-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v5, :cond_2

    .line 1254
    iput-boolean v8, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->F:Z

    .line 1255
    iput-boolean v8, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->E:Z

    .line 1256
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 1258
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v2

    .line 1259
    .local v2, "isOrgNationCN":Z
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1261
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-interface {v3, v4, v5}, Lfwo$a;->a(J)V

    .line 1275
    .end local v0    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v1    # "employeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v2    # "isOrgNationCN":Z
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v3, v4

    .line 30616
    goto :goto_0

    .line 1267
    .restart local v1    # "employeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_5
    iput-boolean v8, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->F:Z

    .line 1268
    iput-boolean v7, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->E:Z

    .line 1269
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto :goto_1

    .line 1273
    :cond_6
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto :goto_1
.end method

.method static synthetic m(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1289
    const-string/jumbo v0, "MineFragment"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1330
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method private n()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1488
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->b()Z

    move-result v0

    .line 1489
    .local v0, "showWorkCircleEntry":Z
    if-eqz v0, :cond_4

    .line 1490
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1491
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v5, Lezg$h;->work_circle_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1492
    .local v1, "stub":Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    .line 1493
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1495
    .end local v1    # "stub":Landroid/view/ViewStub;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    iget-boolean v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ai:Z

    invoke-static {v4, v3, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    .line 1499
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1500
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    sget v5, Lezg$h;->work_circle_red_dot:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 1501
    .local v2, "workCircleReddot":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v4

    sget-object v5, Lble;->X:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;

    invoke-direct {v6, p0, v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v4, v5, v6}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 1516
    .end local v2    # "workCircleReddot":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->X:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aK:Z

    if-nez v6, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1517
    return-void

    .line 1497
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    const/16 v5, 0x8

    iget-boolean v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ai:Z

    invoke-static {v4, v5, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static o()Z
    .locals 4

    .prologue
    .line 1859
    const/4 v0, 0x0

    .line 1860
    .local v0, "isAdmin":Z
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 1861
    .local v1, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_1

    .line 1862
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1863
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1864
    :cond_0
    const/4 v0, 0x1

    .line 1869
    :cond_1
    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->m()V

    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l()V

    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n()V

    return-void
.end method

.method static synthetic x(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aa:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->k()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1954
    return-void
.end method

.method protected final I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const-string/jumbo v0, "Me"

    return-object v0
.end method

.method protected final J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string/jumbo v0, "a2o5v.12302328"

    return-object v0
.end method

.method public final a(II)V
    .locals 6
    .param p1, "score"    # I
    .param p2, "change"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1838
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1853
    :goto_0
    return-void

    .line 32873
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 32877
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1844
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1845
    invoke-static {}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1846
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(I)V

    goto :goto_0

    .line 32880
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 32881
    if-lez p1, :cond_4

    .line 32882
    sget v1, Lezg$l;->dt_contact_dingIndex_score:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 32887
    :goto_2
    if-eqz p2, :cond_6

    .line 32888
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 32889
    if-lez p2, :cond_5

    .line 32890
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->icon_rise_fill:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32894
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 32896
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32897
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32902
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32903
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32906
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 32907
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 32884
    :cond_4
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 32891
    :cond_5
    if-gez p2, :cond_3

    .line 32892
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->icon_decline_fill:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 32899
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 32900
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1848
    :cond_7
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(I)V

    goto/16 :goto_0

    .line 1851
    :cond_8
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(I)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/model/SWPersonObject;)V
    .locals 4
    .param p1, "swPersonObject"    # Lcom/alibaba/android/user/model/SWPersonObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1913
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1917
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->P:Lcom/alibaba/android/user/model/SWPersonObject;

    .line 1919
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    if-nez v0, :cond_0

    .line 1923
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1924
    :cond_2
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    const-string/jumbo v2, "getPersonalSummary or url is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1929
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1930
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->u:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1932
    iget-object v0, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1933
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1937
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1959
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1949
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1963
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 837
    invoke-super {p0, p1}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 838
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->c()V

    .line 842
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1579
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    .line 1580
    .local v20, "vid":I
    sget v2, Lezg$h;->ll_recommend:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    .line 1581
    const-string/jumbo v2, "Invite"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.Invite"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1582
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "MineFragment"

    const-string/jumbo v5, "mainpage_invite_click"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1584
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v2

    sget v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-eq v2, v3, :cond_0

    .line 1585
    const-string/jumbo v2, "https://h5.dingtalk.com/invite/invite.html"

    const-string/jumbo v3, "h5.dingtalk.com"

    const-string/jumbo v5, "yfh5.dingtalk.com"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->x:Ljava/lang/String;

    .line 1587
    :cond_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->x:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "pref_key_recommend_info_first_show_"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1590
    .local v17, "showKey":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "pref_key_recommend_info_first_show_"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1791
    .end local v17    # "showKey":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1593
    :cond_2
    sget v2, Lezg$h;->ll_my_connection:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_3

    .line 1594
    const-string/jumbo v2, "MaiMy"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.MaiMy"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1595
    const-string/jumbo v2, "type=self"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ac:Ljava/lang/String;

    .line 1596
    const-string/jumbo v2, "type=self"

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ab:Z

    invoke-static {v2, v3, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1597
    :cond_3
    sget v2, Lezg$h;->ll_nearby_card:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    .line 1598
    const-string/jumbo v2, "MaiSquare"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.MaiSquare"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1599
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->af:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1600
    const-string/jumbo v2, "type=square"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ac:Ljava/lang/String;

    .line 1601
    const-string/jumbo v2, "type=square"

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ab:Z

    invoke-static {v2, v3, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1602
    :cond_4
    sget v2, Lezg$h;->ll_exchange_card:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 1603
    const-string/jumbo v2, "CardEx"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.CardEx"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1604
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->ag:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1605
    const-string/jumbo v2, "type=f2f"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ac:Ljava/lang/String;

    .line 1606
    const-string/jumbo v2, "type=f2f"

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ab:Z

    invoke-static {v2, v3, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 1607
    :cond_5
    sget v2, Lezg$h;->rl_my_profile:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    .line 1608
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/user/my_profile.html"

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$16;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-interface {v2, v3, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 1616
    :cond_6
    sget v2, Lezg$h;->setting_device_rl:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    .line 1617
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/user/device_setting.html"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1619
    :cond_7
    sget v2, Lezg$h;->rl_setting:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    .line 1620
    const-string/jumbo v2, "Setting"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.Setting"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1621
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/new_settings.html"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1623
    :cond_8
    sget v2, Lezg$h;->user_favorite_layout:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    .line 1624
    const-string/jumbo v2, "Collect"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.Collect"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1625
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "MineFragment"

    const-string/jumbo v5, "mainpage_collection_click"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1626
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1628
    :cond_9
    sget v2, Lezg$h;->ll_promotion:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 1629
    const-string/jumbo v2, "EmpPerks"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.EmpPerks"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1630
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->clickStatistics(Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->g:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 31922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 31926
    const-string/jumbo v2, ""

    .line 31927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 31928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    .line 31930
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w:Ljava/lang/String;

    const-string/jumbo v5, "__DINGTALKID__"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w:Ljava/lang/String;

    .line 1635
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->w:Ljava/lang/String;

    .line 1636
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "welfare_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1637
    .local v13, "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1638
    move-object v4, v13

    .line 1640
    :cond_c
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1641
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_d
    sget v2, Lezg$h;->rl_setting_service_center:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_10

    .line 1642
    const-string/jumbo v2, "UserService"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.UserService"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1643
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->clickStatistics(Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->c:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1645
    const-string/jumbo v2, "mainpage_service_center_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 1648
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->M:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_f

    invoke-static {}, Lcms;->h()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1649
    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html"

    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1653
    .restart local v4    # "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "appoint_custom_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1654
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1655
    move-object v4, v13

    .line 1658
    :cond_e
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v5, Lezg$l;->setting_service_center_title:I

    .line 1659
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1658
    invoke-virtual/range {v2 .. v7}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1651
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_f
    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->M:J

    invoke-static {v2, v6, v7}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 1660
    .end local v4    # "url":Ljava/lang/String;
    :cond_10
    sget v2, Lezg$h;->rl_dingcard:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    .line 1661
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "MineFragment"

    const-string/jumbo v5, "phone_dingcard_mine"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->O:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->O:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1663
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->O:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->getUri()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_11
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->A:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1666
    :cond_12
    sget v2, Lezg$h;->ll_community:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_13

    .line 1667
    const-string/jumbo v2, "Community"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.Community"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1668
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v5, "https://bbs.dingtalkapps.com/ding_home/index.html?pageName=pgLook&communityId=90071909751&dd_progress=false&local=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "MineFragment"

    const-string/jumbo v5, "mainpage_community_center_click"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1670
    :cond_13
    sget v2, Lezg$h;->tv_privilege_level:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_15

    .line 1671
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v19

    .line 1672
    .local v19, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    if-eqz v2, :cond_1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1677
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1678
    .local v15, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v15, :cond_14

    iget-boolean v3, v15, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v3, :cond_14

    iget-object v3, v15, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_14

    .line 1683
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    iget-object v5, v15, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    .line 32281
    sget-object v6, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-static {v3, v5, v6}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(IILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)Ljava/lang/String;

    move-result-object v3

    .line 32282
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1686
    .end local v15    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v19    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_15
    sget v2, Lezg$h;->ll_ding_index:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_18

    .line 1687
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->M:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v12

    .line 1689
    .local v12, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "ding_index_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1691
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1692
    move-object v4, v13

    .line 1698
    .restart local v4    # "url":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->N:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1693
    .end local v4    # "url":Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "contact_dingindex_new_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1694
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "https://h5.dingtalk.com/ding-index-v4/index.html?showmenu=false&dd_progress=false&corpId="

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_3

    .line 1696
    .end local v4    # "url":Ljava/lang/String;
    :cond_17
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "https://h5.dingtalk.com/ding-index/index.html?dd_nav_bgcolor=FF47BAFF#/index?corpId="

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_3

    .line 1700
    .end local v4    # "url":Ljava/lang/String;
    .end local v12    # "corpId":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_18
    sget v2, Lezg$h;->ll_study_center:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_1a

    .line 1701
    const-string/jumbo v2, "StudyCenter"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.StudyCenter"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1702
    const-string/jumbo v2, "mainpage_studycenter_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 1703
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->J:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1706
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "customr_study_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1707
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1708
    move-object v4, v13

    .line 1712
    .restart local v4    # "url":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1710
    .end local v4    # "url":Ljava/lang/String;
    :cond_19
    const-string/jumbo v4, "https://h5.dingtalk.com/40plan/h5-customer-study/index.html?dd_func_wk=true&dd_progress=false"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_4

    .line 1713
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_1a
    sget v2, Lezg$h;->rl_dingmail:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_1b

    .line 1715
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "mail_click_setting_page"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1716
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v14

    .line 1717
    .local v14, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v14}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b()Lcma;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcma;)V

    goto/16 :goto_0

    .line 1718
    .end local v14    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    :cond_1b
    sget v2, Lezg$h;->rl_dingspace:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_1c

    .line 1720
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_click_setting_page"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v18

    .line 1722
    .local v18, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1723
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->V:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1724
    .end local v18    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_1c
    sget v2, Lezg$h;->rl_alpha_device:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_1e

    .line 1726
    const-string/jumbo v2, "SmartDevice"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.SmartDevice"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1727
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "sdevice_entry_tmall_url_enable"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1728
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "smart_device_click_setting_page_tmall_url"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1729
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string/jumbo v7, "https://pages.tmall.com/wow/act/20529/dingding?wh_weex=true&wh_biz=tm"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1731
    :cond_1d
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "smart_device_click_setting_page_dingtalk_url"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1732
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string/jumbo v7, "https://h5.dingtalk.com/smartDevice/index.html"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1734
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_1f

    .line 1735
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;)V

    .line 1736
    const-string/jumbo v2, "JobCircle"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.JobCircle"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1743
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_21

    .line 1744
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "my_recruitment_click_page"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1746
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "my_university_url_v2"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1747
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1748
    move-object v4, v13

    .line 1752
    .restart local v4    # "url":Ljava/lang/String;
    :goto_5
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1753
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1755
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->aa:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 32552
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v3, "tbffmpeg"

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$15;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v2, v3, v5}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    goto/16 :goto_0

    .line 1750
    .end local v4    # "url":Ljava/lang/String;
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->T:Ljava/lang/String;

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_5

    .line 1757
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_24

    .line 1758
    const-string/jumbo v2, "EApp"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.EApp"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1759
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1760
    .restart local v11    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ding_content_type"

    const/16 v3, 0x3e9

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1763
    const/16 v16, 0x0

    .line 1764
    .local v16, "showGuide":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    if-eqz v2, :cond_23

    .line 1765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    .line 1766
    const/16 v16, 0x1

    .line 1768
    :cond_22
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->ab:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1770
    :cond_23
    const-string/jumbo v2, "mini_app_list_show_guide"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1771
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToMiniAppList(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1772
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v16    # "showGuide":Z
    :cond_24
    sget v2, Lezg$h;->tv_new_version_guide:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_25

    .line 1774
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string/jumbo v7, "https://tms.dingtalk.com/markets/dingtalk/me-page-clean-up-faq?wh_ttid=phone"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1775
    :cond_25
    sget v2, Lezg$h;->rl_setting_wallet:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_26

    .line 1777
    const-string/jumbo v2, "Wallet"

    const/4 v3, 0x0

    const-string/jumbo v5, "a2o5v.12302328.1.Wallet"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1778
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c(Landroid/app/Activity;)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 1781
    const-string/jumbo v2, "wallet_red_dot"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1782
    :cond_26
    sget v2, Lezg$h;->cell_found:I

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    .line 1783
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/mine_found.html"

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$17;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-interface {v2, v3, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2570
    invoke-static {}, Lflf;->a()Lflf;

    move-result-object v3

    invoke-virtual {v3}, Lflf;->b()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    move-result-object v4

    .line 2571
    if-eqz v4, :cond_2

    .line 2578
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    if-nez v3, :cond_e

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ai:Z

    .line 2579
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    if-nez v3, :cond_f

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aj:Z

    .line 2580
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    if-nez v3, :cond_10

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ak:Z

    .line 2581
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    if-nez v3, :cond_11

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->al:Z

    .line 2582
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSmartDevice:I

    if-nez v3, :cond_12

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->am:Z

    .line 2583
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->an:Z

    .line 2584
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    if-nez v3, :cond_14

    const/4 v3, 0x1

    :goto_6
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ao:Z

    .line 2585
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    if-nez v3, :cond_15

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ap:Z

    .line 2586
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    if-nez v3, :cond_16

    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aq:Z

    .line 2587
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    if-nez v3, :cond_17

    const/4 v3, 0x1

    :goto_9
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ar:Z

    .line 2589
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_18

    const/4 v3, 0x1

    :goto_a
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->as:Z

    .line 2590
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_19

    const/4 v3, 0x1

    :goto_b
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->at:Z

    .line 2591
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x1

    :goto_c
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->au:Z

    .line 2592
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1b

    const/4 v3, 0x1

    :goto_d
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->av:Z

    .line 2593
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    :goto_e
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aw:Z

    .line 2594
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1d

    const/4 v3, 0x1

    :goto_f
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ax:Z

    .line 2595
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1e

    const/4 v3, 0x1

    :goto_10
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ay:Z

    .line 2596
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1f

    const/4 v3, 0x1

    :goto_11
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->az:Z

    .line 2597
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_20

    const/4 v3, 0x1

    :goto_12
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aA:Z

    .line 2599
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_21

    const/4 v3, 0x1

    :goto_13
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aK:Z

    .line 2600
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_22

    const/4 v3, 0x1

    :goto_14
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aL:Z

    .line 2601
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_23

    const/4 v3, 0x1

    :goto_15
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aM:Z

    .line 2602
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_24

    const/4 v3, 0x1

    :goto_16
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aN:Z

    .line 2603
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_25

    const/4 v3, 0x1

    :goto_17
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aO:Z

    .line 2604
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_26

    const/4 v3, 0x1

    :goto_18
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aP:Z

    .line 2605
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_27

    const/4 v3, 0x1

    :goto_19
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aQ:Z

    .line 2606
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_28

    const/4 v3, 0x1

    :goto_1a
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aR:Z

    .line 2607
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_29

    const/4 v3, 0x1

    :goto_1b
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aS:Z

    .line 2609
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;

    .line 3030
    iput-object v4, v3, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    .line 2610
    iget-object v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;

    .line 3048
    invoke-static {}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->values()[Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    move-result-object v7

    array-length v8, v7

    const/4 v3, 0x0

    move v5, v3

    :goto_1c
    if-ge v5, v8, :cond_34

    aget-object v3, v7, v5

    .line 3057
    iget-object v4, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    if-eqz v4, :cond_0

    .line 3060
    sget-object v4, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$1;->a:[I

    invoke-virtual {v3}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 3084
    :cond_0
    const/4 v3, 0x1

    .line 3049
    :cond_1
    :goto_1d
    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 3050
    const/4 v3, 0x1

    .line 2610
    :goto_1e
    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ah:Z

    .line 234
    :cond_2
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v3

    .line 12043
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->Y:Ljava/lang/String;

    sget-object v6, Lble;->Y:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12044
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->g:Ljava/lang/String;

    sget-object v6, Lble;->g:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12045
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->c:Ljava/lang/String;

    sget-object v6, Lble;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12046
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->J:Ljava/lang/String;

    sget-object v6, Lble;->J:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12047
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->N:Ljava/lang/String;

    sget-object v6, Lble;->N:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12048
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->X:Ljava/lang/String;

    sget-object v6, Lble;->X:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12049
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->aa:Ljava/lang/String;

    sget-object v6, Lble;->aa:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12050
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->ab:Ljava/lang/String;

    sget-object v6, Lble;->ab:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lfvb;->a(Ljava/lang/String;)Lblc;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 236
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->name_card:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .line 237
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setSubViewClickListener(Lcom/alibaba/android/user/namecard/widget/NameCardView$a;)V

    .line 263
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_setting_balance:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->user_favorite_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_promotion:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_recommend:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_setting_service_center:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    sget v3, Lezg$h;->rl_setting_service_center:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ak:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 269
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_setting:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_community:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_study_center:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_ding_index:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_my_connection:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ads_nearby_card:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 277
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->af:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 279
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_exchange_card:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ads_exchange_card:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->af:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 283
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->ag:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->af:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 285
    new-instance v3, Lfwp;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lfwp;-><init>(Landroid/app/Activity;Lfwo$b;)V

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    .line 288
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    invoke-interface {v3}, Lfwo$a;->b()Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    .line 12111
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->V()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12112
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j()V

    .line 12520
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfls;->b(Landroid/content/Context;)Z

    move-result v4

    .line 12521
    if-eqz v4, :cond_35

    .line 12522
    const-string/jumbo v3, "https://recruiment.dingtalk.com/recruiment/mobile/index?showmenu=false&dd_progress=false&dd_share=false&isStu=true#/myUniversity"

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->T:Ljava/lang/String;

    .line 12523
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    if-nez v3, :cond_4

    .line 12524
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v5, Lezg$h;->my_university_stub:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 12525
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    .line 12526
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12527
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ao:Z

    invoke-static {v3, v5, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    .line 12528
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v5, Lezg$h;->my_university_red_dot:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 12529
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v5

    sget-object v6, Lble;->aa:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;

    invoke-direct {v7, p0, v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v5, v6, v7}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 12548
    :cond_4
    :goto_1f
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v5

    sget-object v6, Lble;->aa:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aP:Z

    if-nez v3, :cond_5

    if-nez v4, :cond_36

    :cond_5
    const/4 v3, 0x1

    :goto_20
    invoke-virtual {v5, v6, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 295
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n()V

    .line 300
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 301
    new-instance v4, Lfbw;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->R:Landroid/view/View;

    sget v5, Lezg$h;->img_layout:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v4, v3}, Lfbw;-><init>(Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Q:Lfbw;

    .line 309
    :cond_6
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v3

    sget-object v4, Lble;->Y:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$12;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$12;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 322
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->scroll_view_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d:Landroid/view/View;

    .line 323
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->layout_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e:Landroid/view/View;

    .line 324
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->tv_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f:Landroid/widget/TextView;

    .line 326
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->scroll_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/NestedScrollView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->B:Landroid/support/v4/widget/NestedScrollView;

    .line 327
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->B:Landroid/support/v4/widget/NestedScrollView;

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$19;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$19;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V

    .line 12934
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_dingmail:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12935
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_dingspace:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12936
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->dingspace_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 12937
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->V:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$3;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12950
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_dingcard:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i:Landroid/view/View;

    .line 12951
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->n()Z

    move-result v3

    .line 12952
    if-eqz v3, :cond_37

    .line 12953
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12955
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12956
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->m()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->O:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    .line 12959
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->dingcard_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 12960
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->A:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$4;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 12988
    :goto_21
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_alpha_device:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 12990
    if-eqz v3, :cond_7

    .line 12991
    sget v4, Lezg$h;->rl_alpha_device:I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->am:Z

    invoke-direct {p0, v4, v5, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(IIZ)V

    .line 12992
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :cond_7
    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    if-eqz v3, :cond_8

    .line 346
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_mail_space_dingcard_alpha:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->service_center_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 350
    .local v1, "serviceCenterReddot":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v3

    sget-object v4, Lble;->c:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$20;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment$20;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v3, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 365
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->promotion_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 366
    .local v0, "promotionReddot":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v3

    sget-object v4, Lble;->g:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$21;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$21;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v3, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 384
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->iv_settings_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 385
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->d:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$22;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$22;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 392
    invoke-static {}, Lfuh;->a()Lfuh;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$23;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$23;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 13071
    iget-object v5, v3, Lfuh;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 13072
    iget-object v3, v3, Lfuh;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13487
    :cond_9
    new-instance v3, Lfwk;

    invoke-direct {v3}, Lfwk;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ag:Lfwk;

    .line 13488
    iget-object v4, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ag:Lfwk;

    iget-object v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    .line 14062
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v4, Lfwk;->n:Landroid/content/Context;

    .line 14063
    sget v3, Lezg$h;->new_friend_title:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lfwk;->b:Landroid/widget/TextView;

    .line 14065
    sget v3, Lezg$h;->new_friend_no_unread:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lfwk;->j:Landroid/view/View;

    .line 14066
    iget-object v3, v4, Lfwk;->j:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14067
    sget v3, Lezg$h;->new_friend_desc_text:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lfwk;->c:Landroid/widget/TextView;

    .line 14069
    sget v3, Lezg$h;->new_friend_one_unread:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lfwk;->i:Landroid/view/View;

    .line 14070
    iget-object v3, v4, Lfwk;->i:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14071
    sget v3, Lezg$h;->new_friend_one_unread_avatar:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v4, Lfwk;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 14072
    sget v3, Lezg$h;->new_friend_one_unread_nick:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lfwk;->d:Landroid/widget/TextView;

    .line 14073
    sget v3, Lezg$h;->new_friend_one_unread_org_name:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lfwk;->e:Landroid/widget/TextView;

    .line 14074
    sget v3, Lezg$h;->new_friend_one_unread_remark:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lfwk;->f:Landroid/widget/TextView;

    .line 14075
    sget v3, Lezg$h;->new_friend_one_unread_red_dot:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, v4, Lfwk;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 14077
    sget v3, Lezg$h;->new_friend_multi_unread:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lfwk;->k:Landroid/view/View;

    .line 14078
    iget-object v3, v4, Lfwk;->k:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14079
    const/4 v3, 0x6

    new-array v6, v3, [Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v7, 0x0

    sget v3, Lezg$h;->new_friend_multi_unread_avatar_0:I

    .line 14080
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v6, v7

    const/4 v7, 0x1

    sget v3, Lezg$h;->new_friend_multi_unread_avatar_1:I

    .line 14081
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v6, v7

    const/4 v7, 0x2

    sget v3, Lezg$h;->new_friend_multi_unread_avatar_2:I

    .line 14082
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v6, v7

    const/4 v7, 0x3

    sget v3, Lezg$h;->new_friend_multi_unread_avatar_3:I

    .line 14083
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v6, v7

    const/4 v7, 0x4

    sget v3, Lezg$h;->new_friend_multi_unread_avatar_4:I

    .line 14084
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v6, v7

    const/4 v7, 0x5

    sget v3, Lezg$h;->new_friend_multi_unread_avatar_5:I

    .line 14085
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v6, v7

    iput-object v6, v4, Lfwk;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 14087
    sget v3, Lezg$h;->new_friend_multi_unread_red_dot:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, v4, Lfwk;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 15079
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_recommend_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y:Landroid/widget/RelativeLayout;

    .line 15080
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->tv_recommend_icon:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->z:Landroid/widget/TextView;

    .line 15081
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->y:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->iv_recommend_red_dot:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->A:Landroid/widget/ImageView;

    .line 15082
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->m()V

    .line 15997
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->study_center_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 15998
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v4

    sget-object v5, Lble;->J:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/user/settings/fragment/MineFragment$5;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment$5;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v4, v5, v6}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 16015
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_ding_index_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l:Landroid/widget/LinearLayout;

    .line 16016
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->tv_ding_index_score:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->m:Landroid/widget/TextView;

    .line 16017
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->iv_ding_index_change_arrow:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 16018
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->tv_ding_index_change:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o:Landroid/widget/TextView;

    .line 16020
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->l:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16022
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_ding_index:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->k:Landroid/view/View;

    .line 16023
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->k:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16024
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(I)V

    .line 16025
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ding_index_red_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 16026
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v3

    sget-object v4, Lble;->N:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 16044
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->tv_ding_record:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->t:Landroid/widget/TextView;

    .line 16045
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->t:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16046
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->ll_ding_work_record:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s:Landroid/view/View;

    .line 16047
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16048
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->tv_work_record_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->u:Landroid/widget/TextView;

    .line 16050
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->G:Landroid/app/Application;

    .line 407
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->G:Landroid/app/Application;

    if-eqz v3, :cond_a

    .line 408
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 411
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->rl_setting_balance:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$24;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$24;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    if-nez v3, :cond_b

    .line 421
    new-instance v3, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    .line 423
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    .line 17012
    invoke-virtual {v3}, Lcmr;->d()V

    .line 425
    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->X:Z

    if-eqz v3, :cond_c

    .line 426
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->tv_new_version_guide:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, "viewGuide":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17366
    .end local v2    # "viewGuide":Landroid/view/View;
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->N:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_d

    .line 17367
    new-instance v3, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$11;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->N:Landroid/content/BroadcastReceiver;

    .line 17466
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 17467
    const-string/jumbo v4, "pref_key_recommend_info_first_show_"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17468
    const-string/jumbo v4, "action_settings_entry_update"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17469
    const-string/jumbo v4, "com.workapp.PROFILE_NICK_NAME_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17470
    const-string/jumbo v4, "com.workapp.PROFILE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17471
    const-string/jumbo v4, "com.workapp.change_mobile_success"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17472
    const-string/jumbo v4, "com.workapp.org_employee_change"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17473
    const-string/jumbo v4, "dingCardSettingUpdated"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17474
    const-string/jumbo v4, "action_decorate_medal_change"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17475
    const-string/jumbo v4, "action_settings_card_update"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17476
    const-string/jumbo v4, "action_name_card_update_avatar"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17478
    const-string/jumbo v4, "action_config_switch_key_ready"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17479
    const-string/jumbo v4, "action_config_switch_work_circle_entry_changed"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17480
    const-string/jumbo v4, "intent_key_update_mine_found_red_dot"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17481
    const-string/jumbo v4, "CLOSE_RECOMMAND_GUIDE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17483
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 432
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g()V

    .line 433
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f()V

    .line 17518
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->cell_found:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 17519
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17521
    sget v3, Lezg$h;->ad_found_red_dot:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aa:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 17523
    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ah:Z

    invoke-static {v4, v3, v5}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    .line 435
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h()V

    .line 437
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    return-object v3

    .line 2578
    .end local v0    # "promotionReddot":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .end local v1    # "serviceCenterReddot":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2579
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2580
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2581
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2582
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2583
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 2584
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 2585
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 2586
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 2587
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 2589
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 2590
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 2591
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 2592
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 2593
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 2594
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 2595
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 2596
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2597
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 2599
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_13

    .line 2600
    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_14

    .line 2601
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 2602
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 2603
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_17

    .line 2604
    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_18

    .line 2605
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_19

    .line 2606
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_1a

    .line 2607
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_1b

    .line 3062
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->b()Z

    move-result v4

    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    .line 3096
    if-nez v4, :cond_1

    .line 3097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 3064
    :pswitch_1
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->i()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3104
    const/4 v3, 0x0

    .line 3105
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v4

    .line 3106
    if-eqz v4, :cond_2b

    .line 3107
    iget-object v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    if-eqz v9, :cond_2b

    .line 3108
    iget-object v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3109
    :cond_2a
    const/4 v3, 0x1

    .line 3064
    :cond_2b
    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    :goto_22
    iget-object v4, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    .line 4096
    if-nez v3, :cond_2d

    .line 4097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 3064
    :cond_2c
    const/4 v3, 0x0

    goto :goto_22

    :cond_2d
    move v3, v4

    goto/16 :goto_1d

    .line 3066
    :pswitch_2
    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    goto/16 :goto_1d

    .line 3068
    :pswitch_3
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v4

    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    .line 5096
    if-nez v4, :cond_1

    .line 5097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 3070
    :pswitch_4
    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSmartDevice:I

    goto/16 :goto_1d

    .line 3072
    :pswitch_5
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b()Z

    move-result v4

    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    .line 6096
    if-nez v4, :cond_1

    .line 6097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 3074
    :pswitch_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lfls;->b(Landroid/content/Context;)Z

    move-result v4

    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    .line 7096
    if-nez v4, :cond_1

    .line 7097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 7128
    :pswitch_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v3

    .line 7129
    if-eqz v3, :cond_2e

    .line 7133
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v9, "hide_homepage_in_contactvc"

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v4, v9, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v3

    .line 7134
    if-nez v3, :cond_2e

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    .line 3076
    :goto_23
    iget-object v4, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showOrgSquare:I

    .line 8096
    if-nez v3, :cond_2f

    .line 8097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 7134
    :cond_2e
    const/4 v3, 0x0

    goto :goto_23

    :cond_2f
    move v3, v4

    .line 3076
    goto/16 :goto_1d

    .line 8118
    :pswitch_8
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 8119
    if-eqz v3, :cond_30

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_30

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 8120
    const/4 v3, 0x1

    .line 3078
    :goto_24
    if-eqz v3, :cond_31

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    :goto_25
    iget-object v4, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    .line 9096
    if-nez v3, :cond_32

    .line 9097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 8122
    :cond_30
    const/4 v3, 0x0

    goto :goto_24

    .line 3078
    :cond_31
    const/4 v3, 0x0

    goto :goto_25

    :cond_32
    move v3, v4

    goto/16 :goto_1d

    .line 3080
    :pswitch_9
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->V()Z

    move-result v4

    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    .line 10096
    if-nez v4, :cond_1

    .line 10097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 10891
    :pswitch_a
    const-string/jumbo v3, "pref_key_entry_switch_invitation"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 3082
    iget-object v3, v6, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    .line 11096
    if-nez v4, :cond_1

    .line 11097
    const/4 v3, 0x1

    goto/16 :goto_1d

    .line 3048
    :cond_33
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1c

    .line 3053
    :cond_34
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 12544
    :cond_35
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 12545
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->S:Landroid/view/View;

    const/16 v5, 0x8

    iget-boolean v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ao:Z

    invoke-static {v3, v5, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    goto/16 :goto_1f

    .line 12548
    :cond_36
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 12983
    :cond_37
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_21

    .line 3060
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->N:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1206
    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->N:Landroid/content/BroadcastReceiver;

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Q:Lfbw;

    if-eqz v0, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Q:Lfbw;

    .line 28112
    iget-object v1, v0, Lfbw;->a:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Lfbw;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 28114
    iget-object v1, v0, Lfbw;->c:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    if-eqz v1, :cond_1

    .line 28115
    iget-object v0, v0, Lfbw;->c:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    .line 29061
    iget-object v1, v0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->a:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1211
    :cond_1
    iput-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Q:Lfbw;

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c:Lfuj$a;

    if-eqz v0, :cond_3

    .line 30047
    sget-object v0, Lfuj$b;->a:Lfuj;

    .line 1214
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c:Lfuj$a;

    invoke-virtual {v0, v1}, Lfuj;->a(Lfuj$a;)V

    .line 1216
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1217
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1219
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1221
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1222
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Lfvb;->a()Lfvb;

    invoke-static {}, Lfvb;->b()V

    .line 1226
    invoke-super {p0}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->onDestroy()V

    .line 1227
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 846
    invoke-super {p0}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->onDetach()V

    .line 847
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->W:Lcom/alibaba/android/user/settings/fragment/MineFragment$a;

    .line 18016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 850
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1162
    invoke-super {p0}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->onResume()V

    .line 1163
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1164
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 21047
    :cond_0
    sget-object v0, Lfuj$b;->a:Lfuj;

    .line 1166
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c:Lfuj$a;

    invoke-virtual {v0, v1, v2}, Lfuj;->a(ZLfuj$a;)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Q:Lfbw;

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->Q:Lfbw;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfbw;->b(Landroid/app/Activity;)V

    .line 1171
    :cond_1
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 226
    sget v0, Lezg$j;->activity_settings:I

    return v0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Lfwo$a;

    .line 32943
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    .line 133
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 8
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1175
    invoke-super {p0, p1}, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->setUserVisibleHint(Z)V

    .line 1177
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25832
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    const-string/jumbo v3, "contact"

    const-string/jumbo v4, "connection_guide"

    invoke-virtual {v0, v3, v4, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    invoke-static {}, Lcms;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "pre_key_mine_guide"

    invoke-static {v0, v3}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21617
    if-eqz p1, :cond_3

    .line 21618
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    if-nez v0, :cond_2

    .line 21619
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->layout_mine_guide_tab_bottom:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 21620
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lezg$j;->layout_mine_guide_tab_top:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 21621
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->layout_mine_guide_card:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 21623
    new-instance v0, Lfub;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Lfub;-><init>(Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->I:Landroid/view/View;

    sget v7, Lezg$h;->ll_mine_connection:I

    .line 21624
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lfuf;

    invoke-direct {v7, v3, v4, v1}, Lfuf;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 22049
    if-nez v6, :cond_8

    .line 21624
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ad:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    new-instance v4, Lfue;

    invoke-direct {v4, v5, v1}, Lfue;-><init>(Landroid/view/View;I)V

    .line 22068
    if-nez v3, :cond_9

    .line 21625
    :goto_2
    sget-object v3, Lcom/alibaba/android/user/namecard/guide/LightType;->RoundRectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 22078
    iput-object v3, v0, Lfub;->f:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 22079
    iget-object v4, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    .line 23079
    iput-object v3, v4, Lcom/alibaba/android/user/namecard/guide/GuideView;->a:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 23112
    iget-object v3, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    iget-object v4, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23113
    iget-object v3, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setAutoNext(Z)V

    .line 21628
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 23118
    iput v3, v0, Lfub;->g:I

    .line 23119
    iget-object v4, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setCorner(I)V

    .line 24084
    iget-object v3, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    const/16 v4, 0xb8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setAlpha(I)V

    .line 21629
    new-instance v3, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 24089
    iget-object v4, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setOnDismissListener(Lcom/alibaba/android/user/namecard/guide/GuideView$a;)V

    .line 21630
    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    .line 21651
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    invoke-virtual {v0}, Lfub;->a()V

    .line 1187
    :cond_3
    if-eqz p1, :cond_0

    .line 1188
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->k()V

    .line 25047
    sget-object v0, Lfuj$b;->a:Lfuj;

    .line 1189
    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c:Lfuj$a;

    invoke-virtual {v0, v2, v3}, Lfuj;->a(ZLfuj$a;)V

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->V:Lfwo$a;

    invoke-interface {v0}, Lfwo$a;->a()V

    .line 25087
    :cond_4
    invoke-static {}, Lfls;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 25088
    invoke-static {}, Lfxg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfls;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 25091
    :cond_5
    invoke-static {}, Lfls;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25092
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25093
    instance-of v3, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_6

    .line 25094
    new-instance v3, Lfrj;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v3, v0}, Lfrj;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v3}, Lfrj;->a()Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    move-result-object v0

    .line 25095
    if-eqz v0, :cond_6

    .line 25096
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    if-eqz v0, :cond_a

    .line 25097
    invoke-static {}, Lfxg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfls;->b(Ljava/lang/String;)V

    .line 25811
    :cond_6
    :goto_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->V()Z

    move-result v3

    .line 25812
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->ab:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->aS:Z

    if-nez v0, :cond_7

    if-nez v3, :cond_b

    :cond_7
    move v0, v2

    :goto_4
    invoke-virtual {v4, v5, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 25813
    if-nez v3, :cond_c

    .line 26802
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 26803
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ar:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    goto/16 :goto_0

    .line 22052
    :cond_8
    iget-object v3, v0, Lfub;->d:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22053
    iget-object v3, v0, Lfub;->e:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 22071
    :cond_9
    iget-object v5, v0, Lfub;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22072
    iget-object v5, v0, Lfub;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22073
    iget-object v4, v0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setCardView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 25099
    :cond_a
    const-string/jumbo v0, ""

    invoke-static {v0}, Lfls;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v0, v1

    .line 25812
    goto :goto_4

    .line 27794
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 27795
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->C:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->ar:Z

    invoke-static {v0, v1, v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Landroid/view/View;IZ)V

    .line 25818
    :goto_5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25819
    const-string/jumbo v3, "mini_app_list_type"

    const-string/jumbo v4, "my_applications"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25820
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    .line 25821
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/settings/fragment/MineFragment$18;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$18;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 25820
    invoke-virtual {v3, v0, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->fetchMiniAppIconListByType(Ljava/lang/String;Lhma;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 25830
    :catch_0
    move-exception v0

    .line 25831
    const-string/jumbo v3, "refresh mini app entry fail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 27797
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j()V

    goto :goto_5
.end method
