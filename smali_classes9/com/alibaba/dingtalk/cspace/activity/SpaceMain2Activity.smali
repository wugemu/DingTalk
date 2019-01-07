.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceMain2Activity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;
.implements Lgfa$b;


# instance fields
.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/ListView;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private X:Landroid/view/View;

.field private Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private Z:Landroid/view/View;

.field private aa:Landroid/view/View;

.field private ab:Landroid/view/View;

.field private ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private ae:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private af:Landroid/view/View;

.field private ag:Landroid/view/View;

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Lcom/alibaba/wukong/im/Conversation;

.field private ak:Ljava/lang/String;

.field private al:J

.field private am:J

.field private an:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field private ao:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

.field private ap:Landroid/content/BroadcastReceiver;

.field private aq:Ljava/lang/String;

.field private ar:I

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:J

.field private final av:Ljava/lang/String;

.field private final aw:Ljava/lang/String;

.field private ax:Lgfa$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ai:Ljava/util/List;

    .line 139
    const-string/jumbo v0, "url"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->av:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "modifyTime"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aw:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ar:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->au:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aa:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aj:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ah:Ljava/util/List;

    return-object p1
.end method

.method private a(J)V
    .locals 9
    .param p1, "lastSyncTime"    # J

    .prologue
    .line 652
    .line 12670
    const/4 v0, 0x0

    .line 12671
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 12672
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 12673
    sget v1, Lfzs$h;->dt_space_syncdrive_last_sync_time_now:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "lastSyncDescText":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 655
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :goto_1
    return-void

    .line 12674
    .end local v0    # "lastSyncDescText":Ljava/lang/String;
    :cond_1
    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 12675
    sget v1, Lfzs$h;->dt_space_syncdrive_last_sync_time_moment_before:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12676
    :cond_2
    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 12677
    sget v1, Lfzs$h;->dt_space_syncdrive_last_sync_time_minutes_before:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/32 v6, 0xea60

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12678
    :cond_3
    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 12679
    sget v1, Lfzs$h;->dt_space_syncdrive_last_sync_time_hours_before:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/32 v6, 0x36ee80

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12680
    :cond_4
    const-wide v4, 0x9a7ec800L

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 12681
    sget v1, Lfzs$h;->dt_space_syncdrive_last_sync_time_days_before:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/32 v6, 0x5265c00

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 12682
    :cond_5
    const-wide v4, 0x3c59862000L

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 12683
    sget v1, Lfzs$h;->dt_space_syncdrive_last_sync_time_months_before:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide v6, 0x9a7ec800L

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 657
    .restart local v0    # "lastSyncDescText":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lggq;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 659
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_space_syncdrive_last_sync_time_moment_before:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 664
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private static a(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visible"    # I

    .prologue
    .line 1085
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Landroid/view/View;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 97
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xb

    const/16 v7, 0xa

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 97
    .line 17265
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    invoke-static {v0, p1, v1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17272
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->actions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17273
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceBaseActivity"

    const-string/jumbo v2, "SpaceMain2Activity parseAndShowOperationsView and adsInfo is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17274
    :cond_1
    :goto_0
    return-void

    .line 17266
    :catch_0
    move-exception v0

    .line 17267
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceBaseActivity"

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "getAdsNewInfo error:"

    aput-object v4, v3, v8

    .line 17268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17267
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17277
    :cond_2
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceBaseActivity"

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "SpaceMain2Activity parseAndShowOperationsView: type = "

    aput-object v4, v3, v8

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    .line 17278
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17277
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17280
    iget v1, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    if-eq v1, v7, :cond_3

    iget v1, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    if-eq v1, v11, :cond_3

    iget v1, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 17286
    :cond_3
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->actions:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;

    .line 17288
    if-eqz v1, :cond_1

    .line 17292
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 17294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17295
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 17297
    sget v2, Lfzs$e;->img_ads_employee_introduction:I

    .line 17298
    iget v6, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    if-ne v6, v7, :cond_5

    .line 17299
    sget v2, Lfzs$e;->img_ads_person_introduction:I

    .line 17306
    :cond_4
    :goto_1
    const-string/jumbo v6, "resource"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17307
    const-string/jumbo v2, "title"

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->title:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17308
    const-string/jumbo v2, "content"

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->content:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17309
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17310
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 17311
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;->actionText:Ljava/lang/String;

    .line 18079
    iput-object v2, v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 17313
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$21;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$21;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;)V

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 17320
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$22;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$22;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 18099
    iput-object v2, v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 17327
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$23;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;)V

    .line 19095
    iput-object v2, v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 17337
    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 17339
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17340
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 17345
    :goto_2
    const-string/jumbo v1, "pref_key_ads_new_show"

    invoke-static {v1, v8}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 17346
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "space_mainpage_guide_show_"

    aput-object v3, v2, v8

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->tag:Ljava/lang/String;

    aput-object v0, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17300
    :cond_5
    iget v6, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    if-ne v6, v11, :cond_6

    .line 17301
    sget v2, Lfzs$e;->img_ads_admin_introduction:I

    goto :goto_1

    .line 17302
    :cond_6
    iget v6, v0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->type:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_4

    .line 17303
    sget v2, Lfzs$e;->img_ads_employee_introduction:I

    goto :goto_1

    .line 17342
    :cond_7
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->an:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    return-void
.end method

