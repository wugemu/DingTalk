.class final Lczw$2;
.super Ljava/lang/Object;
.source "UserSpaceViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lczw;


# direct methods
.method constructor <init>(Lczw;)V
    .locals 0
    .param p1, "this$0"    # Lczw;

    .prologue
    .line 150
    iput-object p1, p0, Lczw$2;->a:Lczw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 153
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isESafeNetEncrypt:I

    if-ne v2, v3, :cond_2

    .line 157
    sget v2, Lctk$i;->dt_space_edit_failreason_enc:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    .local v1, "tag":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 164
    iget-object v2, p0, Lczw$2;->a:Lczw;

    invoke-static {v2}, Lczw;->a(Lczw;)V

    goto :goto_0

    .line 166
    :cond_3
    if-ne v1, v3, :cond_0

    .line 167
    new-instance v0, Lgqz;

    invoke-direct {v0}, Lgqz;-><init>()V

    .line 168
    .local v0, "param":Lgqz;
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object v2, v0, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 169
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lgqz;->b:Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgqz;->c:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lczw$2;->a:Lczw;

    iget-object v2, v2, Lczw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2}, Ldkc;->t(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    iput-wide v2, v0, Lgqz;->d:J

    .line 173
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lczw$2;->a:Lczw;

    iget-object v3, v3, Lczw;->d:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lgqz;)V

    goto :goto_0

    .line 169
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lczw$2;->a:Lczw;

    invoke-static {v0}, Lczw;->b(Lczw;)V

    .line 181
    return-void
.end method
