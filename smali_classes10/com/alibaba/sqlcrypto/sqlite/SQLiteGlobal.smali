.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteGlobal"

.field private static sDefaultPageSize:J

.field private static final sLock:Ljava/lang/Object;

.field private static sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getDefaultJournalMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "PERSIST"

    return-object v0
.end method

.method public static getDefaultPageSize()J
    .locals 6

    .prologue
    .line 71
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-wide v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    .line 74
    new-instance v0, Landroid/os/StatFs;

    const-string/jumbo v2, "/data"

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    sput-wide v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    .line 81
    :cond_0
    :goto_0
    sget-wide v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    monitor-exit v1

    return-wide v2

    .line 76
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    const-string/jumbo v2, "/data"

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultSyncMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "FULL"

    return-object v0
.end method

.method public static getJournalSizeLimit()I
    .locals 1

    .prologue
    .line 103
    const/high16 v0, 0x100000

    return v0
.end method

.method public static getSqliteVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeGetSqliteVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWALAutoCheckpoint()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x3e8

    return v0
.end method

.method public static getWALConnectionPoolSize()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x4

    return v0
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "FULL"

    return-object v0
.end method

.method private static native nativeGetSqliteVersion()Ljava/lang/String;
.end method

.method private static native nativeReleaseMemory()I
.end method

.method private static native nativeSetSqliteLogSwitch(Z)V
.end method

.method public static printSqliteLog(ILjava/lang/String;)V
    .locals 3
    .param p0, "iErrCode"    # I
    .param p1, "zMsg"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Sqlite] code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sqlcrypto/SQLiteLogCallback;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static releaseMemory()I
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    move-result v0

    return v0
.end method

.method public static setSqLiteLogCallback(Lcom/alibaba/sqlcrypto/SQLiteLogCallback;Z)V
    .locals 0
    .param p0, "sqLiteLogCallback"    # Lcom/alibaba/sqlcrypto/SQLiteLogCallback;
    .param p1, "isPrint"    # Z

    .prologue
    .line 162
    sput-object p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;

    .line 163
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeSetSqliteLogSwitch(Z)V

    .line 164
    return-void
.end method
