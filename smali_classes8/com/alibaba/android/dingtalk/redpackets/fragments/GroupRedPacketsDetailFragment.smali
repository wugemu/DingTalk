.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "GroupRedPacketsDetailFragment.java"


# instance fields
.field public a:I

.field public b:Z

.field private c:Landroid/widget/ListView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private e:Lcam;

.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field private j:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field private k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

.field private l:Ljava/lang/String;

.field private m:Lcom/alibaba/wukong/im/Conversation;

.field private n:Landroid/os/Handler;

.field private o:Lcjo$a;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 79
    iput v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->n:Landroid/os/Handler;

    .line 89
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->p:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->a:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->b:Z

    .line 99
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->q:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->r:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object p1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 716
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 715
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 31
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "refresh"    # Z

    .prologue
    .line 248
    sget v24, Lcaj$d;->sender_name:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 249
    .local v18, "senderName":Landroid/widget/TextView;
    sget v24, Lcaj$d;->redpackets_myself:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 250
    .local v10, "myself":Landroid/widget/TextView;
    sget v24, Lcaj$d;->redpackets_comment:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 251
    .local v13, "redPacketsDesc":Landroid/widget/TextView;
    sget v24, Lcaj$d;->redpackets_money:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 252
    .local v16, "redPacketsMoney":Landroid/widget/TextView;
    sget v24, Lcaj$d;->redpackets_balance:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 253
    .local v12, "redPacketsBalance":Landroid/widget/TextView;
    sget v24, Lcaj$d;->redpackets_money_yuan:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 254
    .local v17, "redPacketsYuan":Landroid/widget/TextView;
    sget v24, Lcaj$d;->receiver_list:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 255
    .local v14, "redPacketsList":Landroid/widget/TextView;
    sget v24, Lcaj$d;->receiver_list_tips:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 256
    .local v15, "redPacketsListTips":Landroid/widget/TextView;
    sget v24, Lcaj$d;->ll_banlance:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 257
    .local v23, "viewBalance":Landroid/view/View;
    sget v24, Lcaj$d;->enterprise_sign:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 258
    .local v8, "enterpriseSign":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 259
    .local v20, "sum":D
    if-nez p2, :cond_4

    .line 260
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    move-wide/from16 v26, v0

    const-string/jumbo v24, "EVENTBUTLER"

    invoke-static/range {v24 .. v24}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v28, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$8;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Landroid/widget/TextView;)V

    const-class v29, Lcma;

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    .line 260
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcma;

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 344
    sget v24, Lcaj$f;->redpackets_receiver_list:I

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lccr;->c()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 347
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    sget v24, Lcaj$f;->dt_redenvelop_enterprise_received_AT:I

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lccr;->d()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    :cond_0
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcid;->c()Landroid/app/Application;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lccr;->c()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "binded_alipay"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, ""

    invoke-static/range {v24 .. v26}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "alipayAccount":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lcaj$b;->text_color_white:I

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 395
    .local v7, "countColor":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 396
    .local v6, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    sget v24, Lcaj$f;->redpackets_picked_tips_unbinded:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 397
    .local v19, "tipString":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 399
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcms;->h()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 400
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 403
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 406
    const/16 v24, 0x2c

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 407
    .local v9, "index":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v9, v0, :cond_2

    .line 408
    const v24, 0xff0c

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 410
    :cond_2
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v9, v0, :cond_3

    .line 411
    const/4 v9, 0x4

    .line 413
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x21

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v6, v9, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v7    # "countColor":I
    .end local v9    # "index":I
    .end local v19    # "tipString":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 420
    new-instance v24, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$10;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$10;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :goto_2
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const-string/jumbo v24, "%.2f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v28, v20, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 439
    sget v24, Lcaj$f;->redpackets_yuan:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 445
    .end local v4    # "alipayAccount":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 351
    :cond_5
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v22, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    aget-object v11, v25, v24

    .line 354
    .local v11, "receiver":Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 355
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 360
    .end local v11    # "receiver":Ljava/lang/Long;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_0

    .line 361
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v25

    const-string/jumbo v24, "EVENTBUTLER"

    invoke-static/range {v24 .. v24}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v26, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$9;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Landroid/widget/TextView;)V

    const-class v27, Lcma;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    .line 361
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcma;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 416
    .end local v22    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v4    # "alipayAccount":Ljava/lang/String;
    :cond_8
    sget v24, Lcaj$f;->redpackets_picked_tips_binded:I

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 432
    :cond_9
    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 441
    :cond_a
    sget v24, Lcaj$f;->redpackets_yuan_per_one:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "redPacketsFlows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;>;"
    const/4 v4, 0x0

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v0, "newData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 850
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 852
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v5, v5, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    if-lt v3, v5, :cond_1

    .line 853
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v5, v3

    .line 854
    .local v2, "uid":Ljava/lang/Long;
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;-><init>()V

    .line 855
    .local v1, "redPacketsFlowObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iput-wide v8, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->sender:J

    .line 856
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v7, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->clusterId:Ljava/lang/String;

    .line 857
    iput v4, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->status:I

    .line 858
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    .line 859
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 860
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "redPacketsFlowObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    .end local v2    # "uid":Ljava/lang/Long;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    if-nez v3, :cond_2

    .line 866
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    .line 868
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 869
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 870
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->e:Lcam;

    if-nez v3, :cond_3

    .line 871
    new-instance v3, Lcam;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->m:Lcom/alibaba/wukong/im/Conversation;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcam;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->e:Lcam;

    .line 872
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->e:Lcam;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 877
    :goto_1
    return-void

    .line 874
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->e:Lcam;

    invoke-virtual {v3}, Lcam;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->r:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->q:I

    return p1
