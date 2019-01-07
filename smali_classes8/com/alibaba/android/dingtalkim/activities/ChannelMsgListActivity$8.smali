.class final Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "ChannelMsgListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotificationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/util/List;)V

    .line 443
    return-void
.end method

.method public final onStatusChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 424
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 426
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_2

    .line 429
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->finish()V

    .line 438
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    :goto_0
    return-void

    .line 431
    .restart local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_0

    .line 432
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->finish()V

    goto :goto_0
.end method

.method public final onTopChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/util/List;)V

    .line 448
    return-void
.end method
