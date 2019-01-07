.class final Lcyl$1;
.super Ljava/lang/Object;
.source "UserEncryptedFileToViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcyl;


# direct methods
.method constructor <init>(Lcyl;)V
    .locals 0
    .param p1, "this$0"    # Lcyl;

    .prologue
    .line 28
    iput-object p1, p0, Lcyl$1;->a:Lcyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_mobile_chat_local_edit_invite"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcyl$1;->a:Lcyl;

    iget-object v2, v2, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 36
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Lcyl$1;->a:Lcyl;

    iget-object v2, v2, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;-><init>()V

    .line 41
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    iget-object v2, p0, Lcyl$1;->a:Lcyl;

    iget-object v2, v2, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcyl$1;->a:Lcyl;

    iget-object v2, v2, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    .line 42
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    .line 43
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    .line 44
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ChatMsgActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->identifier:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcyl$1;->a:Lcyl;

    iget-object v2, v2, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lcyl$1;->a:Lcyl;

    iget-object v3, v3, Lcyl;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    .line 47
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lcyl$1;->a:Lcyl;

    iget-object v3, v3, Lcyl;->d:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    goto :goto_0

    .line 41
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
