.class public final Lial;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "CategoryDs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 26
    return-void
.end method

.method protected static a(JZ)I
    .locals 10
    .param p0, "id"    # J
    .param p2, "syncFlag"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 220
    invoke-static {}, Lial;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v7

    .line 223
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "too_long_2_sync"

    if-eqz p2, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v3, "tb_category"

    const-string/jumbo v5, "category_id=?"

    new-array v6, v6, [Ljava/lang/String;

    .line 226
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 225
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/bee/DBManager;->updateWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    :cond_2
    move v0, v7

    .line 224
    goto :goto_1
.end method

.method protected static a(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    const/4 v7, 0x0

    .line 67
    invoke-static {}, Lial;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v5, v7

    .line 93
    :goto_0
    return v5

    .line 69
    :cond_1
    const/4 v5, 0x0

    .line 70
    .local v5, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 71
    const/4 v6, 0x0

    .line 73
    .local v6, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    const-class v9, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-class v10, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v11, "tb_category"

    .line 74
    invoke-static {v10, v11}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-virtual {v8, v1, v9, v10}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v6

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, "index":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 77
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    .line 78
    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 79
    new-instance v3, Lcom/alibaba/wukong/im/category/CategoryEntry;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/category/CategoryEntry;-><init>()V

    .line 4244
    .local v3, "entry":Lcom/alibaba/wukong/im/category/CategoryEntry;
    if-eqz v0, :cond_3

    .line 4246
    iget-wide v10, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iput-wide v10, v3, Lcom/alibaba/wukong/im/category/CategoryEntry;->categoryId:J

    .line 4247
    iget-object v8, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/wukong/im/category/CategoryEntry;->title:Ljava/lang/String;

    .line 4248
    iget-wide v10, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    iput-wide v10, v3, Lcom/alibaba/wukong/im/category/CategoryEntry;->createTime:J

    .line 4249
    iget-wide v10, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    iput-wide v10, v3, Lcom/alibaba/wukong/im/category/CategoryEntry;->modifiedTime:J

    .line 4250
    iget v8, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    iput v8, v3, Lcom/alibaba/wukong/im/category/CategoryEntry;->index:I

    .line 4251
    iget-boolean v8, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    iput v8, v3, Lcom/alibaba/wukong/im/category/CategoryEntry;->tooLong2Sync:I

    .line 81
    :cond_3
    invoke-virtual {v3, v6}, Lcom/alibaba/wukong/im/category/CategoryEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 82
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 83
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    goto :goto_1

    :cond_4
    move v8, v7

    .line 4251
    goto :goto_2

    .line 86
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    .end local v3    # "entry":Lcom/alibaba/wukong/im/category/CategoryEntry;
    :cond_5
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 91
    :cond_6
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v4    # "index":I
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "CategoryDs"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[DB] batchInsert category err, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5022
    const-string/jumbo v9, "im"

    invoke-static {v7, v8, v9}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz v6, :cond_7

    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 91
    :cond_7
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 91
    :cond_8
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v7
.end method

.method protected static a(J)Z
    .locals 10
    .param p0, "id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 149
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lial;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    move v0, v8

    .line 156
    :goto_0
    return v0

    .line 151
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v3, "tb_category"

    const-string/jumbo v4, "category_id=?"

    new-array v5, v7, [Ljava/lang/String;

    .line 152
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 153
    .local v6, "ret":I
    if-gtz v6, :cond_2

    .line 154
    const-string/jumbo v0, "CategoryDs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] deleteById category err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_2
    if-lez v6, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method protected static b(Ljava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    invoke-static {}, Lial;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    const/4 v10, 0x0

    .line 185
    :goto_0
    return v10

    .line 163
    :cond_1
    const/4 v10, 0x0

    .line 164
    .local v10, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 166
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 168
    .local v7, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v7, :cond_2

    .line 171
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 172
    const-string/jumbo v0, "sort_index"

    iget v2, v7, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v3, "tb_category"

    const-string/jumbo v5, "category_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-wide v14, v7, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    .line 174
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 175
    .local v9, "r":I
    if-lez v9, :cond_2

    .line 176
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 179
    .end local v7    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    .end local v9    # "r":I
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 181
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "CategoryDs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] batchOrder category err, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-static {}, Lial;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v3, "tb_category"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 62
    .local v6, "ret":I
    const-string/jumbo v0, "CategoryDs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] deleteAll category:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static c(Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lial;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    const/4 v12, 0x0

    .line 215
    :goto_0
    return v12

    .line 192
    :cond_1
    const/4 v12, 0x0

    .line 193
    .local v12, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 195
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v9, 0x1

    .line 197
    .local v9, "index":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v9

    .end local v9    # "index":I
    .local v10, "index":I
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 198
    .local v7, "categoryId":Ljava/lang/Long;
    if-eqz v7, :cond_2

    .line 201
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 202
    const-string/jumbo v0, "sort_index"

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v3, "tb_category"

    const-string/jumbo v5, "category_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 204
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v14

    .line 203
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 205
    .local v11, "r":I
    if-lez v11, :cond_3

    .line 206
    add-int/lit8 v12, v12, 0x1

    :cond_3
    move v10, v9

    .line 208
    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_1

    .line 209
    .end local v7    # "categoryId":Ljava/lang/Long;
    .end local v11    # "r":I
    :cond_4
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v10    # "index":I
    :catch_0
    move-exception v8

    .line 211
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "CategoryDs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] batchOrder categoryByIds err, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/im/category/CategoryObject;)J
    .locals 8
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 101
    invoke-static {}, Lial;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-wide v2

    .line 5230
    :cond_1
    if-nez p1, :cond_2

    .line 5231
    const/4 v1, 0x0

    .line 106
    .local v1, "values":Landroid/content/ContentValues;
    :goto_1
    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v4, "tb_category"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 5234
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5235
    const-string/jumbo v4, "category_id"

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5236
    const-string/jumbo v4, "title"

    iget-object v5, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5237
    const-string/jumbo v4, "create_time"

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5238
    const-string/jumbo v4, "modified_time"

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5239
    const-string/jumbo v4, "sort_index"

    iget v5, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method protected final a()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    invoke-static {}, Lial;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 32
    const-string/jumbo v0, "CategoryDs"

    const-string/jumbo v2, "[DB] category db not readable"

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-object v11

    .line 35
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/category/CategoryEntry;

    const-string/jumbo v3, "tb_category"

    const-string/jumbo v7, "sort_index ASC "

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 36
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 37
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 38
    .local v13, "retCount":I
    const-string/jumbo v0, "CategoryDs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] category query count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2255
    new-instance v12, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {v12}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>()V

    .line 2256
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    .line 2257
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 2258
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    .line 2259
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    .line 2260
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 2261
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v14, :cond_3

    move v0, v14

    :goto_2
    iput-boolean v0, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 43
    .local v12, "object":Lcom/alibaba/wukong/im/category/CategoryObject;
    iget-wide v2, v12, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Liap;->b(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 47
    .end local v12    # "object":Lcom/alibaba/wukong/im/category/CategoryObject;
    :catch_0
    move-exception v10

    .line 48
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "CategoryDs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] queryAll category err, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2261
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 50
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
