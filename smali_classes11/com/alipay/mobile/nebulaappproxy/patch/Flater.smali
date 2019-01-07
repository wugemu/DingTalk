.class public Lcom/alipay/mobile/nebulaappproxy/patch/Flater;
.super Ljava/lang/Object;
.source "Flater.java"


# static fields
.field private static final BUF_LENGTH:I = 0x400

.field private static final BYTE_CHARSET:Ljava/nio/charset/Charset;

.field private static final CHARSET_NAME:Ljava/lang/String; = "US-ASCII"

.field private static final END_CHAR:C = '\u0000'

.field private static final IS_REPLACE:Z

.field private static final SEPARATOR:C = '/'

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    .line 28
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->IS_REPLACE:Z

    .line 31
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "US-ASCII"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->BYTE_CHARSET:Ljava/nio/charset/Charset;

    .line 31
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 163
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->BYTE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 312
    if-nez p0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 275
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 278
    .local v2, "subs":[Ljava/io/File;
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 279
    .local v1, "sub":Ljava/io/File;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->deleteFile(Ljava/io/File;)Z

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "sub":Ljava/io/File;
    .end local v2    # "subs":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 287
    :goto_1
    return v3

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteFile"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static loadFileToStream(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 137
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 141
    .local v0, "data":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 143
    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 147
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 150
    .end local v0    # "data":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 151
    .end local v3    # "input":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Throwable;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadFileToStream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 155
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 154
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "data":[B
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "len":I
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 155
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 154
    .end local v0    # "data":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 150
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "folderPath"    # Ljava/lang/String;
    .param p1, "flatPath"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_0

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1

    .line 44
    :cond_0
    const/16 v16, 0x0

    .line 103
    :goto_0
    return v16

    .line 47
    :cond_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v7, "folderDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v6, "flatFile":Ljava/io/File;
    const/4 v14, 0x0

    .line 52
    .local v14, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-eqz v16, :cond_3

    .line 106
    :cond_2
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 53
    const/16 v16, 0x0

    goto :goto_0

    .line 56
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v3, v16, 0x1

    .line 57
    .local v3, "cutLen":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v11, "itemPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7, v11, v3}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->packFolderToStream(Ljava/io/File;Ljava/util/List;I)V

    .line 60
    new-instance v16, Lcom/alipay/mobile/nebulaappproxy/patch/Flater$1;

    invoke-direct/range {v16 .. v16}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater$1;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 69
    new-instance v15, Ljava/io/FileOutputStream;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v14    # "output":Ljava/io/OutputStream;
    .local v15, "output":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    :try_start_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_6

    .line 72
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 74
    .local v10, "itemPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v9, "itemFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 78
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 80
    .local v12, "len":J
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 87
    .end local v12    # "len":J
    :goto_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "element":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->stringToByte(Ljava/lang/String;)[B

    move-result-object v4

    .line 92
    .local v4, "data":[B
    invoke-virtual {v15, v4}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 95
    invoke-static {v9, v15}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->loadFileToStream(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 71
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 84
    .end local v4    # "data":[B
    .end local v5    # "element":Ljava/lang/String;
    :cond_5
    const/16 v16, 0x2f

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 102
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v9    # "itemFile":Ljava/io/File;
    .end local v10    # "itemPath":Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object v14, v15

    .end local v3    # "cutLen":I
    .end local v8    # "i":I
    .end local v11    # "itemPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v14    # "output":Ljava/io/OutputStream;
    :goto_3
    :try_start_3
    sget-object v16, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "exception"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    invoke-static {v14}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 103
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 106
    .end local v14    # "output":Ljava/io/OutputStream;
    .restart local v3    # "cutLen":I
    .restart local v8    # "i":I
    .restart local v11    # "itemPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "output":Ljava/io/OutputStream;
    :cond_6
    invoke-static {v15}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 99
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 106
    .end local v3    # "cutLen":I
    .end local v8    # "i":I
    .end local v11    # "itemPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v14    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v16

    :goto_4
    invoke-static {v14}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    throw v16

    .end local v14    # "output":Ljava/io/OutputStream;
    .restart local v3    # "cutLen":I
    .restart local v8    # "i":I
    .restart local v11    # "itemPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v14    # "output":Ljava/io/OutputStream;
    goto :goto_4

    .line 102
    .end local v3    # "cutLen":I
    .end local v8    # "i":I
    .end local v11    # "itemPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v16

    goto :goto_3
.end method

.method private static packFolderToStream(Ljava/io/File;Ljava/util/List;I)V
    .locals 8
    .param p0, "folder"    # Ljava/io/File;
    .param p2, "cutLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 113
    .local v3, "subs":[Ljava/io/File;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    .line 115
    .local v2, "sub":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "path":Ljava/lang/String;
    sget-boolean v6, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->IS_REPLACE:Z

    if-eqz v6, :cond_0

    .line 118
    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    invoke-static {v2, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->packFolderToStream(Ljava/io/File;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "packFolderToStream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "sub":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static readByteToStream(Ljava/io/InputStream;Ljava/io/OutputStream;J[B)V
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "length"    # J
    .param p4, "buf"    # [B

    .prologue
    .line 292
    array-length v4, p4

    int-to-long v4, v4

    div-long v4, p2, v4

    long-to-int v0, v4

    .line 293
    .local v0, "count":I
    array-length v4, p4

    int-to-long v4, v4

    rem-long v4, p2, v4

    long-to-int v2, v4

    .line 296
    .local v2, "extra":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p0, p4}, Ljava/io/InputStream;->read([B)I

    .line 298
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_0
    if-lez v2, :cond_1

    .line 302
    const/4 v4, 0x0

    invoke-virtual {p0, p4, v4, v2}, Ljava/io/InputStream;->read([BII)I

    .line 303
    const/4 v4, 0x0

    invoke-virtual {p1, p4, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_1
    :goto_1
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteToStream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static stringToByte(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->BYTE_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static unpackFileToFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p0, "flatPath"    # Ljava/lang/String;
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_0

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 175
    :cond_0
    const/16 v19, 0x0

    .line 265
    :goto_0
    return v19

    .line 178
    :cond_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v7, "flatFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v8, "folderDir":Ljava/io/File;
    const/4 v10, 0x0

    .line 181
    .local v10, "input":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 184
    .local v16, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-eqz v19, :cond_3

    .line 268
    :cond_2
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 269
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 185
    const/16 v19, 0x0

    goto :goto_0

    .line 188
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 189
    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 191
    .local v13, "isSucc":Z
    if-nez v13, :cond_4

    .line 268
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 269
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 192
    const/16 v19, 0x0

    goto :goto_0

    .line 196
    .end local v13    # "isSucc":Z
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 197
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .end local v10    # "input":Ljava/io/InputStream;
    .local v11, "input":Ljava/io/InputStream;
    const/16 v19, 0x400

    :try_start_3
    move/from16 v0, v19

    new-array v4, v0, [B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    .local v4, "data":[B
    const/4 v12, 0x1

    .line 201
    .local v12, "isName":Z
    const/4 v3, 0x0

    .line 202
    .local v3, "cursor":I
    const-wide/16 v14, 0x0

    .local v14, "length":J
    move-object/from16 v17, v16

    .line 206
    .end local v16    # "output":Ljava/io/OutputStream;
    .local v17, "output":Ljava/io/OutputStream;
    :cond_5
    :goto_1
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_6

    .line 207
    :try_start_4
    move-object/from16 v0, v17

    invoke-static {v11, v0, v14, v15, v4}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->readByteToStream(Ljava/io/InputStream;Ljava/io/OutputStream;J[B)V

    .line 209
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 210
    const/4 v12, 0x1

    .line 211
    const-wide/16 v14, 0x0

    .line 213
    goto :goto_1

    .line 216
    :cond_6
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v2, v0

    .line 218
    .local v2, "aByte":B
    if-ltz v2, :cond_a

    .line 222
    if-eqz v2, :cond_7

    .line 223
    aput-byte v2, v4, v3

    .line 225
    add-int/lit8 v3, v3, 0x1

    .line 226
    goto :goto_1

    .line 229
    :cond_7
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->byteToString([BI)Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, "str":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_5

    .line 235
    if-eqz v12, :cond_9

    .line 236
    add-int/lit8 v9, v3, -0x1

    .line 237
    .local v9, "index":I
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v6, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v6, "file":Ljava/io/File;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 240
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v16, v17

    .line 258
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "index":I
    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v17, v16

    .line 259
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v17    # "output":Ljava/io/OutputStream;
    goto :goto_1

    .line 243
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "index":I
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 246
    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 249
    goto :goto_2

    .line 251
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "index":I
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :cond_9
    :try_start_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v14

    move-object/from16 v16, v17

    .line 255
    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 253
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 254
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_6
    sget-object v19, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "unpackFileToFolder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 268
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v16    # "output":Ljava/io/OutputStream;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :cond_a
    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 269
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 261
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 263
    .end local v2    # "aByte":B
    .end local v3    # "cursor":I
    .end local v4    # "data":[B
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v12    # "isName":Z
    .end local v14    # "length":J
    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 264
    .restart local v5    # "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_7
    sget-object v19, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "unpackFileToFolder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 268
    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 269
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 265
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 268
    .end local v5    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v19

    :goto_4
    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    .line 269
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->closeStream(Ljava/io/Closeable;)V

    throw v19

    .line 268
    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v19

    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_4

    .end local v10    # "input":Ljava/io/InputStream;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v3    # "cursor":I
    .restart local v4    # "data":[B
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v12    # "isName":Z
    .restart local v14    # "length":J
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 263
    .end local v3    # "cursor":I
    .end local v4    # "data":[B
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "isName":Z
    .end local v14    # "length":J
    .restart local v11    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_3

    .end local v10    # "input":Ljava/io/InputStream;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v3    # "cursor":I
    .restart local v4    # "data":[B
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v12    # "isName":Z
    .restart local v14    # "length":J
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catch_3
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_3
.end method
