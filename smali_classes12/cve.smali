.class public abstract Lcve;
.super Lctv;
.source "EnterpriseRedPacketsViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

.field protected Z:Landroid/widget/TextView;

.field private a:Landroid/widget/TextView;

.field private aa:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p0, p2}, Lcve;->c(Landroid/view/View;)V

    .line 143
    sget v0, Lctk$f;->tv_redpackets_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcve;->a:Landroid/widget/TextView;

    .line 144
    sget v0, Lctk$f;->redpackets_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcve;->b:Landroid/widget/TextView;

    .line 145
    sget v0, Lctk$f;->redpackets_amount:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcve;->S:Landroid/widget/TextView;

    .line 146
    sget v0, Lctk$f;->reward_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    iput-object v0, p0, Lcve;->Y:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    .line 147
    sget v0, Lctk$f;->tv_receiver_detail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcve;->Z:Landroid/widget/TextView;

    .line 148
    sget v0, Lctk$f;->iv_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcve;->aa:Landroid/widget/ImageView;

    .line 149
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p2}, Lcve;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 62
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    instance-of v15, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v15, :cond_8

    move-object/from16 v15, p2

    check-cast v15, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v15, v15, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v15, :cond_8

    move-object/from16 v15, p2

    .line 63
    check-cast v15, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v6, v15, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 64
    .local v6, "data":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    iget-object v15, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    invoke-static {v15}, Ligb;->h(Ljava/lang/String;)D

    move-result-wide v4

    .line 65
    .local v4, "amount":D
    iget v15, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->S:Landroid/widget/TextView;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v4, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lctk$i;->im_redpackets_yuan_per_one:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v16

    iget-object v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v10, "rewardObjects":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    const/4 v8, 0x0

    .line 74
    .local v8, "nick":Ljava/lang/String;
    :try_start_0
    iget-object v15, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    if-eqz v15, :cond_7

    .line 75
    iget-object v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    aget-object v15, v17, v16

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 76
    .local v12, "uid":J
    new-instance v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    invoke-direct {v9}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;-><init>()V

    .line 77
    .local v9, "rewardObject":Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    iput-wide v12, v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->a:J

    .line 78
    sget v15, Lctk$e;->im_reward_default_avatar:I

    iput v15, v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->b:I

    .line 79
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v14

    .line 80
    .local v14, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v14, :cond_6

    .line 81
    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v15, v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->c:Ljava/lang/String;

    .line 82
    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v15, v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->d:Ljava/lang/String;

    .line 83
    if-nez v8, :cond_0

    .line 84
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v15

    .line 1127
    if-eqz v15, :cond_4

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    cmp-long v15, v20, v22

    if-nez v15, :cond_4

    .line 1128
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcve;->W:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJ)Ljava/lang/String;

    move-result-object v15

    .line 1129
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1130
    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_2
    move-object v8, v15

    .line 90
    :cond_0
    :goto_3
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_1

    .line 68
    .end local v8    # "nick":Ljava/lang/String;
    .end local v9    # "rewardObject":Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    .end local v10    # "rewardObjects":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    .end local v12    # "uid":J
    .end local v14    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->S:Landroid/widget/TextView;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v4, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lctk$i;->im_redpackets_yuan:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1130
    .restart local v8    # "nick":Ljava/lang/String;
    .restart local v9    # "rewardObject":Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    .restart local v10    # "rewardObjects":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    .restart local v12    # "uid":J
    .restart local v14    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    :try_start_1
    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v8, v15

    .line 1134
    goto :goto_3

    .line 1135
    :cond_4
    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_4
    move-object v8, v15

    goto :goto_3

    :cond_5
    iget-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_4

    .line 87
    :cond_6
    const/4 v15, 0x0

    iput-object v15, v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->c:Ljava/lang/String;

    .line 88
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 93
    .end local v9    # "rewardObject":Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    .end local v12    # "uid":J
    .end local v14    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :catch_0
    move-exception v7

    .line 94
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    iget v15, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->Z:Landroid/widget/TextView;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    const/16 v17, 0x1

    sget v18, Lctk$i;->dt_red_envelop_vip:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->Y:Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;

    invoke-virtual {v15, v10}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setData(Ljava/util/List;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->d:Landroid/app/Activity;

    invoke-static {v15}, Ldkl;->a(Landroid/content/Context;)Ldkl;

    invoke-static/range {p2 .. p2}, Ldkl;->a(Lcom/alibaba/wukong/im/Message;)I

    move-result v11

    .line 1152
    .local v11, "status":I
    const/4 v15, 0x1

    if-ne v11, v15, :cond_b

    .line 1153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->a:Landroid/widget/TextView;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lctk$i;->im_enterprise_redpackets:I

    invoke-static/range {v18 .. v18}, Lcve;->b(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lctk$i;->dt_message_bubble_redenvelop_foot_picked:I

    .line 1154
    invoke-static/range {v18 .. v18}, Lcve;->b(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 1153
    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->aa:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->r:Landroid/view/View;

    if-eqz v15, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->r:Landroid/view/View;

    new-instance v16, Lcve$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v6, v3}, Lcve$1;-><init>(Lcve;Lcom/alibaba/wukong/im/Message;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/app/Activity;)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .end local v4    # "amount":D
    .end local v6    # "data":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .end local v8    # "nick":Ljava/lang/String;
    .end local v10    # "rewardObjects":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    .end local v11    # "status":I
    :cond_8
    return-void

    .line 99
    .restart local v4    # "amount":D
    .restart local v6    # "data":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .restart local v8    # "nick":Ljava/lang/String;
    .restart local v10    # "rewardObjects":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    :cond_9
    iget v15, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-gt v15, v0, :cond_a

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->Z:Landroid/widget/TextView;

    sget v16, Lctk$i;->dt_red_envelop_vip_detail:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 102
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->Z:Landroid/widget/TextView;

    sget v16, Lctk$i;->dt_redenvelop_bubble_total_more_AT:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1157
    .restart local v11    # "status":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->a:Landroid/widget/TextView;

    sget v16, Lctk$i;->im_enterprise_redpackets:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcve;->aa:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcve;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_enterprise_lucky_money:I

    invoke-static {v2}, Lcve;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcve;->Z:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p0, v2}, Lcve;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcve;->b:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0, v2}, Lcve;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcve;->S:Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0, v2}, Lcve;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_lucky_money:I

    invoke-static {v2}, Lcve;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcve;->Z:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0, v2}, Lcve;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcve;->b:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0, v2}, Lcve;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcve;->S:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0, v2}, Lcve;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
