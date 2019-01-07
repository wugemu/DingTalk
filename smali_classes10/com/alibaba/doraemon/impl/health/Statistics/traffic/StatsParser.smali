.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;
.super Ljava/lang/Object;
.source "StatsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;,
        Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;
    }
.end annotation


# static fields
.field private static FILE_HEADER:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "StatsParser"

.field private static netStat:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;

.field private static sContext:Landroid/content/Context;

.field private static sHeaderCorrect:Ljava/lang/Boolean;

.field private static sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

.field private static sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->netStat:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;

    .line 28
    sput-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 29
    sput-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 31
    sput-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sHeaderCorrect:Ljava/lang/Boolean;

    .line 32
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "idx"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "iface"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "acct_tag_hex"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "uid_tag_int"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cnt_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "rx_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "rx_packets"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "tx_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "tx_packets"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "rx_tcp_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "rx_tcp_packets"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "rx_udp_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "rx_udp_packets"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "rx_other_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "rx_other_packets"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "tx_tcp_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "tx_tcp_packets"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "tx_udp_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "tx_udp_packets"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "tx_other_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "tx_other_packets"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->FILE_HEADER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method private static checkFileHeader()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 229
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "/proc/"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "net/xt_qtaguid/stats"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v8, "statsXtUid":Ljava/io/File;
    const/4 v6, 0x0

    .line 231
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 233
    .local v1, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "header":Ljava/lang/String;
    const-string/jumbo v10, "\\s+"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "headerItems":[Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v10, v4

    sget-object v11, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->FILE_HEADER:[Ljava/lang/String;

    array-length v11, v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v10, v11, :cond_3

    .line 255
    if-eqz v2, :cond_0

    .line 256
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 257
    :cond_0
    if-eqz v7, :cond_1

    .line 258
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .line 264
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerItems":[Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return v9

    .line 259
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v4    # "headerItems":[Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_4
    sget-object v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->FILE_HEADER:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 243
    sget-object v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->FILE_HEADER:[Ljava/lang/String;

    aget-object v10, v10, v5

    aget-object v11, v4, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-nez v10, :cond_6

    .line 255
    if-eqz v2, :cond_4

    .line 256
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 257
    :cond_4
    if-eqz v7, :cond_5

    .line 258
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_3
    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .line 261
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 259
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 255
    :cond_7
    if-eqz v2, :cond_8

    .line 256
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 257
    :cond_8
    if-eqz v7, :cond_9

    .line 258
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 261
    :cond_9
    :goto_4
    const/4 v9, 0x1

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 259
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerItems":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    const-string/jumbo v10, "other"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "javaReadNetworkStatsDetailHead FileNotFoundException"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 255
    if-eqz v1, :cond_a

    .line 256
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 257
    :cond_a
    if-eqz v6, :cond_2

    .line 258
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 259
    :catch_4
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 252
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string/jumbo v10, "other"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "javaReadNetworkStatsDetailHead IOException"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 255
    if-eqz v1, :cond_b

    .line 256
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 257
    :cond_b
    if-eqz v6, :cond_2

    .line 258
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    .line 259
    :catch_6
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 255
    :goto_7
    if-eqz v1, :cond_c

    .line 256
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 257
    :cond_c
    if-eqz v6, :cond_d

    .line 258
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 261
    :cond_d
    :goto_8
    throw v9

    .line 259
    :catch_7
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 251
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 249
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method public static getCurrentTrafficByTag(I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    .locals 6
    .param p0, "tag"    # I

    .prologue
    .line 95
    new-instance v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;-><init>()V

    .line 97
    .local v3, "tInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    if-nez v4, :cond_0

    .line 98
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->innerRefreshNetworkStats1()V

    .line 101
    :cond_0
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    if-eqz v4, :cond_6

    .line 102
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size()I

    move-result v0

    .line 103
    .local v0, "count":I
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 104
    .local v1, "e":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 105
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-virtual {v4, v2, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getValues(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    .line 106
    iget v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    if-ne v4, p0, :cond_1

    .line 107
    iget v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    if-nez v4, :cond_3

    .line 108
    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v5, "wlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackWifiRxBytes(J)V

    .line 110
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackWifiTxBytes(J)V

    .line 104
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackOtherRxBytes(J)V

    .line 113
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackOtherTxBytes(J)V

    goto :goto_1

    .line 115
    :cond_3
    iget v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 116
    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v5, "wlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeWifiRxBytes(J)V

    .line 118
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeWifiTxBytes(J)V

    goto :goto_1

    .line 120
    :cond_4
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeOtherRxBytes(J)V

    .line 121
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeOtherTxBytes(J)V

    goto :goto_1

    .line 124
    :cond_5
    const-string/jumbo v4, "StatsParser"

    const-string/jumbo v5, "Cannot determinate foreground or background traffic!!!"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v0    # "count":I
    .end local v1    # "e":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .end local v2    # "i":I
    :cond_6
    return-object v3
.end method

.method public static getCurrentTrafficIncByTag(ILjava/util/Set;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    .locals 6
    .param p0, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "activeIfaceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;-><init>()V

    .line 54
    .local v3, "tInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    if-nez v4, :cond_0

    .line 55
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->innerRefreshNetworkStats2()V

    .line 58
    :cond_0
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    if-eqz v4, :cond_6

    .line 59
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->size()I

    move-result v0

    .line 60
    .local v0, "count":I
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>()V

    .line 61
    .local v1, "e":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 62
    sget-object v4, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-virtual {v4, v2, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->getValues(ILcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    .line 63
    iget v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    if-ne v4, p0, :cond_1

    .line 64
    iget v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    if-nez v4, :cond_3

    .line 65
    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v5, "wlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackWifiRxBytes(J)V

    .line 68
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackWifiTxBytes(J)V

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackOtherRxBytes(J)V

    .line 71
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addBackOtherTxBytes(J)V

    goto :goto_1

    .line 74
    :cond_3
    iget v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 75
    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v5, "wlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeWifiRxBytes(J)V

    .line 78
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeWifiTxBytes(J)V

    goto :goto_1

    .line 80
    :cond_4
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeOtherRxBytes(J)V

    .line 81
    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->addForeOtherTxBytes(J)V

    goto :goto_1

    .line 85
    :cond_5
    const-string/jumbo v4, "StatsParser"

    const-string/jumbo v5, "Cannot determinate foreground or background traffic!!!"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    .end local v0    # "count":I
    .end local v1    # "e":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    .end local v2    # "i":I
    :cond_6
    return-object v3
.end method

.method private static getTotalTrafficFromInterface()J
    .locals 6

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 362
    .local v0, "uid":I
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getNetworkStatsValue(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 43
    sput-object p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static innerCheckTrafficIncrement(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "tagValue"    # I

    .prologue
    .line 170
    new-instance v20, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;-><init>()V

    .line 171
    .local v20, "trafficIncInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->getCurrentTrafficByTag(I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    move-result-object v21

    .line 172
    .local v21, "trafficInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    invoke-static/range {p0 .. p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getFGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    .line 173
    .local v10, "fgwfTraffic":J
    invoke-static/range {p0 .. p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getFGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 174
    .local v8, "fgOtherTraffic":J
    invoke-static/range {p0 .. p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getBGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 175
    .local v6, "bgwfTraffic":J
    invoke-static/range {p0 .. p1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->getBGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 179
    .local v4, "bgOtherTraffic":J
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeWifiBytes()J

    move-result-wide v18

    .line 183
    .local v18, "newFgwfTraffic":J
    const-wide/16 v22, -0x1

    cmp-long v22, v10, v22

    if-eqz v22, :cond_0

    cmp-long v22, v18, v10

    if-lez v22, :cond_0

    .line 184
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeWifiBytes()J

    move-result-wide v22

    sub-long v22, v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    .line 186
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putFGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V

    .line 188
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeOtherBytes()J

    move-result-wide v16

    .line 191
    .local v16, "newFgOtherTraffic":J
    const-wide/16 v22, -0x1

    cmp-long v22, v8, v22

    if-eqz v22, :cond_1

    cmp-long v22, v16, v8

    if-lez v22, :cond_1

    .line 192
    sub-long v22, v16, v8

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    .line 194
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putFGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V

    .line 196
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackWifiBytes()J

    move-result-wide v14

    .line 199
    .local v14, "newBgwfTraffic":J
    const-wide/16 v22, -0x1

    cmp-long v22, v6, v22

    if-eqz v22, :cond_2

    cmp-long v22, v14, v6

    if-lez v22, :cond_2

    .line 200
    sub-long v22, v14, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    .line 202
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v15}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putBGWFTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V

    .line 204
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackOtherBytes()J

    move-result-wide v12

    .line 207
    .local v12, "newBgOtherTraffic":J
    const-wide/16 v22, -0x1

    cmp-long v22, v4, v22

    if-eqz v22, :cond_3

    cmp-long v22, v12, v4

    if-lez v22, :cond_3

    .line 208
    sub-long v22, v12, v4

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    .line 210
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12, v13}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putBGOtherTagTraffic(Landroid/content/Context;Ljava/lang/String;J)V

    .line 212
    return-object v20
.end method

.method public static innerCheckTrafficIncrement2(Landroid/content/Context;Ljava/lang/String;ILjava/util/Set;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "tagValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;"
        }
    .end annotation

    .prologue
    .line 216
    .local p3, "ifaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;-><init>()V

    .line 217
    .local v0, "trafficIncInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    invoke-static {p2, p3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->getCurrentTrafficIncByTag(ILjava/util/Set;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    move-result-object v1

    .line 219
    .local v1, "trafficInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeWifiBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    .line 220
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeOtherBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    .line 221
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackWifiBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    .line 222
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackOtherBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    .line 224
    return-object v0
.end method

.method public static innerRefreshNetworkStats1()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->netStat:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;->readNetworkStatsDetail(I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v1

    sput-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static innerRefreshNetworkStats2()V
    .locals 4

    .prologue
    .line 143
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 144
    .local v1, "oldStats":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->netStat:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/DoraemonNetworkStats;->readNetworkStatsDetail(I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v2

    sput-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    .line 145
    if-eqz v1, :cond_0

    .line 146
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->subtract(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    move-result-object v2

    sput-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStatsInc:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sMyNetworkStats:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->putNetworkStatsValue(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;)V

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAdapterSuccess()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sHeaderCorrect:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->checkFileHeader()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sHeaderCorrect:Ljava/lang/Boolean;

    .line 161
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->sHeaderCorrect:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static javaReadNetworkStatsDetail(I)V
    .locals 13
    .param p0, "uid"    # I

    .prologue
    .line 273
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "/proc/"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "net/xt_qtaguid/stats"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .local v8, "statsXtUid":Ljava/io/File;
    const/4 v5, 0x1

    .line 278
    .local v5, "lastIdx":I
    const/4 v6, 0x0

    .line 281
    .local v6, "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :try_start_0
    new-instance v7, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v10}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .local v7, "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->finishLine()V

    .line 284
    :goto_0
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->hasMoreData()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 285
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextInt()I

    move-result v2

    .line 286
    .local v2, "idx":I
    add-int/lit8 v10, v5, 0x1

    if-eq v2, v10, :cond_1

    .line 287
    new-instance v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "inconsistent idx="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " after lastIdx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    .end local v2    # "idx":I
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 331
    .end local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :goto_1
    :try_start_2
    const-string/jumbo v10, "other"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "javaReadNetworkStatsDetail NullPointerException"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    if-eqz v6, :cond_0

    .line 339
    :try_start_3
    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 345
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    return-void

    .line 290
    .end local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v2    # "idx":I
    .restart local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :cond_1
    move v5, v2

    .line 293
    :try_start_4
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "iface":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->kernelToTag(Ljava/lang/String;)I

    move-result v9

    .line 296
    .local v9, "tag":I
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextInt()I

    move-result v4

    .line 297
    .local v4, "innerUid":I
    if-eq v4, p0, :cond_2

    .line 298
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->finishLine()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 332
    .end local v2    # "idx":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v4    # "innerUid":I
    .end local v9    # "tag":I
    :catch_1
    move-exception v0

    move-object v6, v7

    .line 333
    .end local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :goto_3
    :try_start_5
    const-string/jumbo v10, "other"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "javaReadNetworkStatsDetail NumberFormatException"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    if-eqz v6, :cond_0

    .line 339
    :try_start_6
    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 340
    :catch_2
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v2    # "idx":I
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v4    # "innerUid":I
    .restart local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v9    # "tag":I
    :cond_2
    :try_start_7
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;-><init>()V

    .line 303
    .local v1, "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;
    iput v2, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->idx:I

    .line 304
    iput-object v3, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->iface:Ljava/lang/String;

    .line 305
    iput v9, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->tag:I

    .line 306
    iput p0, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->uid:I

    .line 307
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextInt()I

    move-result v10

    iput v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->set:I

    .line 308
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxBytes:J

    .line 309
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxPackets:J

    .line 310
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txBytes:J

    .line 311
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxPackets:J

    .line 312
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxTcpBytes:J

    .line 313
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxPackets:J

    .line 314
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxUdpBytes:J

    .line 316
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxUdpPackets:J

    .line 317
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxOtherBytes:J

    .line 318
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->rxOtherPackets:J

    .line 319
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txTcpBytes:J

    .line 320
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txTcpPackets:J

    .line 321
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txUdpBytes:J

    .line 322
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txUdpPackets:J

    .line 323
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txOtherBytes:J

    .line 324
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;->txOtherPackets:J

    .line 326
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->finishLine()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 334
    .end local v1    # "entry":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficEntry;
    .end local v2    # "idx":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v4    # "innerUid":I
    .end local v9    # "tag":I
    :catch_3
    move-exception v0

    move-object v6, v7

    .line 335
    .end local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :goto_4
    :try_start_8
    const-string/jumbo v10, "other"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "javaReadNetworkStatsDetail IOException"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 337
    if-eqz v6, :cond_0

    .line 339
    :try_start_9
    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 340
    :catch_4
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :cond_3
    :try_start_a
    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move-object v6, v7

    .line 342
    .end local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    goto/16 :goto_2

    .line 340
    .end local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :catch_5
    move-exception v0

    .line 341
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 342
    .end local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    goto/16 :goto_2

    .line 340
    .local v0, "e":Ljava/lang/NullPointerException;
    :catch_6
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 337
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v6, :cond_4

    .line 339
    :try_start_b
    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 342
    :cond_4
    :goto_6
    throw v10

    .line 340
    :catch_7
    move-exception v0

    .line 341
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 337
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    .restart local v6    # "reader":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/ProcFileReader;
    goto :goto_5

    .line 334
    :catch_8
    move-exception v0

    goto :goto_4

    .line 332
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 330
    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method

.method private static kernelToTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 353
    .local v0, "length":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 354
    add-int/lit8 v2, v0, -0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 356
    :cond_0
    return v1
.end method

.method public static recordTagSnapshot()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->javaReadNetworkStatsDetail(I)V

    .line 166
    return-void
.end method
