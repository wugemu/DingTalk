.class public Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "PickRedPacketsActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/os/Handler;

.field private j:Landroid/widget/ImageButton;

.field private k:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method private a()V
    .locals 24

    .prologue
    .line 122
    sget v3, Lcaj$d;->redpackets_close:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->l:Landroid/view/View;

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->l:Landroid/view/View;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v3, Lcaj$d;->redpackets_random_detail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->q:Landroid/widget/TextView;

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->q:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    sget v3, Lcaj$d;->reward_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->k:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    .line 132
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v15, "rewardObjects":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->k:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setVisibility(I)V

    .line 150
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    array-length v3, v3

    if-ge v11, v3, :cond_1

    .line 151
    new-instance v14, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    invoke-direct {v14}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;-><init>()V

    .line 152
    .local v14, "rewardObject":Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 153
    .local v20, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v19

    .line 154
    .local v19, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v19, :cond_0

    .line 155
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v14, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->c:Ljava/lang/String;

    .line 156
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v3, v14, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->d:Ljava/lang/String;

    .line 161
    :goto_1
    sget v3, Lcaj$c;->im_reward_default_avatar:I

    iput v3, v14, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->b:I

    .line 162
    const-string/jumbo v3, "\u5171%d\u4eba"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->e:Ljava/lang/String;

    .line 163
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->d:Ljava/lang/String;

    goto :goto_1

    .line 165
    .end local v14    # "rewardObject":Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    .end local v19    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v20    # "uid":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->k:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    invoke-virtual {v3, v15}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setData(Ljava/util/List;)V

    .line 170
    .end local v11    # "i":I
    :goto_2
    sget v3, Lcaj$d;->ll_pick:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->h:Landroid/view/View;

    .line 171
    sget v3, Lcaj$d;->redpackets_detail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    .line 172
    sget v3, Lcaj$d;->redpackets_enterprise_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 173
    sget v3, Lcaj$d;->iv_enterprise_b2c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g:Landroid/widget/ImageView;

    .line 174
    sget v3, Lcaj$d;->btn_pick:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->j:Landroid/widget/ImageButton;

    .line 175
    sget v3, Lcaj$d;->redpackets_result:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->p:Landroid/widget/TextView;

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->p:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v6, v7}, Lcbw;->a(J)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "orgName":Ljava/lang/String;
    sget v3, Lcaj$d;->sender_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->m:Landroid/widget/TextView;

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget v3, Lcaj$d;->redpackets_desc:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->n:Landroid/widget/TextView;

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->n:Landroid/widget/TextView;

    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    invoke-virtual {v5, v6, v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    sget v3, Lcaj$d;->redpackets_money:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 191
    .local v16, "sum":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v9, v9, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    int-to-double v0, v9

    move-wide/from16 v22, v0

    div-double v22, v16, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcaj$f;->redpackets_yuan_per_one:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 199
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v3

    const-class v5, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v3, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 200
    .local v10, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-virtual {v10, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v12

    .line 201
    .local v12, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v12, :cond_6

    iget-object v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_6

    iget-object v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 1167
    const/4 v6, 0x0

    invoke-virtual {v3, v13, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 255
    .end local v10    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v12    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v16    # "sum":D
    :goto_4
    sget v3, Lcaj$d;->send_tips:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 256
    .local v18, "tvSize":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    .line 257
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    sget v5, Lcaj$f;->redpackets_enterprise_show_detail:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 277
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    if-nez v3, :cond_10

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->h:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-nez v3, :cond_2

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->q:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2507
    :cond_2
    :goto_6
    const/16 v3, 0x10

    invoke-static {v3}, Lcms;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2509
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->j:Landroid/widget/ImageButton;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->j:Landroid/widget/ImageButton;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->q:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    return-void

    .line 167
    .end local v13    # "orgName":Ljava/lang/String;
    .end local v18    # "tvSize":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->k:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setVisibility(I)V

    goto/16 :goto_2

    .line 194
    .restart local v13    # "orgName":Ljava/lang/String;
    .restart local v16    # "sum":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v9, v9, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    int-to-double v0, v9

    move-wide/from16 v22, v0

    div-double v22, v16, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcaj$f;->redpackets_yuan:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 204
    .restart local v10    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .restart local v12    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v5, Lcaj$c;->redpackets_enterprise_default_logo:I

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 207
    .end local v10    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v12    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v16    # "sum":D
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_b

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->curUserAmount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->n:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v6, v7}, Lcbw;->b(J)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "orgIcon":Ljava/lang/String;
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 222
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g:Landroid/widget/ImageView;

    sget v5, Lcaj$c;->enterprise_red_packets_default_avatar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 211
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v4    # "orgIcon":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->curUserAmount:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lcaj$f;->redpackets_yuan:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 226
    .restart local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .restart local v4    # "orgIcon":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->g:Landroid/widget/ImageView;

    sget v5, Lcaj$c;->enterprise_red_packets_avatar_bg:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 230
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v4    # "orgIcon":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2167
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 234
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V

    const-class v9, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v3, v8, v9, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    invoke-virtual {v5, v6, v7, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_4

    .line 259
    .restart local v18    # "tvSize":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_d

    .line 260
    sget v3, Lcaj$f;->dt_redenvelop_enterprise:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    sget v5, Lcaj$f;->redpackets_enterprise_show_detail:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_5

    .line 262
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 263
    sget v3, Lcaj$f;->redpackets_tips_normal:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    sget v5, Lcaj$f;->redpackets_show_detail:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_5

    .line 267
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 268
    sget v3, Lcaj$f;->redpackets_tips_random:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 270
    :cond_f
    sget v3, Lcaj$f;->dt_redpacket_tips_name:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 283
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_11

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->h:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->p:Landroid/widget/TextView;

    sget v5, Lcaj$f;->redpackets_cant_pick_done:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->n:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->p:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 290
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_12

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->h:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->p:Landroid/widget/TextView;

    sget v5, Lcaj$f;->redpackets_cant_pick_expired:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->n:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->p:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->o:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 298
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->h:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 2518
    :catch_0
    move-exception v3

    .line 2520
    const-string/jumbo v5, "red_packets"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "preventAutoPick error="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 2521
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    .line 2520
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .prologue
    .line 78
    .line 2527
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_action_pick_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pick_status"

    .line 2528
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 2529
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 78
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->j:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->finish()V

    .line 118
    const/4 v0, 0x0

    sget v1, Lcaj$a;->redpacktes_alpha_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->overridePendingTransition(II)V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget v1, Lcaj$e;->activity_pick_redpackets:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->setContentView(I)V

    .line 102
    sget v1, Lcaj$d;->fr_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "contentView":Landroid/view/View;
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "pick_status"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a()V

    .line 113
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    goto :goto_0
.end method
