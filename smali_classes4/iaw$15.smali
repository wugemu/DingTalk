.class final Liaw$15;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Liaw;


# direct methods
.method constructor <init>(Liaw;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liaw;

    .prologue
    .line 1080
    iput-object p1, p0, Liaw$15;->c:Liaw;

    iput-object p2, p0, Liaw$15;->a:Ljava/util/List;

    iput-object p3, p0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1125
    iget-object v0, p0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Liaw$15;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1127
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1080
    check-cast p1, Ljava/util/List;

    .line 2083
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, p1}, Liar;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2084
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    if-eqz v0, :cond_2

    .line 2086
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2087
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isParent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2089
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 2090
    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2091
    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    :cond_1
    iget-object v3, p0, Liaw$15;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2096
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2097
    iget-object v0, p0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_3

    .line 2098
    iget-object v0, p0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Liaw$15;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    .line 2100
    :cond_4
    const-string/jumbo v0, "[TAG] ConvServ"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] absent parent sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    new-instance v2, Liaw$15$1;

    invoke-direct {v2, p0}, Liaw$15$1;-><init>(Liaw$15;)V

    invoke-virtual {v0, v1, v2}, Liav;->c(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method
