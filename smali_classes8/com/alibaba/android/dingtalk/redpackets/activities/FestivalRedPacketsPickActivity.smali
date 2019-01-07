.class public Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "FestivalRedPacketsPickActivity.java"


# instance fields
.field private A:Lcak;

.field private B:Lcom/alibaba/wukong/im/Conversation;

.field private C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field private D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field private E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

.field private J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

.field private K:Z

.field private final L:Ljava/lang/String;

.field private final a:I

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ListView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/animation/Animation;

.field private y:Landroid/view/animation/Animation;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 89
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->a:I

    .line 139
    const-string/jumbo v0, "FestivalRedPacketsPickActivity"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->L:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->x:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;)Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;)Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    return-object p1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    sget v1, Lcaj$c;->redpacket_pick:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 513
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->K:Z

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->i:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_entry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_pick_open_string:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 5904
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v0}, Lcbt;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z

    move-result v0

    .line 518
    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->i:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_bomb_from_user_tips_simple:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_pick_enterprise_open_string_qiang:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    packed-switch v0, :pswitch_data_0

    .line 538
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_pick_open_string:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->i:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_oriented:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_pick_enterprise_open_string:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->i:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_enterprise:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_pick_enterprise_new_open_string:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 534
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->i:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_random:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "nick":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 506
    .local v0, "avatarMediaId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 5167
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 509
    .end local v0    # "avatarMediaId":Ljava/lang/String;
    .end local v1    # "nick":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->y:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    return-object v0
.end method

