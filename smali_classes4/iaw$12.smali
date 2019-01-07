.class final Liaw$12;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->listConversations(Lcom/alibaba/wukong/Callback;II)V
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
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lhzs$a;

.field final synthetic e:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILcom/alibaba/wukong/Callback;Lhzs$a;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 216
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Liaw$12;->e:Liaw;

    iput p5, p0, Liaw$12;->a:I

    iput p6, p0, Liaw$12;->b:I

    iput-object p7, p0, Liaw$12;->c:Lcom/alibaba/wukong/Callback;

    iput-object p8, p0, Liaw$12;->d:Lhzs$a;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 268
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>.b;"
    const/4 v2, 0x0

    .line 270
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v3, "[TAG] ConvServ list after"

    .line 1014
    const-string/jumbo v4, "im"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 271
    iget-boolean v3, p1, Liae$b;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] Rpc list conv suc, sz="

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    iget-object v3, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget v5, p0, Liaw$12;->a:I

    iget v6, p0, Liaw$12;->b:I

    .line 275
    invoke-virtual {v4, v3, v5, v6}, Liar;->a(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 276
    iget v3, p0, Liaw$12;->a:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 277
    const/4 v3, 0x1

    sput-boolean v3, Liar;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :cond_0
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 283
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    iget v4, p0, Liaw$12;->b:I

    invoke-virtual {v3, v4}, Liar;->b(I)Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    const-string/jumbo v4, "[TAG ConversationServiceImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "listConversations get all size= "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3018
    const-string/jumbo v5, "im"

    invoke-static {v4, v3, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz v0, :cond_1

    .line 286
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    iput-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    .line 290
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v1, "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "dataSource"

    const-string/jumbo v4, "rpc"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v3, p0, Liaw$12;->d:Lhzs$a;

    invoke-virtual {v3, v1}, Lhzs$a;->a(Ljava/util/Map;)V

    .line 293
    return-object p1

    .line 280
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v1    # "dim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 2030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 280
    throw v3

    .line 284
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_2
    const-string/jumbo v3, "null"

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 216
    .line 3219
    iget v0, p0, Liaw$12;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3220
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    const-string/jumbo v1, "group_conversation_loaded"

    invoke-virtual {v0, v1}, Liar;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Liaw$12;->b:I

    if-lt v0, v1, :cond_2

    .line 3221
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget v1, p0, Liaw$12;->b:I

    invoke-virtual {v0, v1}, Liar;->c(I)Ljava/util/List;

    move-result-object v0

    .line 3222
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3223
    :cond_0
    const-string/jumbo v0, "[TAG ConversationServiceImpl]"

    const-string/jumbo v1, "listConversations local is empty"

    .line 4018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Liaw$12;->b:I

    invoke-virtual {v0, v1, v2, p2}, Liav;->a(Ljava/lang/Long;ILcom/alibaba/wukong/Callback;)V

    .line 3258
    :goto_0
    return-void

    .line 3226
    :cond_1
    const-string/jumbo v1, "[TAG ConversationServiceImpl]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "listConversations get from local size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    iget-object v1, p0, Liaw$12;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 3230
    :cond_2
    const-string/jumbo v0, "[TAG ConversationServiceImpl]"

    const-string/jumbo v1, "listConversations get from rpc "

    .line 6018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Liaw$12;->b:I

    invoke-virtual {v0, v1, v2, p2}, Liav;->a(Ljava/lang/Long;ILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 3235
    :cond_3
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3237
    sget-boolean v0, Liar;->b:Z

    if-nez v0, :cond_4

    .line 3238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "k_is_listV3_called_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3239
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Liga;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 3240
    sput-boolean v1, Liar;->b:Z

    if-nez v1, :cond_4

    .line 3241
    const-string/jumbo v1, "[TAG ConversationServiceImpl]"

    const-string/jumbo v2, "forceAll listNewestV3 start"

    .line 7018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    iget v2, p0, Liaw$12;->b:I

    invoke-virtual {v1, v2, p2, v4}, Liav;->a(ILcom/alibaba/wukong/Callback;Z)V

    .line 3243
    sput-boolean v4, Liar;->b:Z

    .line 3244
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Liga;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3249
    :cond_4
    sget-boolean v0, Liar;->a:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    const-string/jumbo v1, "conversation_loaded"

    invoke-virtual {v0, v1}, Liar;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Liaw$12;->b:I

    if-lt v0, v1, :cond_8

    .line 3250
    :cond_5
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget v1, p0, Liaw$12;->b:I

    invoke-virtual {v0, v1}, Liar;->a(I)Ljava/util/List;

    move-result-object v0

    .line 3251
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3252
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Liaw;->a(J)J

    .line 3253
    const-string/jumbo v0, "[TAG ConversationServiceImpl]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "listConversations get all from rpc time= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Liaw;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget v1, p0, Liaw$12;->b:I

    invoke-virtual {v0, v1, p2}, Liav;->a(ILcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 3256
    :cond_7
    iget-object v1, p0, Liaw$12;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3259
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Liaw;->a(J)J

    .line 3260
    const-string/jumbo v0, "[TAG ConversationServiceImpl]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "listConversations get all v2 from rpc time= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Liaw;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget v1, p0, Liaw$12;->b:I

    invoke-virtual {v0, v1, p2}, Liav;->a(ILcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method
