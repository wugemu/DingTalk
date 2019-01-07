.class public final Libs;
.super Ljava/lang/Object;
.source "MessageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libs$b;,
        Libs$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Libs$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Z


# instance fields
.field private c:Libu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Libs;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Libu;

    invoke-direct {v0}, Libu;-><init>()V

    iput-object v0, p0, Libs;->c:Libu;

    .line 2113
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 2107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    const/4 v0, 0x0

    .line 2110
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Libs$a;II)Ljava/util/List;
    .locals 14
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "cache"    # Libs$a;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Libs$a;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1540
    sub-int v2, p4, p3

    .line 1541
    .local v2, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1542
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1543
    .local v8, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1544
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move/from16 v4, p3

    .local v4, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v4, v0, :cond_2

    .line 1545
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Libs$a;->b(I)Libs$b;

    move-result-object v10

    .line 1546
    .local v10, "ref":Libs$b;
    if-eqz v10, :cond_0

    .line 1547
    invoke-virtual {v10}, Libs$b;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1548
    .local v9, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v9, :cond_1

    .line 1549
    iget-wide v12, v10, Libs$b;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    iget-wide v12, v10, Libs$b;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v9    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1552
    .restart local v9    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_1
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1556
    .end local v9    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v10    # "ref":Libs$b;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v2, :cond_4

    .line 1557
    invoke-static {v6}, Libs;->b(Ljava/util/List;)V

    .line 1571
    :cond_3
    return-object v6

    .line 1560
    :cond_4
    iget-object v11, p0, Libs;->c:Libu;

    invoke-virtual {v11, p1, v8}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1561
    .local v3, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v3, :cond_3

    .line 1562
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1563
    .restart local v9    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {v6, v9}, Lieb;->a(Ljava/util/List;Ljava/lang/Comparable;)V

    .line 1565
    iget-wide v12, v9, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1566
    .local v5, "index":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    .line 1567
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Libs$a;->a(ILcom/alibaba/wukong/im/message/MessageImpl;)Libs$b;

    goto :goto_2
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .param p1, "isForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v5, 0x0

    .line 1509
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v1, p0

    .line 1536
    :cond_1
    :goto_0
    return-object v1

    .line 1511
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1512
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v1, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz p1, :cond_4

    .line 1514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1515
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1516
    .local v3, "tmp":Lcom/alibaba/wukong/im/message/MessageImpl;
    iget v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    iget v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1518
    iget v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 1519
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1522
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1525
    .end local v0    # "i":I
    .end local v3    # "tmp":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_4
    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 1526
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1527
    .restart local v3    # "tmp":Lcom/alibaba/wukong/im/message/MessageImpl;
    iget v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 1528
    invoke-interface {v1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1530
    :cond_5
    iget v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1

    iget v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1533
    invoke-interface {v1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1525
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 1687
    sget-object v0, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1688
    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "messageCursor"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 1498
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v0, v1, :cond_0

    .line 1501
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z

    .line 1505
    :cond_0
    return-void
.end method

.method private static a(Libs$a;Ljava/util/List;Z)V
    .locals 1
    .param p0, "cache"    # Libs$a;
    .param p2, "isBorder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Libs$a;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1585
    .local p1, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Libs$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Libs$a;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1691
    sput-boolean p0, Libs;->b:Z

    .line 1692
    if-nez p0, :cond_0

    .line 1693
    sget-object v0, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1695
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 420
    if-nez p0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_2

    .line 424
    const-string/jumbo v0, "[TAG] MsgCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Cache] silent status msg id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 425
    goto :goto_0

    .line 428
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "senderSilent"

    invoke-interface {p0, v3}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    const-string/jumbo v0, "[TAG] MsgCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Cache] silent msg id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 430
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Libs$a;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 1675
    sget-object v2, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$a;

    .line 1676
    .local v0, "cache":Libs$a;
    if-nez v0, :cond_0

    .line 1677
    new-instance v0, Libs$a;

    .end local v0    # "cache":Libs$a;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Libs$a;-><init>(B)V

    .line 1678
    .restart local v0    # "cache":Libs$a;
    sget-object v2, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libs$a;

    .line 1679
    .local v1, "tmp":Libs$a;
    if-eqz v1, :cond_0

    .line 1683
    .end local v1    # "tmp":Libs$a;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1576
    .local v0, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 1578
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    .line 1579
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z

    goto :goto_0

    .line 1582
    .end local v0    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_1
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Libs;->b:Z

    return v0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 442
    if-eqz p0, :cond_0

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "show_last_msg"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string/jumbo v0, "[TAG] MsgCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[CACHE] not show last msg msgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "current"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 200
    if-nez p2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget v0, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 204
    const/4 v2, 0x1

    .line 210
    .local v2, "offset":I
    :goto_1
    iget-object v5, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 212
    .local v7, "newFlagMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v7, :cond_2

    .line 213
    neg-int v2, v2

    .line 214
    iget-object v5, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 216
    :cond_2
    if-eqz v7, :cond_0

    .line 217
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    const/4 v6, 0x2

    .line 218
    .local v6, "newFlag":I
    :goto_2
    invoke-virtual {p0, p1, v7, v6}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I)Z

    goto :goto_0

    .line 205
    .end local v2    # "offset":I
    .end local v6    # "newFlag":I
    .end local v7    # "newFlagMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_3
    iget v0, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 206
    const/4 v2, -0x1

    .restart local v2    # "offset":I
    goto :goto_1

    .line 217
    .restart local v7    # "newFlagMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_4
    const/4 v6, 0x4

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 1128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, p0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1133
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1135
    .local v1, "m":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1136
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "deletedMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, p0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 188
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 190
    .local v1, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    :cond_0
    if-eqz v1, :cond_1

    .line 192
    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v3, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 193
    :cond_1
    invoke-static {p0, v0}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    .line 194
    .local v2, "mo":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    .line 197
    .end local v1    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "mo":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)I
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message1"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "message2"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "type"    # Lcom/alibaba/wukong/im/Message$CreatorType;

    .prologue
    .line 1654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1655
    :cond_0
    const/4 v0, 0x0

    .line 1657
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ILcom/alibaba/wukong/im/Message$CreatorType;Z)Lcom/alibaba/wukong/im/Message;
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "offset"    # I
    .param p4, "type"    # Lcom/alibaba/wukong/im/Message$CreatorType;
    .param p5, "isContinued"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1661
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1662
    :cond_0
    const/4 v0, 0x0

    .line 1665
    :goto_0
    return-object v0

    .line 1663
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v5

    .local v5, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    .line 1665
    invoke-static/range {v0 .. v5}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "mid"    # J

    .prologue
    .line 1600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-nez v3, :cond_1

    .line 1601
    :cond_0
    const/4 v2, 0x0

    .line 1616
    :goto_0
    return-object v2

    .line 1602
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1604
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1606
    invoke-virtual {v0, p2, p3}, Libs$a;->a(J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    .line 1607
    .local v2, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v2, :cond_2

    .line 1609
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1610
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {p1, p2, p3, v1}, Libu;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1616
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_2
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v3

    iget-object v4, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "senderId"    # J
    .param p4, "localId"    # Ljava/lang/String;

    .prologue
    .line 1628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1629
    :cond_0
    const/4 v2, 0x0

    .line 1637
    :goto_0
    return-object v2

    .line 1630
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1631
    .local v0, "cache":Libs$a;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1633
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_start_0
    iget-object v2, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1635
    invoke-static {p1, p2, p3, p4, v1}, Libu;->a(Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1637
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final a(Ljava/util/List;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)",
            "Lcom/alibaba/wukong/im/message/MessageImpl;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v3, 0x0

    .line 455
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v1, v3

    .line 466
    :cond_1
    :goto_0
    return-object v1

    .line 459
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 460
    .local v2, "msgLastIndex":I
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 461
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 462
    .local v1, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {v1}, Libs;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_3
    move-object v1, v3

    .line 466
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/List;ZZ)Ljava/util/ArrayList;
    .locals 16
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "cursor"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p4, "forward"    # Z
    .param p5, "updateCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 521
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 522
    :cond_0
    const-string/jumbo v10, "[TAG] MsgCache"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[CACHE] param err, cid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 29022
    const-string/jumbo v12, "im"

    invoke-static {v10, v11, v12}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v2, 0x0

    .line 573
    :goto_0
    return-object v2

    .line 525
    :cond_1
    const/4 v9, 0x0

    .line 526
    .local v9, "trace":Lhzv;
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v5

    .line 528
    .local v5, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v10, "[TAG] MsgCache"

    .line 30014
    const-string/jumbo v11, "im"

    invoke-static {v10, v11}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 529
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    .line 530
    .local v8, "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[CACHE] bulkMerge cid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lhzv;->a(Ljava/lang/String;)V

    .line 531
    iget-object v10, v5, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 533
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 535
    .local v2, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz p2, :cond_2

    .line 536
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 539
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[CACHE] bulkMerge addList isEmpty cid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 572
    iget-object v10, v5, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 543
    :cond_3
    if-eqz p4, :cond_9

    add-int/lit8 v10, v8, -0x1

    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v10

    .line 544
    .local v4, "border":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_1
    if-eqz p4, :cond_a

    const/4 v3, 0x4

    .line 30579
    .local v3, "appendFlag":I
    :goto_2
    const/4 v11, 0x0

    .line 30581
    :try_start_2
    const-string/jumbo v10, "[TAG] MsgCache"

    .line 31014
    const-string/jumbo v12, "im"

    invoke-static {v10, v12}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v11

    .line 30582
    if-eqz p2, :cond_4

    .line 30583
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 30584
    const/4 v10, -0x1

    if-eq v13, v10, :cond_d

    .line 30585
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 30586
    if-eqz v10, :cond_4

    .line 30587
    and-int/lit8 v12, v3, 0x2

    if-eqz v12, :cond_b

    move-object/from16 v0, p2

    iget v12, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v12, v12, -0x9

    .line 30588
    :goto_3
    and-int v14, v12, v3

    if-eqz v14, :cond_c

    .line 30589
    xor-int/lit8 v13, v3, -0x1

    and-int/2addr v12, v13

    iput v12, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 30602
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 30603
    iget-wide v12, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-object v10, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v10}, Libu;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v10

    .line 30604
    if-nez v10, :cond_e

    .line 30605
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[CACHE] border msg not exist "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lhzv;->a(Ljava/lang/String;)V

    .line 30606
    iput v3, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31030
    :cond_5
    :goto_5
    :try_start_3
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 546
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Libu;->b(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v10

    if-lez v10, :cond_12

    .line 548
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_6

    .line 549
    move-object/from16 v0, p2

    iget v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    xor-int/lit8 v11, v3, -0x1

    and-int/2addr v10, v11

    move-object/from16 v0, p2

    iput v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 550
    if-nez p4, :cond_6

    .line 551
    move-object/from16 v0, p2

    iget v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v10, v10, -0x9

    move-object/from16 v0, p2

    iput v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 553
    :cond_6
    if-nez p4, :cond_7

    invoke-virtual {v5}, Libs$a;->b()Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_7
    const/4 v6, 0x0

    .line 554
    .local v6, "cachedMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_6
    if-eqz v6, :cond_8

    iget v10, v6, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_8

    .line 555
    invoke-virtual {v5}, Libs$a;->c()V

    .line 562
    :cond_8
    if-eqz p5, :cond_13

    invoke-virtual {v5}, Libs$a;->b()Z

    move-result v10

    if-nez v10, :cond_13

    .line 563
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 564
    .local v7, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v5, v7}, Libs$a;->d(Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_3
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 569
    .end local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v3    # "appendFlag":I
    .end local v4    # "border":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "cachedMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "size":I
    :catch_0
    move-exception v10

    :try_start_4
    const-string/jumbo v10, "[CACHE] bulkMerge db err"

    invoke-virtual {v9, v10}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 572
    iget-object v10, v5, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 573
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 543
    .restart local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v8    # "size":I
    :cond_9
    const/4 v10, 0x0

    :try_start_5
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_end_5
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v10

    goto/16 :goto_1

    .line 544
    .restart local v4    # "border":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_a
    const/4 v3, 0x2

    goto/16 :goto_2

    .line 30587
    .restart local v3    # "appendFlag":I
    :cond_b
    :try_start_6
    move-object/from16 v0, p2

    iget v12, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    goto/16 :goto_3

    .line 30591
    :cond_c
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 30621
    :catchall_0
    move-exception v10

    .line 32030
    :try_start_7
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 30621
    throw v10
    :try_end_7
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 572
    .end local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v3    # "appendFlag":I
    .end local v4    # "border":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "size":I
    :catchall_1
    move-exception v10

    iget-object v11, v5, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 573
    throw v10

    .line 30594
    .restart local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v3    # "appendFlag":I
    .restart local v4    # "border":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v8    # "size":I
    :cond_d
    :try_start_8
    move-object/from16 v0, p2

    iget v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_4

    .line 30595
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[CACHE] append cursor "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lhzv;->a(Ljava/lang/String;)V

    .line 30596
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v10

    .line 30597
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10, v12}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V

    .line 30598
    const/4 v12, 0x0

    iput v12, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 30599
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 30608
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "[CACHE] border msg exist "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " flag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lhzv;->a(Ljava/lang/String;)V

    .line 30609
    iget v12, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/2addr v12, v3

    if-nez v12, :cond_f

    iget v12, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_f

    iget-wide v12, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 30610
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    iget-object v12, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 30611
    :cond_f
    iget v10, v10, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    or-int/2addr v10, v3

    iput v10, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 30612
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_10

    .line 30613
    iget v10, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    goto/16 :goto_5

    .line 30614
    :cond_10
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_5

    .line 30615
    iget v10, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 553
    :cond_11
    const/4 v10, 0x0

    :try_start_9
    invoke-virtual {v5, v10}, Libs$a;->a(I)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v6

    goto/16 :goto_6

    .line 558
    :cond_12
    const-string/jumbo v10, "[CACHE] bulkMerge db err"

    invoke-virtual {v9, v10}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 572
    iget-object v10, v5, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 573
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 572
    .restart local v6    # "cachedMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_13
    iget-object v10, v5, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Collection;Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .local p2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, p2, v0, v0}, Libs;->a(Ljava/lang/String;Ljava/util/Collection;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Collection;ZI)Ljava/util/ArrayList;
    .locals 18
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "replace"    # Z
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .line 327
    .local p2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 328
    :cond_0
    const-string/jumbo v14, "[TAG] MsgCache"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[CACHE] bInsert param err, cid="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 17022
    const-string/jumbo v16, "im"

    invoke-static/range {v14 .. v16}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v2, 0x0

    .line 415
    :goto_0
    return-object v2

    .line 331
    :cond_1
    const/4 v13, 0x0

    .line 332
    .local v13, "trace":Lhzv;
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v3

    .line 334
    .local v3, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v14, "[TAG] MsgCache"

    .line 18014
    const-string/jumbo v15, "im"

    invoke-static {v14, v15}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v13

    .line 335
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] bInsert cid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " sz="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lhzv;->a(Ljava/lang/String;)V

    .line 337
    iget-object v14, v3, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 341
    .local v8, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v8, :cond_2

    .line 343
    move/from16 v0, p4

    iput v0, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 344
    if-eqz p4, :cond_3

    .line 345
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] bInsert cid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " sz="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " firstMsg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " flag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lhzv;->a(Ljava/lang/String;)V

    .line 350
    .end local v8    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_3
    invoke-static/range {p1 .. p2}, Libu;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v11

    .line 351
    .local v11, "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    if-nez v11, :cond_7

    const/4 v2, 0x0

    .line 352
    .local v2, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :goto_1
    if-eqz p3, :cond_4

    .line 353
    if-nez v11, :cond_8

    const/4 v7, 0x0

    .line 354
    .local v7, "existList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Libu;->b(Ljava/lang/String;Ljava/util/Collection;)I
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    .end local v7    # "existList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_4
    if-eqz v2, :cond_d

    .line 362
    :try_start_2
    invoke-virtual {v3}, Libs$a;->b()Z

    move-result v14

    if-nez v14, :cond_9

    .line 363
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 364
    .local v9, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v9, :cond_5

    .line 368
    const-string/jumbo v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v15

    if-lez v15, :cond_6

    .line 369
    invoke-virtual {v9}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Libs$a;->a(J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    .line 370
    .local v4, "cacheMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v15

    if-nez v15, :cond_6

    .line 371
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v15

    iput v15, v9, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 372
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[SYNC] update msgs cache reset unreadCount cid="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " msg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lhzv;->a(Ljava/lang/String;)V

    .line 375
    .end local v4    # "cacheMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_6
    invoke-virtual {v3, v9}, Libs$a;->d(Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 414
    .end local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v9    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v11    # "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    :catchall_0
    move-exception v14

    iget-object v15, v3, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19030
    invoke-static {v13}, Lhzt;->a(Lhzv;)V

    .line 415
    throw v14

    .line 351
    .restart local v11    # "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    :cond_7
    :try_start_3
    const-string/jumbo v14, "INSERT"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v2, v14

    goto/16 :goto_1

    .line 353
    .restart local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_8
    const-string/jumbo v14, "IGNORE"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;
    :try_end_3
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v14

    goto/16 :goto_2

    .line 356
    .end local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v11    # "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    :catch_0
    move-exception v6

    .line 357
    .local v6, "e":Lcom/alibaba/wukong/im/base/WKException;
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] bulk save msg to db err: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/base/WKException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lhzv;->b(Ljava/lang/String;)V

    .line 358
    new-instance v14, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v15, "bulk save msg exp"

    invoke-direct {v14, v15}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 378
    .end local v6    # "e":Lcom/alibaba/wukong/im/base/WKException;
    .restart local v2    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v11    # "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    .line 380
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v5

    .line 381
    .local v5, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v5, :cond_d

    .line 383
    invoke-virtual {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParent()Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v10

    .line 384
    .local v10, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v10}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isHide(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 385
    const/4 v12, 0x1

    .line 386
    .local v12, "shouldPost":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 387
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/Message;

    invoke-static {v14}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 388
    const/4 v12, 0x0

    .line 391
    :cond_a
    if-eqz v12, :cond_b

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v14

    invoke-virtual {v10}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual/range {v14 .. v16}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 393
    invoke-static {v10}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 397
    .end local v12    # "shouldPost":Z
    :cond_b
    invoke-static {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isHide(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 398
    const/4 v12, 0x1

    .line 399
    .restart local v12    # "shouldPost":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 400
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/Message;

    invoke-static {v14}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 401
    const/4 v12, 0x0

    .line 404
    :cond_c
    if-eqz v12, :cond_d

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v14

    sget-object v15, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 406
    invoke-static {v5}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    .end local v5    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v10    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v12    # "shouldPost":Z
    :cond_d
    iget-object v14, v3, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18030
    invoke-static {v13}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    :cond_0
    const-string/jumbo v8, "[TAG] MsgCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] rm, param err, cid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 12022
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-object v5

    .line 233
    :cond_1
    const/4 v7, 0x0

    .line 234
    .local v7, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 236
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v8, "[TAG] MsgCache"

    .line 13014
    const-string/jumbo v9, "im"

    invoke-static {v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 237
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 239
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    invoke-virtual {v8, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 240
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v8, p0, Libs;->c:Libu;

    invoke-virtual {v8, v1, p2}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 241
    .local v6, "rmMsgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 242
    :cond_2
    const-string/jumbo v8, "[CACHE] msgs not exist"

    invoke-virtual {v7, v8}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 246
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isBurn()Z

    move-result v2

    .line 247
    .local v2, "isSpecial":Z
    invoke-static {p1, p2, v2}, Libu;->a(Ljava/lang/String;Ljava/util/List;Z)I

    move-result v4

    .line 248
    .local v4, "ret":I
    if-gtz v4, :cond_4

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] msgs del err "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 253
    :cond_4
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 254
    .local v3, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v0, v3}, Libs$a;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 269
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "isSpecial":Z
    .end local v3    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v4    # "ret":I
    .end local v6    # "rmMsgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catchall_0
    move-exception v8

    iget-object v9, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 270
    throw v8

    .line 257
    .restart local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v2    # "isSpecial":Z
    .restart local v4    # "ret":I
    .restart local v6    # "rmMsgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_5
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] rm msgs, sz="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v5, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    if-nez v2, :cond_6

    .line 260
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 261
    .restart local v3    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-direct {p0, p1, v3}, Libs;->c(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V

    goto :goto_2

    .line 264
    .end local v3    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_6
    invoke-static {v5}, Libv;->a(Ljava/util/ArrayList;)V

    .line 266
    invoke-static {p1, p2}, Libs;->f(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15030
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "cursor"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "count"    # I
    .param p4, "isForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-gtz p3, :cond_1

    .line 1429
    :cond_0
    const-string/jumbo v8, "[TAG] MsgCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] getMsgs param err cid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 50062
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const/4 v4, 0x0

    .line 1493
    :goto_0
    return-object v4

    .line 1433
    :cond_1
    const/4 v7, 0x0

    .line 1434
    .local v7, "trace":Lhzv;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    invoke-virtual {v8, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1435
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1437
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v8, "[TAG] MsgCache"

    .line 50064
    const-string/jumbo v9, "im"

    invoke-static {v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v7

    .line 1438
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1440
    invoke-virtual {v0, p2}, Libs$a;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)I

    move-result v3

    .line 1441
    .local v3, "index":I
    if-eqz p4, :cond_4

    .line 1442
    if-eqz p2, :cond_2

    iget v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 1443
    const-string/jumbo v8, "[CACHE] getMsgs null, forward cursor gap"

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50065
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1493
    const/4 v4, 0x0

    goto :goto_0

    .line 1446
    :cond_2
    :try_start_1
    iget-object v8, p0, Libs;->c:Libu;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, p2, p3, v9}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Libs;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1447
    .local v4, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] getMsgs from db forward size="

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50067
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1447
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    .line 1450
    .end local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_4
    if-eqz p2, :cond_5

    iget v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    .line 1451
    const-string/jumbo v8, "[CACHE] getMsgs null, cursor gap"

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1492
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50069
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1493
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1454
    :cond_5
    if-eqz p2, :cond_7

    const/4 v8, -0x1

    if-ne v3, v8, :cond_7

    .line 1455
    :try_start_3
    iget-object v8, p0, Libs;->c:Libu;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, p2, p3, v9}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Libs;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1456
    .restart local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] getMsgs from db size="

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1492
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50071
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 1456
    :cond_6
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_2

    .line 1459
    .end local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_7
    if-nez p2, :cond_8

    .line 1460
    invoke-virtual {v0}, Libs$a;->a()I

    move-result v3

    .line 1461
    :cond_8
    if-nez v3, :cond_c

    .line 1462
    iget-object v8, p0, Libs;->c:Libu;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, p2, p3, v9}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Libs;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1463
    .restart local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-nez p2, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-static {v0, v4, v8}, Libs;->a(Libs$a;Ljava/util/List;Z)V

    .line 1464
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] getMsgs from db border size="

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_b

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 1486
    :goto_5
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1487
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v8, v1, p2}, Libs;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1492
    :cond_9
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50075
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 1463
    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    .line 1464
    :cond_b
    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_4

    .line 1465
    .end local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_c
    if-lt v3, p3, :cond_d

    .line 1466
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] getMsgs from cache all size="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 1467
    sub-int v8, v3, p3

    invoke-direct {p0, v1, v0, v8, v3}, Libs;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Libs$a;II)Ljava/util/List;

    move-result-object v4

    .restart local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    goto :goto_5

    .line 1469
    .end local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1470
    .restart local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v8, 0x0

    invoke-direct {p0, v1, v0, v8, v3}, Libs;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Libs$a;II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1471
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Libs$a;->a(I)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v6

    .line 1473
    .local v6, "newCursor":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v6, :cond_f

    iget v8, v6, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_f

    .line 1474
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] getMsgs from cache size="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 1475
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    .line 1476
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v8, v1, p2}, Libs;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1492
    :cond_e
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50073
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 1480
    :cond_f
    sub-int v5, p3, v3

    .line 1481
    .local v5, "newCount":I
    :try_start_6
    iget-object v8, p0, Libs;->c:Libu;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v6, v5, v9}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Libs;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 1482
    .local v2, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-nez p2, :cond_10

    const/4 v8, 0x1

    :goto_6
    invoke-static {v0, v2, v8}, Libs;->a(Libs$a;Ljava/util/List;Z)V

    .line 1483
    const/4 v8, 0x0

    invoke-interface {v4, v8, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1484
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] getMsgs from cache "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " & db "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 1492
    .end local v2    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v3    # "index":I
    .end local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v5    # "newCount":I
    .end local v6    # "newCursor":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v8

    iget-object v9, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50077
    invoke-static {v7}, Lhzt;->a(Lhzv;)V

    .line 1493
    throw v8

    .line 1482
    .restart local v2    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v3    # "index":I
    .restart local v4    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v5    # "newCount":I
    .restart local v6    # "newCursor":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_10
    const/4 v8, 0x0

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "cursor"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "count"    # I
    .param p4, "isForward"    # Z
    .param p5, "contentTypes"    # [I
    .param p6, "includeCursor"    # Z
    .param p7, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "IZ[IZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gtz p3, :cond_1

    .line 1378
    :cond_0
    const/4 v1, 0x0

    .line 1385
    :goto_0
    return-object v1

    .line 1379
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1380
    .local v0, "cache":Libs$a;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    invoke-virtual {v1, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v2

    .line 1382
    .local v2, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_start_0
    iget-object v1, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1383
    iget-object v1, p0, Libs;->c:Libu;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1385
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I[IZJ)Ljava/util/List;
    .locals 16
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "cursor"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "count"    # I
    .param p4, "contentTypes"    # [I
    .param p5, "includeCursor"    # Z
    .param p6, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "I[IZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-gtz p3, :cond_1

    .line 1392
    :cond_0
    const/4 v14, 0x0

    .line 1415
    :goto_0
    return-object v14

    .line 1393
    :cond_1
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v2

    .line 1394
    .local v2, "cache":Libs$a;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v4

    .line 1396
    .local v4, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :try_start_0
    iget-object v3, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Libs;->c:Libu;

    div-int/lit8 v6, p3, 0x2

    const/4 v7, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v3 .. v11}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;

    move-result-object v13

    .line 1399
    .local v13, "previousResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    move/from16 v6, p3

    .line 1400
    .local v6, "forwardCount":I
    if-eqz v13, :cond_2

    .line 1401
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v6, v3

    .line 1403
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Libs;->c:Libu;

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v3 .. v11}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;

    move-result-object v12

    .line 1406
    .local v12, "forwardResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1407
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v13, :cond_3

    .line 1408
    invoke-interface {v14, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1410
    :cond_3
    if-eqz v12, :cond_4

    .line 1411
    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    :cond_4
    iget-object v3, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v6    # "forwardCount":I
    .end local v12    # "forwardResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v13    # "previousResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catchall_0
    move-exception v3

    iget-object v5, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1715
    :goto_0
    return-void

    .line 1700
    :cond_0
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1702
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1703
    sget-object v3, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget-object v3, p0, Libs;->c:Libu;

    invoke-virtual {v3, p1}, Libu;->a(Ljava/lang/String;)I

    move-result v2

    .local v2, "ret":I
    if-ltz v2, :cond_1

    .line 1706
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1708
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v1}, Liau;->w(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1710
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    .line 1712
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_1
    const-string/jumbo v3, "[TAG] MsgCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[CACHE] clear msgs "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ret= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50079
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    iget-object v4, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 20
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1720
    .local p3, "messageProgress":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1724
    :cond_0
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v2

    .line 1729
    .local v2, "cache":Libs$a;
    :try_start_0
    iget-object v3, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1732
    .local v12, "currentTime":J
    move-wide v6, v12

    .line 1734
    .local v6, "oldCreatedAt":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v2}, Libs$a;->a()I

    move-result v3

    if-ge v11, v3, :cond_2

    .line 1736
    invoke-virtual {v2, v11}, Libs$a;->a(I)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v16

    .line 1738
    .local v16, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v16, :cond_1

    .line 1739
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1734
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1743
    .end local v16    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    cmp-long v3, v12, v6

    if-nez v3, :cond_3

    .line 1744
    const-wide/16 v6, -0x1

    .line 1747
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1749
    .local v14, "dbStartTime":J
    const-wide/16 v4, 0x2710

    const-wide/16 v8, 0x7d0

    move-object/from16 v3, p1

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v10}, Libu;->a(Ljava/lang/String;JJJLcom/alibaba/wukong/Callback;)J

    move-result-wide v18

    .line 1751
    .local v18, "ret":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1752
    .local v17, "traces":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[CACHE] limit msgs "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " deleted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  ;db consume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1753
    const-string/jumbo v3, "[TAG] MsgCache"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50081
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    iget-object v3, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v6    # "oldCreatedAt":J
    .end local v11    # "i":I
    .end local v12    # "currentTime":J
    .end local v14    # "dbStartTime":J
    .end local v17    # "traces":Ljava/lang/StringBuilder;
    .end local v18    # "ret":J
    :catchall_0
    move-exception v3

    iget-object v4, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final a(Ljava/lang/String;JLcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 18
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "oldMid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 948
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-eqz v15, :cond_0

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v15, :cond_1

    .line 949
    :cond_0
    const-string/jumbo v15, "[TAG] MsgCache"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "[CACHE] updateSentRet param err, cid="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 47022
    const-string/jumbo v17, "im"

    invoke-static/range {v15 .. v17}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v15, 0x0

    .line 1016
    :goto_0
    return v15

    .line 952
    :cond_1
    const/4 v12, 0x0

    .line 953
    .local v12, "trace":Lhzv;
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v4

    .line 955
    .local v4, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v15, "[TAG] MsgCache"

    .line 48014
    const-string/jumbo v16, "im"

    invoke-static/range {v15 .. v16}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v12

    .line 956
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[CACHE] update sent ret "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lhzv;->a(Ljava/lang/String;)V

    .line 957
    iget-object v15, v4, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    const/4 v11, 0x0

    .line 959
    .local v11, "ret":I
    const/4 v7, 0x1

    .line 961
    .local v7, "failRetry":Z
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p4

    iput-wide v0, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 962
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 963
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v15, "mid"

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 964
    const-string/jumbo v15, "createdAt"

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 965
    const-string/jumbo v15, "lastModify"

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 966
    const-string/jumbo v15, "messageStatus"

    sget-object v16, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    const-string/jumbo v15, "content"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string/jumbo v15, "sentlocaltime"

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 969
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v13}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 978
    .end local v13    # "values":Landroid/content/ContentValues;
    :goto_1
    if-nez v11, :cond_2

    .line 979
    if-eqz v7, :cond_9

    .line 980
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[CACHE] update send ret err & retry insert "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48061
    const/4 v15, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v15}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z
    :try_end_3
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 992
    :cond_2
    :try_start_4
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Libs$a;->b(J)I

    move-result v8

    .line 993
    .local v8, "index":I
    invoke-virtual {v4, v8}, Libs$a;->c(I)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v6

    .line 994
    .local v6, "exist":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v4}, Libs$a;->b()Z

    move-result v15

    if-nez v15, :cond_3

    .line 995
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Libs$a;->d(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v10

    .line 996
    .local v10, "re":Z
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[CACHE] add cache "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lhzv;->a(Ljava/lang/String;)V

    .line 999
    .end local v10    # "re":Z
    :cond_3
    if-nez v6, :cond_4

    .line 1000
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v15}, Libu;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v6

    .line 1002
    :cond_4
    if-eqz v6, :cond_6

    move-object/from16 v0, p4

    iget v15, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    iget v0, v6, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    iget v15, v6, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    if-nez v15, :cond_6

    .line 1003
    :cond_5
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1004
    .local v14, "values2":Landroid/content/ContentValues;
    const-string/jumbo v15, "unreadCount"

    move-object/from16 v0, p4

    iget v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string/jumbo v15, "totalCount"

    move-object/from16 v0, p4

    iget v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v14}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v11

    if-gtz v11, :cond_6

    .line 1007
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[CACHE] up unread err:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lhzv;->b(Ljava/lang/String;)V

    .line 1010
    .end local v14    # "values2":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v15}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1011
    invoke-static/range {p4 .. p4}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1015
    :cond_7
    iget-object v15, v4, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50032
    invoke-static {v12}, Lhzt;->a(Lhzv;)V

    .line 1016
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 970
    .end local v6    # "exist":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "index":I
    :catch_0
    move-exception v5

    .line 971
    .local v5, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 972
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 973
    .local v9, "msg":Ljava/lang/String;
    if-eqz v9, :cond_8

    const-string/jumbo v15, "code 19"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 974
    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v15}, Libu;->a(Ljava/lang/String;JZ)I

    .line 976
    :cond_8
    const-string/jumbo v15, "WKLog"

    const-string/jumbo v16, "update sent result err"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1015
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "failRetry":Z
    .end local v9    # "msg":Ljava/lang/String;
    .end local v11    # "ret":I
    :catchall_0
    move-exception v15

    iget-object v0, v4, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50034
    invoke-static {v12}, Lhzt;->a(Lhzv;)V

    .line 1016
    throw v15

    .restart local v7    # "failRetry":Z
    .restart local v11    # "ret":I
    :catch_1
    move-exception v15

    .line 1015
    iget-object v15, v4, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49030
    invoke-static {v12}, Lhzt;->a(Lhzv;)V

    .line 1016
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 987
    :cond_9
    :try_start_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[CACHE] update send ret err:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1015
    iget-object v15, v4, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50030
    invoke-static {v12}, Lhzt;->a(Lhzv;)V

    .line 1016
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p2, :cond_1

    .line 149
    :cond_0
    const-string/jumbo v7, "[TAG] MsgCache"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] del, param err, cid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8022
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return v6

    .line 152
    :cond_1
    const/4 v5, 0x0

    .line 153
    .local v5, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 155
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v8, "[TAG] MsgCache"

    .line 9014
    const-string/jumbo v9, "im"

    invoke-static {v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] delete msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 157
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 159
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    invoke-virtual {v8, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 160
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isBurn()Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v7

    .line 161
    .local v2, "isSpecial":Z
    :goto_1
    iget-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v8, v9, v2}, Libu;->a(Ljava/lang/String;JZ)I

    move-result v4

    .line 162
    .local v4, "ret":I
    if-nez v4, :cond_3

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] msg del err "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .end local v2    # "isSpecial":Z
    .end local v4    # "ret":I
    :cond_2
    move v2, v6

    .line 160
    goto :goto_1

    .line 167
    .restart local v2    # "isSpecial":Z
    .restart local v4    # "ret":I
    :cond_3
    :try_start_1
    invoke-virtual {v0, p2}, Libs$a;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    .line 168
    sget-object v6, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 169
    invoke-static {p2}, Libv;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {p1, v3}, Libs;->f(Ljava/lang/String;Ljava/util/List;)V

    .line 175
    if-nez v2, :cond_4

    .line 176
    invoke-direct {p0, p1, p2}, Libs;->c(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_4
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    move v6, v7

    .line 181
    goto/16 :goto_0

    .line 180
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "isSpecial":Z
    .end local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "ret":I
    :catchall_0
    move-exception v6

    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 181
    throw v6
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v7

    .line 1357
    :goto_0
    return v6

    .line 1321
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1323
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1324
    iget v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, v8, :cond_2

    .line 1357
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1328
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    .line 1329
    .local v3, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v3, :cond_3

    iget-object v8, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v9, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v8, v9, :cond_3

    iget v8, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    if-ne v8, v6, :cond_3

    iget v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    if-eq v8, v6, :cond_3

    .line 1332
    const/4 v8, 0x1

    iput v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1333
    const-string/jumbo v8, "[DB] updateFlag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateFlag CurrentMessage="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", cache message="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 50056
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string/jumbo v8, "[DB] updateFlag"

    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAllStackMsg()Ljava/lang/String;

    move-result-object v9

    .line 50058
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1338
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1339
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "flag"

    invoke-virtual {v2, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1340
    const-string/jumbo v8, "ext"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v8, v9, v5}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1342
    .local v4, "ret":I
    if-nez v4, :cond_4

    .line 1357
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v6, v7

    goto/16 :goto_0

    .line 1344
    :cond_4
    :try_start_2
    iput p3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1346
    if-eqz v3, :cond_5

    .line 1347
    iput p3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1350
    :cond_5
    const-string/jumbo v8, "[DB] updateFlag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[DB] updateFlag mid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ext="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 50060
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1357
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 1352
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v4    # "ret":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1353
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1357
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v6, v7

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "unreadCount"    # I
    .param p4, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 860
    :cond_0
    const/4 v6, 0x0

    .line 894
    :goto_0
    return v6

    .line 861
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 863
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 865
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 866
    .local v1, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v1, :cond_2

    .line 867
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    invoke-virtual {v8, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Libu;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 868
    :cond_2
    if-eqz v1, :cond_5

    iget v6, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    if-lt p3, v6, :cond_3

    iget v6, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    if-nez v6, :cond_5

    .line 869
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "unreadCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string/jumbo v6, "totalCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    .line 873
    .local v2, "currentTime":J
    const-string/jumbo v6, "lastUpdateUnreadCount"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 874
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v6, v7, v5}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 875
    .local v4, "ret":I
    if-nez v4, :cond_4

    .line 894
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, 0x0

    goto :goto_0

    .line 877
    :cond_4
    :try_start_1
    iput p3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 878
    iput p4, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 879
    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 880
    iput p3, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 881
    iput p4, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 882
    iput-wide v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 884
    .end local v2    # "currentTime":J
    .end local v4    # "ret":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_5
    iget-object v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 885
    invoke-static {v1}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 887
    :cond_6
    if-nez p3, :cond_7

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 888
    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 890
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    :cond_7
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v1    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v6

    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;J)Z
    .locals 9
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "privateTag"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1028
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    .line 1054
    :goto_0
    return v4

    .line 1030
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1032
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1033
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, p3, v6

    if-nez v6, :cond_2

    .line 1054
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1037
    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "memberTag"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1039
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v6, v7, v3}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1040
    .local v2, "ret":I
    if-nez v2, :cond_3

    .line 1054
    iget-object v4, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto :goto_0

    .line 1042
    :cond_3
    :try_start_2
    iput-wide p3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 1044
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 1045
    .local v1, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_4

    .line 1046
    iput-wide p3, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 1048
    :cond_4
    iget-object v5, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1049
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1051
    :cond_5
    invoke-static {p1, p2}, Libs;->d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1054
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "ret":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;JLjava/util/Map;)Z
    .locals 13
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "privateTag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "privateExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v7, v8

    .line 1123
    :goto_0
    return v7

    .line 1095
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v2

    .line 1097
    .local v2, "cache":Libs$a;
    :try_start_0
    iget-object v9, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1098
    iget-wide v10, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    cmp-long v9, p3, v10

    if-nez v9, :cond_4

    if-nez p5, :cond_2

    iget-object v9, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v9, :cond_3

    :cond_2
    if-eqz p5, :cond_4

    iget-object v9, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1099
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 1123
    :cond_3
    iget-object v8, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1102
    :cond_4
    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1103
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "memberTag"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1104
    const-string/jumbo v9, "memberExtension"

    invoke-static/range {p5 .. p5}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-wide v10, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v10, v11, v6}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 1106
    .local v5, "ret":I
    if-nez v5, :cond_5

    .line 1123
    iget-object v7, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v7, v8

    goto :goto_0

    .line 1108
    :cond_5
    :try_start_2
    move-wide/from16 v0, p3

    iput-wide v0, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 1109
    invoke-static/range {p5 .. p5}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 1110
    .local v3, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1112
    invoke-virtual {v2, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    .line 1113
    .local v4, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v4, :cond_6

    .line 1114
    move-wide/from16 v0, p3

    iput-wide v0, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 1115
    iput-object v3, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1117
    :cond_6
    iget-object v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1118
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1120
    :cond_7
    invoke-static {p1, p2}, Libs;->d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1123
    iget-object v8, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v3    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v5    # "ret":I
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    iget-object v8, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 627
    :cond_0
    const-string/jumbo v7, "[TAG] MsgCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[CACHE] param err, cid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 37022
    const-string/jumbo v10, "im"

    invoke-static {v7, v9, v10}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 662
    :goto_0
    return v7

    .line 630
    :cond_1
    const/4 v5, 0x0

    .line 631
    .local v5, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 633
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v9, "[TAG] MsgCache"

    .line 38014
    const-string/jumbo v10, "im"

    invoke-static {v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 634
    iget-object v9, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 635
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    .line 636
    .local v3, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eq v3, p2, :cond_2

    if-eqz v3, :cond_2

    iget v9, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v9, v7, :cond_2

    .line 661
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 640
    :cond_2
    :try_start_1
    invoke-static {p2}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "extJsonStr":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "content"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string/jumbo v9, "ext"

    invoke-virtual {v6, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-wide v10, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v10, v11, v6}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v4

    .line 646
    .local v4, "ret":I
    if-nez v4, :cond_3

    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] update content err "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    move v7, v8

    .line 662
    goto :goto_0

    .line 651
    :cond_3
    if-eqz v3, :cond_4

    .line 652
    :try_start_2
    iput-object p3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 653
    const/4 v9, 0x1

    iput v9, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 655
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateEncryptMessageContentAndExtension mid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ext="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 657
    .end local v2    # "extJsonStr":Ljava/lang/String;
    .end local v3    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v4    # "ret":I
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 661
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 41030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    move v7, v8

    .line 662
    goto/16 :goto_0

    .line 661
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 42030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 662
    throw v7
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;Z)Z
    .locals 9
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p4, "notifyChange"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 668
    :cond_0
    const-string/jumbo v6, "[TAG] MsgCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] param err, cid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 43022
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_0
    return v5

    .line 671
    :cond_1
    const/4 v3, 0x0

    .line 672
    .local v3, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 674
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v6, "[TAG] MsgCache"

    .line 44014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 675
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 677
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 678
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "content"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v6, v7, v4}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v2

    .line 680
    .local v2, "ret":I
    if-nez v2, :cond_2

    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] update content err "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 685
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 686
    .local v1, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_3

    .line 687
    iput-object p3, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 689
    :cond_3
    if-eqz p4, :cond_4

    iget-object v5, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 690
    invoke-static {v1}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :cond_4
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 695
    const/4 v5, 0x1

    goto :goto_0

    .line 694
    .end local v1    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46030
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 695
    throw v5
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/Integer;)Z
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "recallStatus"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return v4

    .line 1174
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1177
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1178
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1179
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "recall"

    invoke-virtual {v3, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v6, v7, v3}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1182
    .local v2, "ret":I
    if-nez v2, :cond_2

    .line 1201
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1186
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 1188
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 1189
    .local v1, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_3

    .line 1190
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 1193
    :cond_3
    invoke-static {p1, p2}, Libs;->d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V

    .line 1195
    iget-object v4, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1196
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :cond_4
    iget-object v4, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .end local v1    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "ret":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "privateExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1059
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v5, v6

    .line 1087
    :goto_0
    return v5

    .line 1061
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1063
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1064
    if-nez p3, :cond_2

    iget-object v7, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    iget-object v7, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1065
    invoke-interface {p3, v7}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 1087
    :cond_3
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1069
    :cond_4
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1070
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "memberExtension"

    invoke-static {p3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v8, v9, v4}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 1072
    .local v3, "ret":I
    if-nez v3, :cond_5

    .line 1087
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v5, v6

    goto :goto_0

    .line 1074
    :cond_5
    :try_start_2
    invoke-static {p3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 1075
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v1, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1077
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    .line 1078
    .local v2, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v2, :cond_6

    .line 1079
    iput-object v1, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1081
    :cond_6
    iget-object v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1082
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1084
    :cond_7
    invoke-static {p1, p2}, Libs;->d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v3    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;Z)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p4, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
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
    .line 1269
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p2, :cond_1

    .line 1270
    :cond_0
    const/4 v8, 0x0

    .line 1314
    :goto_0
    return v8

    .line 1271
    :cond_1
    const/4 v6, 0x0

    .line 1272
    .local v6, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1274
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v8, "[TAG] MsgCache"

    .line 50047
    const-string/jumbo v9, "im"

    invoke-static {v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 1275
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1277
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    .local v7, "values":Landroid/content/ContentValues;
    :try_start_1
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    .line 1280
    .local v4, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v4, :cond_2

    iget-object v8, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v9, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v8, v9, :cond_2

    iget v8, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 1283
    const/4 v8, 0x1

    iput v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1284
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateLocalExtras CurrentMessage="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", cache message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 1285
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAllStackMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 1288
    :cond_2
    invoke-static {p2}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1289
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "local_extras"

    invoke-static {p3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1290
    const-string/jumbo v8, "ext"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v8, v9, v7}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 1292
    .local v5, "ret":I
    if-nez v5, :cond_3

    .line 1313
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50048
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1314
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1295
    :cond_3
    :try_start_2
    invoke-static {p3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 1296
    .local v3, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1298
    if-eqz v4, :cond_4

    .line 1299
    iput-object v3, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1302
    :cond_4
    if-eqz p4, :cond_5

    iget-object v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1303
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1306
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] update extras succ "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1313
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50050
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1314
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v5    # "ret":I
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1313
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50052
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1314
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1313
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    iget-object v9, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50054
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 1314
    throw v8
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "isNotify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    const-string/jumbo v7, "[TAG] MsgCache"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[CACHE] insert, param err, cid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3022
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v7, 0x0

    .line 137
    :goto_0
    return v7

    .line 76
    :cond_1
    const/4 v6, 0x0

    .line 77
    .local v6, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 79
    .local v0, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v7, "[TAG] MsgCache"

    .line 4014
    const-string/jumbo v8, "im"

    invoke-static {v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 80
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    invoke-static {p1, p2}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)J
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 89
    .local v4, "ret":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 90
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] insert db err "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 137
    const/4 v7, 0x0

    goto :goto_0

    .line 84
    .end local v4    # "ret":J
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Lcom/alibaba/wukong/im/base/WKException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] insert msg to db err: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/base/WKException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhzv;->b(Ljava/lang/String;)V

    .line 86
    new-instance v7, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v8, "save msg exp"

    invoke-direct {v7, v8}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .end local v2    # "e":Lcom/alibaba/wukong/im/base/WKException;
    :catchall_0
    move-exception v7

    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 137
    throw v7

    .line 92
    .restart local v4    # "ret":J
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 93
    :try_start_4
    invoke-static {p1, p2}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)J

    move-result-wide v4

    .line 94
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gtz v7, :cond_3

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] retry insert db err "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 137
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 100
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Libs$a;->b()Z

    move-result v7

    if-nez v7, :cond_4

    .line 101
    invoke-virtual {v0, p2}, Libs$a;->d(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    .line 104
    :cond_4
    iget-object v1, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 105
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_b

    if-eqz p3, :cond_b

    .line 107
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getParent()Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 108
    .local v3, "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isOffline(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isHide(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p2}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 110
    :cond_5
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v7

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v7, v8, v9}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 112
    invoke-static {v3}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 116
    :cond_6
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isOffline(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isHide(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {p2}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 118
    :cond_7
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v7

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v7, p1, v8}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 119
    invoke-static {v1}, Liau;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 122
    :cond_8
    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNormalConversation(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 123
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 125
    :cond_9
    invoke-static {p2}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 126
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Liar;->b(Ljava/lang/String;I)Z

    .line 128
    :cond_a
    invoke-static {p2}, Libv;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 133
    .end local v3    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_b
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[CACHE] insert msg succ, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 137
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 130
    .restart local v3    # "parent":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_c
    :try_start_6
    const-string/jumbo v7, "[CACHE] conv status invisible"

    invoke-virtual {v6, v7}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "mid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    const/4 v6, 0x0

    .line 816
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v6

    .line 819
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, p1, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    .line 820
    .local v3, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v3, :cond_0

    .line 823
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 825
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 827
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {v3}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v2

    .line 829
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "atStatus"

    invoke-static {p3}, Libt;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    const-string/jumbo v7, "ext"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9, v5}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 832
    .local v4, "ret":I
    if-nez v4, :cond_2

    .line 846
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 837
    :cond_2
    :try_start_1
    invoke-static {p3}, Lidz;->a(Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    iput-object v7, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 838
    invoke-static {v3}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 840
    const-string/jumbo v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "messageCache updateAtStatus mid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 47018
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 842
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "ret":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 843
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 470
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    :cond_0
    const-string/jumbo v3, "[TAG] MsgCache"

    const-string/jumbo v5, "[CACHE] param empty"

    .line 23018
    const-string/jumbo v6, "im"

    invoke-static {v3, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 490
    :goto_0
    return v3

    .line 474
    :cond_1
    const/4 v2, 0x0

    .line 476
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "[TAG] MsgCache"

    .line 24014
    const-string/jumbo v6, "im"

    invoke-static {v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] bulkInsertWithFlag size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    const/4 v5, 0x0

    invoke-static {v5}, Libs;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, "ret":I
    :try_start_1
    invoke-static {p1}, Libu;->a(Ljava/util/Map;)I
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 486
    :goto_1
    if-lez v1, :cond_2

    move v3, v4

    .line 24030
    :cond_2
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 490
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v4}, Libs;->a(Z)V

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Lcom/alibaba/wukong/im/base/WKException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[CACHE] bulkInsertWithFlag db err: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/base/WKException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 488
    .end local v0    # "e":Lcom/alibaba/wukong/im/base/WKException;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v3

    .line 25030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 490
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v4}, Libs;->a(Z)V

    throw v3
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "modifyTime"    # J

    .prologue
    .line 1764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    :goto_0
    return-void

    .line 1766
    :cond_0
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1768
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1769
    sget-object v3, Libs;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    iget-object v3, p0, Libs;->c:Libu;

    invoke-virtual {v3, p1, p2, p3}, Libu;->a(Ljava/lang/String;J)I

    move-result v3

    if-lez v3, :cond_2

    .line 1771
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1772
    .local v1, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {p1, v1}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    .line 1773
    .local v2, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1774
    invoke-static {v1}, Liau;->w(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1776
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    .end local v1    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v2    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    iget-object v3, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 495
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 496
    :cond_0
    const-string/jumbo v6, "[TAG] MsgCache"

    const-string/jumbo v7, "[CACHE] param empty"

    .line 26018
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return v5

    .line 499
    :cond_1
    const/4 v4, 0x0

    .line 500
    .local v4, "trace":Lhzv;
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v2

    .line 502
    .local v2, "messageListCache":Libs$a;
    :try_start_0
    iget-object v6, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 503
    const-string/jumbo v6, "[TAG] MsgCache"

    .line 27014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] mergeLastMsgWithFlag cid"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",msgId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    const/4 v3, 0x0

    .line 507
    .local v3, "ret":I
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 508
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-static {v1}, Libu;->a(Ljava/util/Map;)I
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 513
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :goto_1
    if-lez v3, :cond_2

    .line 27030
    :goto_2
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 516
    iget-object v6, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Lcom/alibaba/wukong/im/base/WKException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[CACHE] mergeLastMsgWithFlag db err: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/base/WKException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 515
    .end local v0    # "e":Lcom/alibaba/wukong/im/base/WKException;
    .end local v3    # "ret":I
    :catchall_0
    move-exception v5

    .line 28030
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 516
    iget-object v6, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 513
    .restart local v3    # "ret":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;I)Z
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "shieldStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return v4

    .line 1791
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1794
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1796
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1797
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "shieldStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1798
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v6, v7, v3}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1800
    .local v2, "ret":I
    if-nez v2, :cond_2

    .line 1820
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1805
    :cond_2
    :try_start_1
    iput p3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 1806
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 1807
    .local v1, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_3

    .line 1808
    iput p3, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 1811
    :cond_3
    invoke-static {p1, p2}, Libs;->d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V

    .line 1814
    iget-object v4, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1815
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1820
    :cond_4
    iget-object v4, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v4, 0x1

    goto :goto_0

    .end local v1    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "ret":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "unreadCount"    # I
    .param p4, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 905
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_1

    .line 936
    :cond_0
    :goto_0
    return v6

    .line 907
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 909
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 910
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    .line 911
    .local v2, "currentTime":J
    iput p3, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 912
    iput p4, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 913
    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 914
    iget-object v5, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 915
    .local v5, "status":Lcom/alibaba/wukong/im/Message$MessageStatus;
    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v5, v7, :cond_3

    .line 917
    :cond_2
    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v7, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 920
    :cond_3
    invoke-static {p1, p2}, Libu;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 921
    .local v4, "ret":I
    if-nez v4, :cond_4

    .line 936
    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 924
    :cond_4
    :try_start_1
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 925
    .local v1, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_5

    .line 926
    iget v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    iput v6, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 927
    iget v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    iput v6, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 928
    iget-object v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v6, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 929
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    iput-wide v6, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 931
    :cond_5
    iget-object v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 932
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    :cond_6
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, 0x1

    goto :goto_0

    .end local v1    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v2    # "currentTime":J
    .end local v4    # "ret":I
    .end local v5    # "status":Lcom/alibaba/wukong/im/Message$MessageStatus;
    :catchall_0
    move-exception v6

    iget-object v7, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;)Z
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return v5

    .line 1144
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 1146
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1148
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1149
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "extension"

    invoke-static {p3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-wide v6, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {p1, v6, v7, v4}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1151
    .local v3, "ret":I
    if-nez v3, :cond_2

    .line 1167
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1153
    :cond_2
    :try_start_1
    invoke-static {p3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 1154
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v1, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1156
    invoke-virtual {v0, p2}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    .line 1157
    .local v2, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v2, :cond_3

    .line 1158
    iput-object v1, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1160
    :cond_3
    iget-object v5, p2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1161
    invoke-static {p2}, Libv;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 1164
    :cond_4
    invoke-static {p1, p2}, Libs;->d(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v3    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 750
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v8

    .line 752
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 754
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v10, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 756
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v10, "isRead"

    sget-object v11, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v11}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    invoke-static {p1, p2, v7}, Libu;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 759
    .local v6, "ret":I
    if-nez v6, :cond_2

    .line 785
    iget-object v9, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 763
    :cond_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 764
    .local v3, "mid":Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 766
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Libs$a;->a(J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v5

    .line 767
    .local v5, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v5, :cond_3

    .line 768
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 785
    .end local v3    # "mid":Ljava/lang/Long;
    .end local v5    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "ret":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    iget-object v9, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 772
    .restart local v6    # "ret":I
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    invoke-virtual {v8, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 773
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isBurn()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 46669
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 46670
    :cond_5
    const/4 v4, 0x0

    .line 775
    .local v4, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :goto_2
    if-eqz v4, :cond_6

    .line 776
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 777
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-static {v2}, Libv;->b(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 785
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    .end local v4    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_6
    :goto_3
    iget-object v8, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v8, v9

    goto/16 :goto_0

    .line 46671
    :cond_7
    :try_start_3
    iget-object v8, p0, Libs;->c:Libu;

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v10

    invoke-virtual {v10, p1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v10

    invoke-virtual {v8, v10, p2}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 779
    :cond_8
    if-eqz v1, :cond_6

    .line 781
    invoke-static {p2}, Libv;->a(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 790
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 811
    :cond_0
    :goto_0
    return v5

    .line 792
    :cond_1
    invoke-static {p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v0

    .line 794
    .local v0, "cache":Libs$a;
    :try_start_0
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 795
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 796
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "viewStatus"

    sget-object v7, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    invoke-static {p1, p2, v4}, Libu;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 798
    .local v3, "ret":I
    if-nez v3, :cond_2

    .line 811
    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 801
    :cond_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 802
    .local v1, "mid":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 804
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Libs$a;->a(J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    .line 805
    .local v2, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v2, :cond_3

    .line 806
    sget-object v6, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v6

    iput v6, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 811
    .end local v1    # "mid":Ljava/lang/Long;
    .end local v2    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v3    # "ret":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    iget-object v6, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .restart local v3    # "ret":I
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    iget-object v5, v0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1206
    .local p2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1207
    :cond_0
    const-string/jumbo v13, "[TAG] MsgCache"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] recall, param err, cid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 50036
    const-string/jumbo v15, "im"

    invoke-static {v13, v14, v15}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const/4 v10, 0x0

    .line 1259
    :goto_0
    return-object v10

    .line 1210
    :cond_1
    const/4 v11, 0x0

    .line 1211
    .local v11, "trace":Lhzv;
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v2

    .line 1213
    .local v2, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v13, "[TAG] MsgCache"

    .line 50038
    const-string/jumbo v14, "im"

    invoke-static {v13, v14}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v11

    .line 1214
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1216
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 1217
    .local v3, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object/from16 v0, p0

    iget-object v13, v0, Libs;->c:Libu;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1218
    .local v4, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1219
    :cond_2
    const-string/jumbo v13, "[CACHE] msgs not exist"

    invoke-virtual {v11, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50039
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 1259
    const/4 v10, 0x0

    goto :goto_0

    .line 1223
    :cond_3
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1224
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "recall"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Libu;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)I

    move-result v9

    .line 1226
    .local v9, "ret":I
    if-gtz v9, :cond_4

    .line 1227
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] msgs bup err "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50041
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 1259
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1230
    :cond_4
    if-nez v3, :cond_6

    const/4 v5, 0x0

    .line 1231
    .local v5, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_1
    const/4 v7, 0x0

    .line 1232
    .local v7, "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v10, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1235
    .local v6, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    const/4 v14, 0x1

    iput v14, v6, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 1236
    invoke-virtual {v2, v6}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v8

    .line 1237
    .local v8, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v8, :cond_7

    .line 1238
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    :goto_3
    if-nez v7, :cond_5

    invoke-virtual {v6, v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1244
    move-object v7, v6

    goto :goto_2

    .line 1230
    .end local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object v5, v13

    goto :goto_1

    .line 1240
    .restart local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v6    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v8    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_7
    const/4 v14, 0x1

    iput v14, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 1241
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1258
    .end local v3    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v4    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v9    # "ret":I
    .end local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    .end local v12    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    iget-object v14, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50045
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 1259
    throw v13

    .line 1248
    .restart local v3    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v4    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v9    # "ret":I
    .restart local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] up msgs, sz="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lhzv;->a(Ljava/lang/String;)V

    .line 1249
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1250
    invoke-static {v10}, Libv;->b(Ljava/util/ArrayList;)V

    .line 1253
    :cond_9
    if-eqz v7, :cond_a

    .line 1254
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v7}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1258
    :cond_a
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50043
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method public final e(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1825
    .local p2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1826
    :cond_0
    const-string/jumbo v13, "[TAG] MsgCache"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[CACHE] shield, param err, cid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 50083
    const-string/jumbo v15, "im"

    invoke-static {v13, v14, v15}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const/4 v10, 0x0

    .line 1881
    :goto_0
    return-object v10

    .line 1830
    :cond_1
    const/4 v11, 0x0

    .line 1831
    .local v11, "trace":Lhzv;
    invoke-static/range {p1 .. p1}, Libs;->b(Ljava/lang/String;)Libs$a;

    move-result-object v2

    .line 1833
    .local v2, "cache":Libs$a;
    :try_start_0
    const-string/jumbo v13, "[TAG] MsgCache"

    .line 50085
    const-string/jumbo v14, "im"

    invoke-static {v13, v14}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v11

    .line 1834
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1836
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 1837
    .local v3, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object/from16 v0, p0

    iget-object v13, v0, Libs;->c:Libu;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1838
    .local v4, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1839
    :cond_2
    const-string/jumbo v13, "[CACHE] msgs not exist"

    invoke-virtual {v11, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50086
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 1881
    const/4 v10, 0x0

    goto :goto_0

    .line 1844
    :cond_3
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1845
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "shieldStatus"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1846
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Libu;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)I

    move-result v9

    .line 1847
    .local v9, "ret":I
    if-gtz v9, :cond_4

    .line 1848
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] msgs bup err "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1880
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50088
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 1881
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1852
    :cond_4
    if-nez v3, :cond_6

    const/4 v5, 0x0

    .line 1853
    .local v5, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_1
    const/4 v7, 0x0

    .line 1854
    .local v7, "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v10, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1857
    .local v6, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    const/4 v14, 0x1

    iput v14, v6, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 1858
    invoke-virtual {v2, v6}, Libs$a;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v8

    .line 1859
    .local v8, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-nez v8, :cond_7

    .line 1860
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    :goto_3
    if-nez v7, :cond_5

    invoke-virtual {v6, v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1866
    move-object v7, v6

    goto :goto_2

    .line 1852
    .end local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/im/message/MessageImpl;

    move-object v5, v13

    goto :goto_1

    .line 1862
    .restart local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v6    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v8    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_7
    const/4 v14, 0x1

    iput v14, v8, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 1863
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1880
    .end local v3    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v4    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v9    # "ret":I
    .end local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    .end local v12    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    iget-object v14, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50092
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    .line 1881
    throw v13

    .line 1870
    .restart local v3    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v4    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v5    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v7    # "newLast":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v9    # "ret":I
    .restart local v10    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE] up msgs, sz="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lhzv;->a(Ljava/lang/String;)V

    .line 1871
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1872
    invoke-static {v10}, Libv;->b(Ljava/util/ArrayList;)V

    .line 1875
    :cond_9
    if-eqz v7, :cond_a

    .line 1876
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v7}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1880
    :cond_a
    iget-object v13, v2, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50090
    invoke-static {v11}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method
