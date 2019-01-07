.class final Lica$4;
.super Liae;
.source "MessageServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lica;->forwardWithTransformBatch(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lica;


# direct methods
.method constructor <init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lica;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 238
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Lica$4;->c:Lica;

    iput-object p5, p0, Lica$4;->a:Ljava/util/List;

    iput-object p6, p0, Lica$4;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 252
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>.b;"
    :try_start_0
    iget-boolean v4, p1, Liae$b;->a:Z

    if-eqz v4, :cond_3

    .line 253
    iget-object v4, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 254
    iget-object v3, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 255
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v1, 0x0

    .line 256
    .local v1, "lastMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 257
    .local v2, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 258
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    iget-object v6, p0, Lica$4;->b:Ljava/lang/String;

    .line 1061
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z

    .line 259
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 260
    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 263
    .end local v2    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    if-eqz v1, :cond_3

    .line 264
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    iget-object v5, p0, Lica$4;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "lastMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_3
    :goto_1
    return-object p1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lcom/alibaba/wukong/im/base/WKException;
    const-string/jumbo v4, "WKLog"

    const-string/jumbo v5, "forwardWithTransformBatch save msgs err"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 238
    .line 1242
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lica$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1243
    iget-object v0, p0, Lica$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1244
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1246
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v2, p0, Lica$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Libz;->b(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 238
    return-void
.end method
