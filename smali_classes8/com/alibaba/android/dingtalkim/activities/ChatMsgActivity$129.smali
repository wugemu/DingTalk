.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/statistics/Statistics;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/doraemon/statistics/Statistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 4741
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 4799
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v2, :cond_0

    .line 4800
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZZ)V

    .line 4803
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4804
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 4805
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 4806
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 4807
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_1

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v2, :cond_1

    .line 4809
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4810
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 4811
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 4812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 4813
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 4814
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 4815
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4816
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4817
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4818
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4820
    invoke-static {}, Lder;->a()Lder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;J)V

    .line 4823
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4745
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 4746
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 4747
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 4748
    .local v0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 4749
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v1, "anchorType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4750
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v1, "anchorMessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4751
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 4753
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4758
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 4760
    if-eqz p3, :cond_0

    .line 4761
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 4765
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 4768
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 4771
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "chat_load"

    const-string/jumbo v3, "load_message"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 4773
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "chat_load"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 4775
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "chat_load"

    const-string/jumbo v4, "totalTime"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4778
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfk;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4779
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 4780
    .local v0, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_2

    .line 4781
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfk;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    .line 5098
    iget-boolean v1, v4, Ldfk;->d:Z

    if-nez v1, :cond_1

    .line 5239
    iget-object v1, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_4

    iget-object v1, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ldfm;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 5101
    :goto_1
    if-eqz v1, :cond_b

    iget-object v1, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_b

    iget-object v1, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 5102
    if-nez v0, :cond_5

    .line 5103
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "SvcGrpPresenter"

    const-string/jumbo v3, "lastMessage = null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5122
    .end local v0    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_1
    :goto_2
    return-void

    .line 4780
    .restart local v0    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 5239
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 5107
    :cond_5
    const/4 v2, 0x0

    .line 5109
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 5110
    iget-object v3, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v6, "serviceGroupCopywritingInfo"

    invoke-interface {v3, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 5112
    const-class v6, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;

    invoke-static {v1, v3, v6}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6128
    :goto_3
    iget-object v2, v4, Ldfk;->a:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_im_service_group_system_message_tips:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6129
    if-nez v1, :cond_7

    .line 6130
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "SvcGrpPresenter"

    const-string/jumbo v6, "SvcGroupInfo is null"

    invoke-static {v1, v2, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5119
    :goto_4
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 5120
    iget-object v1, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v3, v6, v7, v5}, Ldfm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/wukong/im/MessageListener;)V

    .line 5121
    const/4 v1, 0x1

    iput-boolean v1, v4, Ldfk;->d:Z

    goto :goto_2

    .line 5114
    :catch_0
    move-exception v1

    .line 5115
    const-string/jumbo v3, "im"

    const-string/jumbo v6, "SvcGrpPresenter"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "SvcGroupInfo gson failed, error="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 5116
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5115
    invoke-static {v3, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v1, v2

    goto :goto_3

    .line 6134
    :cond_7
    iget-object v2, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6135
    iget-object v2, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_dept_group_type:I

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6142
    :goto_5
    iget-boolean v6, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->hasService:Z

    if-eqz v6, :cond_a

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->orgName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 6144
    iget v6, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->timeType:I

    sparse-switch v6, :sswitch_data_0

    move-object v1, v3

    :goto_6
    move-object v3, v1

    .line 6159
    goto :goto_4

    .line 6136
    :cond_8
    iget-object v2, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6137
    iget-object v2, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_inner_group_type:I

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 6139
    :cond_9
    iget-object v2, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_svg_official:I

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 6147
    :sswitch_0
    iget-object v3, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_inner_or_dept_service_group_tips_with_service_AT4:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->orgName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    iget-object v8, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->serviceStartTime:Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v2, 0x3

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->serviceEndTime:Ljava/lang/String;

    aput-object v1, v7, v2

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 6152
    :sswitch_1
    iget-object v3, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_inner_or_dept_service_group_tips_with_service_eveyday_AT4:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->orgName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    iget-object v8, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->serviceStartTime:Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v2, 0x3

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->serviceEndTime:Ljava/lang/String;

    aput-object v1, v7, v2

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 6157
    :sswitch_2
    iget-object v3, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_inner_or_dept_service_group_tips_with_service_AT2:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->orgName:Ljava/lang/String;

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 6163
    :cond_a
    iget-object v3, v4, Ldfk;->a:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_inner_or_dept_service_group_tips_without_service_AT2:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/SvcGroupInfo;->orgName:Ljava/lang/String;

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 5123
    :cond_b
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "SvcGrpPresenter"

    const-string/jumbo v3, "isNotServiceGroupChat"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6144
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x63 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4787
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_load"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 4788
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4789
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4794
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4828
    return-void
.end method
