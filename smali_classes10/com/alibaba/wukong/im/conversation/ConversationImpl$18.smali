.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->filterMessages(Lcom/alibaba/wukong/im/Message;ZI[IZJLcom/alibaba/wukong/Callback;)V
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

.field final synthetic c:Z

.field final synthetic d:[I

.field final synthetic e:Z

.field final synthetic f:J

.field final synthetic g:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;IZ[IZJ)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1382
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->g:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->a:Lcom/alibaba/wukong/im/Message;

    iput p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->b:I

    iput-boolean p7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->c:Z

    iput-object p8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->d:[I

    iput-boolean p9, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->e:Z

    iput-wide p10, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->f:J

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1382
    .line 2385
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->g:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->b:I

    iget-boolean v5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->c:Z

    iget-object v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->d:[I

    iget-boolean v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->e:Z

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$18;->f:J

    invoke-virtual/range {v1 .. v9}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;

    move-result-object v0

    .line 2387
    if-eqz p2, :cond_0

    .line 2388
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1382
    :cond_0
    return-void
.end method
