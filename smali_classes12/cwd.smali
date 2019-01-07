.class public final Lcwd;
.super Lctv;
.source "LiveCardRecordViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private S:Landroid/widget/TextView;

.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/widget/TextView;

.field private a:Landroid/view/View;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/view/View;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcwd;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcwd;

    .prologue
    .line 38
    iget-object v0, p0, Lcwd;->aa:Landroid/widget/TextView;

    return-object v0
.end method

.method private static a(Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "liveRecordDo"    # Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->timeStamp:J

    invoke-static {v2, v3}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->duration:J

    .line 154
    invoke-static {v2, v3}, Lcog;->u(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 153
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcwd;Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcwd;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p1, p2}, Lcwd;->a(Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcwd;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcwd;

    .prologue
    .line 38
    iget-object v0, p0, Lcwd;->ae:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcwd;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcwd;

    .prologue
    .line 38
    iget-object v0, p0, Lcwd;->af:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->layout_live_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcwd;->a:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->iv_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcwd;->b:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->S:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->Y:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->Z:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_nick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->aa:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->layout_live_card2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcwd;->ab:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->iv_cover2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcwd;->ac:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_title2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->ad:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_summary2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->ae:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_from2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwd;->af:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcwd;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    if-eqz p1, :cond_0

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v3, p2

    .line 64
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v11, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 65
    .local v11, "thirdPartyDo":Ljava/lang/Object;
    instance-of v3, v11, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    if-eqz v3, :cond_0

    move-object v7, v11

    .line 68
    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    .line 69
    .local v7, "liveRecordDo":Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    sget v15, Lctk$i;->dt_lv_live_record_prefix:I

    invoke-static {v15}, Lcwd;->b(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x1

    iget-object v15, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    aput-object v15, v3, v14

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "title":Ljava/lang/String;
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 72
    .local v10, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->cid:Ljava/lang/String;

    .line 73
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .line 74
    .local v6, "isSameConv":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->a:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->ab:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->b:Landroid/widget/ImageView;

    iget-object v14, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->coverUrl:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v10, v3, v14, v15}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->S:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->Y:Landroid/widget/TextView;

    iget-wide v14, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->timeStamp:J

    invoke-static {v14, v15}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->Z:Landroid/widget/TextView;

    iget-wide v14, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->duration:J

    invoke-static {v14, v15}, Lcog;->u(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_2
    iget-wide v4, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->anchorId:J

    .line 89
    .local v4, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v13

    .line 90
    .local v13, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v13, :cond_6

    .line 91
    if-eqz v6, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->aa:Landroid/widget/TextView;

    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_3
    if-nez v6, :cond_2

    .line 125
    iget-object v9, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->cid:Ljava/lang/String;

    .line 126
    .local v9, "fromCid":Ljava/lang/String;
    new-instance v8, Lcwd$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lcwd$2;-><init>(Lcwd;Ljava/lang/String;)V

    .line 145
    .local v8, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v3, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p1

    invoke-static {v8, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 146
    .restart local v8    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v3, v8, v9}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 149
    .end local v8    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v9    # "fromCid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->r:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 73
    .end local v4    # "uid":J
    .end local v6    # "isSameConv":Z
    .end local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 82
    .restart local v6    # "isSameConv":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->a:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->ab:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->ac:Landroid/widget/ImageView;

    iget-object v14, v7, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->coverUrl:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v10, v3, v14, v15}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->ad:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 94
    .restart local v4    # "uid":J
    .restart local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcwd;->ae:Landroid/widget/TextView;

    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v7, v14}, Lcwd;->a(Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 97
    :cond_6
    new-instance v2, Lcwd$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcwd$1;-><init>(Lcwd;JZLcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;)V

    .line 120
    .local v2, "listener":Lcma;
    const-class v3, Lcma;

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcma;
    check-cast v2, Lcma;

    .line 121
    .restart local v2    # "listener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_3
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcwd;->O:Z

    if-eqz v0, :cond_0

    sget v0, Lctk$g;->chatting_item_to:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lctk$g;->chatting_item_from:I

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 164
    sget v0, Lctk$g;->chatting_item_live_card_record:I

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "im_lv_record_card_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    .line 194
    .local v8, "liveRecordDo":Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    iget-object v0, p0, Lcwd;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Lcwd;->d:Landroid/app/Activity;

    iget-object v2, v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->playUrl:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->key:Ljava/lang/String;

    iget-object v4, v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->uuid:Ljava/lang/String;

    iget-object v5, v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->cid:Ljava/lang/String;

    iget-object v6, v8, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    new-instance v7, Lcwd$3;

    invoke-direct {v7, p0}, Lcwd$3;-><init>(Lcwd;)V

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
