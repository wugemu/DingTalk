.class public final Lclw;
.super Ljava/lang/Object;
.source "ReLinker.java"


# static fields
.field private static c:Landroid/content/Context;


# instance fields
.field public final a:Landroid/content/Context;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseLibName"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lclw;->a:Landroid/content/Context;

    .line 90
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lclw;->b:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static declared-synchronized a()Landroid/content/Context;
    .locals 6

    .prologue
    .line 74
    const-class v4, Lclw;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lclw;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 76
    :try_start_1
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "currentApplication"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 78
    .local v1, "currentApplicationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sput-object v3, Lclw;->c:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v1    # "currentApplicationMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lclw;->c:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 74
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private a(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .locals 7
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2242
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    .line 2243
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 194
    :goto_0
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 3204
    .local v0, "abi":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lclw;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 196
    .local v1, "libraryEntry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 200
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :goto_2
    return-object v1

    .line 2245
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v2, v4

    goto :goto_0

    .line 194
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static a(Ljava/io/File;)Ljava/util/zip/ZipFile;
    .locals 7
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "tries":I
    const/4 v2, 0x0

    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    move-object v3, v2

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    move v1, v0

    .line 179
    .end local v0    # "tries":I
    .local v1, "tries":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 181
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    move-object v3, v2

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    move v1, v0

    .line 184
    .end local v0    # "tries":I
    .restart local v1    # "tries":I
    goto :goto_0

    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    :catch_0
    move-exception v4

    move v1, v0

    .end local v0    # "tries":I
    .restart local v1    # "tries":I
    goto :goto_0

    .line 187
    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    :cond_0
    if-nez v3, :cond_1

    .line 188
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not open APK file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_1
    return-object v3
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 233
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 4
    .param p0, "outputFile"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 250
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 251
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 252
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 253
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 217
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 218
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 221
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/io/File;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v10, v0, Lclw;->b:Ljava/lang/String;

    .line 110
    .local v10, "outputFileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v14, "lib"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    invoke-direct {v9, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v9, "outputFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v3, v9

    .line 173
    :cond_0
    :goto_0
    return-object v3

    .line 115
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-direct {v3, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v3, "cachedLibraryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_0

    .line 120
    new-instance v6, Lclw$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lclw$1;-><init>(Lclw;)V

    .line 126
    .local v6, "filter":Ljava/io/FilenameFilter;
    invoke-static {v9, v6}, Lclw;->a(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 127
    invoke-static {v3, v6}, Lclw;->a(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 130
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "apkFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 133
    .local v13, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-static {v1}, Lclw;->a(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v13

    .line 135
    const/4 v11, 0x0

    .local v11, "tries":I
    move v12, v11

    .line 136
    .end local v11    # "tries":I
    .local v12, "tries":I
    :goto_1
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "tries":I
    .restart local v11    # "tries":I
    const/4 v14, 0x5

    if-ge v12, v14, :cond_5

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lclw;->a(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 138
    .local v8, "libraryEntry":Ljava/util/zip/ZipEntry;
    if-nez v8, :cond_3

    .line 139
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Library "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lclw;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " for supported ABIs not found in APK file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v8    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .end local v11    # "tries":I
    :catchall_0
    move-exception v14

    .line 165
    if-eqz v13, :cond_2

    .line 166
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    :cond_2
    :goto_2
    throw v14

    .line 142
    .restart local v8    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "tries":I
    :cond_3
    const/4 v7, 0x0

    .line 143
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 146
    .local v4, "fileOut":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 147
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    .end local v4    # "fileOut":Ljava/io/FileOutputStream;
    .local v5, "fileOut":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {v7, v5}, Lclw;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 155
    :try_start_4
    invoke-static {v7}, Lclw;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v5}, Lclw;->a(Ljava/io/Closeable;)V

    .line 1262
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1263
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1264
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljava/io/File;->setWritable(Z)Z

    move v12, v11

    .line 159
    .end local v11    # "tries":I
    .restart local v12    # "tries":I
    goto :goto_1

    .line 150
    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .end local v12    # "tries":I
    .restart local v4    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v11    # "tries":I
    :catch_0
    move-exception v14

    :goto_3
    const/4 v14, 0x2

    if-le v11, v14, :cond_4

    .line 151
    move-object v9, v3

    .line 155
    :cond_4
    invoke-static {v7}, Lclw;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v4}, Lclw;->a(Ljava/io/Closeable;)V

    move v12, v11

    .end local v11    # "tries":I
    .restart local v12    # "tries":I
    goto :goto_1

    .line 155
    .end local v12    # "tries":I
    .restart local v11    # "tries":I
    :catchall_1
    move-exception v14

    :goto_4
    invoke-static {v7}, Lclw;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v4}, Lclw;->a(Ljava/io/Closeable;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .end local v4    # "fileOut":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    if-eqz v13, :cond_6

    .line 166
    :try_start_5
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_5
    move-object v3, v9

    .line 173
    goto/16 :goto_0

    .line 171
    :catch_1
    move-exception v14

    goto :goto_5

    .end local v11    # "tries":I
    :catch_2
    move-exception v15

    goto :goto_2

    .line 155
    .restart local v5    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "tries":I
    :catchall_2
    move-exception v14

    move-object v4, v5

    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 150
    .end local v4    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOut":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v14

    move-object v4, v5

    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
