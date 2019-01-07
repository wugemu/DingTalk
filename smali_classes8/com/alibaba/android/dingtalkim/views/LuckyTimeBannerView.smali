.class public Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;
.super Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
.source "LuckyTimeBannerView.java"

# interfaces
.implements Ldms$a;
.implements Ldms$b;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Z

.field private q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

.field private r:Ldmu;

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->s:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->s:Landroid/view/View$OnClickListener;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->s:Landroid/view/View$OnClickListener;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->p:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Ldmu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->r:Ldmu;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->d:Landroid/widget/TextView;

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
    .line 87
    instance-of v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-nez v0, :cond_0

    .line 97
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 91
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 1199
    sget v0, Lctk$f;->lucky_time_banner_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->d:Landroid/widget/TextView;

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->alert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->k:Landroid/widget/TextView;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->e:Landroid/view/View;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->f:Landroid/widget/TextView;

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->g:Landroid/widget/TextView;

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->h:Landroid/widget/TextView;

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->i:Landroid/widget/TextView;

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->time_text5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->j:Landroid/widget/TextView;

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->pick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->l:Landroid/view/View;

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->pick_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->m:Landroid/widget/TextView;

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    sget v1, Lctk$f;->lucky_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->n:Landroid/widget/TextView;

    .line 1215
    new-instance v0, Ldmu;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-direct {v0, p0, v1}, Ldmu;-><init>(Ldms$b;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->r:Ldmu;

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->updateAll(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ldms$a;)V

    goto/16 :goto_0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lctk$g;->lucky_time_banner:I

    return v0
.end method

.method public onTimerTrigger()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->updateTime(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 243
    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b(Ldms$a;)V

    .line 102
    return-void
.end method

.method public updateAlert(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->p:Z

    .line 195
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->a()V

    .line 196
    return-void
.end method

.method public updateAll(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 7
    .param p1, "redPacketsPlanDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->d:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-wide v4, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    new-instance v3, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)V

    const-class v6, Lcma;

    .line 1237
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    .line 1221
    invoke-static {v3, v6, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->r:Ldmu;

    .line 2069
    invoke-virtual {v0}, Ldmu;->a()Ljava/lang/String;

    move-result-object v0

    .line 2070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2071
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcnh;->d(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->updateAlert(Z)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->updateTime(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 112
    iget-object v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->congrats:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->n:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->congrats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->n:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public updateTime(Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 24
    .param p1, "model"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {}, Ldmy;->a()J

    move-result-wide v6

    .line 127
    .local v6, "currentTime":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v18, v0

    cmp-long v17, v6, v18

    if-lez v17, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->e:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->l:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const-wide/16 v18, 0x7530

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    sub-long v12, v18, v6

    .line 131
    .local v12, "overTime":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gez v17, :cond_2

    .line 132
    const-wide/16 v12, 0x0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->q:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;->a(Ljava/lang/Object;)V

    .line 137
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->m:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->getContext()Landroid/content/Context;

    move-result-object v18

    sget v19, Lctk$i;->dt_red_envelop_pick_countdown_close:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-wide/16 v22, 0x3e8

    div-long v22, v12, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->n:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    .end local v12    # "overTime":J
    :goto_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x2bf20

    sub-long v18, v18, v20

    cmp-long v17, v6, v18

    if-lez v17, :cond_9

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->o:Z

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->a()V

    goto/16 :goto_0

    .line 139
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x493e0

    sub-long v18, v18, v20

    cmp-long v17, v6, v18

    if-lez v17, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->e:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->l:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 142
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v18, v0

    sub-long v8, v18, v6

    .line 143
    .local v8, "leftTime":J
    const-wide/16 v18, 0x0

    cmp-long v17, v8, v18

    if-gez v17, :cond_4

    .line 144
    const-wide/16 v8, 0x0

    .line 146
    :cond_4
    const-wide/32 v18, 0xea60

    div-long v10, v8, v18

    .line 147
    .local v10, "min":J
    const-wide/32 v18, 0xea60

    rem-long v18, v8, v18

    const-wide/16 v20, 0x3e8

    div-long v14, v18, v20

    .line 148
    .local v14, "sec":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->f:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_ready_remind:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->g:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$e;->lucky_time_banner_time_bg:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->g:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xa

    cmp-long v17, v10, v20

    if-gez v17, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->h:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_first_time_unit_minute:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->i:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$e;->lucky_time_banner_time_bg:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->i:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xa

    cmp-long v17, v14, v20

    if-gez v17, :cond_6

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->j:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_remind_pick_second:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->n:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 150
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 153
    :cond_6
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 157
    .end local v8    # "leftTime":J
    .end local v10    # "min":J
    .end local v14    # "sec":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->e:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->l:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v2

    .line 160
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 162
    .local v3, "ch":I
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 163
    .local v4, "cm":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 164
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 165
    .local v5, "th":I
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 166
    .local v16, "tm":I
    mul-int/lit8 v17, v3, 0x64

    add-int v17, v17, v4

    mul-int/lit8 v18, v5, 0x64

    add-int v18, v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->f:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_today:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->g:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->g:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->h:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_first_time_unit_hour:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->i:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->i:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->j:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_remind_space_pick:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->n:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 169
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->f:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lctk$i;->dt_red_envelop_tomorrow:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 180
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "ch":I
    .end local v4    # "cm":I
    .end local v5    # "th":I
    .end local v16    # "tm":I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2
.end method
