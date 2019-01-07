.class public Lcyl;
.super Lcyq;
.source "UserEncryptedFileToViewHolder.java"


# instance fields
.field protected Y:Ldac;

.field private ad:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

.field private ae:Lcxo;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcyq;-><init>(Z)V

    .line 28
    new-instance v0, Lcyl$1;

    invoke-direct {v0, p0}, Lcyl$1;-><init>(Lcyl;)V

    iput-object v0, p0, Lcyl;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    .line 60
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 87
    iget-object v1, p0, Lcyl;->Y:Ldac;

    iget-boolean v2, p0, Lcyl;->T:Z

    invoke-virtual {v1, p1, p2, v2}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 89
    iget-object v1, p0, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    .line 1115
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-eqz v2, :cond_0

    .line 1116
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setVisibility(I)V

    .line 1117
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V

    .line 1120
    :cond_0
    invoke-static {v1}, Ldkc;->t(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcyl;->T:Z

    if-eqz v2, :cond_3

    .line 91
    :cond_1
    :goto_0
    iget-object v1, p0, Lcyl;->ae:Lcxo;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcyl;->ae:Lcxo;

    iget-object v2, p0, Lcyl;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    iget-object v4, p0, Lcyl;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v1, v2, v3, v4}, Lcxo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 93
    iget-object v1, p0, Lcyl;->ae:Lcxo;

    invoke-virtual {v1}, Lcxo;->a()V

    .line 96
    :cond_2
    instance-of v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x1f6

    if-ne v1, v2, :cond_7

    move-object v1, p2

    .line 97
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 99
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_7

    .line 100
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v2, :cond_6

    .line 101
    iget-object v1, p0, Lcyl;->aa:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    iget-object v1, p0, Lcyl;->Z:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :goto_2
    return-void

    .line 1125
    :cond_3
    invoke-static {v1}, Ldkc;->H(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1129
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1133
    iget-object v2, p0, Lcyl;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    if-eqz v2, :cond_4

    .line 1134
    iget-object v2, p0, Lcyl;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 1137
    :cond_4
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setVisibility(I)V

    .line 1138
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b()V

    .line 1139
    iget-object v2, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c()V

    .line 1140
    const-string/jumbo v2, "sp_editor_num"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2109
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1141
    cmp-long v1, v2, v8

    if-lez v1, :cond_5

    .line 1142
    iget-object v1, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(Ljava/lang/String;)V

    .line 1147
    :goto_3
    iget-object v1, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    iget-object v2, p0, Lcyl;->ad:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V

    goto/16 :goto_0

    .line 1144
    :cond_5
    iget-object v1, p0, Lcyl;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    sget v2, Lctk$i;->dt_im_permission_setting:I

    .line 3103
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 103
    .restart local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_6
    iget-object v1, p0, Lcyl;->aa:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_7
    iget-object v1, p0, Lcyl;->aa:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcyl;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lctk$g;->chatting_item_to_encrypted_file:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v2, p0, Lcyl;->P:Lcts$b;

    invoke-static {p1, v2}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v2

    iput-object v2, p0, Lcyl;->Y:Ldac;

    .line 79
    iget-object v2, p0, Lcyl;->r:Landroid/view/View;

    sget v3, Lctk$f;->round_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 80
    .local v1, "uploadProgressBar":Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;
    iget-object v2, p0, Lcyl;->r:Landroid/view/View;

    sget v3, Lctk$f;->img_cancel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, "imgCancel":Landroid/widget/ImageView;
    new-instance v2, Lcxo;

    iget-object v3, p0, Lcyl;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-direct {v2, v3, v4, v1, v0}, Lcxo;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcyl;->ae:Lcxo;

    .line 83
    return-void
.end method
