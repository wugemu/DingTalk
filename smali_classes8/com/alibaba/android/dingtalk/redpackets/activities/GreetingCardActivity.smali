.class public Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "GreetingCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/wukong/im/Conversation;

.field private f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field private g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    return-object p1
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    packed-switch v2, :pswitch_data_0

    .line 165
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    sget v3, Lcaj$f;->dt_redenvelop_pick_enterprise_redpacket:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v5, v5, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    .line 170
    invoke-virtual {v3, v4, v5}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->d:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 186
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;->cardMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;->cardMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 192
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 196
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 158
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    sget v3, Lcaj$f;->dt_redenvelop_view_detail:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    sget v3, Lcaj$f;->dt_redenvelop_enterprise_expired:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 201
    .local v0, "id":I
    sget v2, Lcaj$d;->iv_btn_left:I

    if-ne v0, v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->finish()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget v2, Lcaj$d;->tv_pick:I

    if-ne v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    packed-switch v2, :pswitch_data_0

    .line 216
    :pswitch_0
    invoke-static {}, Lcbw;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    const-string/jumbo v1, "https://qr.dingtalk.com/page/festival_red_packets/pick.html"

    .line 223
    .local v1, "toUrl":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V

    invoke-interface {v2, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 209
    .end local v1    # "toUrl":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/detail.html"

    .line 211
    .restart local v1    # "toUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 212
    :cond_3
    const-string/jumbo v2, "red_packets"

    const-string/jumbo v3, "GreetingCardActivity"

    const-string/jumbo v4, "GreetingCardActivity to detail param invalid tv_pick click"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    .end local v1    # "toUrl":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/pick.html"

    .restart local v1    # "toUrl":Ljava/lang/String;
    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lcaj$e;->activity_greeting_card:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->setContentView(I)V

    .line 1101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->hideToolbar()V

    .line 1105
    sget v0, Lcaj$d;->root_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a:Landroid/view/View;

    .line 1106
    sget v0, Lcaj$d;->tv_pick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    .line 1107
    sget v0, Lcaj$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->c:Landroid/widget/TextView;

    .line 1108
    sget v0, Lcaj$d;->tv_greeting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->d:Landroid/widget/TextView;

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    sget v0, Lcaj$d;->iv_btn_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2092
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "intent_action_pick_status_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2093
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->h:Ljava/lang/String;

    .line 2118
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 2120
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pick_status"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 2123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    if-nez v0, :cond_0

    .line 2124
    const-string/jumbo v0, "red_packets"

    const-string/jumbo v1, "Greeting card receive status object is null"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->finish()V

    .line 2146
    :goto_0
    return-void

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2131
    sget v0, Lcaj$f;->dt_redpacket_no_auth:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2132
    const-string/jumbo v0, "redpackets"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->finish()V

    goto :goto_0

    .line 2137
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_3

    .line 2138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 2142
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-nez v0, :cond_4

    .line 2143
    const-string/jumbo v0, "red_packets"

    const-string/jumbo v1, "Greeting card receive cluster object is null"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->finish()V

    goto :goto_0

    .line 2139
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v0, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    goto :goto_1

    .line 2149
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onDestroy()V

    .line 3097
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method
