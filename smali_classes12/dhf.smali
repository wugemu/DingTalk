.class public Ldhf;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "EmotionDatasourceImpl.java"

# interfaces
.implements Ldhd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method private static b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    .locals 4
    .param p0, "emotionObject"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;-><init>()V

    .line 33
    .local v0, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionId:J

    .line 34
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->packageId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->packageId:J

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionMediaId:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authMediaId:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authCode:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionName:Ljava/lang/String;

    .line 39
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionType:I

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionOriginalUrl:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionThumbUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const/4 v12, 0x1

    .line 118
    :goto_0
    return v12

    .line 76
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->packageId:J

    move-wide/from16 v16, v0

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Ldhf;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    const-string/jumbo v5, "tb_custom_emotion"

    const-string/jumbo v6, "emotion_package_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1181
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    .line 1179
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1182
    if-lez v2, :cond_1

    .line 78
    :cond_1
    const/4 v14, 0x0

    .line 79
    .local v14, "statement":Lcom/alibaba/bee/SQLiteStatement;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v13

    .line 80
    .local v13, "sbSql":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "INSERT INTO "

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 81
    const-string/jumbo v2, "tb_custom_emotion"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 82
    const-string/jumbo v2, "("

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 83
    const-string/jumbo v2, "emotion_id,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 84
    const-string/jumbo v2, "emotion_package_id,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 85
    const-string/jumbo v2, "emotion_name,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 86
    const-string/jumbo v2, "emotion_media_id,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 87
    const-string/jumbo v2, "emotion_auth_media_id,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 88
    const-string/jumbo v2, "emotion_auth_code,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 89
    const-string/jumbo v2, "emotion_type,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 90
    const-string/jumbo v2, "emotion_original_url,"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 91
    const-string/jumbo v2, "emotion_thumb_url) VALUES(?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v13, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 92
    invoke-virtual {v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "insertSql":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ldhf;->k()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "dbName":Ljava/lang/String;
    const/4 v12, 0x1

    .line 96
    .local v12, "result":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v2, v8}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    const-class v3, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    invoke-virtual {v2, v8, v3, v11}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v14

    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    .line 99
    .local v10, "emotionObject":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    const/4 v2, 0x1

    iget-wide v4, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionId:J

    invoke-interface {v14, v2, v4, v5}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 100
    const/4 v2, 0x2

    iget-wide v4, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->packageId:J

    invoke-interface {v14, v2, v4, v5}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 101
    const/4 v4, 0x3

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_2
    invoke-interface {v14, v4, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    const/4 v4, 0x4

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionMediaId:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :goto_3
    invoke-interface {v14, v4, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    const/4 v4, 0x5

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authMediaId:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    :goto_4
    invoke-interface {v14, v4, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    const/4 v4, 0x6

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authCode:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    :goto_5
    invoke-interface {v14, v4, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 105
    const/4 v2, 0x7

    iget v4, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionType:I

    int-to-long v4, v4

    invoke-interface {v14, v2, v4, v5}, Lcom/alibaba/bee/SQLiteStatement;->bindLong(IJ)V

    .line 106
    const/16 v4, 0x8

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionOriginalUrl:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string/jumbo v2, ""

    :goto_6
    invoke-interface {v14, v4, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    const/16 v4, 0x9

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionThumbUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string/jumbo v2, ""

    :goto_7
    invoke-interface {v14, v4, v2}, Lcom/alibaba/bee/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    invoke-interface {v14}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    .end local v10    # "emotionObject":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    :catch_0
    move-exception v9

    .line 112
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const/4 v12, 0x0

    .line 115
    invoke-static {v14}, Ldhf;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v2, v8}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "emotionObject":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    :cond_2
    :try_start_2
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionName:Ljava/lang/String;

    goto :goto_2

    .line 102
    :cond_3
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionMediaId:Ljava/lang/String;

    goto :goto_3

    .line 103
    :cond_4
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authMediaId:Ljava/lang/String;

    goto :goto_4

    .line 104
    :cond_5
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authCode:Ljava/lang/String;

    goto :goto_5

    .line 106
    :cond_6
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionOriginalUrl:Ljava/lang/String;

    goto :goto_6

    .line 107
    :cond_7
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionThumbUrl:Ljava/lang/String;

    goto :goto_7

    .line 110
    .end local v10    # "emotionObject":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v2, v8}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-static {v14}, Ldhf;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v2, v8}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :catchall_0
    move-exception v2

    invoke-static {v14}, Ldhf;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v3, v8}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)I
    .locals 9
    .param p1, "emotionObject"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-static {p1}, Ldhf;->b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    move-result-object v1

    .line 124
    .local v1, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    if-nez v1, :cond_0

    .line 141
    :goto_0
    return v4

    .line 127
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 128
    .local v2, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v3, 0x0

    .line 130
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhf;->k()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    const-class v7, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    const-string/jumbo v8, "tb_custom_emotion"

    .line 131
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 133
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 134
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 135
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {v3}, Ldhf;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 141
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {v3}, Ldhf;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Ldhf;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method

.method public final a(J)Ljava/util/List;
    .locals 17
    .param p1, "packageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v13, "emotionDetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    const/4 v11, 0x0

    .line 189
    .local v11, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 191
    .local v16, "isIncomplete":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Ldhf;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    const-string/jumbo v5, "tb_custom_emotion"

    const/4 v6, 0x0

    const-string/jumbo v7, "emotion_package_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 192
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 191
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 193
    if-eqz v11, :cond_3

    .line 194
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    new-instance v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    invoke-direct {v15}, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;-><init>()V

    .line 196
    .local v15, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    invoke-virtual {v15, v11}, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 2050
    new-instance v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;-><init>()V

    .line 2051
    iget-wide v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionId:J

    iput-wide v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    .line 2052
    iget-wide v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->packageId:J

    iput-wide v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->packageId:J

    .line 2053
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionName:Ljava/lang/String;

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    .line 2054
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionMediaId:Ljava/lang/String;

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    .line 2055
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authMediaId:Ljava/lang/String;

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    .line 2056
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->authCode:Ljava/lang/String;

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authCode:Ljava/lang/String;

    .line 2057
    iget v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionType:I

    iput v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    .line 2058
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionOriginalUrl:Ljava/lang/String;

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    .line 2060
    iget-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2061
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    .line 2063
    :cond_1
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;->emotionThumbUrl:Ljava/lang/String;

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    .line 2065
    iget-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2066
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    .line 198
    .local v14, "emotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_2
    if-eqz v14, :cond_0

    .line 199
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 201
    const/16 v16, 0x1

    goto :goto_0

    .line 210
    .end local v14    # "emotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v15    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    :cond_3
    if-eqz v11, :cond_4

    .line 211
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_4
    :goto_1
    if-eqz v16, :cond_5

    .line 216
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v2

    invoke-virtual {v2}, Ldhe;->c()Ldhi;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Incomplete:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    const/16 v4, 0x64

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1, v3, v4}, Ldhi;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)I

    .line 219
    :cond_5
    return-object v13

    .line 206
    :catch_0
    move-exception v12

    .line 207
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "traceEmotion"

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz v11, :cond_4

    .line 211
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 210
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_6

    .line 211
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public final a(JLjava/util/List;)Z
    .locals 11
    .param p1, "packageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "emotionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 154
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v9

    .line 174
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 158
    .local v5, "args":[Ljava/lang/String;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 159
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 160
    .local v8, "sbSelect":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "emotion_package_id"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 161
    const-string/jumbo v0, "=? AND ("

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 162
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 163
    const-string/jumbo v0, "emotion_id"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 164
    const-string/jumbo v0, "=?"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 165
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_2

    .line 166
    const-string/jumbo v0, " OR "

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 168
    :cond_2
    add-int/lit8 v1, v6, 0x1

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 170
    :cond_3
    const-string/jumbo v0, ")"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 172
    iget-object v0, p0, Ldhf;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhf;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    const-string/jumbo v3, "tb_custom_emotion"

    .line 173
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 174
    .local v7, "result":I
    if-lez v7, :cond_4

    move v0, v9

    goto :goto_0

    :cond_4
    move v0, v10

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    .local p1, "emotionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 225
    :cond_0
    const/4 v3, 0x1

    .line 236
    :goto_0
    return v3

    .line 228
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "emotionItemEntries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 230
    .local v1, "emotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    invoke-static {v1}, Ldhf;->b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;

    move-result-object v2

    .line 231
    .local v2, "entry":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    if-eqz v2, :cond_2

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v1    # "emotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v2    # "entry":Lcom/alibaba/android/dingtalkim/db/EmotionItemEntry;
    :cond_3
    invoke-direct {p0, v0}, Ldhf;->b(Ljava/util/List;)Z

    move-result v3

    goto :goto_0
.end method
