.class public Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;
.super Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
.source "SelfHappyBannerView.java"


# instance fields
.field private b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    return-object v0
.end method


# virtual methods
.method public display(Ljava/lang/Object;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 57
    sget v6, Lctk$f;->avatar:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 58
    .local v2, "sendAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v6, Lctk$f;->tv_bomb_from_tips:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 59
    .local v5, "tvSenderTips":Landroid/widget/TextView;
    sget v6, Lctk$f;->tv_bomb_tips:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 60
    .local v3, "tvBombTips":Landroid/widget/TextView;
    sget v6, Lctk$f;->tv_money:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, "tvMoney":Landroid/widget/TextView;
    instance-of v6, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-nez v6, :cond_0

    .line 63
    iput-object v10, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 99
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 68
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    sget v6, Lctk$i;->dt_dingtalk_for_red_packet_bomb:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    invoke-static {v6}, Ligb;->h(Ljava/lang/String;)D

    move-result-wide v0

    .line 76
    .local v0, "amount":D
    const-string/jumbo v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v8, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    new-instance v10, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;

    invoke-direct {v10, p0, v2, v5}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    const-class v11, Lcma;

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 80
    invoke-static {v10, v11, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-virtual {v7, v8, v9, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 72
    .end local v0    # "amount":D
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lctk$g;->im_self_happy_redpackets_banner_layout:I

    return v0
.end method

.method public removeFromParent()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
