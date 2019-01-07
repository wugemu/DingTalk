.class public final Licn;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "MessageReceiverStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/MessageReadStatusListModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "readstatus"

    const-class v1, Lcom/alibaba/wukong/idl/im/models/MessageReadStatusListModel;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 17
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/MessageReadStatusListModel;

    .line 1027
    if-eqz p1, :cond_0

    .line 1030
    :try_start_0
    const-string/jumbo v0, "[TAG] MsgReceSts"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v9

    .line 1031
    :try_start_1
    const-string/jumbo v2, "[Push] MsgReceSts"

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v9, v2, v0}, Lhzv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/MessageReadStatusListModel;->readStatusList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2036
    :try_start_2
    const-string/jumbo v0, "[TAG] MsgRecverStatus"

    .line 3014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v8

    .line 2037
    if-nez v5, :cond_2

    .line 2038
    :try_start_3
    const-string/jumbo v0, "[Push] Recv msg recver status null"

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 2042
    :goto_1
    new-instance v0, Lico$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v3

    sget-object v4, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    const/4 v6, 0x1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lico$1;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/util/List;ZLcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 2115
    invoke-virtual {v0}, Lico$1;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3030
    :try_start_4
    invoke-static {v8}, Lhzt;->a(Lhzv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 1035
    :cond_0
    return-void

    .line 1031
    :cond_1
    :try_start_5
    const-string/jumbo v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 2040
    :cond_2
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Push] Recv msg recver status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2117
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 4030
    :goto_2
    :try_start_7
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 2117
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1034
    :catchall_1
    move-exception v0

    move-object v1, v9

    .line 6030
    :goto_3
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1034
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 2117
    :catchall_3
    move-exception v0

    goto :goto_2
.end method
