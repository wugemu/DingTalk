.class final Liay$1;
.super Ljava/lang/Object;
.source "EntranceConversationCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Liay;


# direct methods
.method constructor <init>(Liay;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Liay;

    .prologue
    .line 29
    iput-object p1, p0, Liay$1;->b:Liay;

    iput-object p2, p0, Liay$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    iget-object v3, p0, Liay$1;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Liar;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Liay$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v0, "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Liay$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 35
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, v0}, Liar;->d(Ljava/util/List;)V

    .line 40
    return-void
.end method
