.class public Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Lexi$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Leuq;

.field private j:J

.field private k:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lewj;

.field private o:Lexi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j:J

    .line 700
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->k:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # J

    .prologue
    .line 68
    .line 1682
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1686
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1687
    sget v1, Leuj$l;->dt_conference_org_switch_alert_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1688
    sget v1, Leuj$l;->dt_conference_org_switch_alert_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;J)V

    .line 1689
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1697
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;JZ)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 68
    .line 7548
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7551
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7552
    if-eqz p3, :cond_0

    .line 8442
    const-string/jumbo v0, "conf_management_card_info"

    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8447
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    invoke-direct {v1, v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;-><init>(Ljava/lang/String;)V

    .line 8448
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    if-eqz v0, :cond_0

    .line 8449
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    if-nez v0, :cond_2

    .line 8450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    .line 8454
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8456
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i:Leuq;

    if-eqz v0, :cond_0

    .line 8457
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i:Leuq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Leuq;->b(Ljava/util/List;)V

    .line 7556
    :cond_0
    invoke-static {v4}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7557
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 7558
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$6;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Z)V

    const-class v4, Leyo$d;

    .line 7625
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 7558
    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 9332
    if-nez v3, :cond_3

    .line 7557
    :cond_1
    :goto_1
    return-void

    .line 8452
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 9335
    :cond_3
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 9336
    if-eqz v1, :cond_1

    .line 9339
    new-instance v4, Leyd$10;

    invoke-direct {v4, v2, v0}, Leyd$10;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getCallManageInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_1

    .line 7627
    :cond_4
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 7628
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7629
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7630
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7631
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    .prologue
    .line 68
    .line 11463
    if-nez p1, :cond_0

    .line 11464
    :goto_0
    return-void

    .line 11466
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a()Ljava/lang/String;

    move-result-object v0

    .line 11467
    const-string/jumbo v1, "conf_management_card_info"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p2, "x2"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    .prologue
    .line 68
    .line 11471
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 12363
    :cond_0
    :goto_0
    return-void

    .line 11474
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11476
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v2

    iget-wide v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 11477
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$4;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    const-class v4, Leyo$d;

    .line 11518
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 11477
    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 12358
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 12361
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 12362
    if-eqz v1, :cond_0

    .line 12365
    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->valueOf()I

    move-result v4

    new-instance v5, Leyd$11;

    invoke-direct {v5, v2, v0}, Leyd$11;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->setUserCallOrg(Ljava/lang/Long;ILiyv;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "reddots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 364
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 365
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, "reddot":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 371
    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_0

    .line 372
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v2    # "reddot":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "conf_management_area_reddot"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;)Z
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;

    .prologue
    const/4 v1, 0x1

    .line 68
    .line 9381
    if-nez p1, :cond_1

    .line 9438
    :cond_0
    const/4 v0, 0x0

    .line 9431
    :goto_0
    return v0

    .line 9384
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->reddotPolicy:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->reddotPolicy:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;->TYPE_SHOW_ALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    if-ne v0, v2, :cond_0

    .line 9386
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;->TYPE_SHOW_ALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;)V

    .line 9388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9390
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->adModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->adModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .line 9391
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9392
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->adModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9395
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->cards:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9396
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    .line 9397
    if-eqz v0, :cond_3

    .line 9401
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .line 9402
    invoke-static {v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9403
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9406
    :cond_4
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .line 9407
    invoke-static {v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9408
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9413
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .line 9414
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9415
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9417
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9418
    const-string/jumbo v0, "conf_management_area_reddot"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 9420
    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Ljava/util/List;)V

    move v0, v1

    .line 9421
    goto/16 :goto_0

    .line 9423
    :cond_7
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9424
    array-length v3, v0

    if-lez v3, :cond_0

    .line 9425
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9427
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9429
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9430
    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Ljava/util/List;)V

    move v0, v1

    .line 9431
    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)Z
    .locals 6
    .param p1, "adModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    if-nez p1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v2

    .line 315
    :cond_1
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    const-string/jumbo v4, "conf_management_ad_info"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "warnInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 319
    goto :goto_0

    .line 321
    :cond_2
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Ljava/lang/String;)V

    .line 322
    .local v0, "warnBanner":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;
    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->c:Ljava/lang/String;

    .line 323
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    .line 324
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    .line 325
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # J

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 2637
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2640
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2642
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2643
    if-eqz v0, :cond_2

    .line 2646
    iget-object v5, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    .line 3313
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object v1, v2

    .line 2647
    :goto_2
    iget-wide v6, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    cmp-long v0, p1, v6

    if-nez v0, :cond_5

    .line 2648
    const/4 v0, 0x1

    .line 5093
    iput-boolean v0, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 2653
    :goto_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3316
    :cond_4
    new-instance v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    invoke-direct {v1, v2, v5}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4085
    iput-object v6, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 3318
    sget-object v5, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    .line 4137
    iput-object v5, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->j:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    goto :goto_2

    .line 2650
    :cond_5
    const/4 v0, 0x0

    .line 6093
    iput-boolean v0, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    goto :goto_3

    .line 2656
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V

    .line 7079
    iput-object v1, v0, Lewj;->c:Lewj$b;

    .line 2674
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_org_switch_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2675
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    invoke-virtual {v1, v0, v3}, Lewj;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    .line 10247
    if-eqz p1, :cond_1

    .line 10335
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v1

    .line 10247
    :goto_0
    if-nez v2, :cond_8

    .line 10248
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 10307
    :goto_1
    return-void

    .line 10338
    :cond_2
    const-string/jumbo v2, "conf_management_ad_info"

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10339
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    .line 10340
    goto :goto_0

    .line 10342
    :cond_3
    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Ljava/lang/String;)V

    .line 10343
    iget-boolean v2, v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->b:Z

    if-eqz v2, :cond_4

    move v2, v0

    .line 10344
    goto :goto_0

    .line 10346
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)Z

    move-result v2

    .line 10347
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    iget-object v5, v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v2, :cond_7

    .line 10349
    :cond_6
    iput-boolean v0, v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->b:Z

    .line 10350
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    iput-object v2, v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a:Ljava/lang/String;

    .line 10351
    const-string/jumbo v2, "conf_management_ad_info"

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 10353
    goto :goto_0

    :cond_7
    move v2, v1

    .line 10358
    goto :goto_0

    .line 10251
    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10252
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 10253
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10276
    :goto_2
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->bgColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 10277
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->bgColor:Ljava/lang/String;

    invoke-static {v2}, Leyq;->a(Ljava/lang/String;)I

    move-result v2

    .line 10278
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10280
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->uidic_global_color_6_7:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 10282
    :cond_9
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 10283
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 10284
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotColor:Ljava/lang/String;

    invoke-static {v2}, Leyq;->a(Ljava/lang/String;)I

    move-result v2

    .line 10285
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11041
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 11042
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 11043
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 11044
    int-to-double v6, v3

    const-wide v8, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v6, v8

    int-to-double v4, v4

    const-wide v8, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    int-to-double v2, v2

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 11045
    const/16 v3, 0xc0

    if-lt v2, v3, :cond_d

    .line 10287
    :goto_3
    if-eqz v0, :cond_e

    .line 10288
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 10294
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10295
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->contentColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 10296
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->contentColor:Ljava/lang/String;

    invoke-static {v0}, Leyq;->a(Ljava/lang/String;)I

    move-result v0

    .line 10297
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10299
    :cond_b
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 10300
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 10301
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 10305
    :catch_0
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 10274
    :cond_c
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_d
    move v0, v1

    .line 11048
    goto :goto_3

    .line 10290
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->uidic_global_color_6_7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_4

    .line 10303
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j:J

    return-wide p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->k:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)Ljava/lang/String;
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
    .param p1, "x1"    # J

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 11226
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 11230
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 11231
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 11232
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 11233
    if-eqz v0, :cond_0

    .line 11236
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 11243
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 68
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lexi$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->o:Lexi$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Leuq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i:Leuq;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a(JI)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "type"    # I

    .prologue
    .line 145
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->TYPE_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->valueOf()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 147
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_manage_switch_bizcall_org_press"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V

    invoke-virtual {v0, v1, v2}, Lewh;->b(ZLcma;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1522
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1523
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$5;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V

    const-class v4, Lcma;

    .line 1544
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 1523
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1522
    invoke-virtual {v1, v2, v0}, Lewh;->a(ZLcma;)V

    .line 115
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    check-cast p1, Lexi$a;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->o:Lexi$a;

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1190
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->j:J

    .line 1192
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;->TYPE_SHOW_NONE:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;)V

    .line 1193
    new-instance v0, Lewj;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    .line 102
    return-void

    .line 1191
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->I:Landroid/view/View;

    .line 1197
    sget v0, Leuj$i;->conf_loading:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->g:Landroid/view/View;

    .line 1198
    sget v0, Leuj$i;->list_conf_empty:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->h:Landroid/view/View;

    .line 1200
    sget v0, Leuj$i;->warning_banner_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1201
    sget v0, Leuj$i;->warning_banner_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->e:Landroid/widget/TextView;

    .line 1202
    sget v0, Leuj$i;->conf_ad_warning_banner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b:Landroid/view/View;

    .line 1203
    sget v0, Leuj$i;->warning_banner_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    sget v0, Leuj$i;->list_conf_functions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f:Landroid/widget/ListView;

    .line 1221
    new-instance v0, Leuq;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Leuq;-><init>(Landroid/app/Activity;Lexi$b;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i:Leuq;

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->i:Leuq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    invoke-virtual {v0}, Lewj;->a()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->n:Lewj;

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 124
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDetach()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->o:Lexi$a;

    .line 136
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 140
    sget v0, Leuj$j;->layout_conf_dingtalk_call_manager_page:I

    return v0
.end method