.end method

.method private b(Landroid/view/View;Z)V
    .locals 40
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "refresh"    # Z

    .prologue
    .line 448
    sget v33, Lcaj$d;->sender_icon:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 449
    .local v16, "imgIcon":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v33, Lcaj$d;->sender_name:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 450
    .local v31, "tvSenderName":Landroid/widget/TextView;
    sget v33, Lcaj$d;->redpackets_comment:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 451
    .local v24, "redPacketsDesc":Landroid/widget/TextView;
    sget v33, Lcaj$d;->ll_money:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 452
    .local v18, "mViewMoney":Landroid/view/View;
    sget v33, Lcaj$d;->redpackets_money:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 453
    .local v25, "redPacketsMoney":Landroid/widget/TextView;
    sget v33, Lcaj$d;->redpackets_balance:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 454
    .local v22, "redPacketsBalance":Landroid/widget/TextView;
    sget v33, Lcaj$d;->tv_redpacket_balance_tips:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 455
    .local v23, "redPacketsBalanceTips":Landroid/widget/TextView;
    sget v33, Lcaj$d;->redpackets_picked_detail:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 456
    .local v26, "redPacketsPicked":Landroid/widget/TextView;
    sget v33, Lcaj$d;->ll_banlance:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 459
    .local v32, "viewBalance":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    .line 471
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_9

    sget v33, Lcaj$f;->redpackets_tips_random:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 472
    .local v27, "redpacketTip":Ljava/lang/String;
    :goto_1
    const/16 v17, 0x0

    .line 473
    .local v17, "isBombRedPacket":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    .line 2049
    if-nez v33, :cond_a

    .line 2050
    const/16 v33, 0x0

    .line 473
    :goto_2
    if-eqz v33, :cond_d

    .line 474
    sget v33, Lcaj$f;->dt_bomb_from_user_alone_tips:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 475
    const/16 v17, 0x1

    .line 481
    :cond_1
    :goto_3
    const/4 v15, 0x0

    .line 483
    .local v15, "hasBindedAlipayAccount":Z
    if-nez p2, :cond_4

    .line 484
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    move-object/from16 v13, v27

    .line 486
    .local v13, "finalRedpacketTip":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    move-wide/from16 v36, v0

    const-string/jumbo v33, "EVENTBUTLER"

    invoke-static/range {v33 .. v33}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v35, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$11;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$11;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Landroid/widget/TextView;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    const-class v38, Lcma;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v39

    .line 486
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcma;

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 507
    const/4 v12, 0x0

    .line 508
    .local v12, "festivalType":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 509
    const-string/jumbo v12, "red_packet_bomb"

    .line 511
    :cond_2
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    move/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v12}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    if-eqz v17, :cond_e

    .line 513
    const/16 v33, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    sget v33, Lcaj$f;->dt_bomb_benifits_list:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 517
    .local v21, "placeHolder":Ljava/lang/String;
    :try_start_0
    sget v33, Lcaj$f;->dt_bomb_get_money_tips_AT:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v21, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 518
    .local v30, "tips":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .line 519
    .local v28, "startIndex":I
    if-ltz v28, :cond_3

    .line 520
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v33

    add-int v10, v28, v33

    .line 521
    .local v10, "endIndex":I
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-gt v10, v0, :cond_3

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    sget v34, Lcaj$b;->redpackets_link_color:I

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 523
    .local v9, "countColor":I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 524
    .local v8, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 525
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 526
    const/16 v33, 0x21

    move/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v5, v8, v0, v10, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 527
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    sget v34, Lcaj$b;->text_color_gray:I

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v9    # "countColor":I
    .end local v10    # "endIndex":I
    .end local v28    # "startIndex":I
    .end local v30    # "tips":Ljava/lang/String;
    :cond_3
    :goto_4
    new-instance v33, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$12;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$12;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .end local v12    # "festivalType":Ljava/lang/String;
    .end local v13    # "finalRedpacketTip":Ljava/lang/String;
    .end local v21    # "placeHolder":Ljava/lang/String;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    move-object/from16 v33, v0

    if-eqz v33, :cond_10

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 562
    .local v6, "amount":D
    const-string/jumbo v33, "%.2f"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    if-nez v17, :cond_5

    .line 564
    move v14, v15

    .line 565
    .local v14, "hasAlipayAccount":Z
    new-instance v33, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$13;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$13;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    .end local v14    # "hasAlipayAccount":Z
    :cond_5
    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 581
    .end local v6    # "amount":D
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    move/from16 v33, v0

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickDoneTimeInSecond:I

    move/from16 v33, v0

    if-gtz v33, :cond_11

    const/16 v19, 0x1

    .line 584
    .local v19, "pickedDoneTime":I
    :goto_7
    const/16 v33, 0x3c

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 585
    sget v33, Lcaj$f;->and_red_packet_time_second_AT:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 593
    .local v20, "pickedDoneTimeString":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    move-wide/from16 v34, v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lccr;->c()J

    move-result-wide v36

    cmp-long v33, v34, v36

    if-nez v33, :cond_15

    .line 594
    sget v33, Lcaj$f;->redpacktes_random_self_picked_done_detail:I

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    const/16 v35, 0x2

    aput-object v20, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .end local v19    # "pickedDoneTime":I
    .end local v20    # "pickedDoneTimeString":Ljava/lang/String;
    :cond_6
    :goto_9
    return-void

    .line 464
    .end local v15    # "hasBindedAlipayAccount":Z
    .end local v17    # "isBombRedPacket":Z
    .end local v27    # "redpacketTip":Ljava/lang/String;
    :cond_7
    sget v33, Lcaj$f;->dt_redenvelop_entry:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 466
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-lez v33, :cond_0

    .line 467
    sget v33, Lcaj$f;->dt_redenvelop_goodtime:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 471
    :cond_9
    sget v33, Lcaj$f;->dt_redpacket_tips_name:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    .line 2052
    .restart local v17    # "isBombRedPacket":Z
    .restart local v27    # "redpacketTip":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v34, v0

    if-nez v34, :cond_b

    .line 2053
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 2055
    :cond_b
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->redPacketBomb:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;

    move-object/from16 v34, v0

    if-nez v34, :cond_c

    .line 2056
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 2058
    :cond_c
    const-string/jumbo v34, "selfHappy"

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->redPacketBomb:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    goto/16 :goto_2

    .line 476
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcbt;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 477
    sget v33, Lcaj$f;->dt_bomb_from_user_share_tips:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 478
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 531
    .restart local v12    # "festivalType":Ljava/lang/String;
    .restart local v13    # "finalRedpacketTip":Ljava/lang/String;
    .restart local v15    # "hasBindedAlipayAccount":Z
    .restart local v21    # "placeHolder":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 532
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 543
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v21    # "placeHolder":Ljava/lang/String;
    :cond_e
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcid;->c()Landroid/app/Application;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lccr;->c()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "binded_alipay"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, ""

    invoke-static/range {v33 .. v35}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, "alipayAccount":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    sget v34, Lcaj$b;->text_color_gray:I

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 547
    .restart local v9    # "countColor":I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 548
    .restart local v8    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    sget v33, Lcaj$f;->redpackets_picked_tips_unbinded:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 549
    .local v29, "tipString":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 550
    .restart local v5    # "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 551
    const/16 v33, 0x4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x21

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 552
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 554
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v9    # "countColor":I
    .end local v29    # "tipString":Ljava/lang/String;
    :cond_f
    sget v33, Lcaj$f;->redpackets_picked_tips_binded:I

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 555
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 578
    .end local v4    # "alipayAccount":Ljava/lang/String;
    .end local v12    # "festivalType":Ljava/lang/String;
    .end local v13    # "finalRedpacketTip":Ljava/lang/String;
    :cond_10
    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 579
    const/16 v33, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 583
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickDoneTimeInSecond:I

    move/from16 v19, v0

    goto/16 :goto_7

    .line 586
    .restart local v19    # "pickedDoneTime":I
    :cond_12
    const/16 v33, 0xe10

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    .line 587
    sget v33, Lcaj$f;->and_red_packet_time_minute_AT:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    div-int/lit8 v36, v19, 0x3c

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "pickedDoneTimeString":Ljava/lang/String;
    goto/16 :goto_8

    .line 588
    .end local v20    # "pickedDoneTimeString":Ljava/lang/String;
    :cond_13
    const v33, 0x15180

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_14

    .line 589
    sget v33, Lcaj$f;->and_red_packet_time_hour_AT:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0xe10

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "pickedDoneTimeString":Ljava/lang/String;
    goto/16 :goto_8

    .line 591
    .end local v20    # "pickedDoneTimeString":Ljava/lang/String;
    :cond_14
    sget v33, Lcaj$f;->and_red_packet_time_day_AT:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const v36, 0x15180

    div-int v36, v19, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "pickedDoneTimeString":Ljava/lang/String;
    goto/16 :goto_8

    .line 596
    :cond_15
    sget v33, Lcaj$f;->redpacktes_random_picked_done_detail:I

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    aput-object v20, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 600
    .end local v19    # "pickedDoneTime":I
    .end local v20    # "pickedDoneTimeString":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    move-wide/from16 v34, v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lccr;->c()J

    move-result-wide v36

    cmp-long v33, v34, v36

    if-nez v33, :cond_17

    .line 601
    sget v33, Lcaj$f;->redpacktes_random_self_picked_detail:I

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 607
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcaj$f;->redpacktes_expired_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 603
    :cond_17
    sget v33, Lcaj$f;->redpacktes_random_picked_detail:I

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->s:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->s:I

    return p1
