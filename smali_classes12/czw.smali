.class public abstract Lczw;
.super Lctt;
.source "UserSpaceViewHolder.java"


# instance fields
.field private Y:Landroid/widget/TextView;

.field protected Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/TextView;

.field private ae:Lpl/droidsonroids/gif/GifImageView;

.field private af:Landroid/view/View;

.field private ag:Landroid/view/View;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/view/View;

.field private ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lctt;-><init>(Z)V

    .line 150
    new-instance v0, Lczw$2;

    invoke-direct {v0, p0}, Lczw$2;-><init>(Lczw;)V

    iput-object v0, p0, Lczw;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    .line 186
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts;J)Landroid/view/View$OnClickListener;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "viewHolder"    # Lcts;
    .param p3, "conversationTag"    # J

    .prologue
    .line 190
    new-instance v0, Lczw$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lczw$3;-><init>(Landroid/app/Activity;Lcts;Lcom/alibaba/wukong/im/Message;J)V

    return-object v0
.end method

.method static synthetic a(Lczw;)V
    .locals 8
    .param p0, "x0"    # Lczw;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 50
    .line 6089
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "chat_file_mobile_online_edit"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 6091
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_1

    .line 6092
    :cond_0
    :goto_0
    return-void

    .line 6095
    :cond_1
    new-instance v2, Lgrb;

    invoke-direct {v2}, Lgrb;-><init>()V

    .line 6096
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lgrb;->c:Ljava/lang/String;

    .line 6097
    iput-wide v6, v2, Lgrb;->g:J

    .line 6098
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v0, v2, Lgrb;->b:Ljava/lang/String;

    .line 6099
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v0, v2, Lgrb;->a:Ljava/lang/String;

    .line 6100
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lgrb;->d:Ljava/lang/String;

    .line 6101
    iput-object v1, v2, Lgrb;->e:Ljava/util/List;

    .line 6102
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v1, "sp_last_edit_time"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7109
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 6102
    iput-wide v0, v2, Lgrb;->f:J

    .line 6103
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->t(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v0

    iput-wide v0, v2, Lgrb;->h:J

    .line 6104
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    iput v0, v2, Lgrb;->j:I

    .line 6105
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v0, v2, Lgrb;->i:Ljava/lang/String;

    .line 6106
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->M(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    iput-boolean v0, v2, Lgrb;->k:Z

    .line 6108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "ChatMsgActivity"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 6109
    iget-object v0, p0, Lczw;->P:Lcts$b;

    if-eqz v0, :cond_2

    .line 6110
    iget-object v0, p0, Lczw;->P:Lcts$b;

    iget-object v1, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcts$b;->g(Lcom/alibaba/wukong/im/Message;)V

    .line 6113
    :cond_2
    new-instance v0, Lczw$1;

    invoke-direct {v0, p0}, Lczw$1;-><init>(Lczw;)V

    .line 6144
    iget-object v1, p0, Lczw;->d:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 6145
    const-class v1, Lcma;

    iget-object v3, p0, Lczw;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6147
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v3, p0, Lczw;->d:Landroid/app/Activity;

    invoke-virtual {v1, v3, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lgrb;Lcma;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 6096
    goto/16 :goto_1
.end method

.method static synthetic b(Lczw;)V
    .locals 6
    .param p0, "x0"    # Lczw;

    .prologue
    .line 50
    .line 8070
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_file_mobile_online_edit_invite"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 8072
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_1

    .line 8073
    :cond_0
    :goto_0
    return-void

    .line 8076
    :cond_1
    new-instance v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;-><init>()V

    .line 8077
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    .line 8078
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    .line 8079
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    .line 8080
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ChatMsgActivity"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->identifier:Ljava/lang/String;

    .line 8081
    iget-object v0, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 8082
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v2, p0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    iput v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    .line 8083
    iget-object v0, p0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    .line 8084
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v2, p0, Lczw;->d:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    goto :goto_0

    .line 8077
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    invoke-super {p0, p1, p2}, Lctt;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 406
    iput-object p2, p0, Lczw;->e:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczw;->Y:Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv_link_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczw;->aa:Landroid/widget/TextView;

    .line 409
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczw;->ab:Landroid/widget/ImageView;

    .line 410
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->img_esafenet_encrypt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczw;->ac:Landroid/widget/ImageView;

    .line 411
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_online_edit_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczw;->ad:Landroid/widget/TextView;

    .line 412
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lczw;->ae:Lpl/droidsonroids/gif/GifImageView;

    .line 413
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->layout_file_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczw;->af:Landroid/view/View;

    .line 414
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->v_tip_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczw;->ag:Landroid/view/View;

    .line 415
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_tip1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczw;->ah:Landroid/widget/TextView;

    .line 416
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_tip2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczw;->ai:Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lczw;->r:Landroid/view/View;

    sget v1, Lctk$f;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczw;->aj:Landroid/view/View;

    .line 418
    invoke-virtual {p0, p2}, Lczw;->c(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->aj:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->aj:Landroid/view/View;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lczw;->V:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v12, v13}, Lczw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts;J)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    if-eqz v10, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 252
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-eqz v10, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setVisibility(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V

    .line 257
    :cond_2
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p2

    instance-of v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v10, :cond_7

    move-object/from16 v10, p2

    .line 258
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v8, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 259
    .local v8, "space":Ljava/lang/Object;
    instance-of v10, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v10, :cond_5

    move-object v9, v8

    .line 260
    check-cast v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 262
    .local v9, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, p0

    iput-object v9, v0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 264
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->Y:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->aa:Landroid/widget/TextView;

    iget-wide v12, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v12, v13}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget v10, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ab:Landroid/widget/ImageView;

    sget v11, Lctk$e;->chat_app_mail_btn_normal:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->ac:Landroid/widget/ImageView;

    iget v10, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isESafeNetEncrypt:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_b

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1353
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v10

    if-eqz v10, :cond_3

    if-nez v9, :cond_c

    .line 1354
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    :goto_2
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v10

    if-nez v10, :cond_e

    .line 1377
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    .end local v9    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_11

    :cond_6
    const/4 v6, 0x1

    .line 281
    .local v6, "showTipLayout":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_12

    const/4 v7, 0x1

    .line 282
    .local v7, "showTipsDivider":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->af:Landroid/view/View;

    if-eqz v6, :cond_13

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->ag:Landroid/view/View;

    if-eqz v7, :cond_14

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .end local v6    # "showTipLayout":Z
    .end local v7    # "showTipsDivider":Z
    .end local v8    # "space":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v10, :cond_9

    .line 287
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v11, v11, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ldkc;->M(Lcom/alibaba/wukong/im/Message;)Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ZZ)Lgqy;

    move-result-object v4

    .line 288
    .local v4, "editSupportModel":Lgqy;
    if-eqz v4, :cond_8

    .line 2028
    iget v10, v4, Lgqy;->a:I

    .line 288
    const/4 v11, -0x1

    if-ne v10, v11, :cond_15

    .line 289
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lczw;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 295
    .end local v4    # "editSupportModel":Lgqy;
    :cond_9
    :goto_8
    invoke-virtual/range {p0 .. p2}, Lczw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ae:Lpl/droidsonroids/gif/GifImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 297
    return-void

    .line 270
    .restart local v8    # "space":Ljava/lang/Object;
    .restart local v9    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_a
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v10

    iget-object v11, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iget-object v12, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    iget-object v13, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 271
    .local v5, "fileResource":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ab:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 274
    .end local v5    # "fileResource":I
    :cond_b
    const/16 v10, 0x8

    goto/16 :goto_1

    .line 1358
    :cond_c
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v10

    .line 1359
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    .line 1360
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1361
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    sget v11, Lctk$i;->space_common_group_tips:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    new-instance v11, Lczw$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lczw$4;-><init>(Lczw;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1371
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ah:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1381
    :cond_e
    const-string/jumbo v10, "source_from_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1382
    const-string/jumbo v11, "1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1383
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    sget v11, Lctk$i;->dt_message_source_from_pc:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1386
    invoke-static {}, Lcms;->k()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1387
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    new-instance v11, Lczw$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lczw$5;-><init>(Lczw;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1396
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1399
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ai:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 280
    .end local v9    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 281
    .restart local v6    # "showTipLayout":Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 282
    .restart local v7    # "showTipsDivider":Z
    :cond_13
    const/16 v10, 0x8

    goto/16 :goto_6

    .line 283
    :cond_14
    const/16 v10, 0x8

    goto/16 :goto_7

    .line 2300
    .end local v6    # "showTipLayout":Z
    .end local v7    # "showTipsDivider":Z
    .end local v8    # "space":Ljava/lang/Object;
    .restart local v4    # "editSupportModel":Lgqy;
    :cond_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v10, :cond_9

    .line 2304
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .line 3028
    iget v11, v4, Lgqy;->a:I

    .line 2304
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setTag(Ljava/lang/Object;)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .line 3032
    iget-object v11, v4, Lgqy;->b:Ljava/lang/String;

    .line 2305
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(Ljava/lang/String;)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a()V

    .line 2307
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b()V

    .line 2309
    const/4 v10, 0x0

    .line 4028
    iget v11, v4, Lgqy;->a:I

    .line 2311
    const/4 v12, 0x1

    if-ne v11, v12, :cond_18

    .line 2312
    const/4 v10, 0x1

    .line 2313
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c()V

    .line 2323
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v11}, Ldkc;->t(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->b()Lchy;

    move-result-object v11

    invoke-virtual {v11}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_17

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lczw;->T:Z

    if-eqz v11, :cond_1a

    .line 2324
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b()V

    .line 2331
    :goto_a
    if-eqz v10, :cond_1b

    .line 2332
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setVisibility(I)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V

    .line 2341
    :goto_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->ad:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v11, "sp_last_editor_name"

    invoke-interface {v10, v11}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2344
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v12, "sp_last_edit_time"

    invoke-interface {v11, v12}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5109
    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2345
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_9

    .line 2346
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->ad:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->ad:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    sget v15, Lctk$i;->dt_im_space_online_edit_modify_tips_at2:I

    invoke-virtual {v14, v15}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 2348
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    const/4 v12, 0x1

    aput-object v10, v15, v12

    .line 2347
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 5028
    :cond_18
    iget v11, v4, Lgqy;->a:I

    .line 2314
    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    .line 5036
    iget-boolean v11, v4, Lgqy;->c:Z

    .line 2315
    if-eqz v11, :cond_19

    .line 2316
    const/4 v10, 0x1

    .line 2317
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c()V

    goto/16 :goto_9

    .line 2319
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a()V

    goto/16 :goto_9

    .line 2326
    :cond_1a
    const/4 v10, 0x1

    .line 2327
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->d()V

    .line 2328
    move-object/from16 v0, p0

    iget-object v11, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    sget v12, Lctk$i;->dt_im_permission_setting:I

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(I)V

    goto/16 :goto_a

    .line 2335
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setVisibility(I)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v10, v0, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lczw;->b(Lcom/alibaba/wukong/im/Message;)Z

    goto/16 :goto_b
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 427
    sget v2, Lctk$i;->dt_accessibility_conversation_send_file:I

    invoke-static {v2}, Lczw;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "action":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lczw;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lczw;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, " "

    aput-object v3, v2, v5

    iget-object v3, p0, Lczw;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lczw;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "description":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lczw;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const-string/jumbo v3, " "

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_file:I

    invoke-static {v2}, Lczw;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lczw;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczw;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lczw;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczw;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
