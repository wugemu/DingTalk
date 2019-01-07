.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->listLocalMessages(Lcom/alibaba/wukong/im/Message;I[IZJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:I

.field final synthetic c:[I

.field final synthetic d:Z

.field final synthetic e:J

.field final synthetic f:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;I[IZJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1571
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->f:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->a:Lcom/alibaba/wukong/im/Message;

    iput p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->b:I

    iput-object p7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->c:[I

    iput-boolean p8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->d:Z

    iput-wide p9, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->e:J

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1571
    .line 2574
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->f:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->b:I

    iget-object v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->c:[I

    iget-boolean v5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->d:Z

    iget-wide v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$21;->e:J

    invoke-virtual/range {v0 .. v7}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I[IZJ)Ljava/util/List;

    move-result-object v0

    .line 2576
    if-eqz p2, :cond_0

    .line 2577
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1571
    :cond_0
    return-void
.end method
