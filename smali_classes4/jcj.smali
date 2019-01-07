.class public final Ljcj;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcj$a;
    }
.end annotation


# instance fields
.field private a:Ljck;

.field private b:Ljcm;


# direct methods
.method public constructor <init>(Ljcm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcj;-><init>(Ljcm;B)V

    return-void
.end method

.method private constructor <init>(Ljcm;B)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcj;->b:Ljcm;

    iget-object v0, p1, Ljcm;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljck;

    iget-object v2, p0, Ljcj;->b:Ljcm;

    iget v2, v2, Ljcm;->c:I

    iget-object v3, p0, Ljcj;->b:Ljcm;

    iget v3, v3, Ljcm;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljck;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Ljcj;->a:Ljck;

    iget-object v0, p0, Ljcj;->a:Ljck;

    .line 1000
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Ljck;->c:J

    .line 0
    iget-object v0, p0, Ljcj;->a:Ljck;

    .line 2000
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ljck;->d:J

    .line 0
    return-void

    :cond_0
    iget-object v0, p1, Ljcm;->e:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljcj$a;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v10, 0x400

    const/4 v3, 0x0

    .line 0
    iget-object v5, p0, Ljcj;->a:Ljck;

    iget-object v1, p0, Ljcj;->b:Ljcm;

    invoke-virtual {v1}, Ljcm;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Ljcj;->b:Ljcm;

    invoke-virtual {v4}, Ljcm;->b()Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Ljcj;->b:Ljcm;

    invoke-virtual {v6}, Ljcm;->a()Ljava/util/Map;

    move-result-object v6

    .line 3000
    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {v6}, Ljck;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v6, :cond_0

    const-string/jumbo v1, "?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v4, v6}, Ljck;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bytes="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v5, Ljck;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "RANGE"

    invoke-virtual {v1, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v4, 0xc8

    if-eq v6, v4, :cond_5

    move v4, v2

    :goto_0
    const/16 v7, 0xce

    if-eq v6, v7, :cond_6

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Lcom/loc/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljcj$a;->b()V

    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, v5, Ljck;->b:Z

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_a

    iget-wide v6, v5, Ljck;->c:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    iget-wide v6, v5, Ljck;->d:J

    iget-wide v8, v5, Ljck;->c:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_a

    :cond_2
    if-ne v3, v10, :cond_7

    iget-wide v6, v5, Ljck;->d:J

    invoke-interface {p1, v2, v6, v7}, Ljcj$a;->a([BJ)V

    :goto_3
    iget-wide v6, v5, Ljck;->d:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v5, Ljck;->d:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_4
    :try_start_3
    invoke-interface {p1}, Ljcj$a;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :cond_4
    :goto_6
    return-void

    :cond_5
    move v4, v3

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    :try_start_6
    new-array v4, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, v5, Ljck;->d:J

    invoke-interface {p1, v4, v6, v7}, Ljcj$a;->a([BJ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_7
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    :cond_8
    :goto_8
    if-eqz v1, :cond_9

    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    :cond_9
    :goto_9
    throw v0

    :cond_a
    :try_start_9
    iget-boolean v2, v5, Ljck;->b:Z

    invoke-interface {p1}, Ljcj$a;->c()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_b

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    :cond_b
    :goto_a
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ht"

    const-string/jumbo v2, "mdr"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v0

    const-string/jumbo v2, "ht"

    const-string/jumbo v3, "mdr"

    invoke-static {v0, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_3
    move-exception v0

    const-string/jumbo v2, "ht"

    const-string/jumbo v3, "mdr"

    invoke-static {v0, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_4
    move-exception v1

    const-string/jumbo v2, "ht"

    const-string/jumbo v3, "mdr"

    invoke-static {v1, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_5
    move-exception v1

    const-string/jumbo v2, "ht"

    const-string/jumbo v3, "mdr"

    invoke-static {v1, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_6
    move-exception v0

    const-string/jumbo v1, "ht"

    const-string/jumbo v2, "mdr"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v2

    const-string/jumbo v3, "ht"

    const-string/jumbo v4, "mdr"

    invoke-static {v2, v3, v4}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_8
    move-exception v2

    const-string/jumbo v3, "ht"

    const-string/jumbo v4, "mdr"

    invoke-static {v2, v3, v4}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_9
    move-exception v1

    const-string/jumbo v2, "ht"

    const-string/jumbo v3, "mdr"

    invoke-static {v1, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_7

    :catchall_2
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_7

    :catchall_3
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_7

    :catch_a
    move-exception v1

    move-object v1, v0

    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_4
.end method
