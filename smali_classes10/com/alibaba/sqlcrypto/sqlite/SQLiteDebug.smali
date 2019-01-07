.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;
    }
.end annotation


# static fields
.field public static final DEBUG_LOG_SLOW_QUERIES:Z

.field public static final DEBUG_SQL_LOG:Z

.field public static final DEBUG_SQL_STATEMENTS:Z

.field public static final DEBUG_SQL_TIME:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static dump(Landroid/util/Printer;[Ljava/lang/String;)V
    .locals 5
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "verbose":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 171
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v4, "-v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 170
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dumpAll(Landroid/util/Printer;Z)V

    .line 177
    return-void
.end method

.method public static getDatabaseInfo()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;-><init>()V

    .line 158
    .local v0, "stats":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->nativeGetPagerStats(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;)V

    .line 159
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getDbStats()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    .line 160
    return-object v0
.end method

.method private static native nativeGetPagerStats(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;)V
.end method

.method public static final shouldLogSlowQuery(J)Z
    .locals 1
    .param p0, "elapsedTimeMillis"    # J

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
