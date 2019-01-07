.class public final Lcul;
.super Lcqr;
.source "ConversationLinksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcul$b;,
        Lcul$a;
    }
.end annotation

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

.field public e:Lcul$b;

.field private f:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 63
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcul;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 64
    return-void
.end method

.method static synthetic a(Lcul;)Lcul$b;
    .locals 1
    .param p0, "x0"    # Lcul;

    .prologue
    .line 56
    iget-object v0, p0, Lcul;->e:Lcul$b;

    return-object v0
.end method

.method static synthetic b(Lcul;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcul;

    .prologue
    .line 56
    iget-object v0, p0, Lcul;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 3245
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcqr;->getCount()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    if-nez p2, :cond_2

    .line 78
    new-instance v16, Lcul$a;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcul$a;-><init>(Lcul;B)V

    .line 79
    .local v16, "tempViewHodlder":Lcul$a;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcul;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->item_comment_link:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    sget v2, Lctk$f;->img_user_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 82
    sget v2, Lctk$f;->tv_sender_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->b:Landroid/widget/TextView;

    .line 83
    sget v2, Lctk$f;->tv_send_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->c:Landroid/widget/TextView;

    .line 84
    sget v2, Lctk$f;->img_link_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->d:Landroid/widget/ImageView;

    .line 85
    sget v2, Lctk$f;->tv_link_tip:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->e:Landroid/widget/TextView;

    .line 86
    sget v2, Lctk$f;->tv_link_des:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->f:Landroid/widget/TextView;

    .line 87
    sget v2, Lctk$f;->view_comment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 88
    sget v2, Lctk$f;->rl_link_content:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->h:Landroid/widget/RelativeLayout;

    .line 89
    sget v2, Lctk$f;->view_divider:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcul$a;->i:Landroid/view/View;

    .line 91
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    move-object/from16 v17, v16

    .line 98
    .local v17, "viewHolder":Lcul$a;
    invoke-virtual/range {p0 .. p1}, Lcul;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/Message;

    .line 100
    .local v15, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v15, :cond_0

    if-nez v17, :cond_3

    .line 101
    :cond_0
    const/16 p2, 0x0

    .line 177
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    return-object p2

    .line 93
    .end local v15    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v16    # "tempViewHodlder":Lcul$a;
    .end local v17    # "viewHolder":Lcul$a;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcul$a;

    .restart local v16    # "tempViewHodlder":Lcul$a;
    goto :goto_0

    .line 104
    .restart local v15    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v17    # "viewHolder":Lcul$a;
    :cond_3
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-nez v2, :cond_5

    .line 105
    :cond_4
    const/16 p2, 0x0

    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcul;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 109
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->i:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_2
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 116
    .local v14, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->e:Landroid/widget/TextView;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->f:Landroid/widget/TextView;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 120
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->d:Landroid/widget/ImageView;

    sget v3, Lctk$e;->link_default_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :goto_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->c:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcul;->b:Landroid/app/Activity;

    invoke-static {v6, v7, v8}, Lcog;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " "

    aput-object v6, v3, v5

    const/4 v5, 0x2

    .line 131
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcul;->b:Landroid/app/Activity;

    invoke-static {v6, v7, v8}, Lcog;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 130
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {v15}, Lddq;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 134
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 165
    :goto_4
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->h:Landroid/widget/RelativeLayout;

    new-instance v3, Lcul$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcul$2;-><init>(Lcul;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    if-eqz v17, :cond_6

    if-nez v15, :cond_c

    .line 1279
    :cond_6
    :goto_5
    if-eqz v15, :cond_1

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1280
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v2, v3}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v12

    .line 1281
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->k:Lcul$a$a;

    if-eqz v2, :cond_7

    .line 1282
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->k:Lcul$a$a;

    .line 1316
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcul$a$a;->d:Z

    .line 1284
    :cond_7
    new-instance v2, Lcul$a$a;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcul$a$a;-><init>(Lcul$a;)V

    move-object/from16 v0, v17

    iput-object v2, v0, Lcul$a;->k:Lcul$a$a;

    .line 1286
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 1287
    if-eqz v2, :cond_f

    .line 1288
    move-object/from16 v0, v17

    iget-object v3, v0, Lcul$a;->b:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    :goto_6
    move-object/from16 v0, v17

    iget-object v13, v0, Lcul$a;->k:Lcul$a$a;

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->l:Lcul;

    .line 2056
    iget-wide v8, v2, Lcul;->d:J

    .line 1293
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    .line 2306
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcul$a$a;->d:Z

    .line 2307
    iput-object v7, v13, Lcul$a$a;->a:Ljava/lang/String;

    .line 2308
    iput-wide v8, v13, Lcul$a$a;->b:J

    .line 2309
    iput-wide v10, v13, Lcul$a$a;->c:J

    .line 2310
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2311
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 111
    .end local v14    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_8
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->i:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 122
    .restart local v14    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_9
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x32

    const/16 v6, 0x32

    invoke-virtual {v2, v3, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "adapterUrl":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "oa"

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->extension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v5, "l_tp"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcul;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcul$a;->d:Landroid/widget/ImageView;

    move-object/from16 v5, p3

    check-cast v5, Landroid/widget/AbsListView;

    const/16 v6, 0x9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto/16 :goto_3

    .line 126
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcul;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcul$a;->d:Landroid/widget/ImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_3

    .line 136
    .end local v4    # "adapterUrl":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setKey(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 138
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v15}, Lddq;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    .line 139
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const-string/jumbo v3, "reaction_like_count"

    invoke-static {v15, v3}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 140
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const-string/jumbo v3, "reaction_comment_count"

    invoke-static {v15, v3}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentCount(J)V

    .line 141
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    new-instance v3, Lcul$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v15, v1}, Lcul$1;-><init>(Lcul;Lcom/alibaba/wukong/im/Message;Lcul$a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;)V

    goto/16 :goto_4

    .line 1185
    :cond_c
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    .line 1188
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_6

    .line 1192
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v3, Lcul$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcul$3;-><init>(Lcul;J)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 1201
    if-eqz v2, :cond_d

    .line 1202
    move-object/from16 v0, v17

    iget-object v3, v0, Lcul$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1207
    :cond_d
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 1209
    new-instance v2, Lcul$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcul$4;-><init>(Lcul;Lcul$a;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcul;->b:Landroid/app/Activity;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcul;->b:Landroid/app/Activity;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_e

    .line 1231
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v5, Lcma;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcul;->b:Landroid/app/Activity;

    invoke-interface {v3, v2, v5, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 1233
    :cond_e
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v6, v7, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_5

    .line 1290
    :cond_f
    move-object/from16 v0, v17

    iget-object v2, v0, Lcul$a;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method
