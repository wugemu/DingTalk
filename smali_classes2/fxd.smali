.class public final Lfxd;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 21
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 27
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v5

    .line 23
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .param p0, "list1"    # Ljava/util/List;
    .param p1, "list2"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    if-nez p1, :cond_4

    :cond_3
    move v1, v2

    .line 39
    goto :goto_0

    .line 42
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "item":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    .line 47
    goto :goto_0
.end method
