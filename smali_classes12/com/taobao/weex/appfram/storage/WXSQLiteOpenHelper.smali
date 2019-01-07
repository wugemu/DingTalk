.class public Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WXSQLiteOpenHelper.java"


# static fields
.field static final COLUMN_KEY:Ljava/lang/String; = "key"

.field static final COLUMN_PERSISTENT:Ljava/lang/String; = "persistent"

.field static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DATABASE_NAME:Ljava/lang/String; = "WXStorage"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final SLEEP_TIME_MS:I = 0x1e

.field private static final STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"

.field static final TABLE_STORAGE:Ljava/lang/String; = "default_wx_storage"

.field static final TAG_STORAGE:Ljava/lang/String; = "weex_storage"

.field static sDateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mMaximumDatabaseSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string/jumbo v0, "WXStorage"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    .line 69
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \'default_wx_storage\'"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    :try_start_1
    const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private deleteDB()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->closeDatabase()V

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "WXStorage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeDatabase()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    :cond_0
    return-void
.end method

.method declared-synchronized ensureDatabase()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    const/4 v1, 0x0

    .local v1, "tries":I
    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 157
    if-lez v1, :cond_2

    .line 159
    :try_start_1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->deleteDB()Z

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v4, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 150
    .end local v1    # "tries":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 163
    .restart local v1    # "tries":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    const-wide/16 v2, 0x1e

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->ensureDatabase()V

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 84
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    if-eq p2, p3, :cond_0

    .line 104
    const/4 v9, 0x2

    if-ne p3, v9, :cond_1

    const/4 v9, 0x1

    if-ne p2, v9, :cond_1

    .line 105
    const-string/jumbo v9, "weex_storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "storage is updating from version "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v8, 0x1

    .line 108
    .local v8, "updateResult":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 110
    .local v4, "start":J
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 112
    const-string/jumbo v1, "ALTER TABLE default_wx_storage ADD COLUMN timestamp TEXT;"

    .line 113
    .local v1, "SQL_ADD_COLUMN_TIMESTAMP":Ljava/lang/String;
    const-string/jumbo v9, "weex_storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "exec sql : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "ALTER TABLE default_wx_storage ADD COLUMN persistent INTEGER;"

    .line 117
    .local v0, "SQL_ADD_COLUMN_PERSISTENT":Ljava/lang/String;
    const-string/jumbo v9, "weex_storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "exec sql : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "UPDATE default_wx_storage SET timestamp = \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' , persistent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " = 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "SQL_UPDATE_TABLE":Ljava/lang/String;
    const-string/jumbo v9, "weex_storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "exec sql : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v4

    .line 127
    .local v6, "time":J
    const-string/jumbo v9, "weex_storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "storage updated success ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 135
    .end local v0    # "SQL_ADD_COLUMN_PERSISTENT":Ljava/lang/String;
    .end local v1    # "SQL_ADD_COLUMN_TIMESTAMP":Ljava/lang/String;
    .end local v2    # "SQL_UPDATE_TABLE":Ljava/lang/String;
    .end local v4    # "start":J
    .end local v6    # "time":J
    :goto_0
    if-nez v8, :cond_0

    .line 136
    const-string/jumbo v9, "weex_storage"

    const-string/jumbo v10, "storage is rollback,all data will be removed"

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->deleteDB()Z

    .line 138
    invoke-virtual {p0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 145
    .end local v8    # "updateResult":Z
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v8    # "updateResult":Z
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v9, "weex_storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "storage updated failed from version "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v8, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 141
    .end local v8    # "updateResult":Z
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->deleteDB()Z

    .line 142
    invoke-virtual {p0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1
.end method

.method public declared-synchronized setMaximumSize(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    .line 184
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
