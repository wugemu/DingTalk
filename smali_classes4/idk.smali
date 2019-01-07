.class public final Lidk;
.super Lcom/alibaba/wukong/sync/SyncPackageDataHandler;
.source "ConversationSyncHandler.java"


# static fields
.field private static a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>()V

    .line 39
    sput-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f8

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 40
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f4

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 41
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3f5

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 42
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3fa

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 43
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3fb

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationsHideChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 44
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x402

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 45
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x404

    const-class v2, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 46
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x403

    const-class v2, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lidk;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncPackageDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 38
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
    .line 56
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncData;>;"
    const/16 v30, 0x0

    .line 58
    .local v30, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v32, "[TAG] SyncConv"

    .line 4014
    const-string/jumbo v33, "im"

    invoke-static/range {v32 .. v33}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v30

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string/jumbo v32, "[SYNC] sync conv is null"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4030
    invoke-static/range {v30 .. v30}, Lhzt;->a(Lhzv;)V

    .line 258
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v4, "absentConv":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_1
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_27

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/wukong/sync/SyncData;

    .line 67
    .local v22, "o":Lcom/alibaba/wukong/sync/SyncData;
    if-eqz v22, :cond_1

    .line 68
    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/wukong/sync/SyncData;->type:I

    move/from16 v31, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .local v31, "type":I
    const/16 v32, 0x3f8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    .line 71
    :try_start_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 72
    .local v20, "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->convNoticeModel:Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 74
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->convNoticeModel:Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;

    move-object/from16 v25, v0

    .line 75
    .local v25, "t":Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->conversationId:Ljava/lang/String;

    .line 76
    .local v6, "cid":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "sync conv "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->isKicked:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v16

    .line 78
    .local v16, "isKicked":Z
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->isQuit:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v17

    .line 79
    .local v17, "isQuit":Z
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->isDisband:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v15

    .line 80
    .local v15, "isDisband":Z
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 81
    .local v7, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v7, :cond_2

    .line 82
    if-nez v16, :cond_1

    if-nez v17, :cond_1

    if-nez v15, :cond_1

    .line 83
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 246
    .end local v6    # "cid":Ljava/lang/String;
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v15    # "isDisband":Z
    .end local v16    # "isKicked":Z
    .end local v17    # "isQuit":Z
    .end local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v25    # "t":Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;
    :catch_0
    move-exception v32

    :try_start_3
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] sync conv err, model not matched type="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 257
    .end local v4    # "absentConv":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v31    # "type":I
    :catchall_0
    move-exception v32

    .line 8030
    invoke-static/range {v30 .. v30}, Lhzt;->a(Lhzv;)V

    .line 257
    throw v32

    .line 85
    .restart local v4    # "absentConv":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "cid":Ljava/lang/String;
    .restart local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v15    # "isDisband":Z
    .restart local v16    # "isKicked":Z
    .restart local v17    # "isQuit":Z
    .restart local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .restart local v22    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .restart local v25    # "t":Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;
    .restart local v31    # "type":I
    :cond_2
    if-eqz v15, :cond_3

    .line 86
    :try_start_4
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] disband "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    sget-object v33, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 89
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Libs;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :cond_3
    if-eqz v16, :cond_4

    .line 92
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] kick out "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v32

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v36

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v36

    move-object/from16 v3, v33

    invoke-interface {v0, v6, v1, v2, v3}, Lcom/alibaba/wukong/im/GroupNickService;->removeGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 94
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    sget-object v33, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    .line 95
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->quitReasonType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 96
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->quitReasonType:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 4220
    invoke-virtual/range {v32 .. v32}, Liar;->a()Z

    move-result v35

    if-eqz v35, :cond_1

    .line 4222
    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v32

    .line 4223
    if-eqz v32, :cond_1

    .line 4225
    const-string/jumbo v35, "kick_reason_type"

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_4
    if-eqz v17, :cond_5

    .line 100
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] is quit "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v32

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v36

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v36

    move-object/from16 v3, v33

    invoke-interface {v0, v6, v1, v2, v3}, Lcom/alibaba/wukong/im/GroupNickService;->removeGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 102
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Liar;->b(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 104
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Libs;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_5
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] Conv change "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    .line 110
    .local v8, "conversationCache":Liar;
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->title()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 111
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    :cond_6
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->icon()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->icon:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 114
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->icon:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    :cond_7
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->memberCount:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v18

    .line 117
    .local v18, "memberCount":I
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 118
    move/from16 v0, v18

    invoke-virtual {v8, v6, v0}, Liar;->a(Ljava/lang/String;I)Z

    .line 120
    :cond_8
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->tag:Ljava/lang/Long;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v28

    .line 121
    .local v28, "tag":J
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->tag()J

    move-result-wide v32

    cmp-long v32, v32, v28

    if-eqz v32, :cond_9

    .line 122
    move-wide/from16 v0, v28

    invoke-virtual {v8, v6, v0, v1}, Liar;->b(Ljava/lang/String;J)Z

    .line 124
    :cond_9
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->extension:Ljava/util/Map;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 125
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->authority:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->d(Ljava/lang/String;I)Z

    .line 126
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->showHistoryType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getShowHistoryType()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 127
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->showHistoryType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->h(Ljava/lang/String;I)Z

    .line 130
    :cond_a
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    move-object/from16 v33, v0

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->groupIcon()Ljava/lang/String;

    move-result-object v35

    .line 4262
    const/16 v32, 0x0

    .line 4263
    if-eqz v33, :cond_b

    .line 4264
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v36

    .line 4265
    sget-object v37, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_12

    .line 4266
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b

    .line 4267
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 130
    :cond_b
    :goto_2
    if-nez v32, :cond_c

    .line 131
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/alibaba/wukong/im/GroupIconObject;->fromIconOption(Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/IconOptionModel;)Lcom/alibaba/wukong/im/GroupIconObject;

    move-result-object v23

    .line 132
    .local v23, "object":Lcom/alibaba/wukong/im/GroupIconObject;
    if-eqz v23, :cond_c

    .line 134
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v12, "groupIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupIconObject;>;"
    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v8, v12}, Liar;->f(Ljava/util/List;)Ljava/util/Map;

    .line 139
    .end local v12    # "groupIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupIconObject;>;"
    .end local v23    # "object":Lcom/alibaba/wukong/im/GroupIconObject;
    :cond_c
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->memberLimit:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v19

    .line 140
    .local v19, "memberLimit":I
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getMemberLimit()I

    move-result v32

    move/from16 v0, v19

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 141
    move/from16 v0, v19

    invoke-virtual {v8, v6, v0}, Liar;->e(Ljava/lang/String;I)Z

    .line 143
    :cond_d
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->superGroup:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v13

    .line 144
    .local v13, "groupLevel":I
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getGroupLevel()I

    move-result v32

    move/from16 v0, v32

    if-eq v0, v13, :cond_e

    .line 145
    invoke-virtual {v8, v6, v13}, Liar;->f(Ljava/lang/String;I)Z

    .line 147
    :cond_e
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getOwnerId()J

    move-result-wide v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->ownerId:Ljava/lang/Long;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v36

    cmp-long v32, v32, v36

    if-eqz v32, :cond_f

    .line 148
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v6, v32, v33

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->ownerId:Ljava/lang/Long;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v36

    move-object/from16 v0, v32

    move-wide/from16 v1, v36

    invoke-virtual {v8, v0, v1, v2}, Liar;->a([Ljava/lang/String;J)Z

    .line 150
    :cond_f
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    move-object/from16 v32, v0

    if-eqz v32, :cond_13

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;->type:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    :goto_3
    move/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->g(Ljava/lang/String;I)Z

    .line 151
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->banWordsType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    const/16 v32, 0x1

    :goto_4
    move/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->b(Ljava/lang/String;Z)Z

    .line 153
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v24

    .line 160
    .local v24, "oldStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    sget-object v32, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_10

    sget-object v32, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_10

    sget-object v32, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 162
    :cond_10
    sget-object v32, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)Z

    .line 164
    :cond_11
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v6, v7, v0}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/idl/im/models/SearchableModel;)V

    .line 166
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getAtAllType()I

    move-result v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->atAllType:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 167
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;->atAllType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v8, v6, v0}, Liar;->i(Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4269
    .end local v13    # "groupLevel":I
    .end local v19    # "memberLimit":I
    .end local v24    # "oldStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :cond_12
    sget-object v37, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    .line 4270
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b

    .line 4271
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    goto/16 :goto_2

    .line 150
    .restart local v13    # "groupLevel":I
    .restart local v19    # "memberLimit":I
    :cond_13
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 151
    :cond_14
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 171
    .end local v6    # "cid":Ljava/lang/String;
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v8    # "conversationCache":Liar;
    .end local v13    # "groupLevel":I
    .end local v15    # "isDisband":Z
    .end local v16    # "isKicked":Z
    .end local v17    # "isQuit":Z
    .end local v18    # "memberCount":I
    .end local v19    # "memberLimit":I
    .end local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v25    # "t":Lcom/alibaba/wukong/idl/im/models/ConversationNotificationModel;
    .end local v28    # "tag":J
    :cond_15
    const/16 v32, 0x3f4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 172
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 173
    .restart local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    .line 174
    .restart local v6    # "cid":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->notificationOff:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_16

    const/16 v21, 0x1

    .line 175
    .local v21, "notificationEnable":Z
    :goto_5
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] conv "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " notification enable "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 177
    .restart local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->notificationOff:Ljava/lang/Integer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isNotificationEnabled()Z

    move-result v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 178
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Liar;->a(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 174
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v21    # "notificationEnable":Z
    :cond_16
    const/16 v21, 0x0

    goto :goto_5

    .line 180
    .end local v6    # "cid":Ljava/lang/String;
    .end local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    :cond_17
    const/16 v32, 0x3f5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 181
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 182
    .restart local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    .line 183
    .restart local v6    # "cid":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->sort:Ljava/lang/Long;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v26

    .line 184
    .local v26, "sort":J
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] conv "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " sort "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 186
    .restart local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->sort:Ljava/lang/Long;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getTop()J

    move-result-wide v32

    cmp-long v32, v26, v32

    if-eqz v32, :cond_1

    .line 187
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v6, v1, v2}, Liar;->c(Ljava/lang/String;J)Z

    goto/16 :goto_1

    .line 189
    .end local v6    # "cid":Ljava/lang/String;
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v26    # "sort":J
    :cond_18
    const/16 v32, 0x3fa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 190
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 191
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 192
    .restart local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    .line 193
    .restart local v6    # "cid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v32

    if-eqz v32, :cond_19

    .line 5030
    invoke-static/range {v30 .. v30}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 196
    :cond_19
    :try_start_5
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "sync conv "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 198
    .restart local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-nez v7, :cond_1a

    .line 199
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 201
    :cond_1a
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] Conv ban change "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v8

    .line 204
    .restart local v8    # "conversationCache":Liar;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->inBanWhite:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    const/16 v32, 0x1

    move/from16 v33, v32

    .line 6017
    :goto_6
    const-string/jumbo v35, "inBanWhite"

    if-eqz v33, :cond_1e

    const/16 v32, 0x1

    :goto_7
    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v8, v6, v0, v1}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v32

    .line 6018
    if-nez v32, :cond_1f

    .line 205
    :cond_1b
    :goto_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->inBanBlack:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    const/16 v32, 0x1

    move/from16 v33, v32

    .line 6030
    :goto_9
    const-string/jumbo v35, "inBanBlack"

    if-eqz v33, :cond_21

    const/16 v32, 0x1

    :goto_a
    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v8, v6, v0, v1}, Liar;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v32

    .line 6031
    if-nez v32, :cond_22

    .line 206
    :cond_1c
    :goto_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->banWordsTime:Ljava/lang/Long;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v32

    .line 6043
    const-string/jumbo v35, "banWordsTime"

    move-object/from16 v0, v35

    move-wide/from16 v1, v32

    invoke-virtual {v8, v6, v0, v1, v2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v35

    .line 6044
    if-eqz v35, :cond_1

    .line 6046
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    move-wide/from16 v36, v0

    cmp-long v36, v36, v32

    if-eqz v36, :cond_1

    .line 6049
    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    .line 6050
    invoke-static/range {v35 .. v35}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 6051
    invoke-static/range {v35 .. v35}, Liau;->u(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_1

    .line 204
    :cond_1d
    const/16 v32, 0x0

    move/from16 v33, v32

    goto :goto_6

    .line 6017
    :cond_1e
    const/16 v32, 0x0

    goto :goto_7

    .line 6020
    :cond_1f
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    .line 6023
    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    .line 6024
    invoke-static/range {v32 .. v32}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v33

    if-eqz v33, :cond_1b

    .line 6025
    invoke-static/range {v32 .. v32}, Liau;->u(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_8

    .line 205
    :cond_20
    const/16 v32, 0x0

    move/from16 v33, v32

    goto :goto_9

    .line 6030
    :cond_21
    const/16 v32, 0x0

    goto :goto_a

    .line 6033
    :cond_22
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v33

    if-eq v0, v1, :cond_1c

    .line 6036
    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    .line 6037
    invoke-static/range {v32 .. v32}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 6038
    invoke-static/range {v32 .. v32}, Liau;->u(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_b

    .line 209
    .end local v6    # "cid":Ljava/lang/String;
    .end local v7    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v8    # "conversationCache":Liar;
    .end local v20    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    :cond_23
    const/16 v32, 0x3fb

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_24

    .line 210
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationsHideChangeModel;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 211
    const-string/jumbo v32, "[SYNC] Conv hide change"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v14, Lcom/alibaba/wukong/idl/im/models/ConversationsHideChangeModel;

    .line 213
    .local v14, "hideChangeModel":Lcom/alibaba/wukong/idl/im/models/ConversationsHideChangeModel;
    iget-object v9, v14, Lcom/alibaba/wukong/idl/im/models/ConversationsHideChangeModel;->conversationIds:Ljava/util/List;

    .line 214
    .local v9, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1

    .line 215
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] Conv hide change size="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v33

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Liar;->a([Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 220
    .end local v9    # "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "hideChangeModel":Lcom/alibaba/wukong/idl/im/models/ConversationsHideChangeModel;
    :cond_24
    const/16 v32, 0x402

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_25

    .line 221
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 222
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 223
    .local v5, "changeModel":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] Conv private extension chang, cid="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_1

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->memberExtension:Ljava/util/Map;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->memberExtension:Ljava/util/Map;

    move-object/from16 v32, v0

    .line 225
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1

    .line 226
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->memberExtension:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Liar;->b(Ljava/lang/String;Ljava/util/Map;)Z

    goto/16 :goto_1

    .line 229
    .end local v5    # "changeModel":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    :cond_25
    const/16 v32, 0x404

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 230
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 231
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;

    .line 232
    .local v20, "model":Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] Conv member role changed, cid="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", role = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->role:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", openIds "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->openIds:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->role:Ljava/lang/Integer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 234
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->role:Ljava/lang/Integer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;->openIds:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Liar;->a(Ljava/lang/String;ILjava/util/List;)Z

    goto/16 :goto_1

    .line 237
    .end local v20    # "model":Lcom/alibaba/wukong/idl/im/models/RoleChangeModel;
    :cond_26
    const/16 v32, 0x403

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 238
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 239
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;

    .line 240
    .restart local v5    # "changeModel":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->entranceId:Ljava/lang/Long;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    .line 241
    .local v10, "entranceId":J
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "[SYNC] Conv entranceChanged, cid="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ",newEntranceId:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v32

    iget-object v0, v5, Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;->conversationId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10, v11}, Liar;->a(Ljava/lang/String;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 249
    .end local v5    # "changeModel":Lcom/alibaba/wukong/idl/im/models/ConversationChangeModel;
    .end local v10    # "entranceId":J
    .end local v22    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v31    # "type":I
    :cond_27
    :try_start_6
    const-string/jumbo v32, "[SYNC] conv info ack succ"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 253
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_28

    .line 254
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v32

    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Liaw;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 7030
    :cond_28
    invoke-static/range {v30 .. v30}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method
