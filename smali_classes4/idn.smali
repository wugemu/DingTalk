.class public final Lidn;
.super Ljava/lang/Object;
.source "MessageUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lidn;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/im/MessageListener$DataType;)Z
    .locals 26
    .param p4, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "existConvMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .local p1, "absentConvMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .local p2, "readMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local p3, "viewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/16 v23, 0x0

    .line 38
    .local v23, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[TAG] SyncMsg"

    .line 2014
    const-string/jumbo v4, "im"

    invoke-static {v2, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v23

    .line 41
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v15, "lastMsgList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v18, "newUnreadList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v13, "incrUnreadList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 46
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 47
    .local v10, "cid":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 48
    .local v17, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 52
    .local v16, "msgSize":I
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Libs;->a(Ljava/util/List;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v14

    .line 55
    .local v14, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v10, :cond_1

    const-string/jumbo v2, ":"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 56
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    invoke-virtual {v14}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v6

    invoke-virtual {v2, v10, v6, v7}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v9

    .line 57
    .local v9, "cacheMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v9}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->setUnreadCount(I)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] update msgs lastMsg reset unreadCount cid="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " msg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 62
    .end local v9    # "cacheMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_1
    if-eqz v14, :cond_2

    .line 63
    invoke-interface {v15, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v10, v0, v5}, Libs;->a(Ljava/lang/String;Ljava/util/Collection;Z)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 74
    .local v8, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v8, :cond_3

    .line 75
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] save msgs succ cid="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " sz="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Libv;->a(Ljava/util/ArrayList;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 82
    :goto_2
    if-nez p2, :cond_4

    const/16 v19, 0x0

    .line 83
    .local v19, "readMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3
    if-nez p3, :cond_5

    const/16 v24, 0x0

    .line 84
    .local v24, "viewMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_4
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 85
    .local v11, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v8, v0, v1, v11}, Lidn;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v22

    .line 86
    .local v22, "ret":Z
    if-eqz v22, :cond_6

    .line 87
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 177
    .end local v8    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v10    # "cid":Ljava/lang/String;
    .end local v11    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .end local v13    # "incrUnreadList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v15    # "lastMsgList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v16    # "msgSize":I
    .end local v17    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v18    # "newUnreadList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "readMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v22    # "ret":Z
    .end local v24    # "viewMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    .line 5030
    invoke-static/range {v23 .. v23}, Lhzt;->a(Lhzv;)V

    .line 177
    throw v2

    .line 65
    .restart local v10    # "cid":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .restart local v13    # "incrUnreadList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v15    # "lastMsgList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v16    # "msgSize":I
    .restart local v17    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v18    # "newUnreadList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] getShowLastMsg is null cid="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] bulk save msg err cid="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " sz="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2030
    invoke-static/range {v23 .. v23}, Lhzt;->a(Lhzv;)V

    .line 177
    const/4 v2, 0x0

    .line 179
    .end local v10    # "cid":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .end local v14    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v16    # "msgSize":I
    .end local v17    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :goto_5
    return v2

    .line 78
    .restart local v8    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v10    # "cid":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .restart local v14    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v16    # "msgSize":I
    .restart local v17    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] save msgs err or exist cid="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " sz="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v19, v2

    goto/16 :goto_3

    .line 83
    .restart local v19    # "readMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v24, v2

    goto/16 :goto_4

    .line 89
    .restart local v11    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v22    # "ret":Z
    .restart local v24    # "viewMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    .end local v8    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v10    # "cid":Ljava/lang/String;
    .end local v11    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .end local v14    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v16    # "msgSize":I
    .end local v17    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v19    # "readMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v22    # "ret":Z
    .end local v24    # "viewMids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    if-nez p2, :cond_9

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v21, "resetUnreadList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6
    if-eqz p3, :cond_8

    .line 96
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 98
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 99
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 100
    .local v20, "resetCid":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 94
    .end local v20    # "resetCid":Ljava/lang/String;
    .end local v21    # "resetUnreadList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    new-instance v21, Ljava/util/HashSet;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    .line 104
    .restart local v21    # "resetUnreadList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    invoke-virtual {v2, v15}, Liar;->a(Ljava/util/Map;)V

    .line 106
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Liar;->a(Ljava/util/Map;Ljava/util/Map;)Z

    .line 110
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] Conv not exist, size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V

    .line 112
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 113
    .local v3, "cidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    .restart local v10    # "cid":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v10, v2, v6, v7}, Libs;->a(Ljava/lang/String;Ljava/util/Collection;ZI)Ljava/util/ArrayList;
    :try_end_5
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    .line 117
    :catch_1
    move-exception v2

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] bulk save msg err, absent cid="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3030
    invoke-static/range {v23 .. v23}, Lhzt;->a(Lhzv;)V

    .line 177
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 121
    .end local v10    # "cid":Ljava/lang/String;
    :cond_b
    :try_start_7
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v25

    new-instance v2, Lidn$1;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lidn$1;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4030
    .end local v3    # "cidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    invoke-static/range {v23 .. v23}, Lhzt;->a(Lhzv;)V

    .line 179
    const/4 v2, 0x1

    goto/16 :goto_5
.end method

.method private static b(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 12
    .param p3, "count"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .local p1, "readMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "viewMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 183
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 184
    .local v5, "size":I
    const/4 v2, 0x0

    .line 185
    .local v2, "isHit":Z
    const/4 v6, 0x0

    .line 186
    .local v6, "unreadCount":I
    if-nez p1, :cond_4

    move-object v4, v7

    .line 187
    .local v4, "readSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    if-nez p2, :cond_5

    .line 188
    .local v7, "viewSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_1
    move v0, v8

    .line 189
    .local v0, "existRead":Z
    :goto_2
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_a

    .line 190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 191
    .local v3, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5335
    if-eqz v3, :cond_2

    .line 5336
    iput-boolean v8, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 193
    :cond_2
    if-nez v2, :cond_3

    .line 194
    const/4 v2, 0x1

    .line 189
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 186
    .end local v0    # "existRead":Z
    .end local v1    # "i":I
    .end local v3    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v4    # "readSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v7    # "viewSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 187
    .restart local v4    # "readSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_5
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 188
    .restart local v7    # "viewSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 196
    .restart local v0    # "existRead":Z
    .restart local v1    # "i":I
    .restart local v3    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_7
    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 197
    sget-object v9, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v9

    .line 5340
    if-eqz v3, :cond_8

    .line 5341
    iput v9, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    .line 198
    :cond_8
    if-nez v2, :cond_3

    .line 199
    const/4 v2, 0x1

    goto :goto_4

    .line 202
    :cond_9
    if-nez v2, :cond_3

    invoke-static {v3}, Libt;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 207
    .end local v3    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_a
    invoke-virtual {p3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 208
    return v0
.end method
