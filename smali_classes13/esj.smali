.class final Lesj;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "RecommendSynHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Leph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 25
    const/16 v0, 0x1389

    const-class v1, Leph;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/sync/SyncType;I)V
    .locals 2
    .param p1, "syncType"    # Lcom/alibaba/wukong/sync/SyncType;
    .param p2, "type"    # I

    .prologue
    .line 29
    const/16 v0, 0x1f40

    const-class v1, Leph;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 12
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leph;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Leph;>;"
    const/4 v4, 0x0

    .line 36
    .local v4, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v5, "search_rec"

    .line 1096
    const-string/jumbo v6, "search"

    invoke-static {v6, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v4

    .line 37
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 38
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    :cond_0
    const-string/jumbo v5, "[SYNC]onReceived models empty"

    invoke-virtual {v4, v5}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 71
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[SYNC] onReceived "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhzv;->a(Ljava/lang/String;)V

    .line 2018
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "pushClickResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leph;

    .line 48
    .local v3, "result":Leph;
    if-eqz v3, :cond_2

    .line 52
    iget-object v1, v3, Leph;->c:Leot;

    .line 53
    .local v1, "pushClickResult":Leot;
    if-eqz v1, :cond_3

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 67
    .end local v1    # "pushClickResult":Leot;
    .end local v2    # "pushClickResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    .end local v3    # "result":Leph;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "[SYNC] onReceived "

    invoke-static {v5, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9100
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 2086
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pushClickResult":Leot;
    .restart local v2    # "pushClickResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    .restart local v3    # "result":Leph;
    :cond_3
    :try_start_3
    invoke-static {v3}, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->fromIdl(Leph;)Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;

    move-result-object v6

    .line 2088
    if-nez v6, :cond_4

    .line 2089
    if-eqz v4, :cond_2

    .line 2090
    const-string/jumbo v6, "[SYNC] result empty"

    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 70
    .end local v1    # "pushClickResult":Leot;
    .end local v2    # "pushClickResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    .end local v3    # "result":Leph;
    :catchall_0
    move-exception v5

    .line 10100
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    .line 70
    throw v5

    .line 2095
    .restart local v1    # "pushClickResult":Leot;
    .restart local v2    # "pushClickResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    .restart local v3    # "result":Leph;
    :cond_4
    :try_start_4
    new-instance v7, Lesi;

    invoke-direct {v7}, Lesi;-><init>()V

    .line 2096
    iget-object v8, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    .line 3044
    iput-object v8, v7, Lesi;->b:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    .line 3094
    const/4 v8, 0x1

    iput-boolean v8, v7, Lesi;->h:Z

    .line 2098
    iget-object v8, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 4040
    iput-object v8, v7, Lesi;->a:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 4086
    const/4 v8, 0x1

    iput-boolean v8, v7, Lesi;->g:Z

    .line 2100
    invoke-virtual {v7}, Lesi;->a()V

    .line 2101
    if-eqz v4, :cond_2

    .line 2102
    iget-object v7, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    if-eqz v7, :cond_5

    .line 2103
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[SYNC] group: updateTime:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    iget-wide v10, v9, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->updateTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",size:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    iget v9, v9, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->size:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lhzv;->a(Ljava/lang/String;)V

    .line 2105
    :cond_5
    iget-object v7, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    if-eqz v7, :cond_6

    .line 2106
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[SYNC] user: updateTime:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    iget-wide v10, v9, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->updateTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",size:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    iget v9, v9, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->size:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lhzv;->a(Ljava/lang/String;)V

    .line 2108
    :cond_6
    iget-object v7, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    if-nez v7, :cond_2

    iget-object v6, v6, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    if-nez v6, :cond_2

    .line 2109
    const-string/jumbo v6, "[SYNC] both result empty"

    invoke-virtual {v4, v6}, Lhzv;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 60
    .end local v1    # "pushClickResult":Leot;
    .end local v3    # "result":Leph;
    :cond_7
    new-instance v5, Lesj$1;

    invoke-direct {v5, p0}, Lesj$1;-><init>(Lesj;)V

    .line 5075
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5077
    invoke-interface {v5}, Lcou;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8100
    :cond_8
    :goto_2
    invoke-static {v4}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 6051
    :cond_9
    :try_start_5
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 6052
    if-eqz v5, :cond_8

    .line 6053
    invoke-interface {v5}, Lcou;->a()V

    goto :goto_2

    .line 6058
    :cond_a
    new-instance v6, Leng;

    invoke-direct {v6}, Leng;-><init>()V

    .line 7030
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7031
    if-eqz v5, :cond_8

    .line 7032
    invoke-interface {v5}, Lcou;->a()V

    goto :goto_2

    .line 7174
    :cond_b
    const-string/jumbo v7, "AssureSyncHandler"

    invoke-static {v7}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    .line 7037
    new-instance v8, Leng$1;

    invoke-direct {v8, v6, v2, v5}, Leng$1;-><init>(Leng;Ljava/util/List;Lcou;)V

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
