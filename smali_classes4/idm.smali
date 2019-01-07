.class public final Lidm;
.super Lcom/alibaba/wukong/sync/SyncPackageDataHandler;
.source "MessageSyncHandler.java"


# static fields
.field private static a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>()V

    .line 46
    sput-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3e8

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 47
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3e9

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 48
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3ea

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 49
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3eb

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 50
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3ec

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 51
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3ed

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 52
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3ef

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 53
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f0

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 54
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f1

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 55
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f7

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 56
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x400

    const-class v2, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 58
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3ee

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 59
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f2

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 60
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f3

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lidm;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncPackageDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 65
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<TV;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 454
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 74
    .param p2, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncData;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncData;>;"
    const/16 v69, 0x0

    .line 72
    .local v69, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v4, "[TAG] SyncMsg"

    .line 1014
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v69

    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string/jumbo v4, "[SYNC] sync msg data is null"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static/range {v69 .. v69}, Lhzt;->a(Lhzv;)V

    .line 449
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v24, "existConvMsgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v11, "absentConvMsgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    new-instance v54, Ljava/util/HashMap;

    invoke-direct/range {v54 .. v54}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v54, "openIdExMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;>;"
    const/16 v58, 0x0

    .line 84
    .local v58, "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/16 v20, 0x0

    .line 85
    .local v20, "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/16 v64, 0x0

    .line 86
    .local v64, "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v14, 0x0

    .line 87
    .local v14, "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    const/16 v25, 0x0

    .line 88
    .local v25, "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 89
    .local v27, "hideListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v48, 0x0

    .line 90
    .local v48, "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    const/16 v46, 0x0

    .line 91
    .local v46, "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/16 v51, 0x0

    .line 92
    .local v51, "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/16 v44, 0x0

    .line 93
    .local v44, "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    const/16 v40, 0x0

    .line 94
    .local v40, "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    const/16 v37, 0x0

    .line 95
    .local v37, "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    const/16 v42, 0x0

    .line 96
    .local v42, "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    const/16 v35, 0x0

    .line 97
    .local v35, "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v50, "msgStr":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v36, v35

    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .local v36, "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v43, v42

    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .local v43, "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v38, v37

    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .local v38, "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v41, v40

    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .local v41, "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v45, v44

    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .local v45, "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v52, v51

    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v52, "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v47, v46

    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v47, "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v49, v48

    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .local v49, "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v26, v25

    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .local v26, "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v15, v14

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .local v15, "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v65, v64

    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v65, "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v21, v20

    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v21, "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v59, v58

    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v59, "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/alibaba/wukong/sync/SyncData;

    .line 99
    .local v53, "o":Lcom/alibaba/wukong/sync/SyncData;
    if-eqz v53, :cond_1

    .line 100
    move-object/from16 v0, v53

    iget v0, v0, Lcom/alibaba/wukong/sync/SyncData;->type:I

    move/from16 v70, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .local v70, "type":I
    const/16 v4, 0x3e8

    move/from16 v0, v70

    if-ne v0, v4, :cond_5

    .line 104
    :try_start_2
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    .line 105
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] sync msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v13, v4, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    .line 107
    .local v13, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    invoke-virtual {v4, v13}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v17

    .line 108
    .local v17, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v1}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 109
    .local v7, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_2

    .line 111
    invoke-static/range {v17 .. v17}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] absent conv "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 113
    invoke-static {v11, v13}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    .line 114
    .local v39, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    move-object/from16 v0, v39

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_2
    :goto_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v4, v4, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v0, v4, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    move-object/from16 v55, v0

    .line 124
    .local v55, "openIdModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    if-eqz v55, :cond_3

    .line 125
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :cond_3
    :try_start_3
    invoke-static {}, Libl;->a()Libl;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    .line 129
    invoke-static {v6}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v8, v8, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->groupNickTag:Ljava/lang/Integer;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v8

    int-to-long v8, v8

    .line 128
    invoke-virtual/range {v4 .. v9}, Libl;->a(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v35, v36

    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v17    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v55    # "openIdModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    :goto_3
    move-object/from16 v36, v35

    .line 285
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    goto/16 :goto_1

    .line 116
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v13    # "cid":Ljava/lang/String;
    .restart local v17    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    :cond_4
    :try_start_4
    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    .line 117
    .restart local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    move-object/from16 v0, v39

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 284
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v17    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .end local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catch_0
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] sync msg err, model not matched type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    move-object/from16 v36, v35

    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v43, v42

    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v38, v37

    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v41, v40

    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v45, v44

    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v52, v51

    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v47, v46

    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v49, v48

    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v26, v25

    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v15, v14

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v65, v64

    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v21, v20

    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v59, v58

    .line 286
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_1

    .line 130
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v13    # "cid":Ljava/lang/String;
    .restart local v17    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .restart local v55    # "openIdModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    :catch_1
    move-exception v22

    .line 131
    .local v22, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] fetch group nick err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 133
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto :goto_5

    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v17    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v55    # "openIdModel":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_5
    const/16 v4, 0x3e9

    move/from16 v0, v70

    if-ne v0, v4, :cond_a

    .line 135
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 137
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    const/16 v29, 0x0

    .line 139
    .local v29, "isConsumed":Z
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->shieldStatus:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_48

    .line 142
    if-nez v65, :cond_47

    .line 143
    new-instance v64, Ljava/util/HashMap;

    invoke-direct/range {v64 .. v64}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_6
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] shield msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v31

    iget-object v13, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    .line 149
    .restart local v13    # "cid":Ljava/lang/String;
    move-object/from16 v0, v64

    invoke-static {v0, v13}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v63

    .line 150
    .local v63, "shieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    move-object/from16 v0, v63

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    invoke-virtual {v4, v13}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v16

    .line 153
    .local v16, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageModel:Lcom/alibaba/wukong/idl/im/models/MessageModel;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v8

    move-object/from16 v0, v16

    invoke-static {v4, v8, v9, v0}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 154
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_6

    .line 155
    invoke-static/range {v16 .. v16}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 156
    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    .line 157
    .restart local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v66

    .line 158
    .local v66, "size":I
    if-lez v66, :cond_8

    add-int/lit8 v4, v66, -0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_8

    .line 159
    add-int/lit8 v4, v66, -0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v4, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 166
    .end local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v66    # "size":I
    :cond_6
    :goto_7
    const/16 v29, 0x1

    .line 169
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v63    # "shieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_8
    if-nez v29, :cond_46

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->recallStatus:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_46

    .line 170
    if-nez v59, :cond_45

    .line 171
    new-instance v58, Ljava/util/HashMap;

    invoke-direct/range {v58 .. v58}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 172
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_9
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] recall msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, v31

    iget-object v13, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    .line 174
    .restart local v13    # "cid":Ljava/lang/String;
    move-object/from16 v0, v58

    invoke-static {v0, v13}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v57

    .line 175
    .local v57, "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    move-object/from16 v0, v57

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    invoke-virtual {v4, v13}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v16

    .line 177
    .restart local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageModel:Lcom/alibaba/wukong/idl/im/models/MessageModel;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v8

    move-object/from16 v0, v16

    invoke-static {v4, v8, v9, v0}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 178
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_7

    .line 179
    invoke-static/range {v16 .. v16}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isAbsentOrParent(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 180
    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    .line 181
    .restart local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v66

    .line 182
    .restart local v66    # "size":I
    if-lez v66, :cond_9

    add-int/lit8 v4, v66, -0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_9

    .line 183
    add-int/lit8 v4, v66, -0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v4, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 189
    .end local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v66    # "size":I
    :cond_7
    :goto_a
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->extension:Ljava/util/Map;

    if-eqz v4, :cond_44

    .line 191
    if-nez v38, :cond_43

    .line 192
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 194
    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :goto_b
    :try_start_9
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_c
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v20, v21

    .line 197
    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .line 161
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v13    # "cid":Ljava/lang/String;
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v63    # "shieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v66    # "size":I
    :cond_8
    :try_start_a
    move-object/from16 v0, v39

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_7

    .line 284
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v63    # "shieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v66    # "size":I
    :catch_2
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .line 185
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v13    # "cid":Ljava/lang/String;
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v66    # "size":I
    :cond_9
    :try_start_b
    move-object/from16 v0, v39

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_a

    .line 284
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v39    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v66    # "size":I
    :catch_3
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .line 197
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v29    # "isConsumed":Z
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_a
    const/16 v4, 0x3ea

    move/from16 v0, v70

    if-ne v0, v4, :cond_b

    .line 199
    :try_start_c
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 200
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v32

    .line 201
    .local v32, "messageId":J
    if-nez v21, :cond_42

    .line 202
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 203
    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_d
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] del msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 205
    .local v19, "delList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 206
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v19    # "delList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v32    # "messageId":J
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_b
    const/16 v4, 0x3ee

    move/from16 v0, v70

    if-ne v0, v4, :cond_c

    .line 207
    :try_start_e
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 208
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] clear conv "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    if-nez v15, :cond_41

    .line 212
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 213
    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    :goto_e
    :try_start_f
    move-object/from16 v0, v31

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 214
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_c
    const/16 v4, 0x3f2

    move/from16 v0, v70

    if-ne v0, v4, :cond_d

    .line 215
    :try_start_10
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 216
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] clear & hide conv "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->status:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    if-nez v4, :cond_40

    .line 220
    if-nez v26, :cond_3f

    .line 221
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 222
    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    :goto_f
    :try_start_11
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_10
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 224
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_d
    const/16 v4, 0x3f3

    move/from16 v0, v70

    if-ne v0, v4, :cond_f

    .line 225
    :try_start_12
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 226
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] hide conv "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->status:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    if-nez v4, :cond_e

    .line 228
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 230
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_f
    const/16 v4, 0x3f0

    move/from16 v0, v70

    if-ne v0, v4, :cond_11

    .line 231
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 232
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sender unread="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    if-nez v4, :cond_10

    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 234
    if-nez v49, :cond_3e

    .line 235
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 236
    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :goto_12
    :try_start_13
    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 237
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .line 232
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_10
    :try_start_14
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v4, v4, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    goto :goto_11

    .line 237
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    :cond_11
    const/16 v4, 0x3ef

    move/from16 v0, v70

    if-ne v0, v4, :cond_15

    .line 238
    if-nez v47, :cond_3d

    .line 239
    new-instance v46, Ljava/util/HashMap;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashMap;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 240
    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_13
    :try_start_15
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;

    iget-object v0, v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;->messageChangeList:Ljava/util/List;

    move-object/from16 v34, v0

    .line 241
    .local v34, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    if-nez v34, :cond_12

    move-object/from16 v47, v46

    .line 242
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_1

    .line 243
    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_12
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 244
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->receiverMessageStatus:Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    move-object/from16 v60, v0

    .line 245
    .local v60, "receiverStatus":Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    if-eqz v60, :cond_13

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;->readStatus:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v5

    sget-object v6, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v6

    if-ne v5, v6, :cond_13

    .line 246
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-static {v0, v5}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v56

    .line 247
    .local v56, "readList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_14

    .line 284
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v34    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v56    # "readList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v60    # "receiverStatus":Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    :catch_4
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v34    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_14
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 250
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v34    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_15
    const/16 v4, 0x3f7

    move/from16 v0, v70

    if-ne v0, v4, :cond_17

    .line 251
    if-nez v52, :cond_3c

    .line 252
    :try_start_16
    new-instance v51, Ljava/util/HashMap;

    invoke-direct/range {v51 .. v51}, Ljava/util/HashMap;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 253
    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_15
    :try_start_17
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 254
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->viewStatus:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v73

    .line 255
    .local v73, "viewStatus":I
    sget-object v4, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v4

    move/from16 v0, v73

    if-ne v0, v4, :cond_16

    .line 256
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-static {v0, v4}, Lidm;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v72

    .line 257
    .local v72, "viewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .end local v72    # "viewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_16
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 259
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v73    # "viewStatus":I
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_17
    const/16 v4, 0x3eb

    move/from16 v0, v70

    if-ne v0, v4, :cond_18

    .line 260
    if-nez v38, :cond_3b

    .line 261
    :try_start_18
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 262
    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :goto_16
    :try_start_19
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .line 263
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_18
    const/16 v4, 0x3ec

    move/from16 v0, v70

    if-ne v0, v4, :cond_19

    .line 264
    :try_start_1a
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 265
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " private tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateTag:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 266
    if-nez v45, :cond_3a

    .line 267
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 268
    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :goto_17
    :try_start_1b
    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .line 269
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_19
    const/16 v4, 0x3ed

    move/from16 v0, v70

    if-ne v0, v4, :cond_1a

    .line 270
    if-nez v41, :cond_39

    .line 271
    :try_start_1c
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 272
    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :goto_18
    :try_start_1d
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    move-object/from16 v0, v40

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .line 273
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1a
    const/16 v4, 0x3f1

    move/from16 v0, v70

    if-ne v0, v4, :cond_1b

    .line 274
    if-nez v43, :cond_38

    .line 275
    :try_start_1e
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 276
    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :goto_19
    :try_start_1f
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_5

    .line 277
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1b
    const/16 v4, 0x400

    move/from16 v0, v70

    if-ne v0, v4, :cond_37

    .line 278
    if-nez v36, :cond_36

    .line 279
    :try_start_20
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 281
    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    :goto_1a
    :try_start_21
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_3

    .line 284
    :catch_5
    move-exception v4

    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .line 289
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v53    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v70    # "type":I
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1c
    :try_start_22
    invoke-static {}, Lido;->a()Lido;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lido;->a(ILjava/lang/String;)V

    .line 291
    if-eqz v26, :cond_1e

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 292
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 293
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v31

    iget-object v9, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Liar;->a([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 294
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->modifyTime:Ljava/lang/Long;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->b(Ljava/lang/String;J)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_1b

    .line 448
    .end local v11    # "absentConvMsgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v24    # "existConvMsgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v27    # "hideListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v50    # "msgStr":Ljava/lang/StringBuilder;
    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v54    # "openIdExMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;>;"
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v4

    .line 3030
    invoke-static/range {v69 .. v69}, Lhzt;->a(Lhzv;)V

    .line 448
    throw v4

    .line 300
    .restart local v11    # "absentConvMsgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v24    # "existConvMsgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v27    # "hideListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v50    # "msgStr":Ljava/lang/StringBuilder;
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v54    # "openIdExMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_1e
    if-eqz v15, :cond_1f

    :try_start_23
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 301
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 302
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->modifyTime:Ljava/lang/Long;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->b(Ljava/lang/String;J)V

    goto :goto_1c

    .line 307
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->getReconnectType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    sget-object v18, Lcom/alibaba/wukong/im/MessageListener$DataType;->RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

    .line 308
    .local v18, "dataType":Lcom/alibaba/wukong/im/MessageListener$DataType;
    :goto_1d
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    move-object/from16 v2, v52

    move-object/from16 v3, v18

    invoke-static {v0, v11, v1, v2, v3}, Lidn;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/im/MessageListener$DataType;)Z

    move-result v62

    .line 309
    .local v62, "ret":Z
    if-eqz v62, :cond_21

    .line 310
    const-string/jumbo v4, "[SYNC] msg ack succ"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 317
    :goto_1e
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 318
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Liar;->a([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 319
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v5

    .line 320
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Liar;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    .line 321
    .local v28, "invalidOrAbsentCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v28, :cond_22

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 322
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 323
    .restart local v13    # "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    invoke-virtual {v5, v13}, Libs;->a(Ljava/lang/String;)V

    goto :goto_1f

    .line 307
    .end local v13    # "cid":Ljava/lang/String;
    .end local v18    # "dataType":Lcom/alibaba/wukong/im/MessageListener$DataType;
    .end local v28    # "invalidOrAbsentCidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v62    # "ret":Z
    :cond_20
    sget-object v18, Lcom/alibaba/wukong/im/MessageListener$DataType;->SYNC:Lcom/alibaba/wukong/im/MessageListener$DataType;

    goto :goto_1d

    .line 313
    .restart local v18    # "dataType":Lcom/alibaba/wukong/im/MessageListener$DataType;
    .restart local v62    # "ret":Z
    :cond_21
    const-string/jumbo v4, "[SYNC] msg ack fail"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v4, "msg fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v4, "SyncMsg"

    const-string/jumbo v5, "101007"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 329
    :cond_22
    if-eqz v59, :cond_23

    invoke-interface/range {v59 .. v59}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 330
    invoke-interface/range {v59 .. v59}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 331
    .local v23, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v8, v4, v5}, Libs;->d(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    goto :goto_20

    .line 336
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_23
    if-eqz v65, :cond_24

    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 337
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 338
    .restart local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v8, v4, v5}, Libs;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    goto :goto_21

    .line 343
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_24
    if-eqz v21, :cond_25

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 344
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 345
    .restart local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v8, v4, v5}, Libs;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    goto :goto_22

    .line 350
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_25
    if-eqz v49, :cond_28

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 351
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 352
    .local v67, "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    move-object/from16 v0, v67

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    if-eqz v5, :cond_26

    .line 354
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 355
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    move-object/from16 v0, v67

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v71

    .line 356
    .local v71, "unreadCount":I
    move-object/from16 v0, v67

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->totalCount:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v68

    .line 357
    .local v68, "totalCount":I
    if-eqz v7, :cond_27

    .line 358
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->unReadCount()I

    move-result v5

    move/from16 v0, v71

    if-le v5, v0, :cond_26

    .line 359
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move/from16 v0, v71

    move/from16 v1, v68

    invoke-virtual {v5, v6, v7, v0, v1}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z

    move-result v61

    .line 360
    .local v61, "result":Z
    if-nez v61, :cond_26

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[SYNC] msg update unread count fail mid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Lhzv;->b(Ljava/lang/String;)V

    goto :goto_23

    .line 364
    .end local v61    # "result":Z
    :cond_27
    move-object/from16 v0, v67

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->uuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 365
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v8

    move-object/from16 v0, v67

    iget-object v10, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6, v8, v9, v10}, Libs;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 366
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move/from16 v0, v71

    move/from16 v1, v68

    invoke-virtual {v5, v6, v7, v0, v1}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z

    move-result v61

    .line 367
    .restart local v61    # "result":Z
    if-nez v61, :cond_26

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[SYNC] msg update unread count fail mid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Lhzv;->b(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 375
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v61    # "result":Z
    .end local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v68    # "totalCount":I
    .end local v71    # "unreadCount":I
    :cond_28
    if-eqz v47, :cond_29

    invoke-interface/range {v47 .. v47}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 376
    invoke-interface/range {v47 .. v47}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 377
    .restart local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v8, v4, v5}, Libs;->b(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_24

    .line 382
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_29
    if-eqz v38, :cond_2b

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 383
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 384
    .restart local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 385
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_2a

    .line 386
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->extension:Ljava/util/Map;

    invoke-virtual {v5, v6, v7, v8}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;)Z

    goto :goto_25

    .line 392
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    :cond_2b
    if-eqz v45, :cond_2d

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 393
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 394
    .restart local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 395
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_2c

    .line 396
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateTag:Ljava/lang/Long;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;J)Z

    goto :goto_26

    .line 402
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    :cond_2d
    if-eqz v41, :cond_2f

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 403
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 404
    .restart local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 405
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_2e

    .line 406
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateExtension:Ljava/util/Map;

    invoke-virtual {v5, v6, v7, v8}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;)Z

    goto :goto_27

    .line 412
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    :cond_2f
    if-eqz v43, :cond_31

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 413
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 414
    .restart local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 415
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v7, :cond_30

    .line 416
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v5

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateTag:Ljava/lang/Long;

    .line 417
    invoke-static {v8}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    move-object/from16 v0, v67

    iget-object v10, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateExtension:Ljava/util/Map;

    .line 416
    invoke-virtual/range {v5 .. v10}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;JLjava/util/Map;)Z

    goto :goto_28

    .line 423
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v67    # "t":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    :cond_31
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lidr;->a(Ljava/util/Collection;)V

    .line 426
    if-eqz v52, :cond_32

    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    .line 427
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 428
    .restart local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v8

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v8, v4, v5}, Libs;->c(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_29

    .line 433
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_32
    if-eqz v36, :cond_35

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_35

    .line 434
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;

    .line 435
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;
    if-eqz v31, :cond_33

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;->messageChangeList:Ljava/util/List;

    if-eqz v5, :cond_33

    .line 436
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;->messageChangeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_34
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;

    .line 437
    .local v30, "m":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    if-eqz v30, :cond_34

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->atMeStatus:Ljava/util/List;

    if-eqz v6, :cond_34

    .line 438
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->atMeStatus:Ljava/util/List;

    .line 439
    invoke-static {v6}, Lcom/alibaba/wukong/im/AtMeStatusObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 440
    .local v12, "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v6

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    invoke-virtual {v6, v8, v9, v12}, Libs;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_2a

    .line 2030
    .end local v12    # "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    .end local v30    # "m":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;
    :cond_35
    invoke-static/range {v69 .. v69}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 284
    .end local v18    # "dataType":Lcom/alibaba/wukong/im/MessageListener$DataType;
    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v62    # "ret":Z
    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v13    # "cid":Ljava/lang/String;
    .restart local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v29    # "isConsumed":Z
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v53    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .restart local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v70    # "type":I
    :catch_6
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v29    # "isConsumed":Z
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v32    # "messageId":J
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_7
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v32    # "messageId":J
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_8
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_9
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_a
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_b
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_c
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_d
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_e
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :catch_f
    move-exception v4

    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_4

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_36
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    goto/16 :goto_1a

    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    :cond_37
    move-object/from16 v35, v36

    .end local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    goto/16 :goto_3

    .end local v35    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    .restart local v36    # "msgAtMeStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeListModel;>;"
    :cond_38
    move-object/from16 v42, v43

    .end local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_19

    .end local v42    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v43    # "msgPriTagExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :cond_39
    move-object/from16 v40, v41

    .end local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_18

    .end local v40    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .restart local v41    # "msgPriExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :cond_3a
    move-object/from16 v44, v45

    .end local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_17

    .end local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .end local v44    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v45    # "msgPriTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :cond_3b
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_16

    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :cond_3c
    move-object/from16 v51, v52

    .end local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_15

    .end local v51    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v52    # "msgViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_3d
    move-object/from16 v46, v47

    .end local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_13

    .end local v46    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v31    # "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .restart local v47    # "msgReceiverReadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_3e
    move-object/from16 v48, v49

    .end local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_12

    .end local v48    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .restart local v49    # "msgSenderReadList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :cond_3f
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    goto/16 :goto_f

    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    :cond_40
    move-object/from16 v25, v26

    .end local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    goto/16 :goto_10

    .end local v25    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v26    # "hideClearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    :cond_41
    move-object v14, v15

    .end local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    goto/16 :goto_e

    .end local v14    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .restart local v15    # "clearList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;>;"
    .local v31, "model":Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
    .restart local v32    # "messageId":J
    :cond_42
    move-object/from16 v20, v21

    .end local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_d

    .end local v20    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v32    # "messageId":J
    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v13    # "cid":Ljava/lang/String;
    .restart local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v21    # "deleteListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v29    # "isConsumed":Z
    .restart local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_43
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_b

    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    :cond_44
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    goto/16 :goto_c

    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v13    # "cid":Ljava/lang/String;
    .end local v16    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v57    # "recallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_45
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_9

    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_46
    move-object/from16 v37, v38

    .end local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    move-object/from16 v58, v59

    .end local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_c

    .end local v37    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .end local v58    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v38    # "msgExtList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;>;"
    .restart local v59    # "recallListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_47
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_6

    .end local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_48
    move-object/from16 v64, v65

    .end local v65    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v64    # "shieldListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto/16 :goto_8
.end method
