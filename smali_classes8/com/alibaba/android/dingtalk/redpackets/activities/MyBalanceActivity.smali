.class public Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "MyBalanceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;
    }
.end annotation


# instance fields
.field private final A:I

.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private c:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;

.field private d:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

.field private e:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private final s:[I

.field private t:Landroid/webkit/WebView;

.field private u:Landroid/os/Handler;

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 111
    new-array v0, v4, [I

    sget v1, Lcaj$f;->redpackets_received:I

    aput v1, v0, v2

    sget v1, Lcaj$f;->redpackets_sent:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->s:[I

    .line 248
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->u:Landroid/os/Handler;

    .line 377
    iput v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->v:I

    .line 378
    iput v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->w:I

    .line 535
    iput v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->x:I

    .line 536
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->y:I

    .line 537
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->z:I

    .line 538
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->A:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->t:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->t:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->e:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 424
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 500
    .local v0, "bindListener":Lcma;
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b()V

    .line 501
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcbs;->b(Lcma;)V

    .line 502
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    .line 2382
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;I)V

    .line 2414
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2415
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 505
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 507
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->p:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->supportInvalidateOptionsMenu()V

    .line 533
    return-void

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->p:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->l:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 515
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    .line 516
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 1167
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 517
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->n:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 522
    .end local v1    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->p:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    sget v2, Lcaj$d;->tv_bind_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 524
    .local v0, "tvBindTips":Landroid/widget/TextView;
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->j:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    sget v2, Lcaj$f;->dt_pay_red_envelop_undraw_tips:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 528
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->j:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    sget v2, Lcaj$f;->redpackets_bind_tip:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    .line 3419
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3420
    sget v1, Lcaj$f;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 91
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->e:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->s:[I

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    .line 3226
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lcbs;->a(Lcma;)V

    .line 91
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lcaj$f;->redpackets_my_wallet:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 118
    :cond_0
    sget v1, Lcaj$e;->activity_my_balance:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->setContentView(I)V

    .line 119
    sget v1, Lcaj$d;->layout_header:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->p:Landroid/view/View;

    .line 120
    sget v1, Lcaj$d;->tv_apply:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->j:Landroid/widget/Button;

    .line 121
    sget v1, Lcaj$d;->tv_available_money_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->h:Landroid/widget/TextView;

    .line 122
    sget v1, Lcaj$d;->tv_available_money:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->g:Landroid/widget/TextView;

    .line 123
    sget v1, Lcaj$d;->tv_unavailable_money:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->f:Landroid/widget/TextView;

    .line 124
    sget v1, Lcaj$d;->ll_unavailable_money:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->i:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->j:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v1, Lcaj$d;->bind_intro_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->k:Landroid/view/View;

    .line 135
    sget v1, Lcaj$d;->bind_alipay_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->l:Landroid/view/View;

    .line 136
    sget v1, Lcaj$d;->ai_my_avatar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 137
    sget v1, Lcaj$d;->tv_my_nick:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->n:Landroid/widget/TextView;

    .line 138
    sget v1, Lcaj$d;->tv_alipay_account:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->o:Landroid/widget/TextView;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "binded_alipay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->q:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a()V

    .line 143
    sget v1, Lcaj$d;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 144
    sget v1, Lcaj$d;->indicator:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 145
    sget v1, Lcaj$d;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcaj$c;->default_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Lcn;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$a;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v2, Lcaj$c;->redpackets_tab_text_bg:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_redpacket_PAGE_INDEX"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "pageIndex":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 162
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 542
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1570
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.menu.MenuBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1571
    const-string/jumbo v2, "setOptionalIconsVisible"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1572
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1575
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    sget v1, Lcaj$f;->dt_red_mine_send_title:I

    invoke-interface {p1, v7, v8, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 562
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 549
    :cond_1
    sget v1, Lcaj$f;->redpackets_more:I

    invoke-interface {p1, v7, v9, v6, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 550
    .local v0, "subMenu":Landroid/view/SubMenu;
    sget v1, Lcaj$c;->icon_more_white:I

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 551
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 552
    sget v1, Lcaj$f;->dt_red_mine_send_title:I

    invoke-interface {v0, v7, v8, v9, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 553
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 555
    sget v1, Lcaj$f;->redpackets_unbind:I

    invoke-interface {v0, v7, v10, v10, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 557
    :cond_2
    invoke-static {}, Lcms;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const/4 v1, 0x5

    sget v2, Lcaj$f;->redpackets_menu_feedback:I

    invoke-interface {v0, v7, v1, v8, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 613
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onDestroy()V

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->t:Landroid/webkit/WebView;

    .line 615
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 585
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lcaj$f;->redpackets_confirm_unbind:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcaj$f;->sure:I

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    .line 587
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcaj$f;->cancel:I

    const/4 v4, 0x0

    .line 593
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 608
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 595
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 596
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 597
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "chat_redenvelope_homepage_send_btn_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 601
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;-><init>(Landroid/app/Activity;)V

    .line 2044
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2045
    const-string/jumbo v4, "choose_mode"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2046
    const-string/jumbo v4, "title"

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;->a:Landroid/app/Activity;

    sget v6, Lcaj$f;->redpackets_send:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v4, "count_limit_tips"

    sget v5, Lcaj$f;->create_conversation_choose_limit:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2048
    const-string/jumbo v4, "choose_people_from_contact_logic"

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2049
    const-string/jumbo v4, "choose_conversation_from_contact_logic"

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2050
    const-string/jumbo v4, "show_header_existed_group"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2051
    const-string/jumbo v4, "hide_org_external"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2052
    const-string/jumbo v4, "intent_key_use_external_logic"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2053
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;->a:Landroid/app/Activity;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 599
    :cond_2
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "chat_redenvelope_homepage_more_send_btn_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 602
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 603
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    const-string/jumbo v3, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_redpackets"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
