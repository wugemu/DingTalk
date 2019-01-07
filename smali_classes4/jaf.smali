.class public final Ljaf;
.super Ljava/lang/Object;
.source "PackCast.java"

# interfaces
.implements Ljac;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    return-object v3

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 24
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v2, Liyo;

    new-instance v3, Lizk;

    array-length v4, p1

    invoke-direct {v3, v1, v4}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Liyo;-><init>(Lizj;)V

    .line 27
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v3}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 29
    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "reader":Liyo;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_2

    .line 31
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 33
    :cond_2
    :goto_2
    throw v3

    :catch_1
    move-exception v4

    goto :goto_2

    .line 29
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Z)[B
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "arrayMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    const/4 v4, 0x0

    .line 72
    .local v4, "packWriter":Liyp;
    :try_start_0
    new-instance v5, Liyp;

    invoke-direct {v5}, Liyp;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    .end local v4    # "packWriter":Liyp;
    .local v5, "packWriter":Liyp;
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {v5, p1}, Liyp;->a(Ljava/lang/Object;)V

    .line 1032
    :cond_1
    :goto_0
    iget-object v6, v5, Liyp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 91
    :try_start_2
    invoke-virtual {v5}, Liyp;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :goto_1
    return-object v6

    .line 76
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-nez v6, :cond_4

    .line 78
    invoke-virtual {v5, p1}, Liyp;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 89
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "packWriter":Liyp;
    .restart local v4    # "packWriter":Liyp;
    :goto_2
    if-eqz v4, :cond_3

    .line 91
    :try_start_4
    invoke-virtual {v4}, Liyp;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 93
    :cond_3
    :goto_3
    throw v6

    .line 80
    .end local v4    # "packWriter":Liyp;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "packWriter":Liyp;
    :cond_4
    :try_start_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 81
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_1

    .line 82
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "arrayItem":Ljava/lang/Object;
    invoke-virtual {v5, v0}, Liyp;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0    # "arrayItem":Ljava/lang/Object;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v3    # "len":I
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v5    # "packWriter":Liyp;
    .restart local v4    # "packWriter":Liyp;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 89
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public final a([B[Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "ts"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 40
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v4

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 43
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v3, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v1, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Liyo;-><init>(Lizj;)V

    .line 45
    .local v3, "reader":Liyo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "oriParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {v3}, Liyo;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    invoke-virtual {v3}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 58
    .end local v2    # "oriParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "reader":Liyo;
    :catchall_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :goto_2
    if-eqz v0, :cond_2

    .line 60
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    :cond_2
    :goto_3
    throw v4

    .line 49
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "oriParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3    # "reader":Liyo;
    :cond_3
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, p2

    if-le v4, v5, :cond_4

    .line 50
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "origin parameters size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " but type size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, p2

    if-ge v4, v5, :cond_5

    .line 53
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 56
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v4}, Liym;->a([Ljava/lang/reflect/Type;[Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "oriParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "reader":Liyo;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v5

    goto :goto_3

    .line 58
    :catchall_1
    move-exception v4

    goto :goto_2
.end method
