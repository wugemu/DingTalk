.class public final Lids;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "UserDB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 180
    return-void
.end method

.method protected static a(JLandroid/content/ContentValues;)I
    .locals 8
    .param p0, "openId"    # J
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lids;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 158
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/user/UserDBEntry;

    const-string/jumbo v3, "tbuser"

    const-string/jumbo v5, "openId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 159
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move-object v4, p2

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-static {}, Lids;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    .local v1, "result":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v5, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 50
    .local v4, "uo":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v4, :cond_2

    .line 52
    invoke-static {v4, v5}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;Landroid/content/ContentValues;)V

    .line 53
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    const-class v8, Lcom/alibaba/wukong/im/user/UserDBEntry;

    const-string/jumbo v9, "tbuser"

    invoke-virtual {v7, v0, v8, v9, v5}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 54
    .local v2, "id":J
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 55
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v2    # "id":J
    .end local v4    # "uo":Lcom/alibaba/wukong/im/user/UserImpl;
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v6
.end method

.method public static a(Lcom/alibaba/wukong/im/user/UserImpl;)J
    .locals 5
    .param p0, "user"    # Lcom/alibaba/wukong/im/user/UserImpl;

    .prologue
    .line 27
    invoke-static {}, Lids;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 28
    :cond_0
    const-wide/16 v2, 0x0

    .line 32
    :goto_0
    return-wide v2

    .line 30
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p0, v1}, Lids;->a(Lcom/alibaba/wukong/im/user/UserImpl;Landroid/content/ContentValues;)V

    .line 32
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/im/user/UserDBEntry;

    const-string/jumbo v4, "tbuser"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static a(J)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 12
    .param p0, "openId"    # J

    .prologue
    const/4 v7, 0x0

    .line 86
    invoke-static {}, Lids;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v7

    .line 89
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/user/UserDBEntry;

    const-string/jumbo v3, "tbuser"

    const-class v4, Lcom/alibaba/wukong/im/user/UserDBEntry;

    .line 90
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "openId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 91
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    const-string/jumbo v8, "0, 1"

    .line 89
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 93
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 95
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-static {v9}, Lids;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/user/UserImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 99
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 207
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 209
    .local v0, "object":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 210
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 211
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    .line 212
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    .line 213
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    .line 214
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    .line 215
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    .line 216
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    .line 217
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    .line 218
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    .line 219
    const/16 v2, 0xb

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    .line 220
    const/16 v2, 0xc

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    .line 221
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    .line 222
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    .line 223
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    .line 224
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    .line 225
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    goto/16 :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/user/UserDBEntry;

    const-string/jumbo v3, "tbuser"

    const-class v1, Lcom/alibaba/wukong/im/user/UserDBEntry;

    .line 138
    invoke-static {v1}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    .line 137
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 139
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 141
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {v9}, Lids;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v11

    .line 143
    .local v11, "object":Lcom/alibaba/wukong/im/user/UserImpl;
    if-eqz v11, :cond_0

    .line 144
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    .end local v11    # "object":Lcom/alibaba/wukong/im/user/UserImpl;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_2
    return-object v10
.end method

.method private static a(Lcom/alibaba/wukong/im/user/UserImpl;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "user"    # Lcom/alibaba/wukong/im/user/UserImpl;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string/jumbo v0, "openId"

    iget-wide v2, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string/jumbo v0, "tag"

    iget-wide v2, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string/jumbo v0, "nickname"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "nicknamePinyin"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "gender"

    iget v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string/jumbo v0, "avatar"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "remark"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "birthday"

    iget-wide v2, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string/jumbo v0, "city"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "countryCode"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "mobile"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "isActive"

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string/jumbo v0, "ext"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-static {v1}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "alias"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "aliasPinyin"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "remarkSound"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v0, "remarkExt"

    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-static {v1}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/lang/StringBuilder;)[Ljava/lang/String;
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 163
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    .local v3, "total":I
    new-array v2, v3, [Ljava/lang/String;

    .line 165
    .local v2, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "openId IN ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 168
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 169
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 170
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 173
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    const-string/jumbo v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    return-object v2
.end method


# virtual methods
.method protected final b(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lids;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 108
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 131
    :cond_1
    :goto_0
    return-object v0

    .line 110
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 111
    .local v10, "total":I
    const/16 v11, 0x3de

    if-le v10, v11, :cond_4

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    add-int/lit16 v11, v10, 0x3de

    add-int/lit8 v11, v11, -0x1

    div-int/lit16 v4, v11, 0x3de

    .line 114
    .local v4, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 115
    mul-int/lit16 v8, v3, 0x3de

    .line 116
    .local v8, "start":I
    add-int/lit16 v2, v8, 0x3de

    .line 117
    .local v2, "end":I
    if-le v2, v10, :cond_3

    move v2, v10

    .line 118
    :cond_3
    invoke-interface {p1, v8, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 120
    .local v9, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {v9, v5}, Lids;->a(Ljava/util/List;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "990"

    invoke-static {v1, v11, v7, v12}, Lids;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 124
    .local v6, "segment":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "allList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "pageCount":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "segment":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "start":I
    .end local v9    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v5}, Lids;->a(Ljava/util/List;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v7

    .line 131
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v11, v7, v12}, Lids;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
