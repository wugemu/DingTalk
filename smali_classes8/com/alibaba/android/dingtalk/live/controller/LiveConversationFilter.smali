.class public Lcom/alibaba/android/dingtalk/live/controller/LiveConversationFilter;
.super Ljava/lang/Object;
.source "LiveConversationFilter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# static fields
.field private static final serialVersionUID:J = -0x79897aeda9417cb3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 21
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 26
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 28
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_2

    .line 32
    invoke-static {v0}, Lbyj;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public filterDisplay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    return-void
.end method
