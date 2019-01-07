.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static mCryptoEnabled:Z

.field private static sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

.field private final mCursorFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

.field private mHasAttachedDbsLocked:Z

.field private final mLock:Ljava/lang/Object;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    const-class v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    .line 83
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 192
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v1, v3

    const-string/jumbo v4, " OR ROLLBACK "

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, " OR ABORT "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v4, " OR FAIL "

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v4, " OR IGNORE "

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v4, " OR REPLACE "

    aput-object v4, v1, v2

    sput-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 2253
    sput-boolean v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCryptoEnabled:Z

    .line 2258
    :try_start_0
    const-string/jumbo v1, "database_sqlcrypto"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2259
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeCheckLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2260
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCryptoEnabled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    move v1, v3

    .line 75
    goto :goto_0

    .line 2263
    :catch_0
    move-exception v0

    .line 2264
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v2, "load database_sqlcrypto error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 265
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCursorFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 266
    if-eqz p4, :cond_0

    .end local p4    # "errorHandler":Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    :goto_0
    iput-object p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .line 267
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 268
    return-void

    .line 266
    .restart local p4    # "errorHandler":Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    :cond_0
    new-instance p4, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;

    .end local p4    # "errorHandler":Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    invoke-direct {p4}, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    .param p5, "key"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 273
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCursorFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 274
    if-eqz p4, :cond_0

    .end local p4    # "errorHandler":Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    :goto_0
    iput-object p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .line 275
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1, p2, p5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 276
    return-void

    .line 274
    .restart local p4    # "errorHandler":Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    :cond_0
    new-instance p4, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;

    .end local p4    # "errorHandler":Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    invoke-direct {p4}, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;-><init>()V

    goto :goto_0
.end method

