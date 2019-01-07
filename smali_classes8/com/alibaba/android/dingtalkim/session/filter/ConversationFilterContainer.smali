.class public Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;
.super Ljava/lang/Object;
.source "ConversationFilterContainer.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# instance fields
.field private mConversationFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 27
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 29
    .local v0, "filter":Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filter(Ljava/util/List;)V

    goto :goto_0

    .line 34
    .end local v0    # "filter":Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    :cond_1
    return-void
.end method

.method public filterDisplay(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;->mConversationFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 40
    .local v0, "filter":Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filterDisplay(Ljava/util/List;)V

    goto :goto_0

    .line 45
    .end local v0    # "filter":Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    :cond_1
    return-void
.end method
