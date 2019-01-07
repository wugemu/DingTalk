.class public Lclt;
.super Ljava/lang/Object;
.source "OfflineTaskDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclt$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lclt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lclt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)J
    .locals 11
    .param p0, "info"    # Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    .prologue
    const/4 v9, 0x4

    .line 57
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v6

    .line 1111
    iget-object v0, v6, Lclr;->b:Ljava/lang/String;

    .line 58
    .local v0, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 58
    if-eqz v6, :cond_3

    .line 59
    :cond_0
    const-string/jumbo v7, "offline"

    sget-object v8, Lclt;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v10, "i info:"

    aput-object v10, v9, v6

    const/4 v10, 0x1

    if-nez p0, :cond_2

    const-string/jumbo v6, "null"

    :goto_0
    aput-object v6, v9, v10

    const/4 v6, 0x2

    const-string/jumbo v10, " dn:"

    aput-object v10, v9, v6

    const/4 v6, 0x3

    aput-object v0, v9, v6

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-wide/16 v4, 0x0

    .line 80
    :cond_1
    :goto_1
    return-wide v4

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 62
    :cond_3
    const-wide/16 v4, 0x0

    .line 63
    .local v4, "ret":J
    const/4 v3, 0x0

    .line 65
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    const-class v8, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    const-string/jumbo v9, "tb_offline_task"

    const/4 v10, 0x4

    .line 66
    invoke-static {v8, v9, v10}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-virtual {v6, v0, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 2269
    if-nez p0, :cond_5

    .line 2270
    const/4 v2, 0x0

    .line 68
    .local v2, "entry":Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
    :goto_2
    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 70
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    .line 71
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 72
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_4
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto :goto_1

    .line 2272
    .end local v2    # "entry":Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
    :cond_5
    :try_start_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;-><init>()V

    .line 2277
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->h:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mStorageId:Ljava/lang/String;

    .line 2278
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->g:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mDomain:Ljava/lang/String;

    .line 2279
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->c:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mHeaders:Ljava/lang/String;

    .line 2280
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    iput-wide v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTime:J

    .line 2281
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->d:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mExtras:Ljava/lang/String;

    .line 2282
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mKey:Ljava/lang/String;

    .line 2283
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mUrl:Ljava/lang/String;

    .line 2284
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->e:I

    iput v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mRetry:I

    .line 2285
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v6

    iput v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTaskStatus:I

    .line 2286
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    iput v6, v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mMaxRetryTime:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "offline"

    sget-object v7, Lclt;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v6, Lclt;->a:Ljava/lang/String;

    const-string/jumbo v7, "insert error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    :cond_6
    throw v6
.end method

.method public static a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "taskIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 209
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    .line 7111
    iget-object v1, v0, Lclr;->b:Ljava/lang/String;

    .line 210
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8046
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 210
    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v14

    .line 213
    :cond_1
    new-instance v9, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 214
    .local v9, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "key in ("

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 215
    const-string/jumbo v0, "?"

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 216
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 217
    const-string/jumbo v0, ", ?"

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 216
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 219
    :cond_2
    const-string/jumbo v0, ")"

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 220
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "sqlStr":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 223
    .local v6, "argsArray":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    .line 224
    invoke-interface {p0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v13

    .line 223
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 227
    :cond_3
    const/4 v10, 0x0

    .line 228
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v14, "statusMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;>;"
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    const-string/jumbo v3, "tb_offline_task"

    const-class v4, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    .line 231
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 230
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 232
    if-eqz v10, :cond_4

    .line 233
    new-instance v11, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;-><init>()V

    .line 234
    .local v11, "entry":Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {v11, v10}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 236
    iget-object v0, v11, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mKey:Ljava/lang/String;

    iget v2, v11, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTaskStatus:I

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->fromValue(I)Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 241
    .end local v11    # "entry":Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lclt;->a:Ljava/lang/String;

    const-string/jumbo v2, "get task status error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    if-eqz v10, :cond_0

    .line 244
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 243
    :cond_4
    if-eqz v10, :cond_0

    .line 244
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 243
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 244
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static a(IJ)Ljava/util/List;
    .locals 13
    .param p0, "count"    # I
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    .line 5111
    iget-object v1, v0, Lclr;->b:Ljava/lang/String;

    .line 167
    .local v1, "dbName":Ljava/lang/String;
    if-lez p0, :cond_0

    .line 6046
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    :cond_0
    const-string/jumbo v0, "offline"

    sget-object v2, Lclt;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gu:"

    aput-object v4, v3, v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, " dn:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v11, 0x0

    .line 198
    :cond_1
    :goto_0
    return-object v11

    .line 171
    :cond_2
    const/4 v9, 0x0

    .line 172
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v11, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    const-string/jumbo v3, "tb_offline_task"

    const-class v4, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    .line 178
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lclt$a;->a:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 180
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "time ASC"

    .line 182
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 184
    if-eqz v9, :cond_3

    .line 185
    new-instance v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;-><init>()V

    .line 186
    .local v10, "entry":Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v10, v9}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 6253
    new-instance v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;-><init>()V

    .line 6254
    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    .line 6255
    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    .line 6256
    iget v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mRetry:I

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->e:I

    .line 6257
    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mDomain:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->g:Ljava/lang/String;

    .line 6258
    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mExtras:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->d:Ljava/lang/String;

    .line 6259
    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mHeaders:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->c:Ljava/lang/String;

    .line 6260
    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mStorageId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->h:Ljava/lang/String;

    .line 6261
    iget-wide v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTime:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    .line 6262
    iget v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTaskStatus:I

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->fromValue(I)Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    .line 6263
    iget v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mMaxRetryTime:I

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    .line 6264
    iget-wide v2, v10, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->_id:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->k:J

    .line 188
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 193
    .end local v10    # "entry":Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lclt;->a:Ljava/lang/String;

    const-string/jumbo v2, "getList error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v9, :cond_1

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 195
    :cond_3
    if-eqz v9, :cond_1

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 195
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)I
    .locals 12
    .param p0, "info"    # Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 114
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    .line 3111
    iget-object v1, v0, Lclr;->b:Ljava/lang/String;

    .line 115
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 4046
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    :cond_0
    const-string/jumbo v2, "offline"

    sget-object v3, Lclt;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "us info:"

    aput-object v0, v5, v8

    if-nez p0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v5, v6

    const-string/jumbo v0, " dn:"

    aput-object v0, v5, v9

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 129
    :goto_1
    return v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_2
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "task_status"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    const-string/jumbo v3, "tb_offline_task"

    const-string/jumbo v5, "key=? or _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->k:J

    .line 124
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 125
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "offline"

    sget-object v2, Lclt;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lclt;->a:Ljava/lang/String;

    const-string/jumbo v2, "update status error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 129
    goto :goto_1
.end method

.method public static c(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)I
    .locals 12
    .param p0, "info"    # Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 140
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    .line 4111
    iget-object v1, v0, Lclr;->b:Ljava/lang/String;

    .line 141
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 5046
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    :cond_0
    const-string/jumbo v2, "offline"

    sget-object v3, Lclt;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "ur info:"

    aput-object v0, v5, v8

    if-nez p0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v5, v6

    const-string/jumbo v0, " dn:"

    aput-object v0, v5, v9

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 155
    :goto_1
    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "retry"

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;

    const-string/jumbo v3, "tb_offline_task"

    const-string/jumbo v5, "key=? or _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->k:J

    .line 150
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 149
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 151
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 152
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "offline"

    sget-object v2, Lclt;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lclt;->a:Ljava/lang/String;

    const-string/jumbo v2, "update retry error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 155
    goto :goto_1
.end method
