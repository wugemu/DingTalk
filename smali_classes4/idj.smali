.class public final Lidj;
.super Lcom/alibaba/wukong/sync/SyncPackageDataHandler;
.source "CategorySyncHandler.java"


# static fields
.field private static a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>()V

    .line 49
    sput-object v0, Lidj;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3ff

    const-class v2, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 50
    sget-object v0, Lidj;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x3fe

    const-class v2, Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 51
    sget-object v0, Lidj;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    const/16 v1, 0x401

    const-class v2, Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lidj;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncPackageDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 26
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
    .line 61
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncData;>;"
    const/16 v17, 0x0

    .line 63
    .local v17, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v19, "[TAG] SyncCategory"

    .line 1014
    const-string/jumbo v20, "im"

    invoke-static/range {v19 .. v20}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v17

    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string/jumbo v19, "[SYNC] sync category is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static/range {v17 .. v17}, Lhzt;->a(Lhzv;)V

    .line 167
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/sync/SyncData;

    .line 70
    .local v15, "o":Lcom/alibaba/wukong/sync/SyncData;
    if-eqz v15, :cond_1

    .line 71
    iget v0, v15, Lcom/alibaba/wukong/sync/SyncData;->type:I

    move/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .local v18, "type":I
    const/16 v20, 0x3ff

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 74
    :try_start_2
    iget-object v12, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;

    .line 75
    .local v12, "model":Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;
    if-eqz v12, :cond_2

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->opType:Ljava/lang/Integer;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 76
    :cond_2
    const-string/jumbo v20, "[SYNC] sync category change model or type is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 161
    .end local v12    # "model":Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;
    :catch_0
    move-exception v20

    :try_start_3
    const-string/jumbo v20, "category sync fail"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    .line 162
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync category err, model not matched type="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 166
    .end local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v18    # "type":I
    :catchall_0
    move-exception v19

    .line 3030
    invoke-static/range {v17 .. v17}, Lhzt;->a(Lhzv;)V

    .line 166
    throw v19

    .line 80
    .restart local v12    # "model":Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;
    .restart local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .restart local v18    # "type":I
    :cond_3
    :try_start_4
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync category type "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->opType:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->opType:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 137
    :cond_4
    :goto_2
    const-string/jumbo v20, "[SYNC] category info ack succ"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 159
    .end local v12    # "model":Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    goto/16 :goto_1

    .line 85
    .restart local v12    # "model":Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;
    :pswitch_0
    iget-object v6, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->categoryModel:Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    .line 86
    .local v6, "categoryModel":Lcom/alibaba/wukong/idl/im/models/CategoryModel;
    if-eqz v6, :cond_6

    .line 87
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync category id "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {v6}, Lcom/alibaba/wukong/im/category/CategoryObject;->fromIDL(Lcom/alibaba/wukong/idl/im/models/CategoryModel;)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v7

    .line 89
    .local v7, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Liaj;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)Z

    goto :goto_2

    .line 91
    .end local v7    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_6
    const-string/jumbo v20, "[SYNC] sync category model null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 95
    .end local v6    # "categoryModel":Lcom/alibaba/wukong/idl/im/models/CategoryModel;
    :pswitch_1
    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->categoryModel:Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 96
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync category id "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->categoryModel:Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v20

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->categoryModel:Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Liaj;->a(J)Z

    move-result v16

    .line 98
    .local v16, "success":Z
    if-eqz v16, :cond_4

    .line 99
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync delete suc category id "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->categoryModel:Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v20

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->categoryModel:Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Liar;->a(J)Ljava/util/List;

    move-result-object v10

    .line 102
    .local v10, "convs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_4

    .line 103
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v8, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 105
    .local v9, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v9, :cond_7

    .line 108
    invoke-virtual {v9}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 111
    .end local v9    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_8
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v20

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Liar;->a(Ljava/util/List;Ljava/util/List;J)Ljava/util/List;

    goto/16 :goto_2

    .line 116
    .end local v8    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "convs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v16    # "success":Z
    :cond_9
    const-string/jumbo v20, "[SYNC] sync category model null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 120
    :pswitch_2
    iget-object v14, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->orderedCategoryIds:Ljava/util/List;

    .line 121
    .local v14, "newIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    .line 122
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Liaj;->b(Ljava/util/List;)Z

    goto/16 :goto_2

    .line 124
    :cond_a
    const-string/jumbo v20, "[SYNC] sync category order null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    .end local v14    # "newIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_3
    iget-object v13, v12, Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;->moveConversationChangeModel:Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;

    .line 129
    .local v13, "moveModel":Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;
    if-eqz v13, :cond_b

    iget-object v0, v13, Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;->destCategoryId:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    iget-object v0, v13, Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;->cids:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    iget-object v0, v13, Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;->cids:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 130
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v20

    iget-object v0, v13, Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;->cids:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v13, Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;->destCategoryId:Ljava/lang/Long;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Liar;->a(Ljava/util/List;Ljava/util/List;J)Ljava/util/List;

    move-result-object v11

    .line 131
    .local v11, "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v11}, Liap;->a(Ljava/util/List;)V

    goto/16 :goto_2

    .line 133
    .end local v11    # "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v20, "[SYNC] sync category move null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 138
    .end local v12    # "model":Lcom/alibaba/wukong/idl/im/models/CategoryChangeModel;
    .end local v13    # "moveModel":Lcom/alibaba/wukong/idl/im/models/MoveConversationChangeModel;
    :cond_c
    const/16 v20, 0x3fe

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 139
    iget-object v12, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;

    .line 140
    .local v12, "model":Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;
    if-eqz v12, :cond_d

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;->cursor:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    .line 141
    :cond_d
    const-string/jumbo v20, "[SYNC] sync at version change model or cursor is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 147
    :goto_5
    const-string/jumbo v20, "[SYNC] sync at version ack succ"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 143
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync at version "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;->cursor:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;->cursor:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Libv;->a(J)V

    goto :goto_5

    .line 148
    .end local v12    # "model":Lcom/alibaba/wukong/idl/im/models/UpdateAtMeStatusModel;
    :cond_f
    const/16 v20, 0x401

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 149
    iget-object v12, v15, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;

    .line 150
    .local v12, "model":Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;
    if-eqz v12, :cond_10

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;->createAt:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-nez v20, :cond_11

    .line 151
    :cond_10
    const-string/jumbo v20, "[SYNC] sync at clear change model or createAt is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 157
    :goto_6
    const-string/jumbo v20, "[SYNC] sync at clear ack succ"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 153
    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[SYNC] sync at clear createAt "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;->createAt:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;->createAt:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Libv;->b(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 2030
    .end local v12    # "model":Lcom/alibaba/wukong/idl/im/models/AtListClearEventModel;
    .end local v15    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v18    # "type":I
    :cond_12
    invoke-static/range {v17 .. v17}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
