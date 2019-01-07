.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateLocalExtrasByKeys(Ljava/util/Map;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 483
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 483
    .line 1486
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 2020
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    move-object v2, v0

    .line 1487
    :goto_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->b(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 1492
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1495
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Liar;->c(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1496
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$46;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 483
    :cond_3
    return-void
.end method
