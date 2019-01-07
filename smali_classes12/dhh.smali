.class public Ldhh;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "EmotionPackageDatasourceImpl.java"

# interfaces
.implements Ldhg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    .prologue
    .line 208
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;-><init>()V

    .line 209
    .local v0, "packageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->packageId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    .line 210
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->iconMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->packageMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    .line 213
    iget v1, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->price:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->shortDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    .line 215
    iget v1, p0, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->state:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    .line 216
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v12, "emotionPackageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;"
    const/4 v9, 0x0

    .line 172
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhh;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    const-string/jumbo v3, "tb_emotion_package"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 174
    if-eqz v9, :cond_2

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-instance v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;-><init>()V

    .line 177
    .local v13, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    invoke-virtual {v13, v9}, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 178
    invoke-static {v13}, Ldhh;->a(Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v11

    .line 179
    .local v11, "emotionObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-eqz v11, :cond_0

    .line 180
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    .end local v11    # "emotionObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .end local v13    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    :catch_0
    move-exception v10

    .line 185
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    if-eqz v9, :cond_1

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 191
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v12

    .line 187
    :cond_2
    if-eqz v9, :cond_1

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final a(Ljava/util/HashMap;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "installedPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v14, "emotionPackageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v14

    .line 127
    :cond_1
    const/4 v11, 0x0

    .line 129
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_3

    const/16 v2, 0x1f4

    :goto_1
    new-array v8, v2, [Ljava/lang/String;

    .line 130
    .local v8, "selectArgs":[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v18, "sbSql":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .line 132
    .local v17, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 133
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;>;"
    const/16 v2, 0x1f4

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 136
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v17

    .line 137
    const-string/jumbo v2, "package_id=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 139
    const-string/jumbo v2, " OR "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_2
    add-int/lit8 v17, v17, 0x1

    .line 142
    goto :goto_2

    .line 129
    .end local v8    # "selectArgs":[Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;>;"
    .end local v17    # "index":I
    .end local v18    # "sbSql":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v2

    goto :goto_1

    .line 144
    .restart local v8    # "selectArgs":[Ljava/lang/String;
    .restart local v17    # "index":I
    .restart local v18    # "sbSql":Ljava/lang/StringBuffer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Ldhh;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    const-string/jumbo v5, "tb_emotion_package"

    const/4 v6, 0x0

    .line 145
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 144
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 146
    if-eqz v11, :cond_6

    .line 147
    :cond_5
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    new-instance v15, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    invoke-direct {v15}, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;-><init>()V

    .line 149
    .local v15, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    invoke-virtual {v15, v11}, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 150
    invoke-static {v15}, Ldhh;->a(Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v13

    .line 151
    .local v13, "emotionObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-eqz v13, :cond_5

    .line 152
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 156
    .end local v8    # "selectArgs":[Ljava/lang/String;
    .end local v13    # "emotionObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .end local v15    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    .end local v17    # "index":I
    .end local v18    # "sbSql":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v12

    .line 157
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v11, :cond_0

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 159
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "selectArgs":[Ljava/lang/String;
    .restart local v17    # "index":I
    .restart local v18    # "sbSql":Ljava/lang/StringBuffer;
    :cond_6
    if-eqz v11, :cond_0

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 159
    .end local v8    # "selectArgs":[Ljava/lang/String;
    .end local v17    # "index":I
    .end local v18    # "sbSql":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_7

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)Z
    .locals 20
    .param p1, "emotionPackageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .prologue
    .line 25
    if-eqz p1, :cond_6

    .line 26
    const-wide/16 v14, 0x0

    .line 27
    .local v14, "id":J
    const/4 v11, 0x0

    .line 29
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Ldhh;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    const-string/jumbo v5, "tb_emotion_package"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    const-string/jumbo v7, "package_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    move-wide/from16 v18, v0

    .line 33
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 29
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 34
    if-eqz v11, :cond_0

    .line 35
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string/jumbo v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v14, v2

    goto :goto_0

    .line 40
    :cond_0
    if-eqz v11, :cond_1

    .line 41
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_6

    .line 1220
    if-nez p1, :cond_3

    .line 1221
    const/4 v13, 0x0

    .line 46
    .local v13, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    :goto_1
    if-nez v13, :cond_4

    .line 47
    const/4 v2, 0x1

    .line 68
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    .end local v14    # "id":J
    :goto_2
    return v2

    .line 40
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "id":J
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_2

    .line 41
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 1223
    :cond_3
    new-instance v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;-><init>()V

    .line 1224
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    iput-wide v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->packageId:J

    .line 1225
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    iput-object v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->name:Ljava/lang/String;

    .line 1226
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    iput-object v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->iconMediaId:Ljava/lang/String;

    .line 1227
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    iput-object v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->packageMediaId:Ljava/lang/String;

    .line 1228
    move-object/from16 v0, p1

    iget v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    iput v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->price:I

    .line 1229
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    iput-object v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->shortDesc:Ljava/lang/String;

    .line 1230
    move-object/from16 v0, p1

    iget v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    iput v2, v13, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->state:I

    goto :goto_1

    .line 49
    .restart local v13    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    :cond_4
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 50
    .local v16, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/16 v17, 0x0

    .line 52
    .local v17, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Ldhh;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    const-class v5, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    const-string/jumbo v6, "tb_emotion_package"

    .line 53
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v17

    .line 55
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 56
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 57
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 58
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    invoke-static/range {v17 .. v17}, Ldhh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 64
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    .line 59
    :catch_0
    move-exception v12

    .line 60
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    invoke-static/range {v17 .. v17}, Ldhh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_3

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    invoke-static/range {v17 .. v17}, Ldhh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2

    .line 64
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 68
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;
    .end local v14    # "id":J
    .end local v16    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v17    # "statement":Lcom/alibaba/bee/SQLiteStatement;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_2
.end method

.method public final a(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "emotionPackageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;"
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 73
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v11

    .line 77
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v8, "emotionPackageObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;"
    invoke-interface {v8, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhh;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    const-string/jumbo v3, "tb_emotion_package"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    const/4 v13, 0x0

    .line 83
    .local v13, "statement":Lcom/alibaba/bee/SQLiteStatement;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v12, "sbSql":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "INSERT INTO "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string/jumbo v0, "tb_emotion_package"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string/jumbo v0, "("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string/jumbo v0, "package_id,"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string/jumbo v0, "package_name,"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string/jumbo v0, "package_media_id,"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string/jumbo v0, "package_icon_media_id,"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string/jumbo v0, "package_desc,"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string/jumbo v0, "package_price,"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string/jumbo v0, "package_state) VALUES(?,?,?,?,?,?,?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "insertSql":Ljava/lang/String;
    invoke-virtual {p0}, Ldhh;->k()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "dbName":Ljava/lang/String;
    const/4 v11, 0x1

    .line 98
    .local v11, "result":Z
    :try_start_0
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v0, v6}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    const-class v1, Lcom/alibaba/android/dingtalkim/db/EmotionPackageEntry;

    invoke-virtual {v0, v6, v1, v9}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v13

    .line 100
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 101
    .local v10, "packageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    const/4 v1, 0x1

    iget-wide v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-interface {v13, v1, v2, v3}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 102
    const/4 v1, 0x2

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    invoke-interface {v13, v1, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    const/4 v1, 0x3

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    invoke-interface {v13, v1, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    const/4 v1, 0x4

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    invoke-interface {v13, v1, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 105
    const/4 v1, 0x5

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    invoke-interface {v13, v1, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    const/4 v1, 0x6

    iget v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    int-to-long v2, v2

    invoke-interface {v13, v1, v2, v3}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 107
    const/4 v1, 0x7

    iget v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    int-to-long v2, v2

    invoke-interface {v13, v1, v2, v3}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-interface {v13}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    .end local v10    # "packageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    :catch_0
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const/4 v11, 0x0

    .line 115
    invoke-static {v13}, Ldhh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 116
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v0, v6}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v0, v6}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-static {v13}, Ldhh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 116
    iget-object v0, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v0, v6}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :catchall_0
    move-exception v0

    invoke-static {v13}, Ldhh;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 116
    iget-object v1, p0, Ldhh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v1, v6}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method