.method private a(ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 2
    .param p1, "isIgnoreGraySpaceOrg"    # Z
    .param p2, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 690
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 691
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 718
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->au:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->as:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(J)V

    return-void
.end method

.method private b(Z)V
    .locals 13
    .param p1, "isIgnoreGraySpaceOrg"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 543
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 544
    .local v3, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 9721
    :cond_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->U:Landroid/view/View;

    invoke-static {v4, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 9722
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ag:Landroid/view/View;

    invoke-static {v4, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 9723
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Z:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 9725
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 9727
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->V:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$8;

    invoke-direct {v6, p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9744
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-nez v5, :cond_2

    .line 11295
    :cond_1
    :goto_0
    return-void

    .line 9747
    :cond_2
    const-string/jumbo v5, "pref_key_space_person_ad"

    invoke-static {v4, v5, v12}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9748
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v5, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 9749
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v6, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$9;

    invoke-direct {v6, p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 550
    :cond_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->U:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 551
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ag:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 552
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Z:Landroid/view/View;

    invoke-static {v4, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 553
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v4, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Landroid/view/View;I)V

    .line 555
    invoke-static {}, Lgpr;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ak:Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "isNeedReloadUserProfile":Z
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 559
    .local v2, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_5

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_5

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    cmp-long v5, v6, v10

    if-gtz v5, :cond_4

    .line 561
    :cond_5
    const/4 v0, 0x1

    .line 566
    .end local v2    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    if-eqz v0, :cond_8

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 567
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;

    invoke-direct {v1, p0, p1, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 597
    .local v1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    invoke-interface {v4, v1, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    check-cast v1, Lcma;

    .line 598
    .restart local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->showLoadingDialog()V

    .line 599
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;Lcma;)V

    .line 10610
    .end local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    :goto_1
    invoke-static {}, Lggq;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 10611
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->X:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 11074
    const-string/jumbo v4, "pref_key_space_sync_drive_show_blue_guide"

    invoke-static {v4, v12}, Lcpl;->c(Ljava/lang/String;Z)Z

    move-result v4

    .line 10614
    if-eqz v4, :cond_7

    .line 10615
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 10623
    :cond_7
    :goto_2
    invoke-direct {p0, v10, v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(J)V

    .line 10626
    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 10646
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lcma;

    invoke-interface {v5, v4, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 10647
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ak:Ljava/lang/String;

    .line 11282
    if-eqz v4, :cond_1

    .line 11286
    iget-object v7, v5, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v7, :cond_a

    .line 11287
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "SpaceRPC"

    const-string/jumbo v7, "createDentryLink: mCSpaceService is null"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11288
    const-string/jumbo v5, "SERVICE_NULL"

    sget v6, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v6}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 601
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto :goto_1

    .line 10618
    :cond_9
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->X:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 10619
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 11292
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 11293
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "SpaceRPC"

    const-string/jumbo v7, "createDentryLink: spaceId is empty"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11294
    const-string/jumbo v5, "20170720"

    sget v6, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v6}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 11298
    :cond_b
    new-instance v7, Lgif;

    invoke-direct {v7}, Lgif;-><init>()V

    .line 12109
    invoke-static {v6, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 11299
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lgif;->a:Ljava/lang/Long;

    .line 11300
    iget-object v8, v5, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v9, Lgon$89;

    invoke-direct {v9, v5, v4, v6}, Lgon$89;-><init>(Lgon;Lcma;Ljava/lang/String;)V

    invoke-interface {v8, v7, v9}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getLastSyncTime(Lgif;Liyv;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->al:J

    return-wide p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->at:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->am:J

    return-wide p1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->R:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    .line 19862
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aj:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 19863
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aj:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 19864
    :goto_0
    return-void

    .line 19866
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$12;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 19886
    invoke-static {}, Lgpt;->a()Ljava/lang/String;

    move-result-object v2

    .line 19866
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->at:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->as:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->y()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->w()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ah:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ai:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ao:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    .line 20057
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    const-class v2, Lglg$a;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lglg$a;

    .line 20080
    new-instance v0, Lglg;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ak:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lglg$a;)V

    .line 20081
    invoke-virtual {v0}, Lglg;->a()V

    .line 97
    return-void
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    .line 20827
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ai:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 20828
    :cond_0
    :goto_0
    return-void

    .line 20831
    :cond_1
    new-instance v0, Lglg;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ai:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V

    .line 20855
    invoke-virtual {v0}, Lglg;->a()V

    goto :goto_0
.end method

.method static synthetic s(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    const/4 v3, 0x1

    .line 97
    .line 21763
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21764
    sget v1, Lfzs$h;->dt_cspace_main_create_group_tip_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21765
    sget v1, Lfzs$h;->dt_cspace_main_create_group_tip_msg:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21766
    sget v1, Lfzs$h;->guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21786
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 97
    return-void
.end method

.method static synthetic u(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->x()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->P:Landroid/widget/TextView;

    return-object v0
.end method

.method private w()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    const-string/jumbo v1, "pref_key_ads_new_show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8841
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$19;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$19;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 257
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 258
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 8835
    if-eqz v0, :cond_0

    .line 8839
    iget-object v2, v1, Lgon;->f:Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    if-nez v2, :cond_2

    .line 8840
    const-string/jumbo v1, "SERVICE_NULL"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8844
    :cond_2
    new-instance v2, Lgon$76;

    invoke-direct {v2, v1, v0}, Lgon$76;-><init>(Lgon;Lcma;)V

    .line 8856
    iget-object v1, v1, Lgon;->f:Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;->getPushAlertModel(Liyv;)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->al:J

    return-wide v0
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 790
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ar:I

    if-lez v0, :cond_0

    .line 793
    const-string/jumbo v0, "pref_recent_unread_count"

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ar:I

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 798
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->R:Landroid/widget/ImageView;

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ar:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    return-void

    .line 795
    :cond_0
    const-string/jumbo v0, "pref_recent_unread_count"

    invoke-static {p0, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ar:I

    goto :goto_0

    .line 798
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method static synthetic y(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->am:J

    return-wide v0
.end method

.method private y()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 802
    const-string/jumbo v2, "pref_cooperation_invite_new_show"

    invoke-static {v2}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 820
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {}, Lgam;->a()Lgam;

    invoke-static {}, Lgam;->b()Ljava/util/List;

    move-result-object v0

    .line 809
    .local v0, "invitedSpaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 810
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 815
    new-instance v1, Lcry;

    invoke-direct {v1}, Lcry;-><init>()V

    .line 816
    .local v1, "viewObject":Lcry;
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    .line 13047
    iput v2, v1, Lcry;->a:I

    .line 817
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 13111
    iput v2, v1, Lcry;->i:I

    .line 819
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    goto :goto_0
.end method

.method static synthetic z(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lgfa$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ax:Lgfa$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1211
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 1134
    return-void
.end method

.method public final a(JLjava/lang/String;JJJZ)V
    .locals 14
    .param p1, "orgId"    # J
    .param p3, "orgName"    # Ljava/lang/String;
    .param p4, "publicSpaceId"    # J
    .param p6, "publicCapacityUsed"    # J
    .param p8, "publicSpaceModifiedTime"    # J
    .param p10, "isPublicSpaceAdmin"    # Z

    .prologue
    .line 1144
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_orgfile_enter_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1146
    const/16 v2, 0xc8

    sget v13, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->b:I

    move-object v1, p0

    move-wide v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    invoke-static/range {v1 .. v13}, Lfzu;->a(Landroid/content/Context;IJLjava/lang/String;JJJZI)V

    .line 1148
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1215
    .line 16224
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1215
    if-nez v0, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1219
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1190
    .line 15224
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1190
    if-nez v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1194
    :cond_0
    sget v0, Lfzs$h;->dt_space_team_album_open_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1195
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lfzu;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method protected final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    return-void
.end method

.method protected final d(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1139
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1224
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n()V

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8092
    if-eqz v0, :cond_0

    .line 8096
    const-string/jumbo v1, "last_msg_tip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8103
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8105
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aq:Ljava/lang/String;

    .line 8106
    const-string/jumbo v0, "unReadCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ar:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8110
    :cond_0
    :goto_0
    return-void

    .line 8108
    :catch_0
    move-exception v0

    .line 8109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onAttachedToWindow()V

    .line 405
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->an:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->an:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->an:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ax:Lgfa$a;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ax:Lgfa$a;

    invoke-interface {v0}, Lgfa$a;->a()V

    .line 413
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    sget v0, Lfzs$g;->space_main_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->setContentView(I)V

    .line 4935
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->space_main_head_view_layout:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4936
    sget v0, Lfzs$f;->tv_recent_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->N:Landroid/widget/TextView;

    .line 4937
    sget v0, Lfzs$f;->tv_my_folder_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->O:Landroid/widget/TextView;

    .line 4938
    sget v0, Lfzs$f;->tv_my_folder_capacity:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->P:Landroid/widget/TextView;

    .line 4939
    sget v0, Lfzs$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Q:Landroid/widget/ListView;

    .line 4940
    sget v0, Lfzs$f;->icon_recent_new:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->R:Landroid/widget/ImageView;

    .line 4941
    sget v0, Lfzs$f;->rl_recent_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->T:Landroid/view/View;

    .line 4942
    sget v0, Lfzs$f;->rl_cooperation_folder:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->S:Landroid/view/View;

    .line 4943
    sget v0, Lfzs$f;->rl_my_folder:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->U:Landroid/view/View;

    .line 4944
    sget v0, Lfzs$f;->ads_cooperation_new:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 4946
    sget v0, Lfzs$f;->rl_recent_operation:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->af:Landroid/view/View;

    .line 4947
    sget v0, Lfzs$f;->ll_enterprise_file_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ag:Landroid/view/View;

    .line 4948
    sget v0, Lfzs$f;->ll_person_ad:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Z:Landroid/view/View;

    .line 4950
    sget v0, Lfzs$f;->tv_tips_person_user:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->V:Landroid/widget/TextView;

    .line 4951
    sget v0, Lfzs$f;->person_ad_guide_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->W:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 4953
    sget v0, Lfzs$f;->if_my_folder_sync_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->X:Landroid/view/View;

    .line 4954
    sget v0, Lfzs$f;->syncdrive_synced_guide_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 4955
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$14;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4963
    sget v0, Lfzs$f;->rl_recommended_resource:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aa:Landroid/view/View;

    .line 4964
    sget v0, Lfzs$f;->tv_new_recommend:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ab:Landroid/view/View;

    .line 4965
    sget v0, Lfzs$f;->recommend_red_dot:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 4966
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v2, Lble;->W:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 4983
    sget v0, Lfzs$f;->view_search:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 4984
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$16;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4991
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->y()V

    .line 4997
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Q:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4998
    new-instance v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ah:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ao:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    .line 4999
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ao:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5000
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ao:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    .line 5046
    iput-object p0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;

    .line 5001
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->yun_space:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5527
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5893
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 5930
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 5931
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {}, Lgpt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 5534
    :goto_0
    invoke-direct {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->b(Z)V

    .line 6416
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->S:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$25;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$25;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6428
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->U:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$26;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6449
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->T:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6465
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->af:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6474
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->aa:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6495
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ap:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 157
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->w()V

    .line 7353
    invoke-static {p0}, Lgpr;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7357
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$24;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$24;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    .line 7398
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7399
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 7657
    if-eqz v0, :cond_0

    .line 7661
    new-instance v2, Lgon$46;

    invoke-direct {v2, v1, v0}, Lgon$46;-><init>(Lgon;Lcma;)V

    .line 7674
    iget-object v0, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getIndustryOperationUrl(Ljava/lang/Long;Liyv;)V

    .line 160
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->A:I

    .line 162
    new-instance v0, Lgfb;

    invoke-direct {v0, p0, p0}, Lgfb;-><init>(Landroid/app/Activity;Lgfa$b;)V

    .line 163
    return-void

    .line 5530
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->x()V

    goto :goto_0

    .line 6499
    :cond_2
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ap:Landroid/content/BroadcastReceiver;

    .line 6519
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6520
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6521
    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.new"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6522
    const-string/jumbo v1, "com.alibaba.dingtalk.space.ads.new"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6523
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1117
    invoke-static {}, Lcms;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->d(Landroid/view/Menu;)V

    .line 1122
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 174
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ap:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 179
    :cond_0
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    invoke-virtual {v0}, Lgqd;->b()V

    .line 181
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1229
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onStop()V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->Y:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 17070
    const-string/jumbo v0, "pref_key_space_sync_drive_show_blue_guide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpl;->a(Ljava/lang/String;Z)V

    .line 1234
    :cond_0
    return-void
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lgfa$a;

    .line 17200
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfa$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->ax:Lgfa$a;

    .line 97
    return-void
.end method

.method public final v()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1152
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v2, "teamAlbumGuideDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1156
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "resource"

    sget v4, Lfzs$e;->team_album_guide:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    const-string/jumbo v3, "title"

    sget v4, Lfzs$h;->dt_space_teamalbum_guide_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string/jumbo v3, "content"

    sget v4, Lfzs$h;->dt_space_team_album_guide_des:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 1161
    sget v3, Lfzs$h;->dt_space_enable_teamalbum:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14079
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 1163
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$18;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$18;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 14099
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 1172
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$20;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$20;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 15095
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 1184
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 1185
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 1186
    return-void
.end method