.end method

.method private c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 209
    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 210
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->header_packets_oriented:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->a(Landroid/view/View;Z)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-direct {p0, v1, v9}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 219
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    if-nez v1, :cond_4

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    if-nez v1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->header_packets_random:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->b(Landroid/view/View;Z)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-direct {p0, v1, v9}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->b(Landroid/view/View;Z)V

    goto :goto_0

    .line 228
    :cond_4
    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    if-ne v1, v9, :cond_6

    .line 229
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    if-nez v1, :cond_5

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->header_packest_normal:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-direct {p0, v1, v9}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 237
    :cond_6
    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    if-nez v1, :cond_0

    .line 239
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "header":Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    .line 1068
    if-eqz v2, :cond_8

    .line 1072
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->e:Landroid/widget/TextView;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v6, v7}, Lcbw;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->f:Landroid/widget/TextView;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->createTime:J

    invoke-static {v6, v7}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    if-eqz v3, :cond_9

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    if-eqz v4, :cond_9

    .line 1077
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->a()V

    .line 1078
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->d()Ljava/lang/String;

    move-result-object v1

    .line 1079
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcaj$f;->dt_redenvelop_enterprise_b2c_received_AT:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    .line 1096
    :cond_7
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1097
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->b:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    :goto_2
    if-eqz v3, :cond_8

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v1, :cond_8

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    if-lez v1, :cond_8

    .line 1104
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcaj$f;->dt_redenvelop_receiver_size_title_AT:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    .line 1105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    .line 1104
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_8
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    .line 242
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1082
    :cond_9
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->a:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1084
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1085
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->c:Landroid/widget/TextView;

    sget v4, Lcaj$f;->dt_redenvelop_enterprise:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1089
    :goto_3
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amountRange:Ljava/lang/String;

    .line 1090
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1091
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;

    if-eqz v4, :cond_7

    .line 1092
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;->amountRange:Ljava/lang/String;

    goto :goto_1

    .line 1087
    :cond_a
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1099
    :cond_b
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->b:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private c(Landroid/view/View;Z)V
    .locals 30
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "refresh"    # Z

    .prologue
    .line 614
    sget v23, Lcaj$d;->sender_icon:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 615
    .local v12, "imgIcon":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v23, Lcaj$d;->sender_name:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 616
    .local v21, "tvSenderName":Landroid/widget/TextView;
    sget v23, Lcaj$d;->redpackets_desc:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 617
    .local v15, "redPacketsDesc":Landroid/widget/TextView;
    sget v23, Lcaj$d;->redpackets_money:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 618
    .local v16, "redPacketsMoney":Landroid/widget/TextView;
    sget v23, Lcaj$d;->ll_money:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 619
    .local v22, "viewMoney":Landroid/view/View;
    sget v23, Lcaj$d;->ll_banlance:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 620
    .local v14, "redPacketsBalance":Landroid/view/View;
    sget v23, Lcaj$d;->redpackets_picked_detail:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 621
    .local v17, "redPacketsPicked":Landroid/widget/TextView;
    sget v23, Lcaj$d;->redpackets_balance:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 623
    .local v20, "tvRedPacketsBalance":Landroid/widget/TextView;
    const/4 v11, 0x0

    .line 624
    .local v11, "hasBindedAlipayAccount":Z
    if-nez p2, :cond_1

    .line 625
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcid;->c()Landroid/app/Application;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lccr;->c()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "binded_alipay"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, ""

    invoke-static/range {v23 .. v25}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, "alipayAccount":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcaj$b;->text_color_gray:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 628
    .local v9, "countColor":I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 629
    .local v8, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    sget v23, Lcaj$f;->redpackets_picked_tips_unbinded:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 630
    .local v19, "tipString":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 631
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 633
    const/16 v23, 0x2c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 634
    .local v13, "index":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_0

    .line 636
    const v23, 0xff0c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 641
    :cond_0
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_5

    .line 642
    invoke-static {}, Lcms;->c()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 643
    const/16 v18, 0x4

    .line 653
    .local v18, "start":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x21

    move/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 654
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v9    # "countColor":I
    .end local v13    # "index":I
    .end local v18    # "start":I
    .end local v19    # "tipString":Ljava/lang/String;
    :goto_1
    sget v23, Lcaj$f;->redpackets_tips_normal:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    move-wide/from16 v26, v0

    const-string/jumbo v23, "EVENTBUTLER"

    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v25, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v12}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    const-class v28, Lcma;

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    .line 660
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcma;

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 678
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 680
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 681
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 683
    .local v6, "amount":D
    const-string/jumbo v23, "%.2f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    .end local v4    # "alipayAccount":Ljava/lang/String;
    .end local v6    # "amount":D
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 691
    sget v23, Lcaj$f;->redpacktes_normal_picked_done_detail:I

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_2
    :goto_3
    move v10, v11

    .line 700
    .local v10, "hasAlipayAccount":Z
    new-instance v23, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    return-void

    .line 644
    .end local v10    # "hasAlipayAccount":Z
    .restart local v4    # "alipayAccount":Ljava/lang/String;
    .restart local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v8    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .restart local v9    # "countColor":I
    .restart local v13    # "index":I
    .restart local v19    # "tipString":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcms;->h()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 645
    const/16 v18, 0x6

    .restart local v18    # "start":I
    goto/16 :goto_0

    .line 648
    .end local v18    # "start":I
    :cond_4
    const/16 v18, 0x4

    .restart local v18    # "start":I
    goto/16 :goto_0

    .line 651
    .end local v18    # "start":I
    :cond_5
    move/from16 v18, v13

    .restart local v18    # "start":I
    goto/16 :goto_0

    .line 656
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v9    # "countColor":I
    .end local v13    # "index":I
    .end local v18    # "start":I
    .end local v19    # "tipString":Ljava/lang/String;
    :cond_6
    sget v23, Lcaj$f;->redpackets_picked_tips_binded:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 657
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 685
    :cond_7
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 686
    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 693
    .end local v4    # "alipayAccount":Ljava/lang/String;
    :cond_8
    sget v23, Lcaj$f;->redpacktes_normal_picked_detail:I

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 695
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcaj$f;->redpacktes_expired_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Lcam;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->e:Lcam;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 823
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->w:Landroid/view/View;

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcaj$e;->redpackets_footer_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->w:Landroid/view/View;

    .line 825
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->w:Landroid/view/View;

    sget v1, Lcaj$d;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->x:Landroid/view/View;

    .line 826
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->w:Landroid/view/View;

    sget v1, Lcaj$d;->tv_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->y:Landroid/widget/TextView;

    .line 827
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->y:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->y:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->pickedFlow:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    if-nez v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Lcjo$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->o:Lcjo$a;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(ZZZ)V
    .locals 15
    .param p1, "forceRefresh"    # Z
    .param p2, "first"    # Z
    .param p3, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 721
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->p:Z

    if-eqz v2, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->p:Z

    .line 729
    if-eqz p3, :cond_5

    .line 730
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->x:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 731
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->x:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->y:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 735
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->y:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    :cond_3
    :goto_1
    const-wide/16 v12, 0x0

    .line 743
    .local v12, "startTime":J
    const/4 v10, 0x0

    .line 744
    .local v10, "flowId":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 745
    .local v9, "currentSize":I
    :goto_2
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    if-eqz v2, :cond_4

    if-lez v9, :cond_4

    .line 746
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->t:Ljava/util/List;

    add-int/lit8 v3, v9, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    .line 747
    .local v11, "redPacketsFlowObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    if-eqz v11, :cond_4

    .line 748
    iget-wide v12, v11, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->modifyTime:J

    .line 749
    iget v10, v11, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->flowId:I

    .line 754
    .end local v11    # "redPacketsFlowObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    :cond_4
    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redPacketsFlows:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redPacketsFlows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 755
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c()V

    .line 756
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d()V

    .line 757
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redPacketsFlows:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->a(Ljava/util/List;)V

    .line 758
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->o:Lcjo$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 759
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->p:Z

    goto :goto_0

    .line 738
    .end local v9    # "currentSize":I
    .end local v10    # "flowId":I
    .end local v12    # "startTime":J
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v2, :cond_3

    .line 739
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_1

    .line 744
    .restart local v10    # "flowId":I
    .restart local v12    # "startTime":J
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 761
    .restart local v9    # "currentSize":I
    :cond_7
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v5

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->h:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$4;

    move/from16 v0, p3

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;Z)V

    const-class v8, Lcma;

    .line 812
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    .line 761
    invoke-interface {v2, v7, v8, v14}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 2231
    new-instance v8, Lcbs$22;

    invoke-direct {v8, v5, v2}, Lcbs$22;-><init>(Lcbs;Lcma;)V

    .line 2238
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    .line 2239
    if-eqz v2, :cond_0

    .line 2240
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->queryRedEnvelopClusterByPage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V

    const-class v2, Lcjo$a;

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 189
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->o:Lcjo$a;

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->a(ZZZ)V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->f:I

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cluster"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pick_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->j:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->m:Lcom/alibaba/wukong/im/Conversation;

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->l:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->j:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->j:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->j:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->j:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->k:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->g:J

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->h:Ljava/lang/String;

    .line 132
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    :cond_2
    sget v0, Lcaj$f;->wrong_arguments:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 135
    const-string/jumbo v1, "red_packets"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->u:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "GroupRedPacketsDetailFragment param invalid"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->g:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_5

    const-string/jumbo v0, "sendId <= 0"

    :goto_1
    aput-object v0, v3, v4

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->h:Ljava/lang/String;

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "clusterId is empty"

    :goto_2
    aput-object v0, v3, v4

    .line 136
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 143
    :cond_3
    return-void

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sender_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->g:J

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cluster_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->h:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1

    .line 137
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->I:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->redpackets_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->swipe_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcaj$b;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcaj$b;->swipe_refresh_color2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcaj$b;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcaj$b;->swipe_refresh_color2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 881
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->o:Lcjo$a;

    if-eqz v0, :cond_0

    .line 882
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->o:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->o:Lcjo$a;

    .line 885
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 886
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcaj$e;->fragment_group_redpackets:I

    return v0
.end method
