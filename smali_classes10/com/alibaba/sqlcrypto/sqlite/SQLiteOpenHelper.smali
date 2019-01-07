.class public abstract Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final DEBUG_STRICT_READONLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

.field private final mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    .line 104
    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Version must be >= 1, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 109
    iput p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 110
    iput-object p5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .line 111
    return-void
.end method

.method private getDatabaseLocked(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 12
    .param p1, "writable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 197
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 200
    iput-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 207
    :cond_0
    iget-boolean v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v6, :cond_4

    .line 208
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "getDatabase called recursively"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_1
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 290
    :cond_3
    :goto_0
    return-object v0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 213
    .local v0, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 215
    if-eqz v0, :cond_7

    .line 216
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 217
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->reopenReadWrite()V

    .line 252
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 254
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    .line 255
    .local v5, "version":I
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v5, v6, :cond_c

    .line 256
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 257
    new-instance v6, Landroid/database/sqlite/SQLiteException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Can\'t upgrade read-only database from version "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v5    # "version":I
    :catchall_0
    move-exception v6

    iput-boolean v11, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 289
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eq v0, v7, :cond_6

    .line 290
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v6

    .line 219
    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 220
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->create(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_8
    :try_start_2
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 233
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 234
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    .line 235
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 237
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    iget-boolean v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    iget-object v10, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9, v10}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;ZLjava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    .line 240
    .end local v1    # "dbFile":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz p1, :cond_a

    .line 242
    :try_start_3
    throw v2

    .line 244
    :cond_a
    sget-object v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Couldn\'t open "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for writing (will try read-only):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    invoke-static {v4, v6, v7, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_1

    .line 261
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "path":Ljava/lang/String;
    .restart local v5    # "version":I
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    if-nez v5, :cond_e

    .line 264
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 272
    :goto_2
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 273
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    :try_start_5
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 279
    :cond_c
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 281
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 282
    sget-object v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Opened "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in read-only mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_d
    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    iput-boolean v11, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 289
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eq v0, v6, :cond_3

    .line 290
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 266
    :cond_e
    :try_start_6
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le v5, v6, :cond_f

    .line 267
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onDowngrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 275
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 269
    :cond_f
    :try_start_8
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 324
    return-void
.end method

.method public abstract onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 377
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t downgrade database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 394
    return-void
.end method

.method public abstract onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    if-eqz p1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 142
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 144
    :cond_1
    monitor-exit p0

    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
