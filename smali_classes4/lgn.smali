.class Llgn;
.super Ljava/lang/Object;
.source "ReLinker.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "pl_droidsonroids_gif"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llgn;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Llgn;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .locals 7
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;

    .prologue
    const/4 v3, 0x0

    .line 2148
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    .line 2149
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 137
    :goto_0
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 2156
    .local v0, "abi":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Llgn;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 139
    .local v1, "libraryEntry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 143
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :goto_2
    return-object v1

    .line 2151
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v2, v4

    goto :goto_0

    .line 137
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
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
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "tries":I
    const/4 v2, 0x0

    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    move v1, v0

    .line 162
    .end local v0    # "tries":I
    .local v1, "tries":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 164
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    move-object v2, v3

    .line 171
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    if-nez v2, :cond_1

    .line 172
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

    .line 168
    :catch_0
    move-exception v4

    move v1, v0

    .end local v0    # "tries":I
    .restart local v1    # "tries":I
    goto :goto_0

    .line 174
    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    :cond_1
    return-object v2
.end method

.method static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .prologue
    .line 57
    const-class v2, Llgn;

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-static {p0}, Llgn;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "workaroundFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 60
    monitor-exit v2

    return-void

    .end local v0    # "workaroundFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
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
    .line 179
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 180
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 181
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
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
    .line 204
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 206
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 207
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Llgn;->a:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "1.2.8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, "outputFileName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    const-string/jumbo v17, "lib"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v12, "outputFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object v5, v12

    .line 133
    :cond_0
    :goto_0
    return-object v5

    .line 76
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v5, "cachedLibraryFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v17

    if-nez v17, :cond_0

    .line 81
    const-string/jumbo v17, "pl_droidsonroids_gif_surface"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "mappedSurfaceLibraryName":Ljava/lang/String;
    new-instance v8, Llgn$1;

    invoke-direct {v8, v11}, Llgn$1;-><init>(Ljava/lang/String;)V

    .line 88
    .local v8, "filter":Ljava/io/FilenameFilter;
    invoke-static {v12, v8}, Llgn;->a(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 89
    invoke-static {v5, v8}, Llgn;->a(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 92
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "apkFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 95
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-static {v3}, Llgn;->a(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v16

    .line 97
    const/4 v14, 0x0

    .local v14, "tries":I
    move v15, v14

    .line 98
    .end local v14    # "tries":I
    .local v15, "tries":I
    :goto_1
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "tries":I
    .restart local v14    # "tries":I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 99
    invoke-static/range {v16 .. v16}, Llgn;->a(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 100
    .local v10, "libraryEntry":Ljava/util/zip/ZipEntry;
    if-nez v10, :cond_3

    .line 101
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Library "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v19, Llgn;->a:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " for supported ABIs not found in APK file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v10    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .end local v14    # "tries":I
    :catchall_0
    move-exception v17

    .line 127
    if-eqz v16, :cond_2

    .line 128
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 131
    :cond_2
    :goto_2
    throw v17

    .line 104
    .restart local v10    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "tries":I
    :cond_3
    const/4 v9, 0x0

    .line 105
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 107
    .local v6, "fileOut":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 108
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    .end local v6    # "fileOut":Ljava/io/FileOutputStream;
    .local v7, "fileOut":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {v9, v7}, Llgn;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    :try_start_4
    invoke-static {v9}, Llgn;->a(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v7}, Llgn;->a(Ljava/io/Closeable;)V

    .line 1191
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1192
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1193
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .end local v7    # "fileOut":Ljava/io/FileOutputStream;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v16, :cond_5

    .line 128
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_3
    move-object v5, v12

    .line 133
    goto/16 :goto_0

    .line 111
    .restart local v6    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v17

    :goto_4
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v14, v0, :cond_6

    .line 112
    move-object v12, v5

    .line 116
    :cond_6
    :try_start_6
    invoke-static {v9}, Llgn;->a(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v6}, Llgn;->a(Ljava/io/Closeable;)V

    move v15, v14

    .end local v14    # "tries":I
    .restart local v15    # "tries":I
    goto :goto_1

    .line 116
    .end local v15    # "tries":I
    .restart local v14    # "tries":I
    :catchall_1
    move-exception v17

    :goto_5
    invoke-static {v9}, Llgn;->a(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v6}, Llgn;->a(Ljava/io/Closeable;)V

    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    .end local v6    # "fileOut":Ljava/io/FileOutputStream;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v17

    goto :goto_3

    .end local v14    # "tries":I
    :catch_2
    move-exception v18

    goto :goto_2

    .line 116
    .restart local v7    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "tries":I
    :catchall_2
    move-exception v17

    move-object v6, v7

    .end local v7    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 111
    .end local v6    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOut":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v17

    move-object v6, v7

    .end local v7    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4
.end method
