.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;
.super Ljava/lang/Object;
.source "DoraemonNetworkStats.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DoraemonNetworkStats"

.field public static final UID_ALL:I = -0x1


# instance fields
.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;-><init>(Ljava/io/File;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "procRoot"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;->mStatsXtUid:Ljava/io/File;

    .line 29
    return-void
.end method

.method private javaReadNetworkStatsDetail(Ljava/io/File;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 10
    .param p1, "detailPath"    # Ljava/io/File;
    .param p2, "limitUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    new-instance v5, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x18

    invoke-direct {v5, v8, v9, v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;-><init>(JI)V

    .line 43
    .local v5, "stats":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 45
    .local v0, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    const/4 v1, 0x1

    .line 46
    .local v1, "idx":I
    const/4 v2, 0x1

    .line 48
    .local v2, "lastIdx":I
    const/4 v3, 0x0

    .line 51
    .local v3, "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .local v4, "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->finishLine()V

    .line 54
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->hasMoreData()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 55
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextInt()I

    move-result v1

    .line 56
    add-int/lit8 v7, v2, 0x1

    if-eq v1, v7, :cond_1

    .line 57
    const-string/jumbo v7, "DoraemonNetworkStats"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ProtocolException inconsistent idx="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " after lastIdx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V

    move-object v3, v4

    .line 86
    .end local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :cond_0
    :goto_1
    return-object v5

    .line 61
    .end local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :cond_1
    move v2, v1

    .line 63
    :try_start_2
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 64
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;->kernelToTag(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 65
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextInt()I

    move-result v7

    iput v7, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 66
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextInt()I

    move-result v7

    iput v7, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 67
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 68
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 69
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 70
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 72
    const/4 v7, -0x1

    if-eq p2, v7, :cond_2

    iget v7, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    if-ne p2, v7, :cond_3

    .line 73
    :cond_2
    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->addValues(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 76
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->finishLine()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 79
    .end local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .local v6, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "other"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " javaReadNetworkStatsDetail parsing idx "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V

    goto :goto_1

    .end local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :cond_4
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V

    move-object v3, v4

    .end local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_5

    .line 82
    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V

    :cond_5
    throw v7

    .line 81
    .end local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v3    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    goto :goto_3

    .line 78
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static kernelToTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 95
    .local v0, "length":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 96
    add-int/lit8 v2, v0, -0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 98
    :cond_0
    return v1
.end method


# virtual methods
.method public readNetworkStatsDetail(I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    .locals 1
    .param p1, "limitUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;->mStatsXtUid:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;->javaReadNetworkStatsDetail(Ljava/io/File;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    return-object v0
.end method
