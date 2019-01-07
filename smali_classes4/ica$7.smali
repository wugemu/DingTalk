.class final Lica$7;
.super Liae;
.source "MessageServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lica;->listAtMeMessages(JILcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lica;


# direct methods
.method constructor <init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JI)V
    .locals 1
    .param p1, "this$0"    # Lica;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 402
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Lica$7;->c:Lica;

    iput-wide p5, p0, Lica$7;->a:J

    iput p7, p0, Lica$7;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 402
    .line 1406
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-wide v2, p0, Lica$7;->a:J

    iget v1, p0, Lica$7;->b:I

    .line 1866
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    if-gtz v1, :cond_2

    .line 1867
    :cond_0
    if-eqz p2, :cond_1

    .line 1868
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR cursor and count invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_1
    :goto_0
    return-void

    .line 1873
    :cond_2
    new-instance v4, Libz$13;

    const-wide/16 v6, 0x1388

    invoke-direct {v4, v0, p2, v6, v7}, Libz$13;-><init>(Libz;Lcom/alibaba/wukong/Callback;J)V

    .line 1910
    const-string/jumbo v0, "[TAG] MsgRpc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[RPC] listAtMeMsgs cursor "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2018
    const-string/jumbo v6, "im"

    invoke-static {v0, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1, v4}, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;->listAtMeMessages(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method
