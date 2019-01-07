.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SQLiteConnection"

.field private static final TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

.field private static final mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionId:I

.field private mConnectionPtr:I

.field private final mIsPrimaryConnection:Z

.field private final mIsReadOnlyConnection:Z

.field private mOnlyAllowReadOnlyOperations:Z

.field private final mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

.field private final mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

.field private mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

.field private final mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 105
    new-array v0, v1, [B

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    .line 107
    const-string/jumbo v0, "[\\s]*\\n+[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 2
    .param p1, "pool"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    .line 198
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 199
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 200
    iput p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    .line 201
    iput-boolean p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 202
    iget v0, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 203
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 206
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p1, "x1"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->finalizePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method private acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 984
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 985
    .local v8, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v7, 0x0

    .line 986
    .local v7, "skipCache":Z
    if-eqz v8, :cond_1

    .line 987
    iget-boolean v0, v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v0, :cond_0

    move-object v9, v8

    .line 1015
    .end local v8    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .local v9, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :goto_0
    return-object v9

    .line 993
    .end local v9    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v8    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :cond_0
    const/4 v7, 0x1

    .line 996
    :cond_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativePrepareStatement(ILjava/lang/String;)I

    move-result v2

    .line 998
    .local v2, "statementPtr":I
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetParameterCount(II)I

    move-result v3

    .line 999
    .local v3, "numParameters":I
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v4

    .line 1000
    .local v4, "type":I
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeIsReadOnly(II)Z

    move-result v5

    .local v5, "readOnly":Z
    move-object v0, p0

    move-object v1, p1

    .line 1001
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;IIIZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v8

    .line 1002
    if-nez v7, :cond_2

    invoke-static {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1, v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :cond_2
    iput-boolean v10, v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    move-object v9, v8

    .line 1015
    .end local v8    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v9    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_0

    .line 1006
    .end local v3    # "numParameters":I
    .end local v4    # "type":I
    .end local v5    # "readOnly":Z
    .end local v9    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v8    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v6

    .line 1009
    .local v6, "ex":Ljava/lang/RuntimeException;
    if-eqz v8, :cond_3

    iget-boolean v0, v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v0, :cond_4

    .line 1010
    :cond_3
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeFinalizeStatement(II)V

    .line 1012
    :cond_4
    throw v6
.end method

.method private applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1159
    return-void
.end method

.method private bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1092
    if-eqz p2, :cond_0

    array-length v1, p2

    .line 1093
    .local v1, "count":I
    :goto_0
    iget v4, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-eq v1, v4, :cond_1

    .line 1094
    new-instance v4, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Expected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bind arguments but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " were provided."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1092
    .end local v1    # "count":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1098
    .restart local v1    # "count":I
    :cond_1
    if-nez v1, :cond_3

    .line 1133
    :cond_2
    return-void

    .line 1102
    :cond_3
    iget v3, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    .line 1103
    .local v3, "statementPtr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1104
    aget-object v0, p2, v2

    .line 1105
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1122
    :pswitch_0
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 1125
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v7, v2, 0x1

    check-cast v0, Ljava/lang/Boolean;

    .line 1126
    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x1

    .line 1125
    :goto_2
    invoke-static {v6, v3, v7, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindLong(IIIJ)V

    .line 1103
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1107
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_1
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    invoke-static {v4, v3, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindNull(III)V

    goto :goto_3

    .line 1110
    :pswitch_2
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    check-cast v0, Ljava/lang/Number;

    .line 1111
    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1110
    invoke-static {v4, v3, v5, v6, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindLong(IIIJ)V

    goto :goto_3

    .line 1114
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_3
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    check-cast v0, Ljava/lang/Number;

    .line 1115
    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 1114
    invoke-static {v4, v3, v5, v6, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindDouble(IIID)V

    goto :goto_3

    .line 1118
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_4
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    check-cast v0, [B

    .end local v0    # "arg":Ljava/lang/Object;
    check-cast v0, [B

    invoke-static {v4, v3, v5, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindBlob(III[B)V

    goto :goto_3

    .line 1126
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 1128
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_5
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindString(IIILjava/lang/String;)V

    goto :goto_3

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static native buildKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const-string/jumbo p0, "OFF"

    .line 388
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 383
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    const-string/jumbo p0, "NORMAL"

    goto :goto_0

    .line 385
    :cond_2
    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo p0, "FULL"

    goto :goto_0
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 308
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "cookie":I
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 312
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeClose(I)V

    .line 313
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 318
    .end local v0    # "cookie":I
    :cond_0
    return-void

    .line 315
    .restart local v0    # "cookie":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1
.end method

.method private finalizePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1043
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeFinalizeStatement(II)V

    .line 1044
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->recyclePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1045
    return-void
.end method

.method private getMainDbStatsUnsafe(IJJ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;
    .locals 10
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 1282
    .local v1, "label":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-nez v0, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1285
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1286
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v7

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1287
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v8

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1288
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v9

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    return-object v0
.end method

.method static getNativeHandle(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    if-nez p0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-wide v2

    .line 212
    :cond_1
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 213
    .local v0, "handler":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static getSqliteHandler(I)J
    .locals 2
    .param p0, "connectionPtr"    # I

    .prologue
    .line 147
    invoke-static {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeSqliteHandler(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1143
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeBindBlob(III[B)V
.end method

.method private static native nativeBindDouble(IIID)V
.end method

.method private static native nativeBindLong(IIIJ)V
.end method

.method private static native nativeBindNull(III)V
.end method

.method private static native nativeBindString(IIILjava/lang/String;)V
.end method

.method private static native nativeCancel(I)V
.end method

.method static native nativeCheckLoad()Z
.end method

.method private static native nativeClose(I)V
.end method

.method private static native nativeDisableTrigger(I)V
.end method

.method private static native nativeEnableTrigger(I)V
.end method

.method private static native nativeExecute(II)V
.end method

.method private static native nativeExecuteForBlobFileDescriptor(II)I
.end method

.method private static native nativeExecuteForChangedRowCount(II)I
.end method

.method private static native nativeExecuteForCursorWindow(IIIIIZ)J
.end method

.method private static native nativeExecuteForLastInsertedRowId(II)J
.end method

.method private static native nativeExecuteForLong(II)J
.end method

.method private static native nativeExecuteForString(II)Ljava/lang/String;
.end method

.method private static native nativeFinalizeStatement(II)V
.end method

.method private static native nativeGetColumnCount(II)I
.end method

.method private static native nativeGetColumnName(III)Ljava/lang/String;
.end method

.method private static native nativeGetDbLookaside(I)I
.end method

.method private static native nativeGetParameterCount(II)I
.end method

.method private static native nativeIsReadOnly(II)Z
.end method

.method private static native nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)I
.end method

.method private static native nativePrepareStatement(ILjava/lang/String;)I
.end method

.method private static native nativeRegisterCustomFunction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;)V
.end method

.method private static native nativeRegisterLocalizedCollators(ILjava/lang/String;)V
.end method

.method private static native nativeResetCancel(IZ)V
.end method

.method private static native nativeResetStatementAndClearBindings(II)V
.end method

.method private static native nativeSqliteHandler(I)J
.end method

.method private obtainPreparedStatement(Ljava/lang/String;IIIZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # I
    .param p3, "numParameters"    # I
    .param p4, "type"    # I
    .param p5, "readOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1299
    .local v0, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz v0, :cond_0

    .line 1300
    iget-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1301
    iput-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1302
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    .line 1306
    :goto_0
    iput-object p1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1307
    iput p2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    .line 1308
    iput p3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1309
    iput p4, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1310
    iput-boolean p5, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1311
    return-object v0

    .line 1304
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .end local v0    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    invoke-direct {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V

    .restart local v0    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_0
.end method

.method static open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 7
    .param p0, "pool"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .prologue
    .line 232
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 235
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->open()V

    .line 237
    if-eqz p3, :cond_0

    .line 238
    iget v4, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getSqliteHandler(I)J

    move-result-wide v2

    .line 239
    .local v2, "sqliteHandler":J
    sget-object v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v2    # "sqliteHandler":J
    :cond_0
    return-object v0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dispose(Z)V

    .line 244
    throw v1
.end method

.method private open()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 256
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)I

    move-result v3

    iput v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    .line 260
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setEncryptKey()V

    .line 263
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 264
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 265
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 266
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 267
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 270
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 271
    .local v1, "functionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 272
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;

    .line 273
    .local v0, "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;)V

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    :cond_0
    return-void
.end method

.method private recyclePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1315
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1317
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1318
    return-void
.end method

.method private releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1021
    iget-boolean v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_0

    .line 1023
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1038
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->finalizePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    goto :goto_0
.end method

.method private setAutoCheckpointInterval()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 331
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 332
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v4

    int-to-long v0, v4

    .line 333
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA wal_autocheckpoint"

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    .line 334
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PRAGMA wal_autocheckpoint="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    .line 338
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void
.end method

.method private setEncryptKey()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->password:Ljava/lang/String;

    .line 282
    .local v1, "password":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 283
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-encrypt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "encryptFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PRAGMA key=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .end local v0    # "encryptFile":Ljava/io/File;
    .end local v1    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v0    # "encryptFile":Ljava/io/File;
    .restart local v1    # "password":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PRAGMA rekey=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    const-string/jumbo v2, "SQLiteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t touch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", can\'t rekey the database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setForeignKeyModeFromConfiguration()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 351
    iget-boolean v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v4, :cond_1

    const-wide/16 v0, 0x1

    .line 353
    .local v0, "newValue":J
    :goto_0
    const-string/jumbo v4, "PRAGMA foreign_keys"

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    .line 354
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PRAGMA foreign_keys="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void

    .line 352
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setJournalMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "newValue"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 393
    const-string/jumbo v2, "PRAGMA journal_mode"

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PRAGMA journal_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .line 418
    :cond_1
    const-string/jumbo v2, "SQLiteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not change the database journal mode of \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setJournalSizeLimit()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 341
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 342
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v4

    int-to-long v0, v4

    .line 343
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA journal_size_limit"

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    .line 344
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PRAGMA journal_size_limit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    .line 348
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void
.end method

.method private setLocaleFromConfiguration()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "newLocale":Ljava/lang/String;
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(ILjava/lang/String;)V

    .line 438
    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v1, :cond_0

    .line 444
    :try_start_0
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to change locale for db \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setPageSize()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 321
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 322
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getDefaultPageSize()J

    move-result-wide v0

    .line 323
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA page_size"

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    .line 324
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PRAGMA page_size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void
.end method

.method private setSyncMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string/jumbo v1, "PRAGMA synchronous"

    invoke-virtual {p0, v1, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PRAGMA synchronous="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    :cond_0
    return-void
.end method

.method private setWalModeFromConfiguration()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 363
    const-string/jumbo v0, "WAL"

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_0
    return-void
.end method

.method private static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    .line 1321
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final close()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dispose(Z)V

    .line 253
    return-void
.end method

.method final collectDbStats(Ljava/util/ArrayList;)V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetDbLookaside(I)I

    move-result v3

    .line 1227
    .local v3, "lookaside":I
    const-wide/16 v4, 0x0

    .line 1228
    .local v4, "pageCount":J
    const-wide/16 v6, 0x0

    .line 1230
    .local v6, "pageSize":J
    :try_start_0
    const-string/jumbo v2, "PRAGMA page_count;"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    .line 1231
    const-string/jumbo v2, "PRAGMA page_size;"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v6

    :goto_0
    move-object/from16 v2, p0

    .line 1235
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    new-instance v11, Lcom/alibaba/sqlcrypto/CursorWindow;

    const-string/jumbo v2, "collectDbStats"

    invoke-direct {v11, v2}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v11, "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :try_start_1
    const-string/jumbo v9, "PRAGMA database_list;"

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZLjava/lang/Object;)I

    .line 1243
    const/16 v22, 0x1

    .local v22, "i":I
    :goto_1
    invoke-virtual {v11}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 1244
    const/4 v2, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v0, v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v23

    .line 1245
    .local v23, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v22

    invoke-virtual {v11, v0, v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v24

    .line 1246
    .local v24, "path":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1247
    const-wide/16 v6, 0x0

    .line 1249
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "PRAGMA "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ".page_count;"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "PRAGMA "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ".page_size;"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 1254
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "  (attached) "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1255
    .local v13, "label":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1258
    :cond_0
    new-instance v12, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v21}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1243
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 1263
    .end local v13    # "label":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    .line 1264
    .end local v22    # "i":I
    :goto_3
    return-void

    .line 1263
    :catch_0
    move-exception v2

    invoke-virtual {v11}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual {v11}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    throw v2

    .restart local v22    # "i":I
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v24    # "path":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v11    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local v22    # "i":I
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method final collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;>;"
    const-wide/16 v2, 0x0

    .line 1274
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    return-void
.end method

.method final describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1168
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1169
    return-void
.end method

.method final dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 2
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Connection #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1187
    if-eqz p2, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  connectionPtr: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  isPrimaryConnection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  onlyAllowReadOnlyOperations: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    .line 1195
    if-eqz p2, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1198
    :cond_1
    return-void
.end method

.method public final enableTrigger(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 975
    if-eqz p1, :cond_0

    .line 976
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeEnableTrigger(I)V

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeDisableTrigger(I)V

    goto :goto_0
.end method

.method public final execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 622
    :cond_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "execute"

    invoke-virtual {v3, v4, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 624
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 626
    .local v2, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 627
    invoke-direct {p0, v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 628
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 632
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecute(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    :try_start_2
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 644
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 645
    return-void

    .line 638
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    .end local v2    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 641
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 642
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 644
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method public final executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 759
    if-nez p1, :cond_0

    .line 760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 763
    :cond_0
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v5, "executeForBlobFileDescriptor"

    invoke-virtual {v4, v5, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 766
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 768
    .local v3, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 769
    invoke-direct {p0, v3, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 770
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 774
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v5, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(II)I

    move-result v2

    .line 776
    .local v2, "fd":I
    if-ltz v2, :cond_1

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 782
    :goto_0
    :try_start_2
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 788
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object v4

    .line 776
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 782
    .end local v2    # "fd":I
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 784
    .end local v3    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 785
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 786
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 788
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v4
.end method

.method public final executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 812
    :cond_0
    const/4 v0, 0x0

    .line 813
    .local v0, "changedRows":I
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v5, "executeForChangedRowCount"

    invoke-virtual {v4, v5, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 816
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 818
    .local v3, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 819
    invoke-direct {p0, v3, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 820
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 824
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v5, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 832
    :try_start_2
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 838
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "changedRows="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_1
    return v0

    .line 832
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 834
    .end local v3    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    .line 835
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 836
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 838
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 839
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "changedRows="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_2
    throw v4
.end method

.method public final executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZLjava/lang/Object;)I
    .locals 16
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    if-nez p1, :cond_0

    .line 919
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sql must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 921
    :cond_0
    if-nez p3, :cond_1

    .line 922
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "window must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 927
    const/4 v8, -0x1

    .line 928
    .local v8, "actualPos":I
    const/4 v10, -0x1

    .line 929
    .local v10, "countedRows":I
    const/4 v12, -0x1

    .line 930
    .local v12, "filledRows":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v3, "executeForCursorWindow"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v9

    .line 933
    .local v9, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 935
    .local v13, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 936
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 941
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v3, v13, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(IIIIIZ)J

    move-result-wide v14

    .line 944
    .local v14, "result":J
    const/16 v2, 0x20

    shr-long v2, v14, v2

    long-to-int v8, v2

    .line 945
    long-to-int v10, v14

    .line 946
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v12

    .line 947
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/alibaba/sqlcrypto/CursorWindow;->setStartPosition(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 954
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 960
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "window=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\', startPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", actualPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", filledRows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", countedRows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 969
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v10

    .line 954
    .end local v14    # "result":J
    :catchall_0
    move-exception v2

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 956
    .end local v13    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v11

    .line 957
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v9, v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 958
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 960
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "window=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\', startPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", actualPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", filledRows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", countedRows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 969
    .end local v9    # "cookie":I
    :catchall_2
    move-exception v2

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v2
.end method

.method public final executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 864
    :cond_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "executeForLastInsertedRowId"

    invoke-virtual {v3, v4, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 867
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 869
    .local v2, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 870
    invoke-direct {p0, v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 871
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 875
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(II)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 882
    :try_start_2
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 888
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v4

    .line 882
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 884
    .end local v2    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 886
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 888
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method public final executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 664
    if-nez p1, :cond_0

    .line 665
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :cond_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "executeForLong"

    invoke-virtual {v3, v4, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 670
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 672
    .local v2, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 673
    invoke-direct {p0, v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 674
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 678
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForLong(II)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 684
    :try_start_2
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 690
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v4

    .line 684
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 686
    .end local v2    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 687
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 688
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 690
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method public final executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 714
    :cond_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "executeForString"

    invoke-virtual {v3, v4, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 716
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 718
    .local v2, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 719
    invoke-direct {p0, v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 720
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 724
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForString(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 730
    :try_start_2
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 736
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object v3

    .line 730
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 732
    .end local v2    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 733
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 734
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 736
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 223
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getConnectionId()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method final isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPrimaryConnection()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public final prepare(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "sql must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 573
    :cond_0
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v6, "prepare"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 575
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 577
    .local v4, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    .line 578
    :try_start_1
    iget v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v5, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 579
    iget-boolean v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v5, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 581
    iget v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v6, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetColumnCount(II)I

    move-result v0

    .line 583
    .local v0, "columnCount":I
    if-nez v0, :cond_2

    .line 584
    sget-object v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    .end local v0    # "columnCount":I
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 600
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 601
    return-void

    .line 586
    .restart local v0    # "columnCount":I
    :cond_2
    :try_start_3
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 587
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 588
    iget-object v5, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v7, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v6, v7, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetColumnName(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "columnCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-direct {p0, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 596
    .end local v4    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    .line 597
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 598
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 600
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v5
.end method

.method final reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 10
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 474
    iput-boolean v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 477
    iget-object v8, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 478
    .local v2, "functionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 479
    iget-object v8, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;

    .line 480
    .local v1, "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    iget-object v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 481
    iget v8, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v8, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;)V

    .line 478
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    :cond_1
    iget-boolean v8, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v9, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v8, v9, :cond_5

    move v0, v6

    .line 488
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    iget v8, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v9, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v8, v9

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    move v5, v6

    .line 490
    .local v5, "walModeChanged":Z
    :goto_2
    iget-object v8, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v9, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v9, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v4, v6

    .line 493
    .local v4, "localeChanged":Z
    :goto_3
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v6, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 496
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v7, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v6, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 499
    if-eqz v0, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 504
    :cond_2
    if-eqz v5, :cond_3

    .line 505
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 509
    :cond_3
    if-eqz v4, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 512
    :cond_4
    return-void

    .end local v0    # "foreignKeyModeChanged":Z
    .end local v4    # "localeChanged":Z
    .end local v5    # "walModeChanged":Z
    :cond_5
    move v0, v7

    .line 486
    goto :goto_1

    .restart local v0    # "foreignKeyModeChanged":Z
    :cond_6
    move v5, v7

    .line 488
    goto :goto_2

    .restart local v5    # "walModeChanged":Z
    :cond_7
    move v4, v7

    .line 490
    goto :goto_3
.end method

.method final setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 519
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteConnection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
