.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 899
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 901
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 902
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-nez v1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 908
    .local v0, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;I)I

    .line 915
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->u(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V

    goto :goto_0
.end method