.method private beginTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;Z)V
    .locals 4
    .param p1, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x0

    .line 526
    invoke-virtual {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v2

    const/4 v3, 0x0

    .line 522
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    .line 529
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public static buildKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2249
    invoke-static {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->buildKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2065
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 2069
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static create(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 864
    const-string/jumbo v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 765
    if-nez p0, :cond_0

    .line 766
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "file must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 770
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/lit8 v0, v5, 0x0

    .line 771
    .local v0, "deleted":Z
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-journal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 772
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-shm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 773
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-wal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 774
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-encrypt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 776
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 777
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-mj"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 779
    .local v4, "prefix":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$2;

    invoke-direct {v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    .line 785
    .local v2, "filter":Ljava/io/FileFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v6, v5

    .line 786
    .local v3, "masterJournal":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v0, v8

    .line 785
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 789
    .end local v2    # "filter":Ljava/io/FileFilter;
    .end local v3    # "masterJournal":Ljava/io/File;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private dispose(Z)V
    .locals 3
    .param p1, "finalized"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 303
    .local v0, "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 304
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-nez p1, :cond_0

    .line 307
    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 308
    :try_start_1
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->close()V

    .line 315
    :cond_0
    return-void

    .line 304
    .end local v0    # "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 309
    .restart local v0    # "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private dump(Landroid/util/Printer;Z)V
    .locals 2
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2092
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 2093
    const-string/jumbo v0, ""

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V

    .line 2096
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll(Landroid/util/Printer;Z)V
    .locals 3
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z

    .prologue
    .line 2085
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 2086
    .local v0, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    invoke-direct {v0, p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    goto :goto_0

    .line 2088
    .end local v0    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1703
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1704
    const/4 v0, 0x0

    .line 1705
    .local v0, "disableWal":Z
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1706
    :try_start_1
    iget-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_0

    .line 1707
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    .line 1708
    const/4 v0, 0x1

    .line 1710
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    if-eqz v0, :cond_1

    .line 1712
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 1716
    .end local v0    # "disableWal":Z
    :cond_1
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1718
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    .line 1720
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1723
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v2

    .line 1710
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .restart local v0    # "disableWal":Z
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1723
    .end local v0    # "disableWal":Z
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v2

    .line 1720
    .restart local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tables"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 997
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 999
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1000
    .local v1, "spacepos":I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1002
    .local v0, "commapos":I
    if-lez v1, :cond_2

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_2

    .line 1003
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1007
    .end local p0    # "tables":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 1004
    .restart local p0    # "tables":Ljava/lang/String;
    :cond_2
    if-lez v0, :cond_1

    if-lt v0, v1, :cond_3

    if-gez v1, :cond_1

    .line 1005
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1009
    .end local v0    # "commapos":I
    .end local v1    # "spacepos":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;>;"
    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 2075
    :try_start_0
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2076
    monitor-exit v2

    .line 2077
    return-object v0

    .line 2076
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2057
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2058
    .local v1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 2059
    .local v0, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2061
    .end local v0    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :cond_0
    return-object v1
.end method

.method public static getSqliteHandler(Ljava/lang/String;)J
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 2245
    invoke-static {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getNativeHandle(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 2269
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCryptoEnabled:Z

    return v0
.end method

.method private static isMainThread()Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 408
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isReadOnlyLocked()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1739
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private open()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 827
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openInner()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 830
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 832
    :catch_1
    move-exception v0

    .line 833
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to open database \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    .line 835
    throw v0
.end method

.method public static openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .prologue
    .line 710
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;)V

    .line 711
    .local v0, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->open()V

    .line 712
    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 718
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;Ljava/lang/String;)V

    .line 719
    .local v0, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->open()V

    .line 720
    return-object v0
.end method

.method private openInner()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 840
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 842
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 844
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 847
    :try_start_2
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 727
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 734
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    .prologue
    .line 742
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;ZLjava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;
    .param p3, "enableWAL"    # Z
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 749
    if-eqz p3, :cond_0

    .line 750
    const/high16 v0, 0x30000000

    invoke-static {p0, p1, v0, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public static releaseMemory()I
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method private throwIfNotOpenLocked()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-nez v0, :cond_0

    .line 2211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The database \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2214
    :cond_0
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 2
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->yieldTransaction(JZLjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method


# virtual methods
.method public final addCustomFunction(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "function"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 879
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 881
    .local v1, "wrapper":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 882
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 884
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    :try_start_2
    monitor-exit v3

    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 889
    throw v0

    .line 891
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final beginTransaction()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;Z)V

    .line 434
    return-void
.end method

.method public final beginTransactionNonExclusive()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;Z)V

    .line 458
    return-void
.end method

.method public final beginTransactionWithListener(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .prologue
    .line 486
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;Z)V

    .line 487
    return-void
.end method

.method public final beginTransactionWithListenerNonExclusive(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;Z)V

    .line 516
    return-void
.end method

.method public final compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1030
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method final createSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 383
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 384
    .local v0, "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    invoke-direct {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;)V

    return-object v1

    .line 384
    .end local v0    # "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1537
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DELETE FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1538
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " WHERE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1540
    .local v0, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1542
    :try_start_2
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1545
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v1

    .line 1538
    .end local v0    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :cond_0
    :try_start_3
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1542
    .restart local v0    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1545
    .end local v0    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method public final disableWriteAheadLogging()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x20000000

    .line 2019
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2020
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2022
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/2addr v1, v5

    if-nez v1, :cond_0

    .line 2023
    monitor-exit v2

    .line 2033
    :goto_0
    return-void

    .line 2026
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2033
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v3, v5

    iput v3, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2031
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final enableTrigger(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2293
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2295
    :try_start_0
    const-string/jumbo v0, "FTS enable trigger"

    .line 2296
    .local v0, "sql":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2298
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1, v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->enableTrigger(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2300
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2303
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2304
    return-void

    .line 2300
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2303
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v2
.end method

.method public final enableWriteAheadLogging()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x20000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1970
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1971
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1973
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 1974
    monitor-exit v3

    .line 2006
    :goto_0
    return v1

    .line 1977
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1980
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1983
    :cond_1
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1985
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1990
    :cond_2
    iget-boolean v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-eqz v4, :cond_4

    .line 1991
    const-string/jumbo v1, "SQLiteDatabase"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1992
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "this database: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    :cond_3
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1998
    :cond_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2005
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2001
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v2, v4

    iput v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2003
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final endTransaction()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransaction(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public final execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1647
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1648
    return-void
.end method

.method public final execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1694
    if-nez p2, :cond_0

    .line 1695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1698
    return-void
.end method

.method public final executeWriteTask(Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    .locals 3
    .param p1, "databaseTask"    # Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2279
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2281
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-interface {p1}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;->getSql()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2283
    .local v0, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeWithPrimaryConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2285
    :try_start_2
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2288
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v1

    .line 2285
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2288
    .end local v0    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getAttachedDbs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2108
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2109
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-nez v4, :cond_0

    .line 2110
    monitor-exit v3

    move-object v0, v2

    .line 2150
    .end local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return-object v0

    .line 2113
    .restart local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_1

    .line 2123
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v4, "main"

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    monitor-exit v3

    goto :goto_0

    .line 2128
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2127
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2128
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    const/4 v1, 0x0

    .line 2134
    .local v1, "c":Landroid/database/Cursor;
    :try_start_2
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2135
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2141
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2144
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_2

    .line 2145
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2150
    :catchall_2
    move-exception v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v2

    .line 2144
    :cond_3
    if-eqz v1, :cond_4

    .line 2145
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2150
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    goto :goto_0
.end method

.method final getLabel()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getMaximumSize()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    const-string/jumbo v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->longForQuery(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 919
    .local v0, "pageCount":J
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public final getPageSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 947
    const-string/jumbo v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->longForQuery(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1781
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1782
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getSqliteHandler()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2240
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 668
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method final getThreadDefaultConnectionFlags(Z)I
    .locals 2
    .param p1, "readOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 396
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 398
    .local v0, "flags":I
    :goto_0
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    or-int/lit8 v0, v0, 0x4

    .line 401
    :cond_0
    return v0

    .line 396
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method final getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    return-object v0
.end method

.method public final getVersion()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 900
    const-string/jumbo v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->longForQuery(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public final inTransaction()Z
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->hasTransaction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 573
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public final insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1381
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1384
    :goto_0
    return-wide v2

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error inserting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public final insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1480
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1482
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1483
    .local v5, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "INSERT"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    sget-object v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v7, v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    const-string/jumbo v7, " INTO "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    const/16 v7, 0x28

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1491
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v4

    .line 1492
    .local v4, "size":I
    :goto_0
    if-lez v4, :cond_4

    .line 1493
    new-array v0, v4, [Ljava/lang/Object;

    .line 1494
    const/4 v2, 0x0

    .line 1495
    .local v2, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1496
    .local v1, "colName":Ljava/lang/String;
    if-lez v3, :cond_1

    const-string/jumbo v7, ","

    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v3

    move v3, v2

    .line 1499
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1491
    .end local v1    # "colName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1496
    .restart local v1    # "colName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :cond_1
    const-string/jumbo v7, ""

    goto :goto_2

    .line 1500
    .end local v1    # "colName":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x29

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1501
    const-string/jumbo v7, " VALUES ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const/4 v2, 0x0

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_5

    .line 1503
    if-lez v2, :cond_3

    const-string/jumbo v7, ",?"

    :goto_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1503
    :cond_3
    const-string/jumbo v7, "?"

    goto :goto_4

    .line 1506
    .end local v2    # "i":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") VALUES (NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :cond_5
    const/16 v7, 0x29

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1510
    new-instance v6, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1512
    .local v6, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1514
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1517
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return-wide v8

    .line 1514
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1517
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v4    # "size":I
    .end local v5    # "sql":Ljava/lang/StringBuilder;
    .end local v6    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v7
.end method

.method public final isDatabaseIntegrityOk()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2172
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2173
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 2174
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "databaselist for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " couldn\'t be retrieved. probably because the database is closed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2179
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v5

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2180
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/Pair;

    const-string/jumbo v6, "main"

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2183
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 2184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2185
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2187
    .local v3, "prog":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PRAGMA "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".integrity_check(1);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2188
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v4

    .line 2189
    .local v4, "rslt":Ljava/lang/String;
    const-string/jumbo v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2191
    const-string/jumbo v6, "SQLiteDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PRAGMA integrity_check on "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " returned: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2195
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2199
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    const/4 v5, 0x0

    .line 2201
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prog":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .end local v4    # "rslt":Ljava/lang/String;
    :goto_1
    return v5

    .line 2195
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "prog":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .restart local v4    # "rslt":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 2183
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2195
    .end local v4    # "rslt":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2199
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prog":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v5

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v5

    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2201
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public final isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 592
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->hasConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 594
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public final isDbLockedByOtherThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public final isInMemoryDatabase()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1750
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isOpen()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1760
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1761
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isReadOnly()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1734
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isWriteAheadLoggingEnabled()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2045
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2046
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2048
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2049
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    return-void
.end method

.method public final markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    return-void
.end method

.method public final needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dispose(Z)V

    .line 290
    return-void
.end method

.method final onCorruption()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    const v0, 0x124fc

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mErrorHandler:Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;->onCorruption(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 356
    return-void
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1240
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1278
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1070
    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1112
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "cursorFactory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1152
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 8
    .param p1, "cursorFactory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1198
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1202
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-object/from16 v5, p11

    .line 1201
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1204
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public final rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1293
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final rawQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1312
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursorFactory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1330
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursorFactory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1354
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1356
    .local v0, "driver":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_0

    .end local p1    # "cursorFactory":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    :goto_0
    invoke-interface {v0, p1, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1359
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v1

    .line 1356
    .restart local p1    # "cursorFactory":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCursorFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1359
    .end local v0    # "driver":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;
    .end local p1    # "cursorFactory":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method public final reopenReadWrite()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 804
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 805
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 807
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 808
    monitor-exit v3

    .line 821
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 813
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v4, v4, -0x2

    or-int/lit8 v4, v4, 0x0

    iput v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "oldOpenFlags":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 817
    .restart local v1    # "oldOpenFlags":I
    :catch_0
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 819
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1427
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1431
    :goto_0
    return-wide v2

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error inserting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public final replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1453
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setForeignKeyConstraintsEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1878
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1879
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1881
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_0

    .line 1882
    monitor-exit v2

    .line 1892
    :goto_0
    return-void

    .line 1885
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1892
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 1890
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1889
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final setLocale(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1797
    if-nez p1, :cond_0

    .line 1798
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "locale must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1801
    :cond_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1802
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1804
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 1805
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    :try_start_2
    monitor-exit v3

    return-void

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 1810
    throw v0

    .line 1812
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final setLockingEnabled(Z)V
    .locals 0
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    return-void
.end method

.method public final setMaxSqlCacheSize(I)V
    .locals 5
    .param p1, "cacheSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1829
    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1830
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "expected value between 0 and 100"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1834
    :cond_1
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1835
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1837
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 1838
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1845
    :try_start_2
    monitor-exit v3

    return-void

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mConfigurationLocked:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 1843
    throw v0

    .line 1845
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldMaxSqlCacheSize":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final setMaximumSize(J)J
    .locals 11
    .param p1, "numBytes"    # J

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 931
    .local v4, "pageSize":J
    div-long v2, p1, v4

    .line 933
    .local v2, "numPages":J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 934
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 936
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "PRAGMA max_page_count = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->longForQuery(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 938
    .local v0, "newPageCount":J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public final setPageSize(J)V
    .locals 3
    .param p1, "numBytes"    # J

    .prologue
    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRAGMA page_size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 959
    return-void
.end method

.method public final setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public final setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRAGMA user_version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteDatabase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1563
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1583
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1584
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Empty values"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1587
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1589
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x78

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1590
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "UPDATE "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    sget-object v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v8, v8, p5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    const-string/jumbo v8, " SET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    .line 1597
    .local v5, "setValuesSize":I
    if-nez p4, :cond_2

    move v1, v5

    .line 1598
    .local v1, "bindArgsSize":I
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 1599
    .local v0, "bindArgs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1600
    .local v3, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1601
    .local v2, "colName":Ljava/lang/String;
    if-lez v4, :cond_3

    const-string/jumbo v8, ","

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v4

    .line 1604
    const-string/jumbo v8, "=?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1605
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1597
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v2    # "colName":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    array-length v8, p4

    add-int v1, v5, v8

    goto :goto_0

    .line 1601
    .restart local v0    # "bindArgs":[Ljava/lang/Object;
    .restart local v1    # "bindArgsSize":I
    .restart local v2    # "colName":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_3
    const-string/jumbo v8, ""

    goto :goto_2

    .line 1606
    .end local v2    # "colName":Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    .line 1607
    move v3, v5

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 1608
    sub-int v8, v3, v5

    aget-object v8, p4, v8

    aput-object v8, v0, v3

    .line 1607
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_5
    move v3, v4

    .line 1611
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1612
    const-string/jumbo v8, " WHERE "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    :cond_7
    new-instance v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1618
    .local v7, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 1620
    :try_start_2
    invoke-virtual {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1623
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    return v8

    .line 1620
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1623
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v3    # "i":I
    .end local v5    # "setValuesSize":I
    .end local v6    # "sql":Ljava/lang/StringBuilder;
    .end local v7    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v8

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->releaseReference()V

    throw v8
.end method

.method public final yieldIfContended()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 622
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public final yieldIfContendedSafely()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public final yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    .prologue
    .line 650
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
