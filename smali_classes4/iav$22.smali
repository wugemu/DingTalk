.class final Liav$22;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liav;->a(ILcom/alibaba/wukong/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 191
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Liav$22;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private static a(Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;)Ljava/util/List;
    .locals 26
    .param p0, "rpcDo"    # Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v17, "resultConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-nez p0, :cond_0

    .line 278
    :goto_0
    return-object v17

    .line 199
    :cond_0
    const-string/jumbo v21, "[TAG] ConvRpc"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "[RPC] listNewestExtV3 hasMore :"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->hasMore:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1018
    const-string/jumbo v23, "im"

    invoke-static/range {v21 .. v23}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v14, "primaryAndEntranceConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v19, "secondaryConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v15, "primaryCidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->conversations:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->conversations:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    .line 213
    .local v13, "model":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v13, v0, v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v8

    .line 214
    .local v8, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v8, :cond_1

    .line 215
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v8    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v13    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->complexConversationModelList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->complexConversationModelList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_7

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->complexConversationModelList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;

    .line 225
    .local v7, "complexConversationModel":Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;
    if-eqz v7, :cond_3

    iget-object v0, v7, Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;->entryConversationModel:Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 228
    iget-object v12, v7, Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;->entryConversationModel:Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;

    .line 229
    .local v12, "entryConversationModel":Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;
    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;->entranceId:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    .line 230
    .local v10, "entranceId":J
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-lez v22, :cond_3

    .line 234
    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;->baseConversationModel:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    move-object/from16 v22, v0

    .line 235
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v24

    iget-object v0, v12, Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;->entrancePropertyModel:Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;

    move-object/from16 v23, v0

    .line 234
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;JLcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v9

    .line 237
    .local v9, "entranceConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v0, v7, Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;->conversationModelList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    iget-object v0, v7, Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;->conversationModelList:Ljava/util/List;

    move-object/from16 v22, v0

    .line 238
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    .line 240
    iget-object v0, v7, Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;->conversationModelList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    .line 241
    .local v20, "secondaryConversationModel":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v18

    .line 242
    .local v18, "secondaryConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v18, :cond_4

    .line 243
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 248
    .end local v18    # "secondaryConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v20    # "secondaryConversationModel":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    :cond_5
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_6

    if-eqz v9, :cond_6

    .line 249
    invoke-virtual {v9}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/wukong/im/Conversation;

    .line 250
    .local v16, "removedConversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v16, :cond_6

    .line 251
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    .end local v16    # "removedConversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_6
    if-eqz v9, :cond_3

    .line 255
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 261
    .end local v7    # "complexConversationModel":Lcom/alibaba/wukong/idl/im/models/ComplexConversationModel;
    .end local v9    # "entranceConversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v10    # "entranceId":J
    .end local v12    # "entryConversationModel":Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;
    :cond_7
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->categories:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->categories:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a

    .line 266
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v6, "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->categories:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    .line 268
    .local v4, "categoryModel":Lcom/alibaba/wukong/idl/im/models/CategoryModel;
    invoke-static {v4}, Lcom/alibaba/wukong/im/category/CategoryObject;->fromIDL(Lcom/alibaba/wukong/idl/im/models/CategoryModel;)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v5

    .line 269
    .local v5, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v5, :cond_8

    .line 270
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 273
    .end local v4    # "categoryModel":Lcom/alibaba/wukong/idl/im/models/CategoryModel;
    .end local v5    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_9
    const-string/jumbo v21, "[TAG] ConvRpc"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "[RPC] listNewestExt category size "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2018
    const-string/jumbo v23, "im"

    invoke-static/range {v21 .. v23}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Liaj;->a(Ljava/util/List;)Z

    goto/16 :goto_0

    .line 276
    .end local v6    # "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    :cond_a
    const-string/jumbo v21, "[TAG] ConvRpc"

    const-string/jumbo v22, "[RPC] listNewestExt category null"

    .line 3018
    const-string/jumbo v23, "im"

    invoke-static/range {v21 .. v23}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;

    invoke-static {p1}, Liav$22;->a(Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Liav$22;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method
