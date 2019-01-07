.class public Ldks;
.super Ljava/lang/Object;
.source "AggregationManager.java"


# static fields
.field private static volatile b:Ldks;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldkt;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private d:Lcom/alibaba/wukong/im/ConversationListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ldks;->a:Ljava/util/List;

    .line 114
    new-instance v0, Ldks$1;

    invoke-direct {v0, p0}, Ldks$1;-><init>(Ldks;)V

    iput-object v0, p0, Ldks;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 178
    new-instance v0, Ldks$2;

    invoke-direct {v0, p0}, Ldks$2;-><init>(Ldks;)V

    iput-object v0, p0, Ldks;->d:Lcom/alibaba/wukong/im/ConversationListener;

    .line 27
    invoke-virtual {p0}, Ldks;->a()V

    .line 1093
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldks;->d:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 1094
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldks;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 30
    return-void
.end method

.method static synthetic a(Ldks;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldks;

    .prologue
    .line 20
    iget-object v0, p0, Ldks;->a:Ljava/util/List;

    return-object v0
.end method

.method public static b()Ldks;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Ldks;->b:Ldks;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Ldks;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Ldks;->b:Ldks;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ldks;

    invoke-direct {v0}, Ldks;-><init>()V

    sput-object v0, Ldks;->b:Ldks;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Ldks;->b:Ldks;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;->Shopping:Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    invoke-static {v1}, Ldkr;->a(Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;)Ldkt;

    move-result-object v0

    .line 34
    .local v0, "aggregation":Ldkt;
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;->CampusHr:Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    invoke-static {v1}, Ldkr;->a(Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;)Ldkt;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;->CampusStudent:Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    invoke-static {v1}, Ldkr;->a(Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;)Ldkt;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;)V
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
    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 222
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, v1}, Ldkt;->a(Ljava/util/List;)V

    goto :goto_0

    .line 225
    .end local v0    # "aggregation":Ldkt;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 254
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, p1}, Ldkt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const/4 v1, 0x1

    .line 259
    .end local v0    # "aggregation":Ldkt;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 270
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0, p1}, Ldkt;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v1, 0x1

    .line 275
    .end local v0    # "aggregation":Ldkt;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 108
    .local v0, "aggregation":Ldkt;
    invoke-virtual {v0}, Ldkt;->b()V

    goto :goto_0

    .line 110
    .end local v0    # "aggregation":Ldkt;
    :cond_0
    iget-object v1, p0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    return-void
.end method
