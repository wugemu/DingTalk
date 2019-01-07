.class final Lijf;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lijc;


# direct methods
.method constructor <init>(Lijc;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lijf;->a:Lijc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 583
    monitor-enter v2

    .line 584
    const/4 v0, 0x0

    .line 1116
    :try_start_0
    new-instance v3, Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1120
    :try_start_2
    const-string/jumbo v3, "alipay.diskcache"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1121
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1122
    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1123
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1380
    const-string/jumbo v3, "0"

    .line 1124
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1125
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1126
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1127
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1129
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1130
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijg;

    .line 2092
    const/4 v0, 0x0

    .line 1133
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1134
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2099
    const/4 v0, 0x0

    .line 1135
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2106
    const/4 v0, 0x0

    .line 1137
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1138
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2113
    const-string/jumbo v0, "0"

    .line 1139
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2127
    const-string/jumbo v0, "0"

    .line 1141
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1142
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2134
    const/4 v0, 0x0

    .line 1143
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2141
    const-string/jumbo v0, "0"

    .line 1145
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2148
    const-string/jumbo v0, "0"

    .line 1147
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1148
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2155
    const/4 v0, 0x0

    .line 1149
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1150
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    :goto_1
    :try_start_3
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "Meta"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "fail to write meta file:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-interface {v3, v4, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x0

    .line 2497
    invoke-static {}, Limv;->a()Limv;

    move-result-object v3

    new-instance v4, Lije;

    invoke-direct {v4, v0}, Lije;-><init>(Lijc;)V

    invoke-virtual {v3, v4}, Limv;->a(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1159
    if-eqz v1, :cond_0

    .line 1160
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 585
    :cond_0
    :goto_3
    const/4 v0, 0x0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 586
    iget-object v0, p0, Lijf;->a:Lijc;

    .line 3035
    iget-object v0, v0, Lijc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 586
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 588
    return-void

    .line 1152
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1159
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 1163
    :catch_1
    move-exception v0

    .line 1164
    :try_start_8
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v3, "Meta"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1154
    :cond_2
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    goto :goto_2

    .line 1163
    :catch_2
    move-exception v0

    .line 1164
    :try_start_a
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v3, "Meta"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 1158
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 1159
    :goto_4
    if-eqz v1, :cond_3

    .line 1160
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1165
    :cond_3
    :goto_5
    :try_start_c
    throw v0

    .line 1163
    :catch_3
    move-exception v1

    .line 1164
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "Meta"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 1158
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1153
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method
