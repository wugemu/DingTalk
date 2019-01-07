.class final Ldks$1;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "AggregationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldks;


# direct methods
.method constructor <init>(Ldks;)V
    .locals 0
    .param p1, "this$0"    # Ldks;

    .prologue
    .line 114
    iput-object p1, p0, Ldks$1;->a:Ldks;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDraftChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 1296
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->d(Ljava/util/List;)V

    goto :goto_0

    .line 143
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method

.method public final onGroupRemoved(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 147
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 2240
    .local v0, "aggregation":Ldkt;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2243
    const/4 v2, 0x0

    .line 2244
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    .line 2245
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2246
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2247
    iget-object v7, v0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2248
    iget-object v3, v0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v2, v4

    :goto_2
    move v3, v2

    .line 2252
    goto :goto_1

    .line 2253
    :cond_1
    if-eqz v3, :cond_0

    .line 2254
    invoke-virtual {v0, v4}, Ldkt;->a(Z)V

    goto :goto_0

    .line 153
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void

    .restart local v0    # "aggregation":Ldkt;
    .restart local v1    # "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public final onLatestMessageChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 1284
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->d(Ljava/util/List;)V

    goto :goto_0

    .line 123
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method

.method public final onNotificationChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 2288
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->d(Ljava/util/List;)V

    goto :goto_0

    .line 175
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method

.method public final onTagChanged(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v4, 0x1

    .line 159
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 160
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 2260
    .local v0, "aggregation":Ldkt;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2263
    const/4 v2, 0x0

    .line 2264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 2265
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2268
    invoke-virtual {v0, v2}, Ldkt;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2269
    iget-object v3, v0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 2270
    goto :goto_1

    .line 2272
    :cond_2
    iget-object v7, v0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2273
    iget-object v3, v0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    :goto_2
    move v3, v2

    .line 2277
    goto :goto_1

    .line 2278
    :cond_3
    if-eqz v3, :cond_0

    .line 2279
    invoke-virtual {v0, v4}, Ldkt;->a(Z)V

    goto :goto_0

    .line 165
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_4
    return-void

    .restart local v0    # "aggregation":Ldkt;
    .restart local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$1;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 1292
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->d(Ljava/util/List;)V

    goto :goto_0

    .line 133
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method
