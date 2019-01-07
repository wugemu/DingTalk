.class public Lcnf;
.super Ljava/lang/Object;
.source "MemoryFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcnf$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcnf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcnf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;
    .locals 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # I
    .param p2, "mode"    # I

    .prologue
    .line 220
    const/4 v5, 0x0

    .line 222
    .local v5, "memoryFile":Landroid/os/MemoryFile;
    :try_start_0
    new-instance v6, Landroid/os/MemoryFile;

    const-string/jumbo v9, "tem"

    const/4 v10, 0x1

    invoke-direct {v6, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v5    # "memoryFile":Landroid/os/MemoryFile;
    .local v6, "memoryFile":Landroid/os/MemoryFile;
    :try_start_1
    invoke-virtual {v6}, Landroid/os/MemoryFile;->close()V

    .line 224
    const-class v2, Landroid/os/MemoryFile;

    .line 225
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 226
    .local v8, "native_mmap":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 227
    .local v7, "ms":[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz v7, :cond_1

    array-length v9, v7

    if-ge v4, v9, :cond_1

    .line 228
    const-string/jumbo v9, "native_mmap"

    aget-object v10, v7, v4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 229
    aget-object v8, v7, v4

    .line 227
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_1
    const-string/jumbo v9, "mFD"

    invoke-static {v6, v9, p0}, Lcom/alibaba/doraemon/utils/ReflectUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string/jumbo v9, "mLength"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/alibaba/doraemon/utils/ReflectUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 235
    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    const/4 v11, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 236
    .local v0, "address":J
    const-string/jumbo v9, "mAddress"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/alibaba/doraemon/utils/ReflectUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 240
    .end local v0    # "address":J
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i":I
    .end local v6    # "memoryFile":Landroid/os/MemoryFile;
    .end local v7    # "ms":[Ljava/lang/reflect/Method;
    .end local v8    # "native_mmap":Ljava/lang/reflect/Method;
    .restart local v5    # "memoryFile":Landroid/os/MemoryFile;
    :goto_1
    return-object v5

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v9, "dingtalkbase"

    sget-object v10, Lcnf;->a:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "openMemoryFile "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v6    # "memoryFile":Landroid/os/MemoryFile;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v5    # "memoryFile":Landroid/os/MemoryFile;
    goto :goto_2
.end method

.method private static a(Ljava/lang/String;I)Landroid/os/MemoryFile;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    invoke-direct {v1, p0, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcnf$a;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 119
    invoke-static {p0, p1}, Lcnf;->b(Ljava/lang/String;Ljava/lang/Object;)Landroid/os/MemoryFile;

    move-result-object v3

    .line 120
    .local v3, "memoryFile":Landroid/os/MemoryFile;
    if-nez v3, :cond_0

    move-object v4, v6

    .line 140
    :goto_0
    return-object v4

    .line 1249
    :cond_0
    if-nez v3, :cond_1

    move-object v0, v6

    .line 124
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    :goto_1
    if-nez v0, :cond_2

    .line 125
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    move-object v4, v6

    .line 126
    goto :goto_0

    .line 1253
    .end local v0    # "descriptor":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-static {v3}, Lcnf;->a(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 1254
    const-string/jumbo v7, "android.os.ParcelFileDescriptor"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Lcom/alibaba/doraemon/utils/ReflectUtils;->getInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v0, v5

    .line 1255
    goto :goto_1

    .line 129
    .restart local v0    # "descriptor":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v2

    .line 130
    .local v2, "fd":I
    new-instance v4, Lcnf$a;

    invoke-virtual {v3}, Landroid/os/MemoryFile;->length()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcnf$a;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v4, "wrapper":Lcnf$a;
    goto :goto_0

    .line 132
    .end local v2    # "fd":I
    .end local v4    # "wrapper":Lcnf$a;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_2
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    .line 138
    const-string/jumbo v5, "dingtalkbase"

    sget-object v7, Lcnf;->a:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "writeMemoryFileForFd "

    aput-object v9, v8, v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 140
    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private static a(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 5
    .param p0, "memoryFile"    # Landroid/os/MemoryFile;

    .prologue
    const/4 v2, 0x0

    .line 264
    if-nez p0, :cond_0

    .line 277
    :goto_0
    return-object v2

    .line 267
    :cond_0
    const/4 v2, 0x0

    .line 269
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    const-string/jumbo v3, "getFileDescriptor"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/alibaba/doraemon/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/FileDescriptor;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(II)Ljava/lang/Object;
    .locals 6
    .param p0, "fd"    # I
    .param p1, "length"    # I

    .prologue
    .line 59
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 60
    :cond_0
    const-string/jumbo v1, "dingtalkbase"

    sget-object v2, Lcnf;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "readMemoryFile "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "fd <= 0 or length <= 0"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    .line 63
    :cond_1
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 64
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    invoke-static {v0, p1}, Lcnf;->a(Landroid/os/ParcelFileDescriptor;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Landroid/os/ParcelFileDescriptor;I)Ljava/lang/Object;
    .locals 13
    .param p0, "descriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "length"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "memoryFile":Landroid/os/MemoryFile;
    const/4 v1, 0x0

    .line 77
    .local v1, "input":Ljava/io/ObjectInputStream;
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    .line 78
    :cond_0
    :try_start_0
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "readMemoryFile "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "descriptor is null or length <= 0"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz p0, :cond_1

    .line 100
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :cond_1
    :goto_0
    return-object v4

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close descriptor "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1200
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-nez p0, :cond_4

    move-object v3, v4

    .line 82
    :goto_1
    if-nez v3, :cond_5

    .line 98
    if-eqz p0, :cond_3

    .line 100
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    :cond_3
    :goto_2
    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    goto :goto_0

    .line 1203
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 1204
    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lcnf;->a(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close descriptor "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    .end local v1    # "input":Ljava/io/ObjectInputStream;
    .local v2, "input":Ljava/io/ObjectInputStream;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 91
    if-eqz v2, :cond_6

    .line 93
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 98
    :cond_6
    :goto_3
    if-eqz p0, :cond_7

    .line 100
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 106
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 107
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    :cond_8
    move-object v1, v2

    .end local v2    # "input":Ljava/io/ObjectInputStream;
    .restart local v1    # "input":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 94
    .end local v1    # "input":Ljava/io/ObjectInputStream;
    .restart local v2    # "input":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close stream "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close descriptor "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/ObjectInputStream;
    .restart local v1    # "input":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "readMemoryFile "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 91
    if-eqz v1, :cond_9

    .line 93
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 98
    :cond_9
    :goto_6
    if-eqz p0, :cond_a

    .line 100
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    goto/16 :goto_0

    .line 94
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 95
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close stream "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 101
    :catch_6
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close descriptor "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_8
    if-eqz v1, :cond_b

    .line 93
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 98
    :cond_b
    :goto_9
    if-eqz p0, :cond_c

    .line 100
    :try_start_c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 106
    :cond_c
    :goto_a
    if-eqz v3, :cond_d

    .line 107
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    :cond_d
    throw v4

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close stream "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "readMemoryFile close descriptor "

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "input":Ljava/io/ObjectInputStream;
    .restart local v2    # "input":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "input":Ljava/io/ObjectInputStream;
    .restart local v1    # "input":Ljava/io/ObjectInputStream;
    goto :goto_8

    .line 87
    .end local v1    # "input":Ljava/io/ObjectInputStream;
    .restart local v2    # "input":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/ObjectInputStream;
    .restart local v1    # "input":Ljava/io/ObjectInputStream;
    goto/16 :goto_5
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Object;)Landroid/os/MemoryFile;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p1, :cond_2

    .line 151
    :cond_0
    const-string/jumbo v6, "dingtalkbase"

    sget-object v7, Lcnf;->a:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "writeMemoryFile "

    aput-object v9, v8, v11

    const-string/jumbo v9, "name is null or object is null"

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 179
    :cond_1
    :goto_0
    return-object v2

    .line 154
    :cond_2
    invoke-static {p1}, Lcob;->a(Ljava/lang/Object;)I

    move-result v0

    .line 155
    .local v0, "byteCount":I
    if-gtz v0, :cond_3

    .line 156
    const-string/jumbo v6, "dingtalkbase"

    sget-object v7, Lcnf;->a:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "writeMemoryFile "

    aput-object v9, v8, v11

    const-string/jumbo v9, "byte count <= 0"

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    invoke-static {p0, v0}, Lcnf;->a(Ljava/lang/String;I)Landroid/os/MemoryFile;

    move-result-object v2

    .line 160
    .local v2, "memoryFile":Landroid/os/MemoryFile;
    if-nez v2, :cond_4

    move-object v2, v5

    .line 161
    goto :goto_0

    .line 163
    :cond_4
    const/4 v3, 0x0

    .line 165
    .local v3, "output":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v3    # "output":Ljava/io/ObjectOutputStream;
    .local v4, "output":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    if-eqz v4, :cond_1

    .line 176
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcnf;->a:Ljava/lang/String;

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "writeMemoryFile close stream "

    aput-object v8, v7, v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/io/ObjectOutputStream;
    .restart local v3    # "output":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "dingtalkbase"

    sget-object v7, Lcnf;->a:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "writeMemoryFile "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    if-eqz v3, :cond_5

    .line 176
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    move-object v2, v5

    .line 179
    goto/16 :goto_0

    .line 177
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "dingtalkbase"

    sget-object v7, Lcnf;->a:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "writeMemoryFile close stream "

    aput-object v9, v8, v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_6

    .line 176
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 179
    :cond_6
    :goto_4
    throw v5

    .line 177
    :catch_3
    move-exception v1

    .line 178
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "dingtalkbase"

    sget-object v7, Lcnf;->a:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "writeMemoryFile close stream "

    aput-object v9, v8, v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "output":Ljava/io/ObjectOutputStream;
    .restart local v4    # "output":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "output":Ljava/io/ObjectOutputStream;
    .restart local v3    # "output":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 169
    .end local v3    # "output":Ljava/io/ObjectOutputStream;
    .restart local v4    # "output":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "output":Ljava/io/ObjectOutputStream;
    .restart local v3    # "output":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
