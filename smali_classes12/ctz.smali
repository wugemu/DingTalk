.class public final Lctz;
.super Lcqr;
.source "AtMeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lctz;->e:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lctz;->f:Ljava/util/Set;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 6036
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .param p1, "messageId"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lctz;->f:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;Lcom/alibaba/wukong/im/Message;I)V
    .locals 9
    .param p1, "holder"    # Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lctz;->e:Ljava/util/Map;

    .line 1070
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->i:J

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctz;->e:Ljava/util/Map;

    .line 2070
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->i:J

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 77
    iget-object v0, p0, Lctz;->e:Ljava/util/Map;

    .line 3070
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->i:J

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    .line 4066
    iput-wide v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->i:J

    .line 80
    iget-object v0, p0, Lctz;->e:Ljava/util/Map;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-wide v0, p0, Lctz;->d:J

    iget-object v2, p0, Lctz;->f:Ljava/util/Set;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 4074
    if-eqz p2, :cond_6

    .line 4078
    if-eqz p3, :cond_1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    .line 4079
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4080
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 4081
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a:Landroid/content/Context;

    sget v2, Lctk$i;->dt_im_at_me_recently_messages:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4088
    :goto_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4089
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4090
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->f:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4095
    :goto_1
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 4096
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4108
    :goto_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 4109
    if-eqz v0, :cond_3

    .line 4111
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    .line 4112
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->d:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4113
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->h:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;

    if-eqz v1, :cond_2

    .line 4114
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->h:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;

    .line 4158
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->d:Z

    .line 4116
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_c

    .line 4117
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 4118
    if-nez v1, :cond_b

    .line 4119
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 4120
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4127
    :goto_3
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4128
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 4129
    new-instance v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;-><init>(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)V

    iput-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->h:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;

    .line 4130
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->h:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 5148
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->d:Z

    .line 5149
    iput-object v1, v7, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->a:Ljava/lang/String;

    .line 5150
    iput-wide v2, v7, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->b:J

    .line 5151
    iput-wide v4, v7, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->c:J

    .line 5152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5153
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 5191
    :cond_3
    :goto_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_lst_msg_tip_error:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5192
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5193
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 5194
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 5195
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v1, :cond_4

    .line 5196
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 5197
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    .line 5198
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 5217
    :cond_4
    :goto_5
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a:Landroid/content/Context;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v0, v2}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 5218
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5219
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->isRead()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v8, :cond_12

    .line 5220
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    :goto_6
    return-void

    .line 4083
    :cond_7
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a:Landroid/content/Context;

    sget v2, Lctk$i;->dt_im_at_me_latest_messages:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4086
    :cond_8
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4092
    :cond_9
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4098
    :cond_a
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4099
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->g:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4123
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 4124
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 4133
    :cond_c
    const-string/jumbo v1, ""

    .line 4134
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4135
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 5200
    :cond_d
    const/16 v2, 0x4b0

    if-eq v1, v2, :cond_e

    const/16 v2, 0x578

    if-ne v1, v2, :cond_10

    .line 5202
    :cond_e
    invoke-static {p2}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5203
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v1, :cond_f

    .line 5204
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v0

    .line 5206
    :cond_f
    invoke-static {p2, v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 5208
    :cond_10
    const/16 v2, 0x4b1

    if-ne v1, v2, :cond_4

    .line 5209
    invoke-static {p2}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5210
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-eqz v1, :cond_11

    .line 5211
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->title()Ljava/lang/String;

    move-result-object v0

    .line 5213
    :cond_11
    invoke-static {p2, v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 5222
    :cond_12
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_6
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    iget-object v2, p0, Lctz;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v0, "holder":Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->layout_at_me_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1054
    .end local p2    # "convertView":Landroid/view/View;
    sget v2, Lctk$f;->avatar_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1055
    sget v2, Lctk$f;->tv_history_tip:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->c:Landroid/widget/TextView;

    .line 1056
    sget v2, Lctk$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->d:Landroid/widget/TextView;

    .line 1057
    sget v2, Lctk$f;->tv_content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->e:Landroid/widget/TextView;

    .line 1058
    sget v2, Lctk$f;->tv_from:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->f:Landroid/widget/TextView;

    .line 1059
    sget v2, Lctk$f;->tv_time:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->g:Landroid/widget/TextView;

    .line 45
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v2, p0, Lctz;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 51
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v0, v1, p1}, Lctz;->a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;Lcom/alibaba/wukong/im/Message;I)V

    .line 54
    :cond_0
    return-object p2

    .line 47
    .end local v0    # "holder":Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    .restart local v0    # "holder":Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;
    goto :goto_0
.end method
