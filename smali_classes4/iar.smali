.class public final Liar;
.super Ljava/lang/Object;
.source "ConversationCache.java"


# static fields
.field public static volatile a:Z

.field public static volatile b:Z

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile e:Z

.field public f:Ljava/util/concurrent/locks/ReadWriteLock;

.field private h:Liat;

.field private i:Liaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Liar;->a:Z

    .line 70
    sput-boolean v0, Liar;->b:Z

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Liar;->c:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Liar;->d:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Liar;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Liar;->e:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 79
    new-instance v0, Liat;

    invoke-direct {v0}, Liat;-><init>()V

    iput-object v0, p0, Liar;->h:Liat;

    .line 84
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    iput-object v0, p0, Liar;->i:Liaz;

    .line 85
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2564
    invoke-virtual {p0}, Liar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2565
    const/4 v0, 0x0

    .line 2570
    :goto_0
    return-object v0

    .line 2567
    :cond_0
    :try_start_0
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2568
    invoke-direct {p0, p1, p2}, Liar;->b(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2570
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2553
    invoke-virtual {p0}, Liar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2554
    const/4 v0, 0x0

    .line 2559
    :goto_0
    return-object v0

    .line 2556
    :cond_0
    :try_start_0
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2557
    invoke-direct {p0, p1, p2, p3}, Liar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2559
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static a(JLjava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3323
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3324
    const/4 v1, 0x0

    .line 3338
    :cond_0
    return-object v1

    .line 3327
    :cond_1
    invoke-static {p0, p1}, Liap;->a(J)Z

    move-result v3

    .line 3328
    .local v3, "systemCategory":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3329
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 3330
    .local v2, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3331
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 3332
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-static {v0, v3, p0, p1}, Liap;->a(Lcom/alibaba/wukong/im/Conversation;ZJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3333
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 3335
    :cond_2
    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Liar;Ljava/util/List;IILjava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Liar;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Liar;->a(Ljava/util/List;IILjava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1140
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez p1, :cond_1

    .line 1145
    :cond_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1142
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1143
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Liar;->a(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private a(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 550
    .local p1, "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v4

    if-nez v4, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v1, "existCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 558
    .local v3, "notExistCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    sget-object v4, Liar;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    sget-object v5, Liar;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 559
    .local v2, "existCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v4, Liar;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 560
    sget-object v4, Liar;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 561
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 562
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 565
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 568
    .end local v0    # "cid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v1}, Liar;->d(Ljava/util/List;)V

    .line 569
    invoke-direct {p0, v3}, Liar;->b(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;IILjava/util/Map;)V
    .locals 3
    .param p2, "typeMask"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1191
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .local p4, "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-nez p1, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1193
    :cond_0
    invoke-static {p1}, Liat;->a(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_5

    .line 43820
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1197
    :cond_1
    :goto_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 1198
    const-string/jumbo v0, "group_conversation_loaded"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-static {v0, v1, v2}, Liah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1202
    :cond_2
    :goto_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    invoke-virtual {v0, p4}, Libs;->a(Ljava/util/Map;)Z

    .line 1203
    const-string/jumbo v0, "[TAG] ConvCache"

    const-string/jumbo v1, "[CACHE] bmerge db succ"

    .line 44018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43822
    :cond_3
    invoke-static {p1}, Liat;->b(Ljava/util/List;)I

    goto :goto_1

    .line 1199
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1200
    const-string/jumbo v0, "conversation_loaded"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-static {v0, v1, v2}, Liah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_2

    .line 1205
    :cond_5
    const-string/jumbo v0, "[TAG] ConvCache"

    const-string/jumbo v1, "[CACHE] bmerge err"

    .line 44022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p0, "entranceCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "visibleConversationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .local p2, "hideConversationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .local p3, "absentEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, "hitEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p5, "localEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, "unreadCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p7, "lastMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .local p8, "notifySwitchMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1047
    .local v7, "notifyUnreadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1049
    .local v8, "unNotifyUnreadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_f

    .line 1050
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1051
    .local v10, "visibleCid":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1052
    .local v3, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v3, :cond_e

    iget-wide v14, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    invoke-static {v14, v15}, Libb;->a(J)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1053
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, "cid":Ljava/lang/String;
    if-eqz p0, :cond_1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1057
    :cond_1
    if-eqz p4, :cond_2

    .line 1058
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1062
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNotificationEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1063
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1064
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->unreadMessageCount()I

    move-result v13

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :goto_1
    iget-object v4, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 1077
    .local v4, "curConversationLastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz p7, :cond_4

    .line 1078
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1079
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/Message;

    .line 1080
    .local v6, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    .line 1081
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v14

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-lez v11, :cond_4

    .line 1082
    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v4    # "curConversationLastMessage":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .end local v6    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_4
    :goto_2
    if-eqz p8, :cond_0

    .line 1094
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 1095
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNotificationEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_5
    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1066
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->unreadMessageCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1069
    :cond_7
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1071
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->unreadMessageCount()I

    move-result v13

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1070
    invoke-virtual {v8, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1073
    :cond_8
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->unreadMessageCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1085
    .restart local v4    # "curConversationLastMessage":Lcom/alibaba/wukong/im/Message;
    .restart local v6    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_9
    if-nez v6, :cond_4

    .line 1086
    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v4    # "curConversationLastMessage":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1090
    .end local v6    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v4    # "curConversationLastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_a
    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v4    # "curConversationLastMessage":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1095
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 1097
    :cond_c
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNotificationEnabled()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1101
    :cond_d
    if-eqz p3, :cond_0

    .line 1102
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1105
    .end local v2    # "cid":Ljava/lang/String;
    :cond_e
    if-eqz v3, :cond_0

    invoke-static {v3}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1106
    if-eqz p5, :cond_0

    .line 1107
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1116
    .end local v3    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v10    # "visibleCid":Ljava/lang/String;
    :cond_f
    if-nez p4, :cond_11

    .line 1134
    :cond_10
    return-void

    .line 1117
    :cond_11
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_12
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1118
    .restart local v2    # "cid":Ljava/lang/String;
    if-eqz p8, :cond_15

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_15

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v5, 0x1

    .line 1119
    .local v5, "isNotify":Z
    :goto_5
    const/4 v9, 0x0

    .line 1120
    .local v9, "unreadCount":I
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_16

    .line 1121
    const/4 v5, 0x1

    .line 1122
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1127
    :cond_13
    :goto_6
    if-eqz p8, :cond_14

    .line 1128
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    :cond_14
    if-eqz p6, :cond_12

    .line 1131
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1118
    .end local v5    # "isNotify":Z
    .end local v9    # "unreadCount":I
    :cond_15
    const/4 v5, 0x0

    goto :goto_5

    .line 1123
    .restart local v5    # "isNotify":Z
    .restart local v9    # "unreadCount":I
    :cond_16
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_13

    .line 1124
    const/4 v5, 0x0

    .line 1125
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_6
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 3387
    instance-of v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 3388
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 3389
    .local v1, "lastMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 3391
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    .line 3392
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b1

    if-ne v2, v3, :cond_0

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-eqz v2, :cond_0

    .line 3396
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3397
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "ding_biz_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 3402
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "lastMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z
    .locals 2
    .param p1, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "delta"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2195
    if-nez p1, :cond_0

    .line 2196
    const/4 v1, 0x0

    .line 2200
    :goto_0
    return v1

    .line 2197
    :cond_0
    iget v1, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    add-int v0, v1, p2

    .line 2198
    .local v0, "newUnreadCount":I
    if-gez v0, :cond_1

    .line 2199
    const/4 v0, 0x0

    .line 2200
    :cond_1
    invoke-direct {p0, p1, v0}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z

    move-result v1

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z
    .locals 16
    .param p1, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "force"    # Z
    .param p4, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    const/4 v13, 0x0

    .line 1630
    :goto_0
    return v13

    .line 1542
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static/range {p2 .. p2}, Libs;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1543
    const/4 v13, 0x1

    goto :goto_0

    .line 1545
    :cond_1
    const/4 v7, 0x0

    .line 1547
    .local v7, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v13, "[TAG] ConvCache"

    .line 50032
    const-string/jumbo v14, "im"

    invoke-static {v13, v14}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 1548
    if-eqz p3, :cond_7

    .line 1550
    if-nez p2, :cond_2

    .line 1551
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v13}, Liat;->b(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 1552
    .local v8, "ret":J
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 50033
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    const/4 v13, 0x0

    goto :goto_0

    .line 1556
    .end local v8    # "ret":J
    :cond_2
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1557
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "lastMid"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1561
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v13, "parentId"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1562
    const-string/jumbo v14, "isParent"

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v3, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1563
    const-string/jumbo v13, "flag"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getFlag()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1564
    const-string/jumbo v13, "extInfo"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1568
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_2
    :try_start_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v13, v12}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v13

    int-to-long v8, v13

    .line 1569
    .restart local v8    # "ret":J
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-lez v13, :cond_6

    .line 1571
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Liat;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v10

    .line 1572
    .local v10, "retMerge":J
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] update lastMsg force succ "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " mergeLastMsg ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " unReadCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lhzv;->a(Ljava/lang/String;)V

    .line 1620
    .end local v10    # "retMerge":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 1621
    if-eqz p4, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1622
    invoke-static {}, Lieb;->b()Z

    .line 1626
    invoke-static/range {p1 .. p1}, Liau;->f(Lcom/alibaba/wukong/im/Conversation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50043
    :cond_4
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v8    # "ret":J
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 1565
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1566
    .local v2, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1630
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    .line 50045
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    throw v13

    .line 1574
    .restart local v8    # "ret":J
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] update lastMsg force fail "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " unReadCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50035
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1579
    .end local v8    # "ret":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_7
    if-nez p2, :cond_8

    .line 1580
    :try_start_6
    const-string/jumbo v13, "msg is null"

    invoke-virtual {v7, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 50037
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1583
    :cond_8
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    .line 1584
    .local v4, "newCreatedAt":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 1585
    .local v6, "oldLastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-gtz v13, :cond_9

    .line 1586
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1588
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Liat;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v8

    .line 1589
    .restart local v8    # "ret":J
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gtz v13, :cond_a

    .line 50039
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1592
    :cond_a
    :try_start_8
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static/range {p2 .. p2}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1593
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1594
    .restart local v12    # "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "lastMid"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1595
    const-string/jumbo v13, "lastModify"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1606
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v13, v12}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v13

    if-lez v13, :cond_b

    .line 1607
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    .line 1609
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] update lastMsg modify success "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " unReadCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1611
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] update lastMsg fail "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " newFlag="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getFlag()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " unReadCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lhzv;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1616
    .end local v8    # "ret":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] not lastMsg: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 50041
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1630
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "isForce"    # Z
    .param p4, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1486
    invoke-virtual {p0}, Liar;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1509
    :goto_0
    return v3

    .line 1488
    :cond_0
    const/4 v2, 0x0

    .line 1490
    .local v2, "trace":Lhzv;
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1491
    const-string/jumbo v4, "[TAG] ConvCache"

    .line 50023
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] update lastMsg, cid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1494
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 1495
    const-string/jumbo v4, "[CACHE] param conv null"

    invoke-virtual {v2, v4}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50024
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1498
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p2, p3, p4}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z

    move-result v1

    .line 1499
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 1500
    invoke-direct {p0, v0, p2, p3, p4}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)V

    .line 1501
    invoke-direct {p0, v0}, Liar;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50026
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 1509
    const/4 v3, 0x1

    goto :goto_0

    .line 1504
    :cond_2
    :try_start_2
    const-string/jumbo v4, "[CACHE] update lastMsg err"

    invoke-virtual {v2, v4}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1508
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50028
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1508
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 1509
    throw v3
.end method

.method private b(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2605
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 2623
    :goto_0
    return-object v0

    .line 2608
    :cond_1
    const/4 v2, 0x0

    .line 2610
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v4, "[TAG] ConvCache"

    .line 50190
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 2611
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] update conv "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 2612
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2613
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_2

    .line 50191
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    move-object v0, v3

    .line 2623
    goto :goto_0

    .line 2616
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 2617
    .local v1, "ret":I
    if-gtz v1, :cond_3

    .line 2618
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] update conv "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " err, cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50193
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    move-object v0, v3

    .line 2623
    goto :goto_0

    .line 50195
    :cond_3
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2623
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v3

    .line 50197
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 2623
    throw v3
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2575
    const/4 v2, 0x0

    .line 2577
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[TAG] ConvCache"

    .line 50179
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 2578
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] update conv "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 2579
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2580
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_0

    .line 50180
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    move-object v0, v4

    .line 2600
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local p3    # "val":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 2583
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local p3    # "val":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2584
    .local v3, "values":Landroid/content/ContentValues;
    instance-of v5, p3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2585
    check-cast p3, Ljava/lang/String;

    .end local p3    # "val":Ljava/lang/Object;
    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :goto_1
    invoke-static {p1, v3}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 2594
    .local v1, "ret":I
    if-gtz v1, :cond_4

    .line 2595
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] update conv "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " err, cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50184
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    move-object v0, v4

    .line 2600
    goto :goto_0

    .line 2586
    .end local v1    # "ret":I
    .restart local p3    # "val":Ljava/lang/Object;
    :cond_1
    :try_start_2
    instance-of v5, p3, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 2587
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "val":Ljava/lang/Object;
    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2600
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 50188
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 2600
    throw v4

    .line 2588
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local p3    # "val":Ljava/lang/Object;
    :cond_2
    :try_start_3
    instance-of v5, p3, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 2589
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "val":Ljava/lang/Object;
    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 50182
    .restart local p3    # "val":Ljava/lang/Object;
    :cond_3
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    move-object v0, v4

    .line 2600
    goto :goto_0

    .line 50186
    .end local p3    # "val":Ljava/lang/Object;
    .restart local v1    # "ret":I
    :cond_4
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;J)Ljava/util/List;
    .locals 7
    .param p1, "entranceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3504
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, p2}, Libb;->a(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3505
    :cond_0
    const/4 v1, 0x0

    .line 3516
    :cond_1
    return-object v1

    .line 3508
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3509
    .local v1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 3510
    .local v2, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3511
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 3512
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 3513
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 6
    .param p0, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 1161
    if-nez p0, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 1165
    .local v0, "lastMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v0}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1166
    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    sget-wide v4, Lcom/alibaba/wukong/im/IMConstants;->YEAR_2000_MILLS:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1167
    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMsgCreateAt:J

    iput-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    goto :goto_0
.end method

.method private b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)V
    .locals 8
    .param p1, "child"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "msg"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "force"    # Z
    .param p4, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1635
    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1636
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParentId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 1637
    .local v3, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v3, :cond_1

    .line 1656
    .end local v3    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_0
    :goto_0
    return-void

    .line 1640
    .restart local v3    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_1
    if-eqz p3, :cond_5

    .line 1641
    const/4 v2, 0x0

    .line 1642
    .local v2, "lastMsg":Lcom/alibaba/wukong/im/Message;
    iget-object v4, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 1643
    .local v4, "parentId":Ljava/lang/String;
    sget-object v6, Liar;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1644
    .local v1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1645
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_3

    .line 1646
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Message;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_2

    .line 1647
    :cond_3
    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    .line 1650
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_4
    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v2    # "lastMsg":Lcom/alibaba/wukong/im/Message;
    invoke-static {v2, v3}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v5

    .line 1654
    .end local v1    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v4    # "parentId":Ljava/lang/String;
    .local v5, "parentMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_2
    invoke-direct {p0, v3, v5, p3, p4}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z

    goto :goto_0

    .line 1652
    .end local v5    # "parentMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_5
    invoke-static {p2, v3}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v5

    .restart local v5    # "parentMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    goto :goto_2
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1664
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1672
    .local v2, "lastMessageChangedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1673
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1674
    .local v3, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-direct {p0, v0}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1675
    .local v1, "entranceConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_2

    .line 50047
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v6

    .line 1675
    :goto_2
    if-eqz v4, :cond_2

    .line 1676
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1677
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50050
    :cond_3
    if-nez v1, :cond_4

    move v4, v6

    .line 50051
    goto :goto_2

    .line 50053
    :cond_4
    iget-object v8, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 50054
    if-nez v3, :cond_5

    if-nez v8, :cond_5

    move v4, v6

    .line 50055
    goto :goto_2

    .line 50058
    :cond_5
    if-eqz v3, :cond_b

    if-eqz v8, :cond_b

    .line 50059
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-nez v4, :cond_7

    move v4, v5

    .line 50060
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v8

    if-lez v8, :cond_6

    move v4, v6

    .line 50064
    :cond_6
    :goto_4
    if-eqz v4, :cond_8

    move v4, v6

    .line 50065
    goto :goto_2

    :cond_7
    move v4, v6

    .line 50059
    goto :goto_3

    .line 50069
    :cond_8
    invoke-static {v3, v1}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    .line 50070
    invoke-direct {p0, v1, v4, v5, v6}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z

    move-result v4

    goto :goto_2

    .line 1679
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {p0, v4, v8}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    goto :goto_1

    .line 1683
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "entranceConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1684
    invoke-static {v2}, Liau;->e(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "entranceConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_b
    move v4, v6

    goto :goto_4
.end method

.method private b(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, "absentEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    iget-object v0, p0, Liar;->i:Liaz;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Liar;->i:Liaz;

    invoke-interface {v0, p1}, Liaz;->a(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1175
    .local p1, "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .local p2, "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1176
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 1177
    .local v2, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isParent()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    if-nez v4, :cond_0

    .line 1178
    iget-object v4, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1179
    .local v3, "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    iput v4, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 1180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1181
    .local v0, "childMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v0, :cond_0

    .line 1182
    invoke-static {v0, v2}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 1183
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    goto :goto_0

    .line 1179
    .end local v0    # "childMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    goto :goto_1

    .line 1187
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v2    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    return-void
.end method

.method private b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z
    .locals 5
    .param p1, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2204
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return v2

    .line 2207
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2208
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "unreadCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2209
    iget-object v3, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v3, v1}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 2210
    .local v0, "ret":I
    if-lez v0, :cond_0

    .line 2213
    iput p2, p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2214
    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2215
    invoke-static {p1}, Liau;->g(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2217
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2035
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2036
    :cond_0
    const/4 v8, 0x0

    .line 2097
    :goto_0
    return v8

    .line 2038
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2039
    const/4 v8, 0x0

    goto :goto_0

    .line 2040
    :cond_2
    const/4 v7, 0x0

    .line 2042
    .local v7, "trace":Lhzv;
    :try_start_0
    iget-object v8, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2043
    const-string/jumbo v8, "[TAG] ConvCache"

    .line 50122
    const-string/jumbo v9, "im"

    invoke-static {v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 2044
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "bulkUpdateUnreadCount checkResetUnreadCount="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 2045
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2046
    .local v5, "resetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2047
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2048
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_3

    .line 2050
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2051
    .local v4, "newCount":I
    if-ltz v4, :cond_5

    .line 50123
    if-eqz v1, :cond_6

    .line 50126
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v8

    .line 50127
    if-eqz v8, :cond_6

    .line 50131
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->isRead()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->isView()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 50132
    :cond_4
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v8}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 50133
    const/4 v8, 0x1

    .line 2051
    :goto_2
    if-eqz v8, :cond_3

    :cond_5
    iget v8, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    if-eqz v8, :cond_3

    .line 2052
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2096
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "newCount":I
    .end local v5    # "resetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50140
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 2097
    throw v8

    .line 50135
    .restart local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v4    # "newCount":I
    .restart local v5    # "resetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 2055
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "newCount":I
    :cond_7
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2056
    invoke-interface {p1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2059
    :cond_8
    invoke-static {p1}, Liat;->b(Ljava/util/Map;)I

    move-result v6

    .line 2060
    .local v6, "ret":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "bulkUpdateUnread ret="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2061
    if-gtz v6, :cond_9

    .line 2096
    iget-object v8, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50136
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 2097
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2066
    :cond_9
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    .local v0, "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2068
    .local v2, "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2069
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2070
    .restart local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_a

    .line 2072
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2077
    .restart local v4    # "newCount":I
    iget v8, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    if-eq v8, v4, :cond_a

    .line 2078
    iput v4, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2079
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2080
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    :cond_b
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceId()J

    move-result-wide v10

    invoke-static {v10, v11}, Libb;->a(J)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2083
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2087
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "newCount":I
    :cond_c
    invoke-static {v0}, Liau;->f(Ljava/util/ArrayList;)V

    .line 2093
    invoke-direct {p0, v2}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2096
    iget-object v8, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50138
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 2097
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 882
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    :try_start_0
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 890
    const-string/jumbo v0, "[TAG] ConvCache"

    const-string/jumbo v1, "[ConvCache] updateAllEntranceInfo"

    .line 39018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39990
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39993
    const-string/jumbo v0, "[TAG] ConvCache"

    const-string/jumbo v1, "[ConvCache] innerUpdateAllEntranceInfo"

    .line 41018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39994
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 39996
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 39998
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 40000
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 40001
    new-instance v1, Ljava/util/HashMap;

    sget-object v0, Liar;->c:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 40002
    new-instance v2, Ljava/util/HashMap;

    sget-object v0, Liar;->d:Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 40003
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 40004
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 40006
    const/4 v0, 0x0

    invoke-static/range {v0 .. v8}, Liar;->a(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 40011
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40012
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 40013
    invoke-static {v0}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 40014
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 893
    :catchall_0
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 40018
    :cond_3
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 40019
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40020
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40021
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 40024
    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40025
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40026
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 40031
    :cond_5
    invoke-direct {p0, v7}, Liar;->b(Ljava/util/HashMap;)V

    .line 40033
    invoke-direct {p0, v6}, Liar;->c(Ljava/util/Map;)Z

    .line 40034
    invoke-direct {p0, v8}, Liar;->a(Ljava/util/HashMap;)V

    .line 40035
    invoke-direct {p0, v3}, Liar;->b(Ljava/util/HashSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :cond_6
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method private c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 5
    .param p1, "secondaryConversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1518
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    if-eqz p1, :cond_0

    .line 1524
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, "entranceCid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1526
    invoke-direct {p0, v1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 1527
    .local v3, "entranceConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v3, :cond_2

    .line 1528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    .local v2, "entranceCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    invoke-virtual {p0, v2}, Liar;->d(Ljava/util/List;)V

    goto :goto_0

    .line 1532
    .end local v2    # "entranceCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1533
    .local v0, "absentCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1534
    invoke-direct {p0, v0}, Liar;->b(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private c(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 2107
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2139
    :cond_0
    :goto_0
    return v6

    .line 2110
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2113
    const/4 v5, 0x0

    .line 2115
    .local v5, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v7, "[TAG] ConvCache"

    .line 50142
    const-string/jumbo v8, "im"

    invoke-static {v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 2116
    invoke-static {p1}, Liat;->b(Ljava/util/Map;)I

    move-result v4

    .line 2117
    .local v4, "ret":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bulkUpdateUnread ret="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    if-gtz v4, :cond_2

    .line 50143
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2121
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2122
    .local v0, "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2123
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2124
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_3

    .line 2126
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2127
    .local v3, "newCount":I
    iget v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    if-eq v6, v3, :cond_3

    .line 2128
    iput v3, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2129
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2139
    .end local v0    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "newCount":I
    .end local v4    # "ret":I
    :catchall_0
    move-exception v6

    .line 50147
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 2139
    throw v6

    .line 2132
    .restart local v0    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "newCount":I
    .restart local v4    # "ret":I
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {p0, v6, v8}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    goto :goto_1

    .line 2136
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "newCount":I
    :cond_5
    invoke-static {v0}, Liau;->f(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50145
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 2139
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private static d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 2
    .param p0, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 1892
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    invoke-static {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1895
    sget-object v0, Liar;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1897
    :cond_2
    sget-object v0, Liar;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 2
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 2710
    if-nez p0, :cond_1

    .line 2711
    const/4 v0, 0x0

    .line 2715
    :cond_0
    :goto_0
    return-object v0

    .line 2712
    :cond_1
    sget-object v1, Liar;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2713
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_0

    .line 2714
    sget-object v1, Liar;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2693
    const/4 v0, 0x0

    .line 2706
    :cond_0
    :goto_0
    return-object v0

    .line 2696
    :cond_1
    invoke-static {p1}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2697
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_0

    .line 2698
    iget-object v1, p0, Liar;->h:Liat;

    invoke-virtual {v1, p1}, Liat;->c(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2699
    if-eqz v0, :cond_2

    .line 2700
    invoke-static {v0}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    goto :goto_0

    .line 2702
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "memory cache & db is out of sync "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    const-string/jumbo v1, "[TAG] ConvCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] get local conv null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50199
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 2719
    sget-object v0, Liar;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    sget-object v0, Liar;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v19, Ljava/util/HashMap;

    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 141
    .local v19, "updateEntranceIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 142
    .local v7, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 143
    invoke-static {v7}, Libb;->j(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 144
    .local v8, "compatEntranceId":J
    iget-wide v0, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    move-wide/from16 v24, v0

    cmp-long v21, v8, v24

    if-eqz v21, :cond_2

    .line 145
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 146
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v10, "conversationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 156
    .end local v7    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v8    # "compatEntranceId":J
    .end local v10    # "conversationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 157
    new-instance v12, Ljava/util/HashSet;

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 158
    .local v12, "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 159
    .local v13, "entranceId":Ljava/lang/Long;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 160
    .local v17, "subCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    .line 162
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v20, "values":Landroid/content/ContentValues;
    const-string/jumbo v22, "entranceId"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 165
    .local v6, "cidArray":[Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Liat;->a([Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v11

    .line 166
    .local v11, "count":I
    const/16 v18, 0x0

    .line 167
    .local v18, "suc":Z
    if-lez v11, :cond_7

    .line 168
    const/16 v18, 0x1

    .line 170
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 4033
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v24

    const/16 v26, 0x0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Liaw;->a(JJZ)Ljava/lang/String;

    move-result-object v22

    .line 170
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 172
    .local v16, "subCid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 173
    .restart local v7    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v7, :cond_6

    .line 174
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    goto :goto_3

    .line 179
    .end local v7    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v16    # "subCid":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x0

    .line 181
    .local v15, "logJson":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 185
    :goto_4
    const-string/jumbo v22, "[TAG] ConvCache"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "[CACHE] loadMemory updateCidListEntranceId, param cidList:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ",newEntranceId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " success ? "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 5022
    const-string/jumbo v24, "im"

    invoke-static/range {v22 .. v24}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    :catch_0
    move-exception v14

    .line 183
    .local v14, "ex":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 190
    .end local v6    # "cidArray":[Ljava/lang/String;
    .end local v11    # "count":I
    .end local v13    # "entranceId":Ljava/lang/Long;
    .end local v14    # "ex":Ljava/lang/Exception;
    .end local v15    # "logJson":Ljava/lang/String;
    .end local v17    # "subCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "suc":Z
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_8
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 191
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Liar;->a(Ljava/util/HashSet;)V

    goto/16 :goto_0
.end method

.method private static h(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2386
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-nez p0, :cond_1

    .line 2387
    const/4 v1, 0x0

    .line 2395
    :cond_0
    return-object v1

    .line 2389
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2390
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2391
    .local v0, "co":Lcom/alibaba/wukong/im/Conversation;
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2392
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static i(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2399
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-nez p0, :cond_1

    .line 2400
    const/4 v1, 0x0

    .line 2408
    :cond_0
    return-object v1

    .line 2402
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2403
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2404
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isParent()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2405
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)I
    .locals 24
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Liar;->a()Z

    move-result v19

    if-nez v19, :cond_0

    .line 240
    const/4 v15, 0x0

    .line 382
    :goto_0
    return v15

    .line 241
    :cond_0
    if-nez p1, :cond_1

    .line 242
    const-string/jumbo v19, "[TAG] ConvCache"

    const-string/jumbo v20, "[CACHE] merge, param conv null"

    .line 6022
    const-string/jumbo v21, "im"

    invoke-static/range {v19 .. v21}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v15, 0x0

    goto :goto_0

    .line 245
    :cond_1
    const/16 v18, 0x0

    .line 247
    .local v18, "trace":Lhzv;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 248
    const-string/jumbo v19, "[TAG] ConvCache"

    .line 7014
    const-string/jumbo v20, "im"

    invoke-static/range {v19 .. v20}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v18

    .line 249
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] merge, cid="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v5

    .line 252
    .local v5, "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->conversationMergeWithFlag()Z

    move-result v4

    .line 253
    .local v4, "conversationMergeWithFlag":Z
    new-instance v14, Ljava/util/HashSet;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 254
    .local v14, "relativeEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v5, :cond_c

    .line 257
    const/4 v8, 0x0

    .line 258
    .local v8, "hasMsgTable":Z
    const/4 v7, 0x0

    .line 259
    .local v7, "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v4, :cond_2

    .line 260
    const-string/jumbo v19, "[CACHE] merge, local not exist conversation"

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v19

    .line 7103
    invoke-static/range {v19 .. v19}, Libu;->b(Ljava/lang/String;)Z

    move-result v8

    .line 262
    if-eqz v8, :cond_2

    .line 263
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 267
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v11

    .line 268
    .local v11, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v11, :cond_3

    .line 269
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] merge, hasMsgTable but local not exist server lastMsg id:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v20, v0

    .line 270
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",mark gap"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 269
    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 271
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 272
    .restart local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V

    .line 294
    .end local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Liat;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)J

    move-result-wide v16

    .line 295
    .local v16, "ret":J
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-gtz v19, :cond_8

    .line 296
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] insert conv err "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8030
    invoke-static/range {v18 .. v18}, Lhzt;->a(Lhzv;)V

    .line 382
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 274
    .end local v16    # "ret":J
    .restart local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/Message;

    move-result-object v10

    .line 275
    .local v10, "localLastMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-eqz v19, :cond_6

    .line 277
    :cond_4
    if-nez v10, :cond_5

    const-wide/16 v12, 0x0

    .line 278
    .local v12, "localLastMsgId":J
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] merge, hasMsgTable but local has server lastMsg id:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v20, v0

    .line 279
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",localLastMsgId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",use local"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 278
    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 281
    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    move-wide/from16 v20, v0

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_2

    .line 282
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 381
    .end local v4    # "conversationMergeWithFlag":Z
    .end local v5    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v8    # "hasMsgTable":Z
    .end local v10    # "localLastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v12    # "localLastMsgId":J
    .end local v14    # "relativeEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13030
    invoke-static/range {v18 .. v18}, Lhzt;->a(Lhzv;)V

    .line 382
    throw v19

    .line 277
    .restart local v4    # "conversationMergeWithFlag":Z
    .restart local v5    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v8    # "hasMsgTable":Z
    .restart local v10    # "localLastMsg":Lcom/alibaba/wukong/im/Message;
    .restart local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v14    # "relativeEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    :try_start_2
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    goto :goto_2

    .line 285
    :cond_6
    const-string/jumbo v19, "[CACHE] merge, lastMsg equals,just ignore"

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    .end local v10    # "localLastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_7
    const-string/jumbo v19, "[CACHE] merge, hasMsgTable server lastMsg is null"

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 299
    .restart local v16    # "ret":J
    :cond_8
    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 301
    .local v6, "gapMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 302
    const-string/jumbo v19, "[CACHE] insert conv err because mergeLastMsgWithFlag error "

    invoke-virtual/range {v18 .. v19}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9030
    invoke-static/range {v18 .. v18}, Lhzt;->a(Lhzv;)V

    .line 382
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 306
    .end local v6    # "gapMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_9
    :try_start_3
    invoke-static/range {p1 .. p1}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 307
    move-object/from16 v5, p1

    .line 308
    const/4 v15, 0x2

    .line 369
    .end local v8    # "hasMsgTable":Z
    .local v15, "result":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Liat;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)J

    .line 370
    invoke-static {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 371
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_a

    .line 372
    invoke-static {v5}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 375
    :cond_a
    invoke-virtual {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 376
    invoke-virtual {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12030
    invoke-static/range {v18 .. v18}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 313
    .end local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v15    # "result":I
    .end local v16    # "ret":J
    :cond_c
    :try_start_4
    invoke-virtual {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 314
    invoke-virtual {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_d
    new-instance v7, Ljava/util/HashMap;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 317
    .restart local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v4, :cond_e

    .line 318
    const-string/jumbo v19, "[CACHE] merge, local exist conversation"

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 319
    iget-object v0, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 320
    iget v0, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    .line 321
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 325
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v11

    .line 326
    .restart local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v11, :cond_f

    .line 327
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] merge, local not exist server lastMsg id:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v20, v0

    .line 328
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",mark gap"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 327
    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 329
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 330
    .restart local v7    # "gapMsgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Liaw;->a()Liaw;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v7}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V

    .line 350
    .end local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_e
    :goto_4
    invoke-static/range {p1 .. p1}, Liat;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 351
    .restart local v16    # "ret":J
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-gtz v19, :cond_14

    .line 352
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] update conv err "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10030
    invoke-static/range {v18 .. v18}, Lhzt;->a(Lhzv;)V

    .line 382
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 332
    .end local v16    # "ret":J
    .restart local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_f
    :try_start_5
    iget-object v9, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 333
    .local v9, "localLastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v9, :cond_10

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-eqz v19, :cond_12

    .line 335
    :cond_10
    if-nez v9, :cond_11

    const-wide/16 v12, 0x0

    .line 336
    .restart local v12    # "localLastMsgId":J
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[CACHE] merge, local has server lastMsg id:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v20, v0

    .line 337
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",localLastMsgId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",use local"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 336
    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 339
    if-eqz v9, :cond_e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    move-wide/from16 v20, v0

    iget-wide v0, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-gez v19, :cond_e

    .line 340
    iget-wide v0, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    goto/16 :goto_4

    .line 335
    .end local v12    # "localLastMsgId":J
    :cond_11
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    goto :goto_5

    .line 343
    :cond_12
    const-string/jumbo v19, "[CACHE] merge, lastMsg equals,just ignore"

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 347
    .end local v9    # "localLastMessage":Lcom/alibaba/wukong/im/Message;
    .end local v11    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_13
    const-string/jumbo v19, "[CACHE] merge, server lastMsg is null"

    invoke-virtual/range {v18 .. v19}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 355
    .restart local v16    # "ret":J
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_15

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 357
    .restart local v6    # "gapMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 358
    const-string/jumbo v19, "[CACHE] update conv err because mergeLastMsgWithFlag error "

    invoke-virtual/range {v18 .. v19}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11030
    invoke-static/range {v18 .. v18}, Lhzt;->a(Lhzv;)V

    .line 382
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 363
    .end local v6    # "gapMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_15
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 365
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Liar;->g(Ljava/lang/String;)V

    .line 366
    invoke-static {v5}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 367
    const/4 v15, 0x1

    .restart local v15    # "result":I
    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 223
    .line 5207
    :try_start_0
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5208
    sget-object v0, Liar;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 5218
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 225
    :goto_0
    :try_start_1
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 226
    sget-object v0, Liar;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ligb;->a(Ljava/lang/Integer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 228
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 5210
    :cond_0
    :try_start_2
    const-string/jumbo v0, "conversation"

    invoke-static {v0}, Liah;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5211
    if-eqz v0, :cond_1

    .line 5212
    const-string/jumbo v1, "[TAG] ConvCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] loadConf, size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liai;

    .line 5214
    sget-object v2, Liar;->g:Ljava/util/Map;

    iget-object v3, v0, Liai;->name:Ljava/lang/String;

    iget-object v0, v0, Liai;->value:Ljava/lang/String;

    invoke-static {v0}, Lieb;->f(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5218
    :catchall_0
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 228
    :catchall_1
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Z)I
    .locals 5
    .param p1, "containNotificationOff"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2740
    invoke-virtual {p0}, Liar;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2741
    const/4 v2, 0x0

    .line 2759
    :goto_0
    return v2

    .line 2743
    :cond_0
    :try_start_0
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2745
    const/4 v2, 0x0

    .line 2746
    .local v2, "count":I
    sget-object v3, Liar;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2747
    .local v1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz p1, :cond_1

    .line 2748
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2749
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    add-int/2addr v2, v4

    .line 2750
    goto :goto_1

    .line 2752
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2753
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2754
    iget v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v4

    goto :goto_2

    .line 2759
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_3
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v2    # "count":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # I

    .prologue
    .line 2539
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # J

    .prologue
    .line 2543
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 2547
    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .line 2548
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 457
    :goto_0
    return-object v0

    .line 412
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    :cond_1
    const-string/jumbo v5, "[TAG] ConvCache"

    const-string/jumbo v6, "[CACHE] bmerge, param convs null"

    .line 14022
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_2
    const/4 v4, 0x0

    .line 418
    .local v4, "trace":Lhzv;
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 419
    const-string/jumbo v5, "[TAG] ConvCache"

    .line 15014
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] bmerge, sz="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 422
    invoke-static {p1}, Liat;->a(Ljava/util/List;)I

    move-result v5

    if-nez v5, :cond_3

    .line 423
    const-string/jumbo v5, "[CACHE] bmerge err"

    invoke-virtual {v4, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 426
    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    .local v0, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v3, "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 430
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v6}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 431
    .local v2, "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v2, :cond_5

    .line 433
    invoke-static {v2, v1, v3}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V

    .line 435
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)V

    .line 437
    iget-object v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v6}, Liar;->g(Ljava/lang/String;)V

    .line 438
    invoke-static {v2}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 439
    invoke-static {v2}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 456
    .end local v0    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 457
    throw v5

    .line 441
    .restart local v0    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v2    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_5
    const/4 v6, 0x0

    :try_start_2
    iput v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 442
    invoke-static {v1}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 443
    invoke-static {v1}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 444
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 445
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_6
    invoke-static {v0}, Liat;->b(Ljava/util/List;)I

    .line 451
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    invoke-virtual {v5, v3}, Libs;->a(Ljava/util/Map;)Z

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Liau;->a(Ljava/util/ArrayList;)V

    .line 453
    invoke-direct {p0}, Liar;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 18
    .param p2, "typeMask"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-virtual/range {p0 .. p0}, Liar;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    const/4 v14, 0x0

    .line 873
    :goto_0
    return-object v14

    .line 801
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    :cond_1
    const-string/jumbo v1, "[TAG] ConvCache"

    const-string/jumbo v2, "[CACHE] bmerge get, param convs null"

    .line 36022
    const-string/jumbo v4, "im"

    invoke-static {v1, v2, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v14, 0x0

    goto :goto_0

    .line 806
    :cond_2
    const/4 v15, 0x0

    .line 808
    .local v15, "trace":Lhzv;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 809
    const-string/jumbo v1, "[TAG] ConvCache"

    .line 37014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v15

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[CACHE] bmerge get, sz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 812
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 813
    .local v9, "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v13, "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 815
    .local v3, "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v14, "rootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 817
    .local v6, "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 819
    .local v7, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v2, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v2}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v8

    .line 820
    .local v8, "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v8, :cond_3

    .line 822
    invoke-static {v8, v7, v6}, Liaw;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/Map;)V

    .line 824
    invoke-virtual {v8, v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 827
    move-object v7, v8

    iget-object v2, v8, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v2}, Liar;->g(Ljava/lang/String;)V

    .line 829
    invoke-static {v8}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 830
    invoke-static {v8}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 836
    :goto_2
    invoke-static {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 837
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 872
    .end local v3    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v6    # "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v7    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v8    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v9    # "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v13    # "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v14    # "rootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38030
    invoke-static {v15}, Lhzt;->a(Lhzv;)V

    .line 873
    throw v1

    .line 832
    .restart local v3    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v6    # "gapMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v7    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v8    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v9    # "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v13    # "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .restart local v14    # "rootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_3
    :try_start_1
    invoke-static {v7}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 833
    invoke-static {v7}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    goto :goto_2

    .line 839
    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v12, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 842
    .local v12, "parentId":Ljava/lang/String;
    iget-object v11, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 843
    .local v11, "newLast":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/Message;

    .line 844
    .local v10, "lastMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v11, :cond_6

    if-eqz v10, :cond_5

    invoke-interface {v11, v10}, Lcom/alibaba/wukong/im/Message;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_6

    .line 845
    :cond_5
    check-cast v11, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v11    # "newLast":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v9, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_6
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 849
    .local v16, "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v16, :cond_7

    .line 850
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v16    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    iget v2, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 851
    .restart local v16    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, v16

    invoke-interface {v13, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 853
    :cond_7
    iget v2, v7, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto/16 :goto_1

    .line 857
    .end local v7    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v8    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v10    # "lastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v12    # "parentId":Ljava/lang/String;
    .end local v16    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_8
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 859
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Liar;->b(Ljava/util/Map;Ljava/util/Map;)V

    .line 861
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->g()Ljava/util/concurrent/Executor;

    move-result-object v17

    new-instance v1, Liar$1;

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Liar$1;-><init>(Liar;Ljava/util/ArrayList;IILjava/util/Map;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[CACHE] root sz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", all sz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 869
    invoke-direct/range {p0 .. p0}, Liar;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37030
    invoke-static {v15}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final a(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2269
    invoke-virtual {p0}, Liar;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2270
    const/4 v2, 0x0

    .line 2286
    :goto_0
    return-object v2

    .line 2271
    :cond_0
    const/4 v1, 0x0

    .line 2273
    .local v1, "trace":Lhzv;
    :try_start_0
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2274
    const-string/jumbo v2, "[TAG] ConvCache"

    .line 50153
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 2276
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Liar;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2277
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] get convs sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 2280
    invoke-static {v0}, Liar;->h(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2285
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50154
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2282
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Liar;->h(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 2285
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50156
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2285
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50158
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 2286
    throw v2
.end method

.method public final a(J)Ljava/util/List;
    .locals 5
    .param p1, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3305
    invoke-virtual {p0}, Liar;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3306
    const/4 v2, 0x0

    .line 3318
    :goto_0
    return-object v2

    .line 3307
    :cond_0
    const/4 v1, 0x0

    .line 3309
    .local v1, "trace":Lhzv;
    :try_start_0
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3310
    const-string/jumbo v2, "[TAG] ConvCache"

    .line 50213
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 3312
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Liar;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3313
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] get convs by categoryId sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " categoryId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 3315
    invoke-static {p1, p2, v0}, Liar;->a(JLjava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3317
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50214
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 3317
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50216
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 3318
    throw v2
.end method

.method public final a(Ljava/util/List;Ljava/util/List;J)Ljava/util/List;
    .locals 11
    .param p3, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "failList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3236
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3237
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] updateCategoryId param invalid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50201
    const-string/jumbo v7, "im"

    invoke-static {v3, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    :cond_1
    :goto_0
    return-object v3

    .line 3240
    :cond_2
    invoke-virtual {p0}, Liar;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3244
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] updateCategoryId categoryId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " conv size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50203
    const-string/jumbo v7, "im"

    invoke-static {v3, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3247
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3248
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3251
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3255
    .end local v0    # "cid":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3256
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] updateCategoryId cids is empty "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50205
    const-string/jumbo v7, "im"

    invoke-static {v3, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3259
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3262
    .local v1, "cidArray":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3263
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3264
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "categoryId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3265
    const-string/jumbo v6, "top"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3266
    const-string/jumbo v6, "status"

    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->typeValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3267
    invoke-static {v1, v5}, Liat;->a([Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 3269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3271
    .local v3, "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3272
    .local v4, "updateConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3273
    .restart local v0    # "cid":Ljava/lang/String;
    invoke-direct {p0, v0}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 3274
    .local v2, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v2, :cond_6

    .line 3275
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3298
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "updateConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 3278
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "updateConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    iput-wide p3, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 3279
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 3280
    iget-object v7, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v7, v8, :cond_7

    .line 3281
    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v7, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 3282
    sget-object v7, Liar;->c:Ljava/util/Map;

    iget-object v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3283
    sget-object v7, Liar;->d:Ljava/util/Map;

    iget-object v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3284
    sget-object v7, Liar;->d:Ljava/util/Map;

    iget-object v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3287
    :cond_7
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3288
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] updateCategoryId cid :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 50207
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3290
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_8
    invoke-static {v4}, Liam;->c(Ljava/util/List;)V

    .line 3291
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3292
    const/4 v6, 0x0

    const-string/jumbo v7, "[CACHE] updateCategoryId local exist post event"

    .line 50209
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3298
    :goto_3
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 3294
    :cond_9
    const/4 v6, 0x0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] updateCategoryId conv local not exist "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50211
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public final a(JLcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;)V
    .locals 15
    .param p1, "entranceId"    # J
    .param p3, "object"    # Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    .prologue
    .line 3525
    if-nez p3, :cond_0

    .line 3573
    :goto_0
    return-void

    .line 3529
    :cond_0
    :try_start_0
    iget-object v12, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3530
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v12

    const/4 v14, 0x0

    move-wide/from16 v0, p1

    invoke-static {v12, v13, v0, v1, v14}, Liaw;->a(JJZ)Ljava/lang/String;

    move-result-object v2

    .line 3531
    .local v2, "cid":Ljava/lang/String;
    invoke-direct {p0, v2}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v5

    .line 3532
    .local v5, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v5, :cond_1

    .line 3533
    const-string/jumbo v12, "[TAG] ConvDB"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[Cache] updateEntranceConfiguration cid:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " error conversation not exist "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 50236
    const-string/jumbo v14, "im"

    invoke-static {v12, v13, v14}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3572
    iget-object v12, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 3540
    :cond_1
    :try_start_1
    iget-wide v8, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    .line 3541
    .local v8, "localVersion":J
    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J

    .line 3542
    .local v10, "serverVersion":J
    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 3543
    const-string/jumbo v12, "[TAG] ConvDB"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[Cache] updateEntranceConfiguration cid:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " version error,localVersion:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3544
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",serverVersion:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 50238
    const-string/jumbo v14, "im"

    invoke-static {v12, v13, v14}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3572
    iget-object v12, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 3546
    :cond_2
    cmp-long v12, v8, v10

    if-nez v12, :cond_3

    .line 3547
    :try_start_2
    iget-object v12, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v12, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3553
    :cond_3
    :try_start_3
    invoke-static/range {p3 .. p3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 3559
    .local v3, "configuration":Ljava/lang/String;
    :try_start_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3560
    .local v4, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v12, "configuration"

    invoke-virtual {v4, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    invoke-static {v2, v4}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 3562
    .local v7, "ret":I
    if-nez v7, :cond_4

    .line 3563
    const-string/jumbo v12, "[TAG] ConvDB"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[Cache] updateEntranceConfiguration db error cid:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 50242
    const-string/jumbo v14, "im"

    invoke-static {v12, v13, v14}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3572
    iget-object v12, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 3554
    .end local v3    # "configuration":Ljava/lang/String;
    .end local v4    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "ret":I
    :catch_0
    move-exception v6

    .line 3555
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3556
    const-string/jumbo v12, "[TAG] ConvDB"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[Cache] updateEntranceConfiguration cid:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " toJSONString error, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 50240
    const-string/jumbo v14, "im"

    invoke-static {v12, v13, v14}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3572
    iget-object v12, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 3567
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v3    # "configuration":Ljava/lang/String;
    .restart local v4    # "contentValues":Landroid/content/ContentValues;
    .restart local v7    # "ret":I
    :cond_4
    :try_start_6
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;

    iput-object v12, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    .line 3568
    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->expireTime:J

    iput-wide v12, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    .line 3569
    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J

    iput-wide v12, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    .line 3570
    invoke-static {v5}, Liau;->C(Lcom/alibaba/wukong/im/Conversation;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3572
    iget-object v12, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v2    # "cid":Ljava/lang/String;
    .end local v3    # "configuration":Ljava/lang/String;
    .end local v4    # "contentValues":Landroid/content/ContentValues;
    .end local v5    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v7    # "ret":I
    .end local v8    # "localVersion":J
    .end local v10    # "serverVersion":J
    :catchall_0
    move-exception v12

    iget-object v13, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v12
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/idl/im/models/SearchableModel;)V
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "co"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "searchableModel"    # Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3124
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->groupId()J

    move-result-wide v4

    .line 3125
    .local v4, "oldGroupId":J
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->groupIdSearchable()Z

    move-result v6

    .line 3126
    .local v6, "oldGroupIdSearchable":Z
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->titleSearchable()Z

    move-result v7

    .line 3127
    .local v7, "oldTitleSearchable":Z
    const-wide/16 v0, 0x0

    .line 3128
    .local v0, "newGroupId":J
    const/4 v2, 0x0

    .line 3129
    .local v2, "newGroupIdSearchable":Z
    const/4 v3, 0x0

    .line 3130
    .local v3, "newTitleSearchable":Z
    if-eqz p3, :cond_0

    .line 3131
    iget-object v10, p3, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->groupId:Ljava/lang/Long;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 3132
    iget-object v10, p3, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->groupIdSearchable:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    if-ne v10, v8, :cond_4

    move v2, v8

    .line 3133
    :goto_0
    iget-object v10, p3, Lcom/alibaba/wukong/idl/im/models/SearchableModel;->titleSearchable:Ljava/lang/Integer;

    invoke-static {v10}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v3, v8

    .line 3135
    :cond_0
    :goto_1
    cmp-long v8, v4, v0

    if-eqz v8, :cond_1

    .line 3136
    invoke-virtual {p0, p1, v0, v1}, Liar;->d(Ljava/lang/String;J)Z

    .line 3138
    :cond_1
    if-ne v6, v2, :cond_2

    if-eq v7, v3, :cond_3

    .line 3139
    :cond_2
    invoke-virtual {p0, p1, v3, v2}, Liar;->a(Ljava/lang/String;ZZ)Z

    .line 3141
    :cond_3
    return-void

    :cond_4
    move v2, v9

    .line 3132
    goto :goto_0

    :cond_5
    move v3, v9

    .line 3133
    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1434
    .local p1, "lastMsgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1441
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1443
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .local v4, "updateCoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v0, "addCoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1446
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1447
    .local v1, "cid":Ljava/lang/String;
    invoke-direct {p0, v1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 1448
    .local v2, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v2, :cond_2

    .line 1450
    invoke-static {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1451
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v1, v5, v7, v8}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1454
    invoke-static {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1455
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1466
    .end local v0    # "addCoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v1    # "cid":Ljava/lang/String;
    .end local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v4    # "updateCoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 1459
    .restart local v0    # "addCoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v4    # "updateCoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1460
    invoke-static {v0}, Liau;->a(Ljava/util/ArrayList;)V

    .line 1462
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1463
    invoke-static {v4}, Liau;->e(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
    :cond_6
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 93
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    iget-boolean v4, p0, Liar;->e:Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v3

    .line 97
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v2, "outdated":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iget-object v4, p0, Liar;->h:Liat;

    invoke-virtual {v4, v2}, Liat;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    sget-object v4, Liar;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 100
    sget-object v4, Liar;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 102
    const-string/jumbo v4, "[TAG] ConvCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] loadConv from db, size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4018
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 104
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v0}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 128
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v2    # "outdated":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catch_0
    move-exception v3

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v3, 0x0

    goto :goto_0

    .line 107
    .restart local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v2    # "outdated":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_1
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Liar;->e:Z

    .line 108
    invoke-direct {p0, v1}, Liar;->g(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v2    # "outdated":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(JJ)Z
    .locals 11
    .param p1, "srcCategoryId"    # J
    .param p3, "targetCategoryId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    .line 463
    invoke-virtual {p0}, Liar;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 500
    :goto_0
    return v4

    .line 465
    :cond_0
    cmp-long v6, p1, v8

    if-nez v6, :cond_1

    .line 466
    const-string/jumbo v4, "[TAG] ConvCache"

    const-string/jumbo v6, "[CACHE] bulkUpdateCategoryId, param category equal"

    .line 18022
    const-string/jumbo v7, "im"

    invoke-static {v4, v6, v7}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 467
    goto :goto_0

    .line 469
    :cond_1
    const/4 v3, 0x0

    .line 471
    .local v3, "trace":Lhzv;
    :try_start_0
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 472
    const-string/jumbo v6, "[TAG] ConvCache"

    .line 19014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] bulkUpdateCategoryId, src="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " target=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lhzv;->a(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, p1, p2}, Liar;->a(J)Ljava/util/List;

    move-result-object v2

    .line 476
    .local v2, "srcConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    :cond_2
    const-string/jumbo v4, "[CACHE] local is empty"

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    move v4, v5

    .line 500
    goto :goto_0

    .line 480
    :cond_3
    const-wide/16 v6, 0x0

    :try_start_1
    invoke-static {p1, p2, v6, v7}, Liat;->a(JJ)I

    move-result v6

    if-nez v6, :cond_4

    .line 481
    const-string/jumbo v5, "[CACHE] bulkUpdateCategoryId err"

    invoke-virtual {v3, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 485
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 487
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 488
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v6}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 489
    .local v1, "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_5

    .line 491
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v6}, Liar;->g(Ljava/lang/String;)V

    .line 492
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 493
    invoke-static {v1}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 499
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "srcConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 500
    throw v4

    .line 496
    .restart local v2    # "srcConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_6
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Liam;->c(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    move v4, v5

    .line 500
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "memberCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1408
    if-gtz p2, :cond_0

    .line 1429
    :goto_0
    return v2

    .line 1410
    :cond_0
    const/4 v1, 0x0

    .line 1412
    .local v1, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v4, "[TAG] ConvCache"

    .line 50014
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 1413
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] updateMemCnt cid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1414
    const-string/jumbo v4, "memberCount"

    invoke-virtual {p0, p1, v4, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1415
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 50015
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1417
    :cond_1
    :try_start_1
    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p2, :cond_2

    .line 50017
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    move v2, v3

    .line 1429
    goto :goto_0

    .line 1419
    :cond_2
    :try_start_2
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 1420
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1421
    invoke-static {v0}, Liau;->q(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1424
    :cond_3
    invoke-static {p1}, Liat;->d(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 1425
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50019
    :cond_4
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    move v2, v3

    .line 1429
    goto :goto_0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v2

    .line 50021
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1429
    throw v2
.end method

.method public final a(Ljava/lang/String;ILjava/util/List;)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2684
    .local p3, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2685
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v1, v2, :cond_1

    .line 2686
    :cond_0
    invoke-static {v0, p2, p3}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V

    .line 2688
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "newEntranceId"    # J

    .prologue
    const/4 v6, 0x0

    .line 574
    invoke-virtual {p0}, Liar;->a()Z

    move-result v7

    if-nez v7, :cond_0

    .line 613
    :goto_0
    return v6

    .line 577
    :cond_0
    :try_start_0
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 578
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 579
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v1, :cond_1

    .line 580
    const-string/jumbo v7, "[TAG] ConvCache updateEntranceId"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[TAG] ConvCache updateEntranceId cid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 27022
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 583
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceId()J

    move-result-wide v8

    cmp-long v7, v8, p2

    if-nez v7, :cond_2

    .line 584
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[TAG] ConvCache updateEntranceId cid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", entranceId is same,id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 28018
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 588
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "oldEntranceCid":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 590
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "entranceId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    invoke-static {p1, v5}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    .line 592
    .local v4, "ret":I
    if-nez v4, :cond_3

    .line 593
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[TAG] ConvCache updateEntranceId cid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", db update error newEntranceId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29018
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 597
    :cond_3
    :try_start_3
    iput-wide p2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    .line 599
    invoke-static {v1}, Liau;->B(Lcom/alibaba/wukong/im/Conversation;)V

    .line 601
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "newEntranceCid":Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 603
    .local v0, "changedEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 604
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 607
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    invoke-direct {p0, v0}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 613
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 611
    .end local v0    # "changedEntranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "newEntranceCid":Ljava/lang/String;
    .end local v3    # "oldEntranceCid":Ljava/lang/String;
    .end local v4    # "ret":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1359
    if-nez p2, :cond_1

    .line 1360
    const-string/jumbo v2, "[TAG] ConvCache"

    const-string/jumbo v3, "[CACHE] update status, param status null"

    .line 49022
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    :goto_0
    return v1

    .line 1363
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1366
    :try_start_0
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1367
    const-string/jumbo v3, "status"

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->typeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Liar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1368
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_2

    .line 1398
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1370
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-ne v1, p2, :cond_3

    .line 1398
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v2

    goto :goto_0

    .line 1373
    :cond_3
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1374
    iput-object p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1375
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isHide(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isOffline(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1376
    :cond_4
    sget-object v1, Liar;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    sget-object v1, Liar;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    invoke-static {v0}, Liau;->b(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1380
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v3, v4}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)V

    .line 1381
    invoke-direct {p0, v0}, Liar;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1398
    :cond_5
    :goto_1
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v2

    goto :goto_0

    .line 1382
    :cond_6
    :try_start_3
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1383
    invoke-static {v0}, Liau;->e(Lcom/alibaba/wukong/im/Conversation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1398
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 1386
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_7
    :try_start_4
    iput-object p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1387
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1388
    sget-object v1, Liar;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    sget-object v1, Liar;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    invoke-static {v0}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1392
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v3, v4}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)V

    .line 1393
    invoke-direct {p0, v0}, Liar;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3069
    if-nez p1, :cond_1

    .line 3082
    :cond_0
    :goto_0
    return v1

    .line 3072
    :cond_1
    if-eqz p2, :cond_0

    .line 3075
    iget-object v4, p0, Liar;->h:Liat;

    invoke-virtual {v4, p1}, Liat;->c(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 3076
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_0

    .line 3077
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3078
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 3081
    invoke-static {p1, p2}, Liat;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    .line 3082
    .local v2, "result":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "cacheMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1727
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1728
    const-string/jumbo v9, "[TAG] ConvCache"

    const-string/jumbo v10, "[CACHE] update lastMsg local extras conv null"

    .line 50078
    const-string/jumbo v11, "im"

    invoke-static {v9, v10, v11}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const/4 v9, 0x0

    .line 1800
    :goto_0
    return v9

    .line 1732
    :cond_0
    invoke-virtual {p0}, Liar;->a()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1733
    const/4 v9, 0x0

    goto :goto_0

    .line 1735
    :cond_1
    const/4 v7, 0x0

    .line 1737
    .local v7, "trace":Lhzv;
    :try_start_0
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1738
    const-string/jumbo v9, "[TAG] ConvCache"

    .line 50080
    const-string/jumbo v10, "im"

    invoke-static {v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 1739
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] update lastMsg local extras, cid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhzv;->a(Ljava/lang/String;)V

    .line 1741
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1742
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v1, :cond_2

    .line 1743
    const-string/jumbo v9, "[CACHE] conv null"

    invoke-virtual {v7, v9}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50081
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1797
    const/4 v9, 0x0

    goto :goto_0

    .line 1746
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1747
    .local v4, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v4, :cond_3

    .line 1748
    const-string/jumbo v9, "[CACHE] last msg null"

    invoke-virtual {v7, v9}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1796
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50083
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1797
    const/4 v9, 0x0

    goto :goto_0

    .line 1752
    :cond_3
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1753
    .local v8, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_4

    .line 1754
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v9

    sget-object v10, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v9, v10, :cond_4

    .line 1755
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1756
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1757
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/alibaba/wukong/im/message/MessageImpl;->setEncryptStatus(I)V

    .line 1758
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ConversationCache updateLastMessageLocalExtras CurrentMessage="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", cache message="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhzv;->a(Ljava/lang/String;)V

    .line 1760
    const-string/jumbo v9, "content"

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    instance-of v9, v9, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v9, :cond_4

    .line 1762
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 1763
    .local v6, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    instance-of v9, v9, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v9, :cond_4

    .line 1765
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 1766
    .local v0, "cacheTextContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->setText(Ljava/lang/String;)V

    .line 1767
    invoke-static {v1}, Liau;->f(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1773
    .end local v0    # "cacheTextContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .end local v6    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_4
    invoke-static {v4}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v3

    .line 50085
    .local v3, "json":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 50086
    const-string/jumbo v9, "local_extras"

    invoke-static {p3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1775
    :cond_5
    const-string/jumbo v9, "ext"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v9, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-static {v9, v10, v11, v8}, Liat;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v5

    .line 1777
    .local v5, "ret":I
    if-nez v5, :cond_6

    .line 1778
    const-string/jumbo v9, "[CACHE] update lastMsg fail"

    invoke-virtual {v7, v9}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1796
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50089
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1797
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 50091
    :cond_6
    if-eqz v4, :cond_7

    .line 50092
    :try_start_3
    invoke-static {p3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iput-object v9, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1786
    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1787
    invoke-static {v4}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1790
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] update extras succ "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", json:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1796
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50095
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1797
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1792
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v5    # "ret":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 1793
    .local v2, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] update lastMsg err:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhzv;->b(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1796
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50097
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1800
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1796
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50099
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1797
    throw v9
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1471
    invoke-virtual {p0}, Liar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    const/4 v0, 0x0

    .line 1477
    :goto_0
    return v0

    .line 1474
    :cond_0
    :try_start_0
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1475
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1477
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "newTitle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1879
    const-string/jumbo v2, "title"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1880
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 1881
    const/4 v1, 0x0

    .line 1888
    :cond_0
    :goto_0
    return v1

    .line 1882
    :cond_1
    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1885
    iput-object p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 1886
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1887
    invoke-static {v0}, Liau;->c(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    const/4 v2, 0x0

    .line 2910
    invoke-virtual {p0}, Liar;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2925
    :goto_0
    return v2

    .line 2913
    :cond_0
    :try_start_0
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2914
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2915
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2925
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2918
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Liat;->a(Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2919
    .local v1, "ret":I
    if-gtz v1, :cond_2

    .line 2925
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2922
    :cond_2
    :try_start_2
    iput-object p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2925
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2658
    const-string/jumbo v2, "ext"

    invoke-static {p2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2659
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2660
    const/4 v1, 0x0

    .line 2667
    :cond_0
    :goto_0
    return v1

    .line 2661
    :cond_1
    if-nez p2, :cond_2

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2664
    :cond_3
    invoke-static {p2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2665
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_0

    .line 2666
    :cond_4
    invoke-static {v0}, Liau;->k(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1926
    const-string/jumbo v4, "isNotification"

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v4, v1}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1927
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_2

    move v2, v3

    .line 1937
    :cond_0
    :goto_1
    return v2

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_1
    move v1, v3

    .line 1926
    goto :goto_0

    .line 1929
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_2
    iget-boolean v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    if-eq v1, p2, :cond_0

    .line 1932
    iput-boolean p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    .line 1933
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    invoke-static {v0}, Liau;->n(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1935
    invoke-direct {p0, v0}, Liar;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;ZZ)Z
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "titleSearchable"    # Z
    .param p3, "groupIdSearchable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3158
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3184
    :goto_0
    return v3

    .line 3161
    :cond_0
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3163
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3164
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 3182
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 3168
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3169
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "titleSearchable"

    if-eqz p2, :cond_2

    move v5, v4

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3170
    const-string/jumbo v6, "groupIdSearchable"

    if-eqz p3, :cond_3

    move v5, v4

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3171
    invoke-static {p1, v2}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 3172
    .local v1, "ret":I
    if-nez v1, :cond_4

    .line 3182
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "ret":I
    :cond_2
    move v5, v3

    .line 3169
    goto :goto_1

    :cond_3
    move v5, v3

    .line 3170
    goto :goto_2

    .line 3176
    .restart local v1    # "ret":I
    :cond_4
    :try_start_2
    iput-boolean p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    .line 3177
    iput-boolean p3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    .line 3178
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3179
    invoke-static {v0}, Liau;->z(Lcom/alibaba/wukong/im/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3182
    :cond_5
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v3, v4

    .line 3184
    goto :goto_0

    .line 3182
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "ret":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Ljava/util/List;J)Z
    .locals 22
    .param p2, "newEntranceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Liar;->a()Z

    move-result v17

    if-nez v17, :cond_0

    .line 620
    const/16 v17, 0x0

    .line 688
    :goto_0
    return v17

    .line 621
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 622
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 625
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    const/4 v13, 0x0

    .line 628
    .local v13, "logJson":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 632
    :goto_1
    :try_start_2
    const-string/jumbo v17, "[TAG] ConvCache"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "[CACHE] updateCidListEntranceId, param cidList:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",newEntranceId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 29022
    const-string/jumbo v19, "im"

    invoke-static/range {v17 .. v19}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v4, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 635
    .local v4, "changedEntranceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 636
    .local v11, "entranceIdChangedConvList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 637
    .local v10, "entranceIdChangedCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 638
    .local v5, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 639
    .local v7, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v7, :cond_4

    .line 640
    const-string/jumbo v18, "[TAG] ConvCache updateEntranceId"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[TAG] ConvCache updateEntranceId cid:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 30022
    const-string/jumbo v20, "im"

    invoke-static/range {v18 .. v20}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 688
    .end local v4    # "changedEntranceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "cid":Ljava/lang/String;
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v10    # "entranceIdChangedCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "entranceIdChangedConvList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v13    # "logJson":Ljava/lang/String;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v17

    .line 629
    .restart local v13    # "logJson":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 630
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 643
    .end local v12    # "ex":Ljava/lang/Exception;
    .restart local v4    # "changedEntranceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "cid":Ljava/lang/String;
    .restart local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v10    # "entranceIdChangedCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "entranceIdChangedConvList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_4
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceId()J

    move-result-wide v18

    cmp-long v18, v18, p2

    if-nez v18, :cond_5

    .line 644
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "[TAG] ConvCache updateEntranceId cid:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", entranceId is same,id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 31018
    const-string/jumbo v20, "im"

    invoke-static/range {v18 .. v20}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 647
    :cond_5
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v15

    .line 650
    .local v15, "oldEntranceCid":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 651
    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 655
    .end local v5    # "cid":Ljava/lang/String;
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v15    # "oldEntranceCid":Ljava/lang/String;
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 656
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 657
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v17, "entranceId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 658
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 659
    .local v6, "cidArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Liat;->a([Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    .line 660
    .local v9, "count":I
    if-gtz v9, :cond_7

    .line 661
    const-string/jumbo v17, "[TAG] ConvCache"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "[CACHE] updateCidListEntranceId, update db fail,count:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 31022
    const-string/jumbo v19, "im"

    invoke-static/range {v17 .. v19}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 666
    .end local v6    # "cidArray":[Ljava/lang/String;
    .end local v9    # "count":I
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_4
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    .line 667
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 668
    .local v8, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v8, :cond_8

    .line 669
    move-wide/from16 v0, p2

    iput-wide v0, v8, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    .line 670
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v14

    .line 671
    .local v14, "newEntranceCid":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 672
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 679
    .end local v8    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v14    # "newEntranceCid":Ljava/lang/String;
    :cond_9
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 680
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v17 .. v17}, Liau;->a(Ljava/util/List;)V

    .line 683
    :cond_a
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    .line 684
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 688
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2008
    .local p1, "from":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2009
    invoke-direct {p0, p2}, Liar;->b(Ljava/util/Map;)Z

    move-result v5

    .line 2030
    :goto_0
    return v5

    .line 2011
    :cond_0
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2012
    const/4 v5, 0x0

    goto :goto_0

    .line 2014
    :cond_1
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2015
    if-nez p2, :cond_2

    .line 2016
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .end local p2    # "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v4, "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object p2, v4

    .line 2018
    .end local v4    # "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p2    # "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2019
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2020
    .local v0, "cid":Ljava/lang/String;
    invoke-direct {p0, v0}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2021
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_3

    .line 2023
    iget v7, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v3, v7, v5

    .line 2024
    .local v3, "newUnreadCount":I
    if-gez v3, :cond_4

    .line 2025
    const/4 v3, 0x0

    .line 2026
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2030
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "newUnreadCount":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 2028
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Liar;->b(Ljava/util/Map;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 2030
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final varargs a([Ljava/lang/String;)Z
    .locals 14
    .param p1, "cids"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1246
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 1247
    :cond_0
    const/4 v9, 0x0

    .line 1304
    :goto_0
    return v9

    .line 1250
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1251
    const/4 v9, 0x0

    goto :goto_0

    .line 1252
    :cond_2
    const/4 v7, 0x0

    .line 1254
    .local v7, "trace":Lhzv;
    :try_start_0
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1255
    const-string/jumbo v9, "[TAG] ConvCache"

    .line 46014
    const-string/jumbo v10, "im"

    invoke-static {v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 1256
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] hide conv, sz="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhzv;->a(Ljava/lang/String;)V

    .line 1257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .local v3, "hidedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1260
    .local v2, "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v10, p1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_8

    aget-object v0, p1, v9

    .line 1261
    .local v0, "cid":Ljava/lang/String;
    invoke-direct {p0, v0}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1262
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v1, :cond_3

    .line 1263
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[CACHE] param conv null, cid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lhzv;->b(Ljava/lang/String;)V

    .line 1260
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1267
    :cond_3
    iget-object v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1268
    .local v6, "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v11, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v6, v11, :cond_6

    .line 1269
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1270
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "status"

    sget-object v12, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v12}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->typeValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    invoke-static {v0, v8}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 1272
    .local v5, "ret":I
    if-nez v5, :cond_4

    .line 1273
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[CACHE] update conv status err "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1303
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "hidedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v5    # "ret":I
    .end local v6    # "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 47030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1304
    throw v9

    .line 1276
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v2    # "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "hidedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v5    # "ret":I
    .restart local v6    # "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    sget-object v11, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v11, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1277
    sget-object v11, Liar;->c:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v11, Liar;->d:Ljava/util/Map;

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct {p0, v1, v11, v12, v13}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)V

    .line 1281
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceId()J

    move-result-wide v12

    invoke-static {v12, v13}, Libb;->a(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1282
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v5    # "ret":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_5
    :goto_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1284
    :cond_6
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1285
    iget-object v11, p0, Liar;->h:Liat;

    invoke-virtual {v11, v0}, Liat;->a(Ljava/lang/String;)I

    move-result v5

    .line 1286
    .restart local v5    # "ret":I
    if-gez v5, :cond_7

    .line 1287
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[CACHE] del conv err "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lhzv;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1290
    :cond_7
    sget-object v11, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v11, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1292
    invoke-static {v0}, Liar;->g(Ljava/lang/String;)V

    goto :goto_3

    .line 1296
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v5    # "ret":I
    .end local v6    # "status":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :cond_8
    invoke-static {v4}, Liau;->c(Ljava/util/ArrayList;)V

    .line 1297
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_9

    .line 1298
    invoke-static {v3}, Liau;->d(Ljava/util/ArrayList;)V

    .line 1300
    :cond_9
    invoke-direct {p0, v2}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1304
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public final a([Ljava/lang/String;J)Z
    .locals 8
    .param p1, "cids"    # [Ljava/lang/String;
    .param p2, "ownerId"    # J

    .prologue
    const/4 v4, 0x0

    .line 2956
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gtz v5, :cond_1

    .line 2986
    :cond_0
    :goto_0
    return v4

    .line 2959
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2962
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2963
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2964
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "ownerId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2965
    invoke-static {p1, v3}, Liat;->a([Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2966
    .local v2, "ret":I
    if-gtz v2, :cond_2

    .line 2986
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2969
    :cond_2
    :try_start_1
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, p1, v4

    .line 2970
    .local v0, "cid":Ljava/lang/String;
    invoke-direct {p0, v0}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2971
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_4

    .line 2973
    iget-wide v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    cmp-long v6, v6, p2

    if-eqz v6, :cond_4

    .line 2974
    iput-wide p2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    .line 2976
    invoke-static {v0}, Liat;->d(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 2977
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    .line 2979
    :cond_3
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2980
    invoke-static {v1}, Liau;->A(Lcom/alibaba/wukong/im/Conversation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2969
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2986
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_5
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .end local v2    # "ret":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    const/4 v8, 0x0

    .line 506
    invoke-virtual {p0}, Liar;->a()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v6, v8

    .line 545
    :goto_0
    return-object v6

    .line 508
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 509
    :cond_1
    const-string/jumbo v9, "[TAG] ConvCache"

    const-string/jumbo v10, "[CACHE] bmerge getChildren, param convs null"

    .line 23022
    const-string/jumbo v11, "im"

    invoke-static {v9, v10, v11}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 510
    goto :goto_0

    .line 512
    :cond_2
    const/4 v7, 0x0

    .line 514
    .local v7, "trace":Lhzv;
    :try_start_0
    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 515
    const-string/jumbo v9, "[TAG] ConvCache"

    .line 24014
    const-string/jumbo v10, "im"

    invoke-static {v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 516
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] bmerge getChildren, sz="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhzv;->a(Ljava/lang/String;)V

    .line 518
    const/4 v5, 0x0

    .line 519
    .local v5, "parentUnread":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    .local v6, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 521
    .local v2, "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 24388
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v9, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v9}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v9

    .line 24389
    if-eqz v9, :cond_5

    .line 24391
    invoke-virtual {v9, v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyRemoteAttributes(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 24393
    iget-object v11, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v11}, Liar;->g(Ljava/lang/String;)V

    .line 24395
    invoke-static {v9}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    move-object v1, v9

    .line 523
    :goto_2
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 524
    iget v9, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    add-int/2addr v5, v9

    .line 525
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 528
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 544
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "parentUnread":I
    .end local v6    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v8

    iget-object v9, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 545
    throw v8

    .line 24398
    .restart local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v2    # "entranceCidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "parentUnread":I
    .restart local v6    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_5
    :try_start_1
    invoke-static {v1}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    goto :goto_2

    .line 532
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v6, v9, v10, v11}, Liar;->a(Ljava/util/List;IILjava/util/Map;)V

    .line 534
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 535
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 536
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_8

    move-object v4, v8

    .line 537
    .local v4, "parentId":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v4}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 538
    .local v3, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-direct {p0, v3, v5}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z

    .line 540
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v4    # "parentId":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] children sz="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, v2}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    iget-object v8, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 536
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_8
    :try_start_2
    iget-object v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public final b(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2297
    invoke-virtual {p0}, Liar;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2298
    const/4 v2, 0x0

    .line 2314
    :goto_0
    return-object v2

    .line 2299
    :cond_0
    const/4 v1, 0x0

    .line 2301
    .local v1, "trace":Lhzv;
    :try_start_0
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2302
    const-string/jumbo v2, "[TAG] ConvCache impl"

    .line 50160
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 2304
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Liar;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2305
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2306
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[CACHE] get convs impl sz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 2308
    invoke-static {v0}, Liar;->i(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2313
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50161
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2310
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Liar;->i(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 2313
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50163
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2313
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50165
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 2314
    throw v2
.end method

.method public final b(J)Ljava/util/List;
    .locals 7
    .param p1, "entranceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3480
    invoke-virtual {p0}, Liar;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3499
    :cond_0
    :goto_0
    return-object v1

    .line 3483
    :cond_1
    invoke-static {p1, p2}, Libb;->a(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3486
    const/4 v3, 0x0

    .line 3488
    .local v3, "trace":Lhzv;
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3489
    const-string/jumbo v4, "[TAG] ConvCache"

    .line 50231
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 3490
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Liar;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3491
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3492
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3493
    .local v0, "beforeFilterSize":I
    invoke-static {v2, p1, p2}, Liar;->b(Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    .line 3494
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] get convs by secondary conversations before filter size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after filter sz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    .line 3495
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3494
    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3498
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50232
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 3495
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 3498
    .end local v0    # "beforeFilterSize":I
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50234
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 3499
    throw v4
.end method

.method public final varargs b([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "cids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1315
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-object v1

    .line 1319
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1321
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1323
    .local v1, "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1324
    array-length v6, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v0, p1, v5

    .line 1325
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1328
    invoke-direct {p0, v0}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 1329
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isInvalid(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1330
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1333
    .end local v0    # "cid":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1334
    const-string/jumbo v5, "[TAG] ConvCache"

    const-string/jumbo v6, "[Cache] getInvalidOrAbsentCidList result is empty"

    .line 48018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    :goto_2
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1336
    :cond_5
    const/4 v4, 0x0

    .line 1338
    .local v4, "logJson":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1342
    :goto_3
    :try_start_2
    const-string/jumbo v5, "[TAG] ConvCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[Cache] getInvalidOrAbsentCidList result cids: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1345
    .end local v4    # "logJson":Ljava/lang/String;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 1339
    .restart local v4    # "logJson":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1340
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public final b()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2830
    invoke-virtual {p0}, Liar;->a()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2859
    :goto_0
    return v6

    .line 2833
    :cond_0
    :try_start_0
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2835
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2836
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "unreadCount"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2837
    invoke-static {v4}, Liat;->a(Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2838
    .local v3, "ret":I
    if-nez v3, :cond_1

    .line 2859
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v6, v7

    goto :goto_0

    .line 2842
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2843
    .local v1, "convList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    sget-object v6, Liar;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 2844
    .local v5, "visibleConvs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2845
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_2

    iget v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    if-eqz v8, :cond_2

    .line 2846
    const/4 v8, 0x0

    iput v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 2847
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2859
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "convList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v3    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "visibleConvs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 2850
    .restart local v1    # "convList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v3    # "ret":I
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v5    # "visibleConvs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_3
    :try_start_2
    invoke-static {v1}, Liau;->f(Ljava/util/ArrayList;)V

    .line 2851
    sget-object v6, Liar;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 2852
    .local v2, "hideConvs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2853
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_4

    iget v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    if-eqz v8, :cond_4

    .line 2854
    const/4 v8, 0x0

    iput v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2859
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_5
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v6, v7

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v2

    .line 1219
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1222
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1224
    iget-object v4, p0, Liar;->h:Liat;

    invoke-virtual {v4, p1}, Liat;->a(Ljava/lang/String;)I

    move-result v1

    .line 1225
    .local v1, "ret":I
    if-gez v1, :cond_2

    .line 1226
    const-string/jumbo v3, "[TAG] ConvCache"

    const-string/jumbo v4, "[CACHE] del conv err"

    .line 45022
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1229
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1230
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_3

    .line 1231
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1233
    invoke-static {p1}, Liar;->g(Ljava/lang/String;)V

    .line 1234
    invoke-static {v0}, Liau;->b(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1236
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v0, v2, v4, v5}, Liar;->b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)V

    .line 1237
    invoke-direct {p0, v0}, Liar;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    :cond_3
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v3

    goto :goto_0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final b(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "delta"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2170
    if-nez p2, :cond_0

    .line 2190
    :goto_0
    return v2

    .line 2173
    :cond_0
    invoke-virtual {p0}, Liar;->a()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 2174
    goto :goto_0

    .line 2176
    :cond_1
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2177
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2179
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-direct {p0, v0, p2}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2180
    const-string/jumbo v3, "[TAG] ConvCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] incr unread "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50149
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2182
    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-direct {p0, v3}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2183
    .local v1, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-direct {p0, v1, p2}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z

    .line 2185
    .end local v1    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_2
    invoke-direct {p0, v0}, Liar;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v3

    goto :goto_0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final b(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "tag"    # J

    .prologue
    const/4 v1, 0x1

    .line 2639
    const-string/jumbo v2, "tag"

    invoke-virtual {p0, p1, v2, p2, p3}, Liar;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2640
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2641
    const/4 v1, 0x0

    .line 2648
    :cond_0
    :goto_0
    return v1

    .line 2642
    :cond_1
    iget-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 2645
    iput-wide p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    .line 2646
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_0

    .line 2647
    :cond_2
    invoke-static {v0}, Liau;->j(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "cacheMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1806
    .local p3, "privateExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1807
    const-string/jumbo v6, "[TAG] ConvCache"

    const-string/jumbo v7, "[CACHE] update lastMsg private extension conv null"

    .line 50101
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const/4 v6, 0x0

    .line 1869
    :goto_0
    return v6

    .line 1811
    :cond_0
    invoke-virtual {p0}, Liar;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1812
    const/4 v6, 0x0

    goto :goto_0

    .line 1815
    :cond_1
    const/4 v4, 0x0

    .line 1817
    .local v4, "trace":Lhzv;
    :try_start_0
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1818
    const-string/jumbo v6, "[TAG] ConvCache"

    .line 50103
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 1819
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] update lastMsg private extension, cid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V

    .line 1821
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1822
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_2

    .line 1823
    const-string/jumbo v6, "[CACHE] conv null"

    invoke-virtual {v4, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50104
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1866
    const/4 v6, 0x0

    goto :goto_0

    .line 1826
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1827
    .local v2, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v2, :cond_3

    .line 1828
    const-string/jumbo v6, "[CACHE] last msg null"

    invoke-virtual {v4, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1865
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50106
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1866
    const/4 v6, 0x0

    goto :goto_0

    .line 1832
    :cond_3
    if-eqz p2, :cond_4

    .line 1833
    :try_start_2
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v6, v7, :cond_4

    .line 1834
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1835
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1836
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->setEncryptStatus(I)V

    .line 1837
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ConversationCache updateLastMessagePrivateExtension CurrentMessage="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", cache message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1838
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1837
    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V

    .line 1842
    :cond_4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1843
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "memberExtension"

    invoke-static {p3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-static {v6, v8, v9, v5}, Liat;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v3

    .line 1845
    .local v3, "ret":I
    if-nez v3, :cond_5

    .line 1846
    const-string/jumbo v6, "[CACHE] update lastMsg fail"

    invoke-virtual {v4, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1865
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50108
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1866
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 50110
    :cond_5
    if-eqz v2, :cond_6

    .line 50111
    :try_start_3
    invoke-static {p3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1854
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1855
    invoke-static {v2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1858
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] update extras succ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", privateExtension:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1859
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1858
    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1865
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50114
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1866
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1861
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v3    # "ret":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1862
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] update lastMsg err:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lhzv;->b(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1865
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50116
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1869
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1865
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50118
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 1866
    throw v6
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1482
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ZZ)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1907
    const-string/jumbo v2, "icon"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1908
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 1909
    const/4 v1, 0x0

    .line 1916
    :cond_0
    :goto_0
    return v1

    .line 1910
    :cond_1
    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1913
    iput-object p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 1914
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1915
    invoke-static {v0}, Liau;->d(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2671
    const-string/jumbo v2, "memberExt"

    invoke-static {p2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2672
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2673
    const/4 v1, 0x0

    .line 2680
    :cond_0
    :goto_0
    return v1

    .line 2674
    :cond_1
    if-nez p2, :cond_2

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2677
    :cond_3
    invoke-static {p2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2678
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_0

    .line 2679
    :cond_4
    invoke-static {v0}, Liau;->x(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isBanWords"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3004
    const-string/jumbo v4, "banWordsType"

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v4, v1}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 3005
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_2

    move v2, v3

    .line 3013
    :cond_0
    :goto_1
    return v2

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_1
    move v1, v3

    .line 3004
    goto :goto_0

    .line 3007
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_2
    iget-boolean v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    if-eq v1, p2, :cond_0

    .line 3010
    iput-boolean p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    .line 3011
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3012
    invoke-static {v0}, Liau;->u(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_1
.end method

.method public final c(I)Ljava/util/List;
    .locals 8
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x2

    .line 2324
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2325
    const/4 v2, 0x0

    .line 2354
    :goto_0
    return-object v2

    .line 2326
    :cond_0
    const/4 v4, 0x0

    .line 2328
    .local v4, "trace":Lhzv;
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2329
    const-string/jumbo v5, "[TAG] ConvCache"

    .line 50167
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 2331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    .local v2, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    sget-object v5, Liar;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2334
    .local v1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2335
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v6, v7, :cond_1

    .line 2336
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2337
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2353
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v2    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50172
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 2354
    throw v5

    .line 2339
    .restart local v1    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v2    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    :try_start_1
    sget-object v5, Liar;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 2340
    .local v3, "hides":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2341
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    if-ne v6, v7, :cond_3

    .line 2342
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2343
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2345
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] get gp convs sz="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 2346
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2347
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lt p1, v5, :cond_5

    .line 2353
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50168
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 2350
    :cond_5
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v2, v5, p1}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2353
    .end local v2    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50170
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-object v2

    .line 2363
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2365
    const/4 v3, 0x0

    .line 2367
    .local v3, "trace":Lhzv;
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2368
    const-string/jumbo v4, "[TAG] ConvCache"

    .line 50174
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 2370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2371
    .local v2, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    sget-object v4, Liar;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2372
    .local v1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2373
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2374
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2380
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v2    # "retList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50177
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 2381
    throw v4

    .line 2377
    .restart local v1    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v2    # "retList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] getChildren sz="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2380
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50175
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2864
    invoke-virtual {p0}, Liar;->a()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2891
    :goto_0
    return v5

    .line 2867
    :cond_0
    :try_start_0
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2868
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2869
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2891
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2872
    :cond_1
    :try_start_1
    iget v7, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, p2, :cond_2

    .line 2891
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v5, v6

    goto :goto_0

    .line 2875
    :cond_2
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2876
    .local v4, "values":Landroid/content/ContentValues;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2877
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "parentId"

    iget-object v8, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2878
    const-string/jumbo v8, "isParent"

    iget-boolean v7, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    if-eqz v7, :cond_3

    move v7, v6

    :goto_1
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2879
    const-string/jumbo v7, "flag"

    invoke-virtual {v2, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2880
    const-string/jumbo v7, "extInfo"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    invoke-static {p1, v4}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 2882
    .local v3, "ret":I
    if-gtz v3, :cond_4

    .line 2891
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v3    # "ret":I
    :cond_3
    move v7, v5

    .line 2878
    goto :goto_1

    .line 2884
    .restart local v3    # "ret":I
    :cond_4
    :try_start_3
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2891
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v5, v6

    goto :goto_0

    .line 2886
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 2887
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2891
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public final c(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "top"    # J

    .prologue
    .line 2771
    invoke-virtual {p0}, Liar;->a()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2772
    const/4 v7, 0x0

    .line 2811
    :goto_0
    return v7

    .line 2774
    :cond_0
    :try_start_0
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2776
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2777
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v1, :cond_1

    .line 2811
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v7, 0x0

    goto :goto_0

    .line 2780
    :cond_1
    :try_start_1
    iget-wide v8, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v7, v8, p2

    if-nez v7, :cond_2

    .line 2811
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v7, 0x1

    goto :goto_0

    .line 2783
    :cond_2
    const/4 v0, 0x0

    .line 2784
    .local v0, "categoryChange":Z
    :try_start_2
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    .line 2786
    .local v2, "currentTime":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2787
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "top"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2788
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getCategoryId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 2789
    const/4 v0, 0x1

    .line 2790
    const-string/jumbo v7, "categoryId"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2792
    :cond_3
    const-string/jumbo v7, "lastModify"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2793
    invoke-static {p1, v6}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 2794
    .local v5, "ret":I
    if-nez v5, :cond_4

    .line 2811
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v7, 0x0

    goto :goto_0

    .line 2798
    :cond_4
    :try_start_3
    iput-wide p2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 2799
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 2800
    iput-wide v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    .line 2801
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2802
    invoke-static {v1}, Liau;->p(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2803
    if-eqz v0, :cond_5

    .line 2804
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2805
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2806
    invoke-static {v4}, Liam;->c(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2811
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_5
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "categoryChange":Z
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "currentTime":J
    .end local v5    # "ret":I
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "draft"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    .line 2227
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2228
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-wide/16 v4, 0x0

    .line 2229
    .local v4, "lastModify":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2230
    const-string/jumbo p2, ""

    .line 2231
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v6

    invoke-virtual {v6, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 2232
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2233
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    .line 2238
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    :goto_0
    const-string/jumbo v6, "draftContent"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 2240
    const-string/jumbo v6, "lastModify"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2242
    :cond_1
    invoke-direct {p0, p1, v1}, Liar;->a(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2243
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_4

    .line 2244
    const/4 v3, 0x0

    .line 2259
    :cond_2
    :goto_1
    return v3

    .line 2236
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 2245
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_4
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    invoke-static {v6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2248
    iput-object p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 2249
    cmp-long v6, v4, v8

    if-lez v6, :cond_5

    .line 2250
    iput-wide v4, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    .line 2252
    :cond_5
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2253
    invoke-static {v0}, Liau;->h(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_1

    .line 2256
    :cond_6
    const-string/jumbo v6, "[TAG] updateDraft"

    const-string/jumbo v7, " Conversation isVisible : false , update Status to Normal"

    .line 50151
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    sget-object v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {p0, v6, v7}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2724
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "desc"

    invoke-static {p2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2725
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_0

    .line 2726
    const/4 v1, 0x0

    .line 2730
    :goto_0
    return v1

    .line 2727
    :cond_0
    invoke-static {p2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2728
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2729
    invoke-static {v0}, Liau;->m(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2730
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3408
    const-string/jumbo v6, "[TAG] ConvCache"

    const-string/jumbo v7, "[CACHE] updateLastMessageReadStatus cid or mids is null."

    .line 50218
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    :cond_0
    :goto_0
    return v5

    .line 3412
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3415
    const/4 v3, 0x0

    .line 3417
    .local v3, "trace":Lhzv;
    :try_start_0
    iget-object v7, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3418
    const-string/jumbo v7, "[TAG] ConvCache"

    .line 50220
    const-string/jumbo v8, "im"

    invoke-static {v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 3419
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] update lastMsg read status, cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lhzv;->a(Ljava/lang/String;)V

    .line 3421
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 3422
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_2

    .line 3423
    const-string/jumbo v6, "[CACHE] conv null"

    invoke-virtual {v3, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3453
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50221
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 3427
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 3428
    .local v1, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v1, :cond_3

    .line 3429
    const-string/jumbo v6, "[CACHE] last msg null"

    invoke-virtual {v3, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3453
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50223
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 3434
    :cond_3
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3435
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "isRead"

    sget-object v8, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3436
    iget-object v7, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-static {v7, v8, v9, v4}, Liat;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v2

    .line 3437
    .local v2, "ret":I
    if-nez v2, :cond_4

    .line 3438
    const-string/jumbo v6, "[CACHE] update lastMsg fail"

    invoke-virtual {v3, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3453
    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50225
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 3443
    :cond_4
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->setIsRead(Z)V

    .line 3446
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3447
    invoke-static {v1}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 3450
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] update extras succ "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3453
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50227
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    move v5, v6

    .line 3454
    goto/16 :goto_0

    .line 3453
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50229
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 3454
    throw v5
.end method

.method public final c(Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-virtual/range {p0 .. p0}, Liar;->a()Z

    move-result v14

    if-nez v14, :cond_0

    .line 695
    const/4 v14, 0x0

    .line 787
    :goto_0
    return v14

    .line 696
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 697
    :cond_1
    const-string/jumbo v14, "[TAG] ConvCache refreshAll"

    const-string/jumbo v15, "[CACHE] param convs null"

    .line 32022
    const-string/jumbo v16, "im"

    invoke-static/range {v14 .. v16}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v14, 0x1

    goto :goto_0

    .line 700
    :cond_2
    const/4 v11, 0x0

    .line 702
    .local v11, "trace":Lhzv;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 703
    const-string/jumbo v14, "[TAG] ConvCache refreshAll"

    .line 33014
    const-string/jumbo v15, "im"

    invoke-static {v14, v15}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v11

    .line 704
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] refreshAll, new size="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lhzv;->a(Ljava/lang/String;)V

    .line 716
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 717
    .local v5, "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 718
    .local v9, "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 719
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v10, "syncArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 721
    .local v2, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v2, :cond_3

    .line 724
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v15, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v15}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 726
    .local v3, "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v3, :cond_4

    .line 728
    invoke-virtual {v3, v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->copyFrom(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 730
    iget-object v15, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v15}, Liar;->g(Ljava/lang/String;)V

    .line 732
    move-object v2, v3

    .line 734
    :cond_4
    invoke-static {v2}, Liar;->d(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 735
    invoke-static {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 736
    invoke-static {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isRootConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 737
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 786
    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v5    # "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v9    # "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v10    # "syncArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35030
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 787
    throw v14

    .line 739
    .restart local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v5    # "lastChild":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v9    # "parentUnreadCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .restart local v10    # "syncArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    iget-object v8, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 740
    .local v8, "parentId":Ljava/lang/String;
    iget-object v7, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 741
    .local v7, "newLast":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 742
    .local v6, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_7

    if-eqz v6, :cond_6

    invoke-interface {v7, v6}, Lcom/alibaba/wukong/im/Message;->compareTo(Ljava/lang/Object;)I

    move-result v15

    if-lez v15, :cond_7

    .line 743
    :cond_6
    check-cast v7, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v7    # "newLast":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_7
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 747
    .local v13, "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v13, :cond_8

    .line 748
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v13    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    iget v15, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    invoke-direct {v13, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 749
    .restart local v13    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v9, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 751
    :cond_8
    iget v15, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    invoke-virtual {v13, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_1

    .line 757
    .end local v2    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "exist":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v6    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "parentId":Ljava/lang/String;
    .end local v13    # "unreadCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_9
    invoke-static/range {p1 .. p1}, Liat;->a(Ljava/util/List;)I

    move-result v14

    if-nez v14, :cond_a

    .line 758
    const-string/jumbo v14, "[CACHE] refreshAll err"

    invoke-virtual {v11, v14}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    move-object/from16 v0, p0

    iget-object v14, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33030
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 787
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 763
    :cond_a
    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    sget-object v14, Liar;->c:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 764
    .local v12, "unReachConversations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    sget-object v14, Liar;->d:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 765
    .local v4, "hideConversations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 766
    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 768
    :cond_b
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 769
    invoke-interface {v12, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 773
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    .line 774
    invoke-static {}, Liax;->a()Liax;

    move-result-object v14

    invoke-virtual {v14, v12}, Liax;->a(Ljava/util/List;)V

    .line 779
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Liar;->b(Ljava/util/Map;Ljava/util/Map;)V

    .line 781
    invoke-static {v1}, Liat;->b(Ljava/util/List;)I

    .line 782
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14}, Liau;->b(Ljava/util/ArrayList;)V

    .line 783
    invoke-direct/range {p0 .. p0}, Liar;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    move-object/from16 v0, p0

    iget-object v14, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34030
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 787
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public final varargs c([Ljava/lang/String;)Z
    .locals 18
    .param p1, "cids"    # [Ljava/lang/String;

    .prologue
    .line 1954
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    if-nez v13, :cond_1

    .line 1955
    :cond_0
    const/4 v13, 0x0

    .line 2003
    :goto_0
    return v13

    .line 1957
    :cond_1
    invoke-virtual/range {p0 .. p0}, Liar;->a()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1958
    const/4 v13, 0x0

    goto :goto_0

    .line 1960
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1962
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1963
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "unreadCount"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1964
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Liat;->a([Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v11

    .line 1965
    .local v11, "ret":I
    if-gez v11, :cond_3

    .line 1966
    const-string/jumbo v13, "[TAG] ConvCache"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] reset unread err "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 50120
    const-string/jumbo v15, "im"

    invoke-static {v13, v14, v15}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2003
    move-object/from16 v0, p0

    iget-object v13, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v13, 0x0

    goto :goto_0

    .line 1969
    :cond_3
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1971
    .local v10, "parentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v2, "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1973
    .local v5, "entranceCidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_8

    aget-object v3, p1, v13

    .line 1974
    .local v3, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v4

    .line 1975
    .local v4, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v4, :cond_7

    .line 1977
    invoke-static {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1978
    iget-object v9, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 1979
    .local v9, "parentId":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1980
    .local v8, "parentDelta":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v8, :cond_4

    .line 1981
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v8    # "parentDelta":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1982
    .restart local v8    # "parentDelta":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    :cond_4
    iget v15, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    neg-int v15, v15

    invoke-virtual {v8, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1986
    .end local v8    # "parentDelta":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v9    # "parentId":Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    iput v15, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 1987
    invoke-static {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1988
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    :cond_6
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Libb;->a(J)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1991
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getEntranceCid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1973
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1994
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_8
    invoke-static {v2}, Liau;->f(Ljava/util/ArrayList;)V

    .line 1996
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1997
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 1998
    .local v7, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2003
    .end local v2    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v5    # "entranceCidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v7    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v10    # "parentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v11    # "ret":I
    .end local v12    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v13

    .line 2000
    .restart local v2    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v5    # "entranceCidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "parentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .restart local v11    # "ret":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Liar;->a(Ljava/util/HashSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2003
    move-object/from16 v0, p0

    iget-object v13, v0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2422
    invoke-virtual {p0}, Liar;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2423
    const/4 v0, 0x0

    .line 2432
    :goto_0
    return-object v0

    .line 2425
    :cond_0
    :try_start_0
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2426
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2427
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isChildConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2428
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    :cond_1
    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final d(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 902
    .local p1, "entranceCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    invoke-virtual {p0}, Liar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    :try_start_0
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 913
    const-string/jumbo v0, "[TAG] ConvCache"

    const-string/jumbo v1, "[ConvCache] updateExistEntranceInfo"

    .line 42018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42925
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->entranceConversationUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42928
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    :cond_2
    :goto_1
    iget-object v0, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 42936
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 42939
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 42941
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 42943
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 42944
    new-instance v1, Ljava/util/HashMap;

    sget-object v0, Liar;->c:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42945
    new-instance v2, Ljava/util/HashMap;

    sget-object v0, Liar;->d:Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42946
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 42948
    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Liar;->a(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 42953
    invoke-interface {p1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 42954
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 42955
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42956
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 42957
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Conversation;

    .line 42958
    if-nez v4, :cond_6

    .line 42959
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Conversation;

    .line 42961
    :cond_6
    if-eqz v4, :cond_4

    .line 42962
    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42963
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42964
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 916
    :catchall_0
    move-exception v0

    iget-object v1, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 42967
    :cond_7
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42972
    :cond_8
    invoke-direct {p0, v7}, Liar;->b(Ljava/util/HashMap;)V

    .line 42974
    invoke-direct {p0, v6}, Liar;->c(Ljava/util/Map;)Z

    .line 42975
    invoke-direct {p0, v8}, Liar;->a(Ljava/util/HashMap;)V

    .line 42976
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public final d(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "authority"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2896
    const-string/jumbo v2, "authority"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2897
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2898
    const/4 v1, 0x0

    .line 2905
    :cond_0
    :goto_0
    return v1

    .line 2899
    :cond_1
    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    if-eq v2, p2, :cond_0

    .line 2902
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    .line 2903
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_0

    .line 2904
    :cond_2
    invoke-static {v0}, Liau;->i(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "groupId"    # J

    .prologue
    const/4 v1, 0x1

    .line 3144
    const-string/jumbo v2, "groupId"

    invoke-virtual {p0, p1, v2, p2, p3}, Liar;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 3145
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 3146
    const/4 v1, 0x0

    .line 3153
    :cond_0
    :goto_0
    return v1

    .line 3147
    :cond_1
    iget-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 3150
    iput-wide p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    .line 3151
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3152
    invoke-static {v0}, Liau;->y(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2440
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2470
    :cond_0
    :goto_0
    return-object v4

    .line 2444
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2448
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2449
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2451
    .local v3, "dbCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2452
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2454
    invoke-static {v0}, Liar;->e(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 2455
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_3

    .line 2456
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2458
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2463
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_4
    :try_start_0
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2464
    iget-object v5, p0, Liar;->h:Liat;

    invoke-virtual {v5, v3}, Liat;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2465
    .local v2, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2466
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2470
    :cond_5
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public final e(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "memberLimit"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2930
    const-string/jumbo v2, "memberLimit"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2931
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2932
    const/4 v1, 0x0

    .line 2939
    :cond_0
    :goto_0
    return v1

    .line 2933
    :cond_1
    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    if-eq v2, p2, :cond_0

    .line 2936
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    .line 2937
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2938
    invoke-static {v0}, Liau;->r(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final f(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupIconObject;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupIconObject;>;"
    const/4 v4, 0x0

    .line 3086
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3113
    :cond_0
    :goto_0
    return-object v4

    .line 3089
    :cond_1
    invoke-virtual {p0}, Liar;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3091
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3093
    :try_start_0
    invoke-static {p1}, Liat;->d(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3094
    .local v3, "ret":I
    if-nez v3, :cond_2

    .line 3113
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 3097
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3098
    .local v4, "updateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3099
    .local v0, "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/GroupIconObject;

    .line 3100
    .local v2, "object":Lcom/alibaba/wukong/im/GroupIconObject;
    iget-object v6, v2, Lcom/alibaba/wukong/im/GroupIconObject;->conversationId:Ljava/lang/String;

    invoke-direct {p0, v6}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 3101
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_3

    .line 3104
    iget v6, v2, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    iput v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    .line 3105
    iget-object v6, v2, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    .line 3106
    iget-wide v6, v2, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconTag:J

    iput-wide v6, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    .line 3107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    iget-object v6, v2, Lcom/alibaba/wukong/im/GroupIconObject;->conversationId:Ljava/lang/String;

    iget-object v7, v2, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3113
    .end local v0    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "object":Lcom/alibaba/wukong/im/GroupIconObject;
    .end local v3    # "ret":I
    .end local v4    # "updateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 3110
    .restart local v0    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Conversation;>;"
    .restart local v3    # "ret":I
    .restart local v4    # "updateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    invoke-static {v0}, Liau;->g(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3113
    iget-object v5, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "groupLevel"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2943
    const-string/jumbo v2, "category"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2944
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2945
    const/4 v1, 0x0

    .line 2952
    :cond_0
    :goto_0
    return v1

    .line 2946
    :cond_1
    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    if-eq v2, p2, :cond_0

    .line 2949
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    .line 2950
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2951
    invoke-static {v0}, Liau;->v(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "validationType"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2991
    const-string/jumbo v2, "joinValidationType"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2992
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 2993
    const/4 v1, 0x0

    .line 3000
    :cond_0
    :goto_0
    return v1

    .line 2994
    :cond_1
    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    if-eq v2, p2, :cond_0

    .line 2997
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    .line 2998
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2999
    invoke-static {v0}, Liau;->t(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "showHistoryType"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 3056
    const-string/jumbo v2, "showHistoryType"

    invoke-virtual {p0, p1, v2, p2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 3057
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 3058
    const/4 v1, 0x0

    .line 3065
    :cond_0
    :goto_0
    return v1

    .line 3059
    :cond_1
    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    if-eq v2, p2, :cond_0

    .line 3062
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    .line 3063
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3064
    invoke-static {v0}, Liau;->s(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "atAllType"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 3189
    invoke-virtual {p0}, Liar;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3215
    :goto_0
    return v3

    .line 3192
    :cond_0
    :try_start_0
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3194
    invoke-direct {p0, p1}, Liar;->f(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3195
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v0, :cond_1

    .line 3213
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 3199
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3200
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "atAllType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3201
    invoke-static {p1, v2}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 3202
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 3213
    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 3206
    :cond_2
    :try_start_2
    iput p2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    .line 3208
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3213
    iget-object v3, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3215
    const/4 v3, 0x1

    goto :goto_0

    .line 3213
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v1    # "ret":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method
