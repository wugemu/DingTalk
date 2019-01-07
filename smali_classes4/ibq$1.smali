.class final Libq$1;
.super Ljava/lang/Object;
.source "AudioStreamControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libq;->finish(JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Libq;


# direct methods
.method constructor <init>(Libq;JLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Libq;

    .prologue
    .line 46
    iput-object p1, p0, Libq$1;->c:Libq;

    iput-wide p2, p0, Libq$1;->a:J

    iput-object p4, p0, Libq$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v3, "[TAG] AudioStream"

    .line 1014
    const-string/jumbo v4, "im"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 52
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->a(Libq;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->a(Libq;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-eqz v3, :cond_1

    .line 53
    const-string/jumbo v3, "[API] Finish stream upload"

    invoke-virtual {v2, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->a(Libq;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v3, v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->a(Libq;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    iget-object v0, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;

    .line 56
    .local v0, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;
    iget-wide v4, p0, Libq$1;->a:J

    iput-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;->mDuration:J

    .line 57
    iget-object v3, p0, Libq$1;->b:Ljava/util/List;

    iput-object v3, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;->mVolumns:Ljava/util/List;

    .line 60
    .end local v0    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;
    :cond_0
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->a(Libq;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    iget-object v1, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 61
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->a(Libq;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->checkAndSave(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3, v6}, Libq;->a(Libq;I)I

    .line 67
    iget-object v3, p0, Libq$1;->c:Libq;

    invoke-static {v3}, Libq;->b(Libq;)V

    .line 1030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 69
    return-void

    .line 66
    :catchall_0
    move-exception v3

    iget-object v4, p0, Libq$1;->c:Libq;

    invoke-static {v4, v6}, Libq;->a(Libq;I)I

    .line 67
    iget-object v4, p0, Libq$1;->c:Libq;

    invoke-static {v4}, Libq;->b(Libq;)V

    .line 2030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 68
    throw v3
.end method
