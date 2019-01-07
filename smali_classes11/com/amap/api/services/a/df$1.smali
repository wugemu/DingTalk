.class final Lcom/amap/api/services/a/df$1;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/df;->a(Lcom/amap/api/services/a/de;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/de;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/de;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amap/api/services/a/df$1;->a:Lcom/amap/api/services/a/de;

    iput-object p2, p0, Lcom/amap/api/services/a/df$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 76
    const-class v3, Lcom/amap/api/services/a/df;

    monitor-enter v3

    .line 77
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/services/a/df$1;->a:Lcom/amap/api/services/a/de;

    invoke-virtual {v2}, Lcom/amap/api/services/a/de;->a()[B

    move-result-object v4

    .line 83
    iget-object v2, p0, Lcom/amap/api/services/a/df$1;->b:Landroid/content/Context;

    sget-object v5, Lcom/amap/api/services/a/bi;->e:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v6, 0x1

    const-wide/32 v8, 0x19000

    invoke-static {v5, v2, v6, v8, v9}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/cp;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 86
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/cp;->b(Ljava/lang/String;)Lcom/amap/api/services/a/cp$a;

    move-result-object v0

    .line 88
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/amap/api/services/a/cp$a;->a(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 90
    invoke-virtual {v0}, Lcom/amap/api/services/a/cp$a;->a()V

    .line 91
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    if-eqz v1, :cond_0

    .line 97
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 104
    :try_start_4
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 92
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 93
    :goto_2
    :try_start_6
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "applyStatics"

    invoke-static {v0, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 95
    if-eqz v1, :cond_2

    .line 97
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 102
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 104
    :try_start_8
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 95
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_3

    .line 97
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 102
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 104
    :try_start_b
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 95
    :cond_4
    :goto_6
    :try_start_c
    throw v0

    .line 98
    :catch_2
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 105
    :catch_3
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 98
    :catch_4
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 98
    :catch_5
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 105
    :catch_6
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 95
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 92
    :catch_7
    move-exception v0

    goto :goto_2
.end method
