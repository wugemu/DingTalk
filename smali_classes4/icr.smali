.class public final Licr;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "ReconnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "reconn"

    const-class v1, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 49
    move-object v6, p1

    check-cast v6, Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;

    .line 1058
    if-eqz v6, :cond_0

    .line 1061
    :try_start_0
    const-string/jumbo v0, "[TAG] Reconnect"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1062
    :try_start_1
    new-instance v0, Licr$1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Licr$1;-><init>(Licr;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/alibaba/wukong/idl/im/models/ReconnectMessageModel;)V

    .line 1245
    invoke-virtual {v0}, Licr$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1248
    :cond_0
    return-void

    .line 1247
    :catchall_0
    move-exception v0

    .line 3030
    :goto_0
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1247
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_0
.end method
