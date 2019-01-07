.class public Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;
.super Ljava/lang/Object;
.source "AutoTryTaskDatasource.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static buildAutoTryTask(Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;)Lyr;
    .locals 13
    .param p0, "entry"    # Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 109
    if-nez p0, :cond_0

    move-object v3, v5

    .line 129
    :goto_0
    return-object v3

    .line 113
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->taskClassName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    .local v0, "attrObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 115
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 116
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "object":Ljava/lang/Object;
    const-class v7, Lyr;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyr;

    .line 118
    .local v3, "task":Lyr;
    iget-wide v8, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->accountId:J

    .line 3050
    iput-wide v8, v3, Lyr;->x:J

    .line 119
    iget-object v9, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->autoTryFailureType:Ljava/lang/String;

    .line 4041
    invoke-static {}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->values()[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    move-result-object v10

    .line 4042
    array-length v11, v10

    move v8, v6

    :goto_1
    if-ge v8, v11, :cond_2

    aget-object v7, v10, v8

    .line 4043
    invoke-virtual {v7}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4070
    :goto_2
    iput-object v7, v3, Lyr;->v:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    .line 120
    iget-object v8, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->autoTryNetwork:Ljava/lang/String;

    .line 5009
    invoke-static {}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->values()[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    move-result-object v9

    .line 5010
    array-length v10, v9

    move v7, v6

    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v6, v9, v7

    .line 5011
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 5062
    :goto_4
    iput-object v6, v3, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 121
    iget-object v6, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->referenceid:Ljava/lang/String;

    .line 5082
    iput-object v6, v3, Lyr;->w:Ljava/lang/String;

    .line 122
    iget v6, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->tryCount:I

    .line 5109
    iput v6, v3, Lyr;->y:I

    .line 123
    const/4 v6, 0x0

    .line 6094
    iput-boolean v6, v3, Lyr;->t:Z

    .line 124
    iget-object v6, p0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->taskContext:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lyr;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "attrObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "task":Lyr;
    :catch_0
    move-exception v4

    .line 127
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v5

    .line 129
    goto :goto_0

    .line 4042
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "attrObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "task":Lyr;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 4047
    :cond_2
    :try_start_1
    sget-object v7, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    goto :goto_2

    .line 5010
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 5015
    :cond_4
    sget-object v6, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static buildTaskEntry(Ljava/lang/String;Lyr;)Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;
    .locals 4
    .param p0, "cmmdBizUUID"    # Ljava/lang/String;
    .param p1, "task"    # Lyr;

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;-><init>()V

    .line 1046
    .local v0, "entry":Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;
    iget-wide v2, p1, Lyr;->x:J

    .line 90
    iput-wide v2, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->accountId:J

    .line 91
    iput-object p0, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->cmmdBizUUId:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->getTaskFullName(Lyr;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->taskClassName:Ljava/lang/String;

    .line 1058
    iget-object v1, p1, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 93
    invoke-static {v1}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy;->a(Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->autoTryNetwork:Ljava/lang/String;

    .line 1066
    iget-object v1, p1, Lyr;->v:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    .line 2051
    if-nez v1, :cond_0

    .line 2052
    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->name()Ljava/lang/String;

    move-result-object v1

    .line 94
    :goto_0
    iput-object v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->autoTryFailureType:Ljava/lang/String;

    .line 2078
    iget-object v1, p1, Lyr;->w:Ljava/lang/String;

    .line 95
    iput-object v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->referenceid:Ljava/lang/String;

    .line 2102
    iget v1, p1, Lyr;->y:I

    .line 96
    iput v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->tryCount:I

    .line 97
    invoke-virtual {p1}, Lyr;->a_()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->taskContext:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lyr;->c_()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->maxTry:I

    .line 99
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->taskStatus:I

    .line 100
    return-object v0

    .line 2054
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static deleteAutoTaskByAccountId(J)V
    .locals 4
    .param p0, "accountId"    # J

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 50
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "accountId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 52
    return-void
.end method

.method private static deleteInvalidTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "deleteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 83
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/alimei/orm/query/Delete;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 85
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " invalid auto try task:---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->d(Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method private static final getTaskFullName(Lyr;)Ljava/lang/String;
    .locals 1
    .param p0, "task"    # Lyr;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized handleAutoTryTaskStatus(ZLjava/lang/String;Lyr;)V
    .locals 16
    .param p0, "isSuccess"    # Z
    .param p1, "cmmdBizUUID"    # Ljava/lang/String;
    .param p2, "task"    # Lyr;

    .prologue
    .line 138
    const-class v12, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;

    monitor-enter v12

    if-nez p2, :cond_0

    .line 198
    :goto_0
    monitor-exit v12

    return-void

    .line 141
    :cond_0
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "handleAutoTryTaskStatus isSuccess: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lyx;->b(Ljava/lang/String;)I

    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, "isDeleteTask":Z
    const/4 v5, 0x0

    .line 144
    .local v5, "failureCount":I
    const/4 v9, 0x0

    .line 147
    .local v9, "taskStatus":I
    if-nez p0, :cond_2

    .line 6102
    move-object/from16 v0, p2

    iget v11, v0, Lyr;->y:I

    .line 151
    add-int/lit8 v5, v11, 0x1

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "handleAutoTryTaskStatus failureCount: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lyx;->b(Ljava/lang/String;)I

    .line 154
    invoke-virtual/range {p2 .. p2}, Lyr;->c_()I

    move-result v11

    if-lt v5, v11, :cond_1

    .line 7066
    move-object/from16 v0, p2

    iget-object v4, v0, Lyr;->v:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    .line 156
    .local v4, "failure":Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;
    if-eqz v4, :cond_2

    sget-object v11, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Remain:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    if-ne v4, v11, :cond_2

    .line 157
    const/4 v9, 0x1

    .line 165
    .end local v4    # "failure":Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 166
    new-instance v2, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v11, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v2, v11}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 167
    .local v2, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v11, "accountId"

    .line 8046
    move-object/from16 v0, p2

    iget-wide v14, v0, Lyr;->x:J

    .line 167
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v11, "taskclsname"

    invoke-static/range {p2 .. p2}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->getTaskFullName(Lyr;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v11, "bizuuid"

    move-object/from16 v0, p1

    invoke-virtual {v2, v11, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v2    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v5    # "failureCount":I
    .end local v6    # "isDeleteTask":Z
    .end local v9    # "taskStatus":I
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 159
    .restart local v5    # "failureCount":I
    .restart local v6    # "isDeleteTask":Z
    .restart local v9    # "taskStatus":I
    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 173
    :cond_3
    :try_start_1
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v8, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 174
    .local v8, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "_id"

    aput-object v14, v11, v13

    invoke-virtual {v8, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 175
    const-string/jumbo v11, "accountId"

    .line 9046
    move-object/from16 v0, p2

    iget-wide v14, v0, Lyr;->x:J

    .line 175
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v11, "taskclsname"

    invoke-static/range {p2 .. p2}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->getTaskFullName(Lyr;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v11, "bizuuid"

    move-object/from16 v0, p1

    invoke-virtual {v8, v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    .line 180
    .local v3, "entry":Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;
    if-nez v3, :cond_4

    .line 181
    invoke-static/range {p1 .. p2}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->buildTaskEntry(Ljava/lang/String;Lyr;)Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->save()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->id:J

    .line 196
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "handleAutoTryTaskStatus autoTaskSaveId: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v3, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->id:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lyx;->b(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :cond_4
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    const-class v11, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v10, v11}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 186
    .local v10, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string/jumbo v11, "taskstatus"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9090
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lyr;->t:Z

    .line 188
    if-eqz v11, :cond_5

    .line 10058
    move-object/from16 v0, p2

    iget-object v11, v0, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 189
    invoke-static {v11}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy;->a(Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "networkType":Ljava/lang/String;
    const-string/jumbo v11, "networktype"

    invoke-virtual {v10, v11, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string/jumbo v11, "bizcontext"

    invoke-virtual/range {p2 .. p2}, Lyr;->a_()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    .end local v7    # "networkType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "_id"

    iget-wide v14, v3, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static hasShouldAutoTryTask(J)Z
    .locals 4
    .param p0, "accountId"    # J

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 39
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v1, "taskstatus"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v1

    return v1
.end method

.method public static queryAllShouldTryTask(J)Ljava/util/Map;
    .locals 10
    .param p0, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lyr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v5, "tasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lyr;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "deleteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-direct {v3, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 62
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v6, "taskstatus"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;>;"
    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    .line 67
    .local v2, "entry":Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;
    invoke-static {v2}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->buildAutoTryTask(Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;)Lyr;

    move-result-object v4

    .line 68
    .local v4, "task":Lyr;
    if-nez v4, :cond_0

    .line 69
    iget-wide v8, v2, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object v7, v2, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;->cmmdBizUUId:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    .end local v2    # "entry":Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;
    .end local v4    # "task":Lyr;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 76
    invoke-static {v0}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->deleteInvalidTask(Ljava/util/List;)V

    .line 78
    :cond_2
    return-object v5
.end method
