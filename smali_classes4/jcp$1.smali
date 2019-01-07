.class final Ljcp$1;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljcp;->a(Ljco;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljco;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljco;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljcp$1;->a:Ljco;

    iput-object p2, p0, Ljcp$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x2710

    const/16 v0, 0xa

    .line 0
    const-class v5, Ljcp;

    monitor-enter v5

    :try_start_0
    iget-object v2, p0, Ljcp$1;->a:Ljco;

    .line 1000
    iget-object v4, v2, Ljco;->a:Landroid/content/Context;

    iget-object v6, v2, Ljco;->b:Ljej;

    iget-object v2, v2, Ljco;->c:Ljava/lang/String;

    invoke-static {v4, v6, v2}, Ljco;->a(Landroid/content/Context;Ljej;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljek;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljek;->b([B)[B

    move-result-object v2

    invoke-static {v2}, Ljed;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljek;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 0
    iget-object v2, p0, Ljcp$1;->b:Landroid/content/Context;

    sget-object v4, Ljeo;->h:Ljava/lang/String;

    invoke-static {v2, v4}, Ljeo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v8, 0x200000

    invoke-static {v4, v8, v9}, Ljcc;->a(Ljava/io/File;J)Ljcc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    sget v4, Ljcp;->a:I

    .line 2000
    if-ge v4, v0, :cond_2

    :goto_0
    iput v0, v2, Ljcc;->c:I

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3000
    invoke-virtual {v2, v0}, Ljcc;->b(Ljava/lang/String;)Ljcc$a;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Ljcc$a;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljcc$a;->b()V

    invoke-virtual {v2}, Ljcc;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljcc;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 2000
    :cond_2
    if-le v4, v3, :cond_6

    move v0, v3

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_5
    const-string/jumbo v3, "OfflineLocManager"

    const-string/jumbo v4, "applyOfflineLocEntity"

    invoke-static {v0, v3, v4}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_4
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljcc;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljcc;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :goto_7
    :try_start_b
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_3

    :cond_6
    move v0, v4

    goto/16 :goto_0
.end method
