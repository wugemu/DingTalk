.class final Lddy$7;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/statistics/Statistics;

.field final synthetic b:Lddy;


# direct methods
.method constructor <init>(Lddy;Lcom/alibaba/doraemon/statistics/Statistics;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 861
    iput-object p1, p0, Lddy$7;->b:Lddy;

    iput-object p2, p0, Lddy$7;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 900
    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 8066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 900
    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lddx$b;->a(ZZ)V

    .line 902
    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 9066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 902
    if-eqz v2, :cond_0

    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 10066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 902
    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 11066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 902
    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 903
    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 12066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 903
    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lddy$7;->b:Lddy;

    .line 13066
    iget-object v3, v3, Lddy;->c:Ldqq;

    .line 903
    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 904
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 905
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 906
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_0

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v2, :cond_0

    .line 908
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 909
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 910
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 912
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 913
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 914
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Lddq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 916
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 917
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 918
    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 14066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 918
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lddx$b;->a(J)V

    .line 921
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 864
    iget-object v0, p0, Lddy$7;->b:Lddy;

    invoke-static {v0}, Lddy;->b(Lddy;)V

    .line 865
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 870
    iget-object v0, p0, Lddy$7;->b:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 870
    invoke-interface {v0, p3}, Lddx$b;->a(Z)V

    .line 873
    invoke-static {}, Lder;->a()Lder;

    iget-object v0, p0, Lddy$7;->b:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 873
    iget-object v1, p0, Lddy$7;->b:Lddy;

    .line 3066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 873
    invoke-static {v1}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    iget-object v2, p0, Lddy$7;->b:Lddy;

    .line 4066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 873
    invoke-static {v0, v1, v2}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;ZLdqq;)V

    .line 876
    iget-object v0, p0, Lddy$7;->b:Lddy;

    .line 5066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 876
    iget-object v1, p0, Lddy$7;->b:Lddy;

    .line 6066
    iget-object v1, v1, Lddy;->c:Ldqq;

    .line 876
    invoke-static {v0, v1}, Lddq;->a(Lcom/alibaba/wukong/im/Conversation;Ldqq;)V

    .line 879
    iget-object v0, p0, Lddy$7;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_load"

    const-string/jumbo v2, "load_message"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lddy$7;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_load"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lddy$7;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "chat_load"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 888
    iget-object v0, p0, Lddy$7;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_load"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lddy$7;->b:Lddy;

    .line 7066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 889
    invoke-interface {v0, p2, p3}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 895
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 926
    return-void
.end method
