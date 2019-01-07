.class final Ldks$2;
.super Ljava/lang/Object;
.source "AggregationManager.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationListener;


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
    .line 178
    iput-object p1, p0, Ldks$2;->a:Ldks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;)V
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
    .line 181
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$2;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$2;->a:Ldks;

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

    .line 184
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->b(Ljava/util/List;)V

    goto :goto_0

    .line 187
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method

.method public final onRefreshed(Ljava/util/List;)V
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
    .line 201
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$2;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 203
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$2;->a:Ldks;

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

    .line 204
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->a(Ljava/util/List;)V

    goto :goto_0

    .line 207
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
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
    .line 191
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$2;->a:Ldks;

    invoke-static {v2}, Ldks;->a(Ldks;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks$2;->a:Ldks;

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

    .line 194
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->c(Ljava/util/List;)V

    goto :goto_0

    .line 197
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method
