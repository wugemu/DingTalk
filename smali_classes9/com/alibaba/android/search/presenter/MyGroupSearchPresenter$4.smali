.class final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;
.super Ljava/lang/Object;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v10, 0x50

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 410
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;

    .line 1414
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v3, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-nez v0, :cond_4

    :cond_0
    move v1, v2

    .line 1415
    :goto_0
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 1414
    :goto_1
    invoke-static {v3, v4, v1, v0, v5}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1417
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1422
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_6

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Local:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 2087
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 1424
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    .line 1429
    :goto_2
    if-eqz p1, :cond_2

    .line 1430
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    .line 3720
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_7

    .line 1432
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    .line 1433
    const-string/jumbo v0, "[Group]searchRemoteRecommendGroups %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v4, v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v4, v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 4087
    iget-object v4, v4, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 1433
    invoke-virtual {v4}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 5050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    if-le v0, v10, :cond_b

    .line 1439
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v2, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    .line 1444
    :cond_3
    :goto_4
    return-void

    .line 1414
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    .line 1415
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->logMap:Ljava/lang/String;

    goto/16 :goto_1

    .line 1426
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    :try_start_2
    const-string/jumbo v1, "searchRemoteRecommendGroups"

    invoke-static {v1, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1438
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    if-le v0, v10, :cond_c

    .line 1439
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v2, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    goto :goto_4

    .line 3724
    :cond_7
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3725
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    .line 3726
    if-eqz v0, :cond_8

    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_8

    .line 3730
    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 3731
    if-eqz v0, :cond_8

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3732
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3736
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v5, :cond_9

    .line 3737
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 3738
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "cid"

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3739
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "title"

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3740
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "score"

    const-string/jumbo v7, "1"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "modifyTime"

    invoke-static {}, Liaf;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    :cond_9
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->fromCid(Ljava/lang/String;I)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3745
    iget-object v5, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 1438
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    if-le v1, v10, :cond_d

    .line 1439
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 1440
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    .line 1442
    :goto_6
    throw v0

    .line 3748
    :cond_a
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3749
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lesm;->b(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1442
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_4

    :cond_d
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_6
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchRemoteRecommendGroups: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 460
    const-string/jumbo v1, "[Group]searchRemoteRecommendGroups exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-static {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    .line 467
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Local:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 1087
    iput-object v2, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 468
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$4;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 450
    return-void
.end method
