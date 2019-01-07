.class public Lcom/alibaba/android/searchengine/jni/Searcher;
.super Ljava/lang/Object;
.source "Searcher.java"


# static fields
.field private static sIsLoadFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    sput-boolean v4, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    .line 37
    :try_start_0
    const-string/jumbo v2, "dingtalk-searcher"

    .line 1052
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alibaba/android/searchengine/jni/Searcher;->testNativeLoaded()V

    .line 39
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    .line 44
    .local v0, "tr":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 2017
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    sget-object v1, Leda;->a:Landroid/content/Context;

    .line 1067
    if-eqz v1, :cond_1

    .line 1059
    :goto_2
    if-eqz v1, :cond_0

    .line 1060
    new-instance v3, Lclw;

    invoke-direct {v3, v1, v2}, Lclw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2102
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 2103
    :try_start_3
    iget-object v1, v3, Lclw;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Lclw;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 2104
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 2105
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    .restart local v0    # "tr":Ljava/lang/Throwable;
    sput-boolean v4, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    .line 42
    const-string/jumbo v1, "load libdingtalk-searcher.so failed:%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1070
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_1
    :try_start_5
    invoke-static {}, Lclw;->a()Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPinyin([B)[B
    .locals 1
    .param p0, "hanzi"    # [B

    .prologue
    .line 177
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/searchengine/jni/Searcher;->nativeConvertPinyin([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private native ftsConfigure(Lcom/alibaba/android/searchengine/models/FtsConfigure;)I
.end method

.method private native ftsFullSyncIndex([B[B[BI)I
.end method

.method private native ftsNotifyAfterTransactionBegin([B)I
.end method

.method private native ftsNotifyAfterTransactionRollback([B)I
.end method

.method private native ftsNotifyBeforeTransactionCommit([B)I
.end method

.method private native ftsNotifyDBClose([B)I
.end method

.method private native ftsNotifyDBReady([B[B[BJZ)I
.end method

.method private native ftsNotifyInTransactionBeforeExecSql([B[B)I
.end method

.method private native ftsNotifyTableReady([B[B)I
.end method

.method private native ftsQuery(Lcom/alibaba/android/searchengine/models/FtsIndexQuery;Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;)I
.end method

.method private native ftsQueryPhrases([B[B[BZ)[B
.end method

.method private native ftsQueryRelation([B[BI)[B
.end method

.method private native ftsSelfCheckStart([BZLcom/alibaba/android/searchengine/models/FtsSelfCheckResults;)I
.end method

.method private native ftsSelfCheckStop([B)I
.end method

.method public static highlight([B[BI[B[B)[B
    .locals 1
    .param p0, "text"    # [B
    .param p1, "keywords"    # [B
    .param p2, "maxLen"    # I
    .param p3, "hlOpen"    # [B
    .param p4, "hlClose"    # [B

    .prologue
    .line 184
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/android/searchengine/jni/Searcher;->nativeHighlight([B[BI[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static isLoadFailed()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    return v0
.end method

.method private static native nativeConvertPinyin([B)[B
.end method

.method private static native nativeHighlight([B[BI[B[B)[B
.end method

.method public static printNativeLog([B)V
    .locals 5
    .param p0, "logBytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 210
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[native]"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p0}, Leui;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "log":Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method private static native testNativeLoaded()V
.end method


# virtual methods
.method public configure(Lcom/alibaba/android/searchengine/models/FtsConfigure;)I
    .locals 1
    .param p1, "configure"    # Lcom/alibaba/android/searchengine/models/FtsConfigure;

    .prologue
    .line 52
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, -0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsConfigure(Lcom/alibaba/android/searchengine/models/FtsConfigure;)I

    move-result v0

    goto :goto_0
.end method

.method public fullSyncIndex([B[B[BI)I
    .locals 1
    .param p1, "bizType"    # [B
    .param p2, "bizTableName"    # [B
    .param p3, "fullSyncSql"    # [B
    .param p4, "fullSyncMode"    # I

    .prologue
    .line 115
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, -0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsFullSyncIndex([B[B[BI)I

    move-result v0

    goto :goto_0
.end method

.method public notifyAfterTransactionBegin([B)I
    .locals 1
    .param p1, "dbName"    # [B

    .prologue
    .line 79
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyAfterTransactionBegin([B)I

    move-result v0

    goto :goto_0
.end method

.method public notifyAfterTransactionRollback([B)I
    .locals 1
    .param p1, "dbName"    # [B

    .prologue
    .line 106
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyAfterTransactionRollback([B)I

    move-result v0

    goto :goto_0
.end method

.method public notifyBeforeTransactionCommit([B)I
    .locals 1
    .param p1, "dbName"    # [B

    .prologue
    .line 97
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, -0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyBeforeTransactionCommit([B)I

    move-result v0

    goto :goto_0
.end method

.method public notifyDbClose([B)I
    .locals 1
    .param p1, "dbName"    # [B

    .prologue
    .line 124
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyDBClose([B)I

    move-result v0

    goto :goto_0
.end method

.method public notifyDbReady([B[B[BJZ)I
    .locals 2
    .param p1, "dbName"    # [B
    .param p2, "dbFilePath"    # [B
    .param p3, "dbKey"    # [B
    .param p4, "hookConn"    # J
    .param p6, "enableFts"    # Z

    .prologue
    .line 61
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyDBReady([B[B[BJZ)I

    move-result v0

    goto :goto_0
.end method

.method public notifyInTransactionBeforeExecSql([B[B)I
    .locals 1
    .param p1, "dbName"    # [B
    .param p2, "sql"    # [B

    .prologue
    .line 88
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyInTransactionBeforeExecSql([B[B)I

    move-result v0

    goto :goto_0
.end method

.method public notifyTableReady([B[B)I
    .locals 1
    .param p1, "dbName"    # [B
    .param p2, "bizTableName"    # [B

    .prologue
    .line 70
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, -0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsNotifyTableReady([B[B)I

    move-result v0

    goto :goto_0
.end method

.method public query(Lcom/alibaba/android/searchengine/models/FtsIndexQuery;Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;)I
    .locals 1
    .param p1, "queryInput"    # Lcom/alibaba/android/searchengine/models/FtsIndexQuery;
    .param p2, "resultResult"    # Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;

    .prologue
    .line 133
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, -0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsQuery(Lcom/alibaba/android/searchengine/models/FtsIndexQuery;Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;)I

    move-result v0

    goto :goto_0
.end method

.method public queryPhrases([B[B[BZ)[B
    .locals 1
    .param p1, "bizType"    # [B
    .param p2, "col"    # [B
    .param p3, "value"    # [B
    .param p4, "colExclusive"    # Z

    .prologue
    .line 151
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsQueryPhrases([B[B[BZ)[B

    move-result-object v0

    goto :goto_0
.end method

.method public queryRelation([B[BI)[B
    .locals 1
    .param p1, "phraseLeft"    # [B
    .param p2, "phraseRight"    # [B
    .param p3, "type"    # I

    .prologue
    .line 142
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsQueryRelation([B[BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public selfCheckStart([BZLcom/alibaba/android/searchengine/models/FtsSelfCheckResults;)I
    .locals 1
    .param p1, "dbName"    # [B
    .param p2, "selfCheckForce"    # Z
    .param p3, "result"    # Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;

    .prologue
    .line 160
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, -0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsSelfCheckStart([BZLcom/alibaba/android/searchengine/models/FtsSelfCheckResults;)I

    move-result v0

    goto :goto_0
.end method

.method public selfCheckStop([B)I
    .locals 1
    .param p1, "dbName"    # [B

    .prologue
    .line 169
    sget-boolean v0, Lcom/alibaba/android/searchengine/jni/Searcher;->sIsLoadFailed:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, -0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/searchengine/jni/Searcher;->ftsSelfCheckStop([B)I

    move-result v0

    goto :goto_0
.end method
