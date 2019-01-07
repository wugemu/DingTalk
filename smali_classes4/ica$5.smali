.class final Lica$5;
.super Liae;
.source "MessageServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lica;->combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lica;


# direct methods
.method constructor <init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "this$0"    # Lica;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 303
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Lica$5;->e:Lica;

    iput-object p5, p0, Lica$5;->a:Ljava/util/List;

    iput-object p6, p0, Lica$5;->b:Ljava/lang/String;

    iput-object p7, p0, Lica$5;->c:Ljava/util/Map;

    iput-object p8, p0, Lica$5;->d:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 319
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    :try_start_0
    iget-boolean v2, p1, Liae$b;->a:Z

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 321
    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 322
    .local v1, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 323
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v3, p0, Lica$5;->b:Ljava/lang/String;

    .line 1061
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z

    .line 324
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    iget-object v3, p0, Lica$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v1    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_0
    :goto_0
    return-object p1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/alibaba/wukong/im/base/WKException;
    const-string/jumbo v2, "WKLog"

    const-string/jumbo v3, "combineForward save msgs err"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 303
    .line 1308
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lica$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1309
    iget-object v0, p0, Lica$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1310
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1312
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v2, p0, Lica$5;->b:Ljava/lang/String;

    iget-object v3, p0, Lica$5;->c:Ljava/util/Map;

    iget-object v4, p0, Lica$5;->d:Ljava/util/Map;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Libz;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 303
    return-void
.end method
