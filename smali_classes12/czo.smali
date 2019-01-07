.class public abstract Lczo;
.super Lctr;
.source "UserSpaceLinkViewHolder.java"


# instance fields
.field private S:Landroid/widget/FrameLayout;

.field protected Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field protected Z:Lgrd;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Lpl/droidsonroids/gif/GifImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lctr;-><init>(Z)V

    .line 51
    return-void
.end method

.method static synthetic a(Lczo;)V
    .locals 4
    .param p0, "x0"    # Lczo;

    .prologue
    .line 38
    .line 6136
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_file_mobile_online_edit"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 6138
    iget-object v0, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_1

    .line 6139
    :cond_0
    :goto_0
    return-void

    .line 6142
    :cond_1
    new-instance v1, Lgrb;

    invoke-direct {v1}, Lgrb;-><init>()V

    .line 6143
    iget-object v0, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    iput-object v0, v1, Lgrb;->b:Ljava/lang/String;

    .line 6144
    iget-object v0, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iput-object v0, v1, Lgrb;->a:Ljava/lang/String;

    .line 6145
    iget-object v0, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-static {v0}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lgrb;->j:I

    .line 6146
    iget-object v0, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    iput-object v0, v1, Lgrb;->i:Ljava/lang/String;

    .line 6148
    new-instance v0, Lczo$3;

    invoke-direct {v0, p0}, Lczo$3;-><init>(Lczo;)V

    .line 6168
    iget-object v2, p0, Lczo;->d:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 6169
    const-class v2, Lcma;

    iget-object v3, p0, Lczo;->d:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6171
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lczo;->d:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lgrb;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lczo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 4
    .param p0, "x0"    # Lczo;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 38
    .line 5186
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5187
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5188
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 5190
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v0

    iget-wide v2, p0, Lczo;->V:J

    invoke-virtual {v0, p1, v2, v3}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;J)Ldjz$a;

    move-result-object v0

    .line 5191
    invoke-virtual {p0, v0}, Lczo;->a(Ldjz$a;)V

    .line 5194
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    .line 38
    return-void
.end method

.method static synthetic b(Lczo;)V
    .locals 4
    .param p0, "x0"    # Lczo;

    .prologue
    .line 38
    .line 6175
    new-instance v1, Lgqz;

    invoke-direct {v1}, Lgqz;-><init>()V

    .line 6176
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v2, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    iput-object v0, v1, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 6177
    iget-object v0, p0, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lgqz;->b:Ljava/lang/String;

    .line 6178
    iget-object v0, p0, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgqz;->c:Ljava/lang/String;

    .line 6179
    iget-object v0, p0, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->t(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    iput-wide v2, v1, Lgqz;->d:J

    .line 6181
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v2, p0, Lczo;->d:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lgqz;)V

    .line 38
    return-void

    .line 6177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 199
    invoke-super {p0, p1, p2}, Lctr;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 200
    iput-object p2, p0, Lczo;->e:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lczo;->r:Landroid/view/View;

    sget v1, Lctk$f;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lczo;->S:Landroid/widget/FrameLayout;

    .line 202
    iget-object v0, p0, Lczo;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczo;->aa:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lczo;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv_link_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczo;->ab:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lczo;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczo;->ac:Landroid/widget/ImageView;

    .line 205
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lczo;->ad:Lpl/droidsonroids/gif/GifImageView;

    .line 206
    invoke-virtual {p0, p2}, Lczo;->c(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    .line 1062
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lczo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 58
    iget-object v0, p0, Lczo;->ad:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 59
    return-void

    :cond_1
    move-object v0, p2

    .line 1065
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1066
    instance-of v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v3, :cond_0

    .line 1069
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iput-object v0, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 1070
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v3, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lgrd;

    move-result-object v0

    iput-object v0, p0, Lczo;->Z:Lgrd;

    .line 1071
    iget-object v0, p0, Lczo;->Z:Lgrd;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lczo;->ac:Landroid/widget/ImageView;

    iget-object v3, p0, Lczo;->Z:Lgrd;

    .line 2015
    iget v3, v3, Lgrd;->a:I

    .line 1074
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1075
    iget-object v0, p0, Lczo;->aa:Landroid/widget/TextView;

    iget-object v3, p0, Lczo;->Z:Lgrd;

    .line 2023
    iget-object v3, v3, Lgrd;->b:Ljava/lang/String;

    .line 1075
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v0, p0, Lczo;->ab:Landroid/widget/TextView;

    iget-object v3, p0, Lczo;->Z:Lgrd;

    .line 2031
    iget-object v3, v3, Lgrd;->c:Ljava/lang/String;

    .line 1076
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lczo;->S:Landroid/widget/FrameLayout;

    new-instance v3, Lczo$1;

    invoke-direct {v3, p0, p2, p1}, Lczo$1;-><init>(Lczo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setVisibility(I)V

    .line 1087
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v3, p0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileExtension:Ljava/lang/String;

    .line 1088
    invoke-static {p2}, Ldkc;->M(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    .line 1087
    invoke-virtual {v0, v3, v4, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ZZ)Lgqy;

    move-result-object v3

    .line 1089
    if-eqz v3, :cond_3

    .line 3028
    iget v0, v3, Lgqy;->a:I

    .line 1090
    if-eq v0, v1, :cond_2

    .line 4028
    iget v0, v3, Lgqy;->a:I

    .line 1091
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 4036
    iget-boolean v0, v3, Lgqy;->c:Z

    .line 1092
    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 1093
    :goto_1
    iget-object v1, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .line 5028
    iget v2, v3, Lgqy;->a:I

    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setTag(Ljava/lang/Object;)V

    .line 1094
    if-eqz v0, :cond_4

    .line 1095
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .line 5032
    iget-object v1, v3, Lgqy;->b:Ljava/lang/String;

    .line 1095
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c()V

    .line 1100
    :goto_2
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    sget v1, Lctk$i;->dt_im_open_folder:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(I)V

    .line 1101
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->d()V

    .line 1102
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    new-instance v1, Lczo$2;

    invoke-direct {v1, p0}, Lczo$2;-><init>(Lczo;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1092
    goto :goto_1

    .line 1098
    :cond_4
    iget-object v0, p0, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a()V

    goto :goto_2
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

    .line 215
    sget v2, Lctk$i;->dt_accessibility_conversation_send_file:I

    invoke-static {v2}, Lczo;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lczo;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lczo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, " "

    aput-object v3, v2, v5

    iget-object v3, p0, Lczo;->ab:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lczo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "description":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lczo;->g()Ljava/lang/String;

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
    .line 222
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_file:I

    invoke-static {v2}, Lczo;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lczo;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lczo;->ab:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
