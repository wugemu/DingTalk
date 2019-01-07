.class public final Lcmu;
.super Ljava/lang/Object;
.source "DDObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmu$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method private static a()Lcom/alibaba/doraemon/cache/Cache;
    .locals 2

    .prologue
    .line 344
    const-string/jumbo v1, "CACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 345
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 347
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-static {p0}, Lcmu;->c(Ljava/lang/String;)[B

    move-result-object v2

    .line 100
    .local v2, "data":[B
    if-eqz v2, :cond_4

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 104
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 116
    .local v6, "reObject":Ljava/lang/Object;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 119
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 121
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "reObject":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "DDObjectCache"

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "DDObjectCache"

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 118
    :cond_1
    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 121
    :catch_2
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "DDObjectCache"

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 115
    :goto_2
    if-eqz v0, :cond_2

    .line 116
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 118
    :cond_2
    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 125
    :cond_3
    :goto_3
    throw v7

    .line 121
    :catch_3
    move-exception v3

    .line 122
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    const-string/jumbo v8, "lightapp"

    const-string/jumbo v9, "DDObjectCache"

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 128
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :cond_4
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "DDObjectCache"

    const-string/jumbo v9, "getAsObject data == null"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 108
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/io/Serializable;
    .param p2, "saveTime"    # I

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 73
    .local v1, "data":[B
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 1279
    invoke-static {p2}, Lcmu$a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1280
    array-length v6, v5

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 1281
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1282
    const/4 v7, 0x0

    array-length v5, v5

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    invoke-static {p0, v6}, Lcmu;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 89
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 76
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :cond_1
    :try_start_3
    invoke-static {p0, v1}, Lcmu;->a(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 78
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 79
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "DDObjectCache"

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    if-eqz v3, :cond_0

    .line 85
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 83
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    :catchall_0
    move-exception v5

    .line 84
    :goto_3
    if-eqz v3, :cond_2

    .line 85
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 88
    :cond_2
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    .line 83
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 78
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "DDObjectCache"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "DDObjectCache put key="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcmu;->a()Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v0

    .line 231
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v0, :cond_1

    .line 232
    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    goto :goto_0

    .line 234
    :cond_1
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "DDObjectCache"

    const-string/jumbo v3, "DDObjectCache put cache == null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {}, Lcmu;->a()Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v0

    .line 136
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    .line 140
    :cond_0
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "DDObjectCache"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "DDObjectCache remove key="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 14
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "data":[B
    invoke-static {}, Lcmu;->a()Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v0

    .line 154
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v3

    .line 156
    .local v3, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v3, :cond_1

    .line 157
    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v4

    .line 159
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v4}, Lcom/laiwang/protocol/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    .end local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    if-nez v1, :cond_3

    .line 173
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "DDObjectCache"

    const-string/jumbo v8, "getAsBinary data == null"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    .line 195
    .end local v1    # "data":[B
    :cond_0
    :goto_1
    return-object v1

    .line 160
    .restart local v1    # "data":[B
    .restart local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "DDObjectCache"

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "DDObjectCache"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getAsBinary entity == null key="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    :cond_2
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "DDObjectCache"

    const-string/jumbo v8, "cache == null"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_3
    const/4 v5, 0x0

    .line 2305
    .local v5, "removeFile":Z
    :try_start_1
    invoke-static {v1}, Lcmu$a;->a([B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2306
    new-instance v7, Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v8, 0xd

    invoke-static {v1, v6, v8}, Lcmu$a;->a([BII)[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 2307
    new-instance v8, Ljava/lang/String;

    const/16 v6, 0xe

    const/16 v9, 0x20

    invoke-static {v1, v9}, Lcmu$a;->a([BC)I

    move-result v9

    invoke-static {v1, v6, v9}, Lcmu$a;->a([BII)[B

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    .line 2308
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v7, 0x1

    aput-object v8, v6, v7

    move-object v7, v6

    .line 2259
    :goto_2
    if-eqz v7, :cond_6

    array-length v6, v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    .line 2260
    const/4 v6, 0x0

    aget-object v6, v7, v6

    .line 2261
    :goto_3
    const-string/jumbo v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2262
    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 2310
    :cond_4
    const/4 v6, 0x0

    move-object v7, v6

    goto :goto_2

    .line 2264
    :cond_5
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2265
    const/4 v6, 0x1

    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    add-long/2addr v6, v8

    cmp-long v6, v10, v6

    if-lez v6, :cond_6

    .line 2268
    const/4 v6, 0x1

    .line 180
    :goto_4
    if-nez v6, :cond_7

    .line 3294
    invoke-static {v1}, Lcmu$a;->a([B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3295
    const/16 v6, 0x20

    invoke-static {v1, v6}, Lcmu$a;->a([BC)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    array-length v7, v1

    invoke-static {v1, v6, v7}, Lcmu$a;->a([BII)[B

    move-result-object v1

    goto/16 :goto_1

    .line 2271
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 183
    :cond_7
    const/4 v5, 0x1

    .line 184
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "DDObjectCache"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getAsBinary removeFile = true key="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 188
    :catch_1
    move-exception v2

    .line 189
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "DDObjectCache"

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v5, :cond_8

    .line 195
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 194
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_9

    .line 195
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    :cond_9
    throw v6
.end method
