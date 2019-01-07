.class public final Lifs;
.super Ljava/lang/Object;
.source "SyncDB.java"


# direct methods
.method public static a(Lift;)J
    .locals 11
    .param p0, "data"    # Lift;

    .prologue
    .line 1030
    sget-object v6, Lifq$a;->a:Lifq;

    .line 1060
    iget-object v0, v6, Lifq;->b:Ljava/lang/String;

    .line 29
    .local v0, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2024
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 29
    if-eqz v6, :cond_2

    .line 30
    :cond_0
    const-wide/16 v4, 0x0

    .line 47
    :cond_1
    :goto_0
    return-wide v4

    .line 31
    :cond_2
    const-wide/16 v4, 0x0

    .line 32
    .local v4, "ret":J
    const/4 v3, 0x0

    .line 34
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    const-class v7, Lcom/alibaba/wukong/sync/upstream/e;

    const-class v8, Lcom/alibaba/wukong/sync/upstream/e;

    const-string/jumbo v9, "tb_sync"

    const/4 v10, 0x4

    invoke-static {v8, v9, v10}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 36
    new-instance v2, Lcom/alibaba/wukong/sync/upstream/e;

    invoke-direct {v2}, Lcom/alibaba/wukong/sync/upstream/e;-><init>()V

    .line 2129
    .local v2, "entry":Lcom/alibaba/wukong/sync/upstream/e;
    if-eqz p0, :cond_3

    .line 2130
    iget-object v6, p0, Lift;->a:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mOperation:Ljava/lang/String;

    .line 2131
    iget-object v6, p0, Lift;->b:[B

    iput-object v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mPayload:[B

    .line 2132
    iget-object v6, p0, Lift;->c:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mTag:Ljava/lang/String;

    .line 2133
    iget-object v6, p0, Lift;->d:Ljava/util/Map;

    invoke-static {v6}, Lifr;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mHeaders:Ljava/lang/String;

    .line 2134
    iget-wide v6, p0, Lift;->e:J

    iput-wide v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mTime:J

    .line 2135
    iget-object v6, p0, Lift;->f:Ljava/util/Map;

    invoke-static {v6}, Lifr;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mExtras:Ljava/lang/String;

    .line 2136
    iget v6, p0, Lift;->g:I

    iput v6, v2, Lcom/alibaba/wukong/sync/upstream/e;->mRetry:I

    .line 38
    :cond_3
    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/sync/upstream/e;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 39
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    .line 40
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 41
    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/upstream/e;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto :goto_0

    .line 42
    .end local v2    # "entry":Lcom/alibaba/wukong/sync/upstream/e;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "SyncDB"

    const-string/jumbo v7, "insert error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method public static a(I)Ljava/util/List;
    .locals 14
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lift;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 8030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 8060
    iget-object v1, v0, Lifq;->b:Ljava/lang/String;

    .line 9024
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v12

    .line 85
    :cond_1
    const/4 v9, 0x0

    .line 86
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lift;>;"
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/sync/upstream/e;

    const-string/jumbo v3, "tb_sync"

    const-class v4, Lcom/alibaba/wukong/sync/upstream/e;

    invoke-static {v4}, Lcom/alibaba/wukong/sync/upstream/e;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "time ASC"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "100"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 90
    if-eqz v9, :cond_2

    .line 91
    new-instance v11, Lcom/alibaba/wukong/sync/upstream/e;

    invoke-direct {v11}, Lcom/alibaba/wukong/sync/upstream/e;-><init>()V

    .line 92
    .local v11, "entry":Lcom/alibaba/wukong/sync/upstream/e;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v11, v9}, Lcom/alibaba/wukong/sync/upstream/e;->fillWithCursor(Landroid/database/Cursor;)V

    .line 9117
    new-instance v0, Lift;

    invoke-direct {v0}, Lift;-><init>()V

    .line 9118
    iget-object v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mOperation:Ljava/lang/String;

    iput-object v2, v0, Lift;->a:Ljava/lang/String;

    .line 9119
    iget-object v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mPayload:[B

    iput-object v2, v0, Lift;->b:[B

    .line 9120
    iget-object v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mTag:Ljava/lang/String;

    iput-object v2, v0, Lift;->c:Ljava/lang/String;

    .line 9121
    iget-object v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mHeaders:Ljava/lang/String;

    invoke-static {v2}, Lifr;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lift;->d:Ljava/util/Map;

    .line 9122
    iget-wide v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mTime:J

    iput-wide v2, v0, Lift;->e:J

    .line 9123
    iget-object v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mExtras:Ljava/lang/String;

    invoke-static {v2}, Lifr;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lift;->f:Ljava/util/Map;

    .line 9124
    iget v2, v11, Lcom/alibaba/wukong/sync/upstream/e;->mRetry:I

    iput v2, v0, Lift;->g:I

    .line 94
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v11}, Lcom/alibaba/wukong/sync/upstream/e;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 98
    .end local v11    # "entry":Lcom/alibaba/wukong/sync/upstream/e;
    :catch_0
    move-exception v10

    .line 99
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SyncDB"

    const-string/jumbo v2, "getList error"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v9, :cond_0

    .line 102
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 101
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v9, :cond_0

    .line 102
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 101
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 102
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static b(Lift;)I
    .locals 10
    .param p0, "data"    # Lift;

    .prologue
    const/4 v7, 0x0

    .line 3030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 3060
    iget-object v1, v0, Lifq;->b:Ljava/lang/String;

    .line 52
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 4024
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 52
    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    .line 61
    :goto_0
    return v0

    .line 56
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/sync/upstream/e;

    const-string/jumbo v3, "tb_sync"

    const-string/jumbo v4, "operation=? AND tag=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 4065
    iget-object v9, p0, Lift;->a:Ljava/lang/String;

    .line 56
    aput-object v9, v5, v8

    const/4 v8, 0x1

    .line 5029
    iget-object v9, p0, Lift;->c:Ljava/lang/String;

    .line 56
    aput-object v9, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SyncDB"

    const-string/jumbo v2, "delete error"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 61
    goto :goto_0
.end method

.method public static c(Lift;)I
    .locals 11
    .param p0, "data"    # Lift;

    .prologue
    const/4 v8, 0x0

    .line 5030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 5060
    iget-object v1, v0, Lifq;->b:Ljava/lang/String;

    .line 66
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 6024
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 66
    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    .line 77
    :goto_0
    return v0

    .line 70
    :cond_1
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "retry"

    .line 6085
    iget v2, p0, Lift;->g:I

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/sync/upstream/e;

    const-string/jumbo v3, "tb_sync"

    const-string/jumbo v5, "operation=? AND tag=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 7065
    iget-object v10, p0, Lift;->a:Ljava/lang/String;

    .line 72
    aput-object v10, v6, v9

    const/4 v9, 0x1

    .line 8029
    iget-object v10, p0, Lift;->c:Ljava/lang/String;

    .line 72
    aput-object v10, v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 74
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SyncDB"

    const-string/jumbo v2, "update error"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 77
    goto :goto_0
.end method