.method private b()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 849
    const/16 v1, 0x10

    invoke-static {v1}, Lcms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "red_packets"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "preventAutoPick error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 863
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 862
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 869
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 870
    :cond_0
    const-string/jumbo v0, "red_packets"

    const-string/jumbo v1, "FestivalRedPacketsPickActivity"

    const-string/jumbo v2, "FestivalRedPacketsPickActivity to detail param invalid nav2RedPacketDetailWithFinish"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/detail.html"

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    .line 874
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 888
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->finish()V

    .line 889
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->K:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->B:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    .line 6679
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6680
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v0, v1, v2}, Lcap;->a(Landroid/view/View;FF)V

    .line 6682
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    .line 6904
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v0}, Lcbt;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z

    move-result v4

    .line 6682
    const-string/jumbo v0, "EVENTBUTLER"

    .line 6683
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$11;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$11;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    const-class v6, Lcma;

    invoke-interface {v0, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6682
    invoke-virtual {v1, v2, v3, v4, v0}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;ZLcma;)V

    .line 85
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->a()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    .line 7570
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_0

    .line 7573
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    if-eqz v0, :cond_0

    .line 7576
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->receiverCover:Ljava/lang/String;

    .line 7577
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7580
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7581
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7584
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->m:Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 7585
    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    .line 7589
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_0

    .line 7592
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    if-eqz v0, :cond_0

    .line 7595
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->receiverBgImg:Ljava/lang/String;

    .line 7596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7599
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7600
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7603
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->n:Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 7604
    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    .line 8545
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    const-string/jumbo v1, "@lA_PAAAAAQ4VSVXOYBiWVc4zpqqN"

    .line 8546
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8550
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_1

    .line 8553
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    if-eqz v0, :cond_1

    .line 8556
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->receiverSeal:Ljava/lang/String;

    .line 8557
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8560
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8561
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8564
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8565
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 8566
    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 85
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 85
    .line 8620
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_0

    .line 8623
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    if-eqz v0, :cond_0

    .line 8626
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->bgImg:Ljava/lang/String;

    .line 8627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8630
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8631
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8634
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerImageView;

    const/16 v4, 0x15

    move v6, v5

    move-object v7, v3

    .line 8635
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 85
    .line 8639
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_0

    .line 8642
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    if-eqz v0, :cond_0

    .line 8645
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->J:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->main:Ljava/lang/String;

    .line 8646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8649
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8650
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8653
    const-string/jumbo v0, "gif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8654
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->p:Landroid/widget/ImageView;

    const/4 v4, 0x2

    move v6, v5

    move-object v7, v3

    .line 8655
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    .line 8657
    :cond_1
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->p:Landroid/widget/ImageView;

    .line 8658
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 85
    .line 8663
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->B:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 8664
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8665
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8666
    :goto_0
    return-void

    .line 8668
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8669
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8670
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8671
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->I:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->replyTexts:[Ljava/lang/String;

    .line 9121
    if-nez v0, :cond_4

    .line 9122
    const/4 v0, 0x0

    .line 8672
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 8673
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8675
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->A:Lcak;

    invoke-virtual {v0}, Lcak;->notifyDataSetChanged()V

    goto :goto_0

    .line 9124
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9125
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 9126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 9129
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->x:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->y:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 85
    .line 9795
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9796
    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 9904
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v1}, Lcbt;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z

    move-result v1

    .line 9803
    if-eqz v1, :cond_2

    .line 9804
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_1

    .line 9808
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    .line 9809
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->finish()V

    .line 9837
    :cond_1
    :goto_0
    return-void

    .line 9799
    :catch_0
    move-exception v1

    const-string/jumbo v1, "redpackets"

    const-string/jumbo v2, "amount format invalidate"

    invoke-static {v1, v0, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9800
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->finish()V

    goto :goto_0

    .line 9813
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9814
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->c()V

    goto :goto_0

    .line 9819
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9820
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9821
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9822
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9827
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    packed-switch v0, :pswitch_data_0

    .line 9834
    :pswitch_0
    sget v0, Lcaj$f;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 9835
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "festival redpacket pick"

    const-string/jumbo v2, "cluster type incorrect"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9836
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->finish()V

    goto :goto_0

    .line 9824
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9825
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 9840
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 9841
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 9842
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9843
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 9827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    .line 10904
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v0}, Lcbt;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z

    move-result v0

    .line 85
    return v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 85
    .line 11893
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_action_pick_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pick_status"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 11894
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 11895
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 11898
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    if-eqz v0, :cond_0

    .line 11899
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    invoke-static {p0, v0, v1}, Lcbw;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->finish()V

    .line 159
    const/4 v0, 0x0

    sget v1, Lcaj$a;->redpacktes_alpha_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->overridePendingTransition(II)V

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    sget v0, Lcaj$e;->activity_pick_festival_redpackets:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->setContentView(I)V

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    move v8, v5

    .line 146
    .local v8, "validate":Z
    :goto_0
    if-eqz v8, :cond_14

    .line 1203
    sget v0, Lcaj$d;->rl_root_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->b:Landroid/widget/RelativeLayout;

    .line 1204
    sget v0, Lcaj$d;->rl_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->c:Landroid/widget/RelativeLayout;

    .line 1205
    sget v0, Lcaj$d;->iv_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerImageView;

    .line 1207
    sget v0, Lcaj$d;->layout_iv_enterprise_b2c:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->e:Landroid/view/View;

    .line 1208
    sget v0, Lcaj$d;->iv_enterprise_b2c:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->f:Landroid/widget/ImageView;

    .line 1209
    sget v0, Lcaj$d;->iv_sender:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1210
    sget v0, Lcaj$d;->tv_sender_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->h:Landroid/widget/TextView;

    .line 1211
    sget v0, Lcaj$d;->tv_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->i:Landroid/widget/TextView;

    .line 1212
    sget v0, Lcaj$d;->tv_bless_word:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->j:Landroid/widget/TextView;

    .line 1213
    sget v0, Lcaj$d;->iv_pick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    .line 1214
    sget v0, Lcaj$d;->rl_pick_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->l:Landroid/widget/RelativeLayout;

    .line 1215
    sget v0, Lcaj$d;->iv_pick_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->m:Landroid/widget/ImageView;

    .line 1216
    sget v0, Lcaj$d;->iv_pick_bottom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->n:Landroid/widget/ImageView;

    .line 1217
    sget v0, Lcaj$d;->tv_view_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->o:Landroid/widget/TextView;

    .line 1219
    sget v0, Lcaj$d;->iv_main_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->p:Landroid/widget/ImageView;

    .line 1220
    sget v0, Lcaj$d;->tv_result_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->q:Landroid/widget/TextView;

    .line 1221
    sget v0, Lcaj$d;->tv_account:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->r:Landroid/widget/TextView;

    .line 1222
    sget v0, Lcaj$d;->list_result_reply:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s:Landroid/widget/ListView;

    .line 1224
    sget v0, Lcaj$d;->ll_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->t:Landroid/view/View;

    .line 1225
    sget v0, Lcaj$d;->tv_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->u:Landroid/widget/TextView;

    .line 1226
    sget v0, Lcaj$d;->tv_package:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->v:Landroid/widget/TextView;

    .line 1227
    sget v0, Lcaj$d;->tv_result_reply:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->w:Landroid/widget/TextView;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->E:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    if-ne v0, v10, :cond_b

    .line 1299
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->j:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_cant_pick_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3447
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 3448
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3449
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3451
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Lcbw;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 3452
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3454
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Lcbw;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 3455
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 3456
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3457
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->f:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 3458
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->f:Landroid/widget/ImageView;

    sget v1, Lcaj$c;->enterprise_red_packets_default_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1336
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->a()V

    .line 4341
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4342
    const-string/jumbo v0, "@lA_PAAAAAQ4VSVXOYBiWVc4zpqqN"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    .line 4344
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4345
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4346
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4345
    invoke-virtual {v1, v2, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;Lcma;)Z

    .line 154
    :cond_2
    :goto_3
    return-void

    .line 1167
    .end local v8    # "validate":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->B:Lcom/alibaba/wukong/im/Conversation;

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->B:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_4

    .line 1169
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "festival redpacket pick"

    const-string/jumbo v2, "conversation null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pick_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    if-nez v0, :cond_5

    .line 1174
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "festival redpacket pick"

    const-string/jumbo v2, "status null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v5

    .line 1175
    goto/16 :goto_0

    .line 1177
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_7

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 1182
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-nez v0, :cond_8

    .line 1183
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "festival redpacket pick"

    const-string/jumbo v2, "cluster null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v5

    .line 1184
    goto/16 :goto_0

    .line 1179
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v0, :cond_6

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    goto :goto_4

    .line 1187
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_is_festival_redpackets"

    invoke-static {v0, v1, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->K:Z

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->F:Ljava/lang/String;

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_festival_redpacket_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    .line 1190
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_festival_theme_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->H:Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->G:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1193
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "festival redpacket pick"

    const-string/jumbo v2, "packetId null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->H:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1196
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "festival redpacket pick"

    const-string/jumbo v2, "themeId null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move v8, v4

    .line 1199
    goto/16 :goto_0

    .line 1301
    .restart local v8    # "validate":Z
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1904
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v0}, Lcbt;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z

    move-result v0

    .line 1304
    if-eqz v0, :cond_c

    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->j:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_bomb_view_pickstatus_expired:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1307
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcaj$f;->dt_festival_redenvelop_expired_prefix:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "\n"

    aput-object v2, v1, v4

    sget v2, Lcaj$f;->dt_festival_redenvelop_expired_suffix:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1311
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->b()V

    .line 1312
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2386
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$8;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 2412
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 2441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->z:Ljava/util/List;

    .line 2442
    new-instance v0, Lcak;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->B:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->z:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcak;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->A:Lcak;

    .line 2443
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->A:Lcak;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2608
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2609
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "binded_alipay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 2608
    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2611
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->r:Landroid/widget/TextView;

    new-array v1, v10, [Ljava/lang/String;

    sget v2, Lcaj$f;->dt_redenvelop_money_have_saved_to:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcaj$f;->redpackets_picked_tips_unbinded:I

    .line 2612
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2611
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 1317
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->D:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->curUserAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-nez v0, :cond_10

    .line 1327
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->o:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_random_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1331
    :goto_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-ne v0, v10, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2614
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->r:Landroid/widget/TextView;

    new-array v1, v10, [Ljava/lang/String;

    sget v2, Lcaj$f;->dt_redenvelop_money_have_saved_to:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcaj$f;->redpackets_picked_tips_binded:I

    .line 2615
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2614
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1322
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1323
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1329
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->o:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_view_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 3460
    :cond_11
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->f:Landroid/widget/ImageView;

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 3461
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->f:Landroid/widget/ImageView;

    sget v1, Lcaj$c;->enterprise_red_packets_avatar_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3464
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3465
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3466
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 3467
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    .line 3468
    if-eqz v0, :cond_13

    .line 3469
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_2

    .line 3471
    :cond_13
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$10;

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$10;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;J)V

    .line 3496
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->C:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    .line 3497
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    invoke-interface {v4, v0, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3496
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_2

    .line 151
    :cond_14
    sget v0, Lcaj$f;->dt_dynamic_so_error_msg_params_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->finish()V

    goto/16 :goto_3
.end method
