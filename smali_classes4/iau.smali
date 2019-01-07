.class public final Liau;
.super Ljava/lang/Object;
.source "ConversationEventPoster.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/ConversationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/ConversationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Liau;->a:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Liau;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static A(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 605
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    new-instance v0, Liau$29;

    invoke-direct {v0, p0}, Liau$29;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static B(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 678
    if-nez p0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 680
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static C(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 702
    if-nez p0, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1708
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1711
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 1712
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1715
    new-instance v1, Liau$32;

    invoke-direct {v1, v0}, Liau$32;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    return-object v0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Liau;->b:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;)V
    .locals 8
    .param p0, "deliveryTypingModel"    # Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;

    .prologue
    const/4 v7, -0x1

    .line 433
    if-eqz p0, :cond_0

    iget-object v4, p0, Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;->typingModels:Ljava/util/List;

    if-nez v4, :cond_1

    .line 452
    :cond_0
    return-void

    .line 435
    :cond_1
    iget-object v4, p0, Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;->typingModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/typing/models/TypingModel;

    .line 436
    .local v3, "typingModel":Lcom/alibaba/wukong/idl/typing/models/TypingModel;
    if-eqz v3, :cond_2

    .line 438
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v5

    iget-object v6, v3, Lcom/alibaba/wukong/idl/typing/models/TypingModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 439
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_2

    .line 441
    iget-object v5, v3, Lcom/alibaba/wukong/idl/typing/models/TypingModel;->command:Ljava/lang/Integer;

    invoke-static {v5, v7}, Lieb;->a(Ljava/lang/Integer;I)I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->fromValue(I)Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    move-result-object v0

    .line 442
    .local v0, "command":Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    iget-object v5, v3, Lcom/alibaba/wukong/idl/typing/models/TypingModel;->type:Ljava/lang/Integer;

    invoke-static {v5, v7}, Lieb;->a(Ljava/lang/Integer;I)I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/wukong/im/Conversation$TypingType;->fromValue(I)Lcom/alibaba/wukong/im/Conversation$TypingType;

    move-result-object v2

    .line 443
    .local v2, "type":Lcom/alibaba/wukong/im/Conversation$TypingType;
    new-instance v5, Liau$17;

    invoke-direct {v5, v1, v0, v2}, Liau$17;-><init>(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    invoke-static {v5}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v1, v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v1, Liau$1;

    invoke-direct {v1, v0}, Liau$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    new-instance v0, Liau$30;

    invoke-direct {v0, p0, p1, p2}, Liau$30;-><init>(Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/ConversationChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/wukong/im/ConversationChangeListener;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Liau;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/alibaba/wukong/im/ConversationListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/ConversationListener;

    .prologue
    .line 46
    const-class v1, Liau;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 49
    :goto_0
    monitor-exit v1

    return-void

    .line 48
    :cond_0
    :try_start_0
    sget-object v0, Liau;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {p0}, Liau;->b(Ljava/util/List;)V

    .line 75
    new-instance v0, Liau$12;

    invoke-direct {v0, p0}, Liau$12;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-static {p0}, Liau;->b(Ljava/util/List;)V

    .line 688
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Liau$31;

    invoke-direct {v0, p0}, Liau$31;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Liau;->a:Ljava/util/List;

    return-object v0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v1, Liau$33;

    invoke-direct {v1, v0}, Liau$33;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/ConversationChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/wukong/im/ConversationChangeListener;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Liau;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized b(Lcom/alibaba/wukong/im/ConversationListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/ConversationListener;

    .prologue
    .line 52
    const-class v1, Liau;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 55
    :goto_0
    monitor-exit v1

    return-void

    .line 54
    :cond_0
    :try_start_0
    sget-object v0, Liau;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Liau;->b(Ljava/util/List;)V

    .line 106
    new-instance v0, Liau$23;

    invoke-direct {v0, p0}, Liau$23;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 91
    .local v1, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 93
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_2

    .line 94
    const-string/jumbo v2, "[ConversationPoster]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "conv event poster filter hide cid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 160
    new-instance v1, Liau$36;

    invoke-direct {v1, v0}, Liau$36;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Liau$34;

    invoke-direct {v0, p0}, Liau$34;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 174
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 176
    new-instance v1, Liau$37;

    invoke-direct {v1, v0}, Liau$37;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static d(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Liau$35;

    invoke-direct {v0, p0}, Liau$35;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 192
    new-instance v1, Liau$38;

    invoke-direct {v1, v0}, Liau$38;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static e(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p0}, Liau;->b(Ljava/util/List;)V

    .line 223
    new-instance v0, Liau$3;

    invoke-direct {v0, p0}, Liau$3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static f(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 208
    new-instance v1, Liau$2;

    invoke-direct {v1, v0}, Liau$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static f(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {p0}, Liau;->b(Ljava/util/List;)V

    .line 254
    new-instance v0, Liau$5;

    invoke-direct {v0, p0}, Liau$5;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static g(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 239
    new-instance v1, Liau$4;

    invoke-direct {v1, v0}, Liau$4;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static g(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-static {p0}, Liau;->b(Ljava/util/List;)V

    .line 570
    new-instance v0, Liau$26;

    invoke-direct {v0, p0}, Liau$26;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static h(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 268
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 270
    new-instance v1, Liau$6;

    invoke-direct {v1, v0}, Liau$6;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static i(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 286
    new-instance v1, Liau$7;

    invoke-direct {v1, v0}, Liau$7;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static j(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 301
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 303
    new-instance v1, Liau$8;

    invoke-direct {v1, v0}, Liau$8;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static k(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 314
    if-nez p0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 319
    new-instance v1, Liau$9;

    invoke-direct {v1, v0}, Liau$9;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static l(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 330
    if-nez p0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 335
    new-instance v1, Liau$10;

    invoke-direct {v1, v0}, Liau$10;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static m(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 346
    if-nez p0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 349
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 351
    new-instance v1, Liau$11;

    invoke-direct {v1, v0}, Liau$11;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static n(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 363
    if-nez p0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 366
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 368
    new-instance v1, Liau$13;

    invoke-direct {v1, v0}, Liau$13;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static o(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 382
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 384
    new-instance v1, Liau$14;

    invoke-direct {v1, v0}, Liau$14;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static p(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 400
    new-instance v1, Liau$15;

    invoke-direct {v1, v0}, Liau$15;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static q(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 411
    if-nez p0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 414
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 416
    new-instance v1, Liau$16;

    invoke-direct {v1, v0}, Liau$16;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static r(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 455
    if-nez p0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 458
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 460
    new-instance v1, Liau$18;

    invoke-direct {v1, v0}, Liau$18;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static s(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 472
    if-nez p0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 477
    new-instance v1, Liau$19;

    invoke-direct {v1, v0}, Liau$19;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static t(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 488
    if-nez p0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 493
    new-instance v1, Liau$20;

    invoke-direct {v1, v0}, Liau$20;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static u(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 504
    if-nez p0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 507
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 509
    new-instance v1, Liau$21;

    invoke-direct {v1, v0}, Liau$21;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static v(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 520
    if-nez p0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 523
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 525
    new-instance v1, Liau$22;

    invoke-direct {v1, v0}, Liau$22;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static w(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 536
    if-nez p0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 539
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v1, Liau$24;

    invoke-direct {v1, v0}, Liau$24;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static x(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 550
    if-nez p0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-static {p0}, Liau;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/ArrayList;

    move-result-object v0

    .line 553
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Liau;->b(Ljava/util/List;)V

    .line 555
    new-instance v1, Liau$25;

    invoke-direct {v1, v0}, Liau$25;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static y(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 581
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    new-instance v0, Liau$27;

    invoke-direct {v0, p0}, Liau$27;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static z(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 593
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    new-instance v0, Liau$28;

    invoke-direct {v0, p0}, Liau$28;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
