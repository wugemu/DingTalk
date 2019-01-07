.class final Ljir$1;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljir;->a(Landroid/content/Context;Ljir$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljir$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljir$a;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Ljir$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ljir$1;->b:Ljir$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    const/4 v4, 0x0

    .line 104
    .local v4, "in":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_0

    .line 105
    invoke-static {}, Ljir;->a()V

    .line 107
    :cond_0
    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 108
    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_1
    const-string/jumbo v6, "ElectionServiceUtil"

    const-string/jumbo v7, "saveElectionResult electionFile"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "path"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljir;->f()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "host"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Ljir$1;->b:Ljir$a;

    iget-object v10, v10, Ljir$a;->a:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "retry"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Ljir$1;->b:Ljir$a;

    iget v10, v10, Ljir$a;->b:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-static {}, Ljir;->f()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .local v5, "in":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v3, "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "package"

    iget-object v6, p0, Ljir$1;->b:Ljir$a;

    iget-object v6, v6, Ljir$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, ""

    :goto_0
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v6, "retry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljir$1;->b:Ljir$a;

    iget v8, v8, Ljir$a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Ljir;->g()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    invoke-static {}, Ljir;->g()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 116
    const-string/jumbo v6, "lastFlushTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljir;->g()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 122
    .local v2, "electionJson":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    .local v0, "data":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 141
    .end local v0    # "data":[B
    .end local v2    # "electionJson":Lorg/json/JSONObject;
    .end local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 113
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    iget-object v6, p0, Ljir$1;->b:Ljir$a;

    iget-object v6, v6, Ljir$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v6, "lastFlushTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .end local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 131
    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljir$1;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljir;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljir;->a(Ljava/io/File;)Ljava/io/File;

    .line 132
    const-string/jumbo v6, "ElectionServiceUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "path invailable, new path="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v6, Ljava/io/File;

    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "accs_election"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Ljir;->b(Ljava/io/File;)Ljava/io/File;

    .line 134
    invoke-static {}, Ljir;->f()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Ljir;->a:Ljava/lang/String;

    .line 136
    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 141
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "electionJson":Lorg/json/JSONObject;
    .restart local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 126
    .end local v0    # "data":[B
    .end local v2    # "electionJson":Lorg/json/JSONObject;
    .end local v3    # "electionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_5
    const-string/jumbo v6, "ElectionServiceUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveElectionResult is error,e="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    if-eqz v4, :cond_2

    .line 137
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 141
    :catch_4
    move-exception v6

    goto/16 :goto_2

    .line 129
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 136
    :goto_5
    if-eqz v4, :cond_5

    .line 137
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 140
    :cond_5
    :goto_6
    throw v6

    :catch_5
    move-exception v7

    goto :goto_6

    .line 129
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 126
    .end local v4    # "in":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/FileOutputStream;
    goto :goto_4

    :catch_7
    move-exception v6

    goto/16 :goto_3
.end method
