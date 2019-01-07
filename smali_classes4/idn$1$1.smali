.class final Lidn$1$1;
.super Ljava/lang/Object;
.source "MessageUpdater.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidn$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lidn$1;


# direct methods
.method constructor <init>(Lidn$1;)V
    .locals 0
    .param p1, "this$0"    # Lidn$1;

    .prologue
    .line 126
    iput-object p1, p0, Lidn$1$1;->a:Lidn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 166
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 126
    check-cast p1, Ljava/util/List;

    .line 1131
    :try_start_0
    const-string/jumbo v1, "[TAG] SyncMsg"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 1132
    if-eqz p1, :cond_6

    .line 1133
    :try_start_1
    const-string/jumbo v1, "[SYNC] Rpc get conv suc"

    invoke-virtual {v5, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 1134
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1135
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 1137
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    .line 1138
    iget-object v2, p0, Lidn$1$1;->a:Lidn$1;

    iget-object v2, v2, Lidn$1;->b:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1139
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1141
    move-object v0, v1

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-object v4, v0

    invoke-static {v3, v4}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1160
    :catchall_0
    move-exception v1

    move-object v2, v5

    .line 3030
    :goto_2
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 1160
    throw v1

    .line 1144
    :cond_1
    :try_start_2
    iget-object v1, p0, Lidn$1$1;->a:Lidn$1;

    iget-object v1, v1, Lidn$1;->c:Ljava/util/Map;

    if-nez v1, :cond_2

    move-object v3, v6

    .line 1145
    :goto_3
    iget-object v1, p0, Lidn$1$1;->a:Lidn$1;

    iget-object v1, v1, Lidn$1;->d:Ljava/util/Map;

    if-nez v1, :cond_3

    move-object v1, v6

    .line 1146
    :goto_4
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1147
    invoke-static {v2, v3, v1, v4}, Lidn;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v1

    .line 1148
    if-eqz v1, :cond_4

    .line 1149
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1154
    iget-object v2, p0, Lidn$1$1;->a:Lidn$1;

    iget-object v2, v2, Lidn$1;->e:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-static {v1, v2}, Libv;->a(Ljava/util/ArrayList;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    goto :goto_0

    .line 1144
    :cond_2
    iget-object v1, p0, Lidn$1$1;->a:Lidn$1;

    iget-object v1, v1, Lidn$1;->c:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v3, v1

    goto :goto_3

    .line 1145
    :cond_3
    iget-object v1, p0, Lidn$1$1;->a:Lidn$1;

    iget-object v1, v1, Lidn$1;->d:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_4

    .line 1151
    :cond_4
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1157
    :cond_5
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    invoke-virtual {v1, v8, v7}, Liar;->a(Ljava/util/Map;Ljava/util/Map;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    :cond_6
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 1161
    return-void

    .line 1160
    :catchall_1
    move-exception v1

    move-object v2, v6

    goto :goto_2
.end method
