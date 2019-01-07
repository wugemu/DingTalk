.class public Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;
.super Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
.source "LuckyTimeBombBannerView.java"

# interfaces
.implements Ldms$a;
.implements Ldms$b;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->p:Landroid/view/View$OnClickListener;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->p:Landroid/view/View$OnClickListener;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->p:Landroid/view/View$OnClickListener;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method


# virtual methods
.method public display(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 89
    instance-of v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-nez v0, :cond_0

    .line 99
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 93
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 1203
    sget v0, Lctk$f;->lucky_time_banner_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->tv_bomb_from_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->d:Landroid/widget/TextView;

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->tv_how_long_to_pick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->ll_time_with_minute:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->i:Landroid/view/ViewGroup;

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->j:Landroid/widget/TextView;

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->k:Landroid/widget/TextView;

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->l:Landroid/widget/TextView;

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->m:Landroid/widget/TextView;

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->n:Landroid/widget/TextView;

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->rl_pick_bomb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->f:Landroid/view/ViewGroup;

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->tv_pick_dismiss_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->g:Landroid/widget/TextView;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->tv_bomb_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->h:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->updateAll(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ldms$a;)V

    goto/16 :goto_0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lctk$g;->lucky_time_bomb_banner:I

    return v0
.end method

.method public onTimerTrigger()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->updateTime(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 250
    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b(Ldms$a;)V

    .line 104
    return-void
.end method

.method public updateAlert(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 200
    return-void
.end method

.method public updateAll(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 6
    .param p1, "redPacketsPlanDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 108
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->d:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1224
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    new-instance v4, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)V

    const-class v5, Lcma;

    .line 1244
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    .line 1224
    invoke-static {v4, v5, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->updateTime(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 113
    iget-object v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->congrats:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->messagePlanTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->h:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_dingtalk_for_red_packet_bomb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public updateTime(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 30
    .param p1, "model"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b:Landroid/view/View;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {}, Ldmy;->a()J

    move-result-wide v6

    .line 128
    .local v6, "currentTime":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v26, v0

    cmp-long v25, v6, v26

    if-lez v25, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->i:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->f:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    const-wide/16 v26, 0x7530

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    sub-long v16, v26, v6

    .line 133
    .local v16, "overTime":J
    const-wide/16 v26, 0x0

    cmp-long v25, v16, v26

    if-gez v25, :cond_2

    .line 134
    const-wide/16 v16, 0x0

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;->a(Ljava/lang/Object;)V

    .line 139
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    const-string/jumbo v26, "("

    invoke-virtual/range {v25 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    div-long v26, v16, v26

    .line 140
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    const-string/jumbo v26, "s)"

    invoke-virtual/range {v25 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 141
    .local v24, "timeTips":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->g:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->h:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 143
    .end local v16    # "overTime":J
    .end local v24    # "timeTips":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x1d4c0

    sub-long v26, v26, v28

    cmp-long v25, v6, v26

    if-lez v25, :cond_7

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->f:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v26, v0

    sub-long v12, v26, v6

    .line 146
    .local v12, "leftTime":J
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-gez v25, :cond_4

    .line 147
    const-wide/16 v12, 0x0

    .line 149
    :cond_4
    const-wide/16 v26, 0x3e8

    div-long v18, v12, v26

    .line 150
    .local v18, "sec":J
    const-wide/16 v26, 0x3c

    cmp-long v25, v18, v26

    if-ltz v25, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->i:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    const-wide/16 v26, 0x3c

    div-long v14, v18, v26

    .line 155
    .local v14, "minute":J
    const-wide/16 v26, 0x3c

    mul-long v26, v26, v14

    sub-long v20, v18, v26

    .line 156
    .local v20, "secLeft":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->k:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->m:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    .end local v14    # "minute":J
    .end local v20    # "secLeft":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->i:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 161
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    const-string/jumbo v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    .line 162
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    const-string/jumbo v26, "  "

    invoke-virtual/range {v25 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, "placeHolder":Ljava/lang/String;
    const/4 v10, 0x0

    .line 164
    .local v10, "hasSet":Z
    sget v25, Lctk$i;->dt_red_packet_bomb_left:I

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v11, v26, v27

    invoke-static/range {v25 .. v26}, Lebg;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "content":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 167
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 168
    .local v23, "startIndex":I
    if-lez v23, :cond_6

    .line 169
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    add-int v8, v23, v25

    .line 170
    .local v8, "endIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget v26, Lctk$c;->im_boom_time_left_color:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 171
    .local v4, "color":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    if-gt v8, v0, :cond_6

    .line 172
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    .local v22, "spannableString":Landroid/text/SpannableString;
    new-instance v25, Landroid/text/style/RelativeSizeSpan;

    const/high16 v26, 0x40200000    # 2.5f

    invoke-direct/range {v25 .. v26}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v26, 0x11

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x11

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v10, 0x1

    .line 183
    .end local v4    # "color":I
    .end local v8    # "endIndex":I
    .end local v22    # "spannableString":Landroid/text/SpannableString;
    .end local v23    # "startIndex":I
    :cond_6
    :goto_1
    if-nez v10, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v9

    .line 181
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v5    # "content":Ljava/lang/String;
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v10    # "hasSet":Z
    .end local v11    # "placeHolder":Ljava/lang/String;
    .end local v12    # "leftTime":J
    .end local v18    # "sec":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->e:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->i:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->f:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->h:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
