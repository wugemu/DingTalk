.class public final Libg;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "GroupNickDb.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 43
    return-void
.end method

.method private static a(J)I
    .locals 10
    .param p0, "modifyTime"    # J

    .prologue
    .line 212
    invoke-static {}, Libg;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 214
    const/4 v6, -0x1

    .line 222
    :goto_0
    return v6

    .line 216
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v3, "tb_group_nick"

    const-string/jumbo v4, "modifyTime < ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 220
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 216
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, "ret":I
    const-string/jumbo v0, "WKLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[groupNick]db delete before modify time. delete num:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;J)I
    .locals 9
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "uid"    # J

    .prologue
    .line 225
    invoke-static {}, Libg;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 227
    const/4 v0, -0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v3, "tb_group_nick"

    const-string/jumbo v4, "cid =? AND uid = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    .line 233
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(I)J
    .locals 10
    .param p0, "index"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 319
    invoke-static {}, Libg;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-wide v2

    .line 323
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    const-class v5, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v6, "SELECT modifyTime FROM tb_group_nick ORDER BY modifyTime DESC limit ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v8, 0x3e8

    .line 326
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 323
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 327
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method protected static a(Lcom/alibaba/wukong/im/GroupNickObject;)J
    .locals 11
    .param p0, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 140
    invoke-static {}, Libg;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "dbName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    new-instance v5, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v6, "database not writable"

    invoke-direct {v5, v6}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move-wide v2, v6

    .line 166
    :cond_2
    :goto_0
    return-wide v2

    .line 148
    :cond_3
    const/4 v4, 0x0

    .line 150
    .local v4, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    const-class v8, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-class v9, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v10, "tb_group_nick"

    .line 152
    invoke-static {v9, v10}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-virtual {v5, v0, v8, v9}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v4

    .line 153
    new-instance v1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;-><init>()V

    .line 154
    .local v1, "groupNickEntry":Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;
    invoke-static {p0, v1}, Libg;->a(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;)V

    .line 155
    invoke-virtual {v1, v4}, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 156
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 157
    .local v2, "ret":J
    cmp-long v5, v2, v6

    if-gtz v5, :cond_4

    .line 158
    const-string/jumbo v5, "WKLog"

    const-string/jumbo v6, "[groupNick]db replace fail"

    .line 1018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v4, :cond_2

    .line 163
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto :goto_0

    .line 162
    .end local v1    # "groupNickEntry":Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;
    .end local v2    # "ret":J
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    .line 163
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    :cond_5
    throw v5
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 380
    if-nez p0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 389
    :goto_0
    return-object v0

    .line 383
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 384
    .local v0, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 386
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNickPinyin(Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 289
    invoke-static {}, Libg;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v7

    .line 293
    :cond_1
    if-eqz p1, :cond_0

    .line 296
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v3, "tb_group_nick"

    const-class v4, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    .line 299
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    .line 3399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3400
    const-string/jumbo v5, "cid =? AND uid in "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    .line 3402
    if-lez v12, :cond_3

    .line 3403
    const-string/jumbo v5, "("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    .line 3404
    :goto_1
    if-ge v5, v12, :cond_3

    .line 3405
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3406
    add-int/lit8 v13, v12, -0x1

    if-ne v5, v13, :cond_2

    .line 3407
    const-string/jumbo v13, ")"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3409
    :cond_2
    const-string/jumbo v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3413
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 300
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p0, v6, v8

    move-object v8, v7

    .line 296
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 304
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    if-eqz v9, :cond_5

    .line 307
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    invoke-static {v9}, Libg;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v10

    .line 309
    .local v10, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 312
    .end local v10    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v11

    .line 315
    goto :goto_0
.end method

.method protected static a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    invoke-static {}, Libg;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 172
    new-instance v7, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v8, "database not writable"

    invoke-direct {v7, v8}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    :cond_1
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 178
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    const/4 v6, 0x0

    .line 180
    .local v6, "statement":Lcom/alibaba/bee/SQLiteStatement;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 182
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    const-class v8, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-class v9, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v10, "tb_group_nick"

    .line 184
    invoke-static {v9, v10}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-virtual {v7, v1, v8, v9}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v6

    .line 185
    new-instance v2, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;-><init>()V

    .line 186
    .local v2, "groupNickEntry":Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 187
    .local v3, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 190
    invoke-static {v3, v2}, Libg;->a(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;)V

    .line 191
    invoke-virtual {v2, v6}, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 192
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    .line 193
    .local v4, "ret":J
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 194
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->clear()V

    .line 195
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_5

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 203
    .end local v2    # "groupNickEntry":Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;
    .end local v3    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v4    # "ret":J
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_4

    .line 204
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 206
    :cond_4
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v7

    .line 198
    .restart local v2    # "groupNickEntry":Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;
    .restart local v3    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    .restart local v4    # "ret":J
    :cond_5
    :try_start_1
    const-string/jumbo v8, "WKLog"

    const-string/jumbo v9, "[groupNick]db replace fail"

    .line 2018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    .end local v3    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v4    # "ret":J
    :cond_6
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    if-eqz v6, :cond_7

    .line 204
    invoke-interface {v6}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 206
    :cond_7
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;)V
    .locals 2
    .param p0, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;
    .param p1, "groupNickEntry"    # Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    .prologue
    .line 354
    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->cid:Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->uid:J

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->groupNick:Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->groupNickPinyin:Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v0

    iput v0, p1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->tag:I

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;->modifyTime:J

    goto :goto_0
.end method

.method private static b()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {}, Libg;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 50
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v3

    const-class v4, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v5, "SELECT count(*) FROM tb_group_nick"

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method protected static b(Ljava/lang/String;J)Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 13
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "uid"    # J

    .prologue
    const/4 v7, 0x0

    .line 263
    invoke-static {}, Libg;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-object v7

    .line 267
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    const-string/jumbo v3, "tb_group_nick"

    const-class v4, Lcom/alibaba/wukong/im/groupnick/GroupNickEntry;

    .line 270
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cid =? AND uid = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v6, v8

    const/4 v8, 0x1

    .line 272
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v8

    const-string/jumbo v8, "0, 1"

    .line 267
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 275
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 277
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {v9}, Libg;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/GroupNickObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 282
    .local v10, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v10

    goto :goto_0

    .end local v10    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected final a()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0x3e8

    .line 341
    :try_start_0
    invoke-static {}, Libg;->b()I

    move-result v2

    .line 342
    .local v2, "totalNum":I
    const-string/jumbo v3, "WKLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[groupNick]clear redundant. totalNum:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-le v2, v6, :cond_0

    .line 344
    const/16 v3, 0x3e8

    invoke-static {v3}, Libg;->a(I)J

    move-result-wide v0

    .line 345
    .local v0, "modifyTimeOfFirstRedundantEntry":J
    invoke-static {v0, v1}, Libg;->a(J)I
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const/4 v3, 0x1

    .line 350
    .end local v0    # "modifyTimeOfFirstRedundantEntry":J
    .end local v2    # "totalNum":I
    :goto_0
    return v3

    :catch_0
    move-exception v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
