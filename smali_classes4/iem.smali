.class public final Liem;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liem$a;,
        Liem$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static a(JLjava/lang/String;)Liem$a;
    .locals 10
    .param p0, "timeout"    # J
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "process":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 32
    .local v6, "worker":Liem$b;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 35
    .local v5, "stderr":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 39
    new-instance v7, Liem$b;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Liem$b;-><init>(Ljava/lang/Process;B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v6    # "worker":Liem$b;
    .local v7, "worker":Liem$b;
    :try_start_1
    invoke-virtual {v7}, Liem$b;->start()V

    .line 1086
    iget-object v4, v7, Liem$b;->a:Liem$a;

    .line 42
    .local v4, "ps":Liem$a;
    invoke-virtual {v7, p0, p1}, Liem$b;->join(J)V

    .line 43
    iget v8, v4, Liem$a;->a:I

    const/16 v9, -0x101

    if-ne v8, v9, :cond_3

    .line 45
    invoke-virtual {v7}, Liem$b;->interrupt()V

    .line 46
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v8}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .end local v4    # "ps":Liem$a;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 54
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "stderr":Ljava/io/InputStream;
    .end local v7    # "worker":Liem$b;
    .local v1, "e":Ljava/lang/InterruptedException;
    .restart local v6    # "worker":Liem$b;
    :goto_0
    if-eqz v6, :cond_1

    .line 55
    :try_start_2
    invoke-virtual {v6}, Liem$b;->interrupt()V

    .line 57
    :cond_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw v8

    .line 59
    .end local v6    # "worker":Liem$b;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "ps":Liem$a;
    .restart local v5    # "stderr":Ljava/io/InputStream;
    .restart local v7    # "worker":Liem$b;
    :cond_3
    if-eqz v3, :cond_4

    .line 60
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_4
    return-object v4

    .line 59
    .end local v4    # "ps":Liem$a;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "worker":Liem$b;
    .restart local v6    # "worker":Liem$b;
    goto :goto_1

    .line 50
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "stderr":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
