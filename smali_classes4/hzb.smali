.class public final Lhzb;
.super Ljava/lang/Object;
.source "ModelDownloader.java"


# static fields
.field public static a:Ljava/lang/String;

.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;

.field protected static d:I

.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/lang/String;

.field protected static g:Ljava/lang/String;

.field protected static h:I

.field protected static i:Ljava/lang/String;

.field protected static j:Ljava/lang/String;

.field protected static k:Ljava/lang/String;

.field protected static l:I

.field protected static m:Ljava/lang/String;

.field protected static n:Ljava/lang/String;

.field protected static o:Ljava/lang/String;

.field protected static p:I

.field protected static q:Ljava/lang/String;

.field public static t:Z

.field public static w:Lhzb;


# instance fields
.field protected r:Landroid/content/Context;

.field protected s:Ljava/lang/String;

.field u:Landroid/os/HandlerThread;

.field v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "FaceRecognizerD"

    sput-object v0, Lhzb;->a:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "http://download.taobaocdn.com/freedom/54480/compress/m1.bin"

    sput-object v0, Lhzb;->b:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "m1.bin"

    sput-object v0, Lhzb;->c:Ljava/lang/String;

    .line 30
    const v0, 0x7a4ac

    sput v0, Lhzb;->d:I

    .line 31
    const-string/jumbo v0, "d01fa57b83c5f3ee8a281b82cc414bb4"

    sput-object v0, Lhzb;->e:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "http://download.taobaocdn.com/freedom/54480/compress/m2.bin"

    sput-object v0, Lhzb;->f:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "m2.bin"

    sput-object v0, Lhzb;->g:Ljava/lang/String;

    .line 35
    const/16 v0, 0x2c00

    sput v0, Lhzb;->h:I

    .line 36
    const-string/jumbo v0, "93431d00336cfee4e3d4198e0055fb3f"

    sput-object v0, Lhzb;->i:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "http://download.taobaocdn.com/freedom/54480/compress/fdmodel.bin"

    sput-object v0, Lhzb;->j:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "fdmodel.bin"

    sput-object v0, Lhzb;->k:Ljava/lang/String;

    .line 40
    const v0, 0x30419

    sput v0, Lhzb;->l:I

    .line 41
    const-string/jumbo v0, "54c837da91adec6d1475138327a04601"

    sput-object v0, Lhzb;->m:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "http://download.taobaocdn.com/freedom/54480/compress/param_lowrank_gray.bin"

    sput-object v0, Lhzb;->n:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "param_lowrank_gray.bin"

    sput-object v0, Lhzb;->o:Ljava/lang/String;

    .line 45
    const v0, 0x3a0f34

    sput v0, Lhzb;->p:I

    .line 46
    const-string/jumbo v0, "7dfc9162561530340f2aba6463989cd7"

    sput-object v0, Lhzb;->q:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lhzb;->t:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lhzb;->s:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lhzb;->r:Landroid/content/Context;

    .line 70
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->r:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/facemodels/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzb;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 75
    :goto_0
    :try_start_1
    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/facemodels/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzb;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/facemodels/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzb;->s:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :cond_1
    :goto_2
    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    const-string/jumbo v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzb;->s:Ljava/lang/String;

    .line 91
    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lhzb;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lhzb;->w:Lhzb;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lhzb;

    invoke-direct {v0, p0}, Lhzb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhzb;->w:Lhzb;

    .line 63
    :cond_0
    sget-object v0, Lhzb;->w:Lhzb;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "modelFileName"    # Ljava/lang/String;

    .prologue
    .line 303
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "download "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 307
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 309
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 311
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 313
    .local v2, "contentLength":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "contentLength = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 318
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 321
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "modelFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v7, "modelFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 324
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 327
    :cond_1
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 329
    .local v0, "bs":[B
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 331
    .local v9, "os":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_2

    .line 332
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v0    # "bs":[B
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "contentLength":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "modelFile":Ljava/io/File;
    .end local v8    # "modelFilePath":Ljava/lang/String;
    .end local v9    # "os":Ljava/io/OutputStream;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    const/4 v8, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 336
    .restart local v0    # "bs":[B
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "contentLength":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "modelFile":Ljava/io/File;
    .restart local v8    # "modelFilePath":Ljava/lang/String;
    .restart local v9    # "os":Ljava/io/OutputStream;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 337
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteFile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 230
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "checkFile "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    if-nez p0, :cond_0

    .line 297
    :goto_0
    return v10

    .line 238
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v11

    if-eqz v11, :cond_8

    .line 241
    const/4 v5, 0x0

    .line 243
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 246
    .local v8, "size":I
    invoke-static {v6}, Lhzd;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "md5":Ljava/lang/String;
    const/4 v2, 0x0

    .line 249
    .local v2, "expectSize":I
    const/4 v4, 0x0

    .line 250
    .local v4, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    .local v1, "expectMd5":Ljava/lang/String;
    sget-object v11, Lhzb;->c:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 253
    sget v2, Lhzb;->d:I

    .line 254
    sget-object v4, Lhzb;->c:Ljava/lang/String;

    .line 255
    sget-object v1, Lhzb;->e:Ljava/lang/String;

    .line 270
    :cond_1
    :goto_1
    if-eq v8, v2, :cond_5

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "checkFile file="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",expect="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v11

    goto :goto_0

    .line 256
    :cond_2
    :try_start_4
    sget-object v11, Lhzb;->g:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 257
    sget v2, Lhzb;->h:I

    .line 258
    sget-object v4, Lhzb;->g:Ljava/lang/String;

    .line 259
    sget-object v1, Lhzb;->i:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_3
    sget-object v11, Lhzb;->k:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 261
    sget v2, Lhzb;->l:I

    .line 262
    sget-object v4, Lhzb;->k:Ljava/lang/String;

    .line 263
    sget-object v1, Lhzb;->m:Ljava/lang/String;

    goto :goto_1

    .line 264
    :cond_4
    sget-object v11, Lhzb;->o:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 265
    sget v2, Lhzb;->p:I

    .line 266
    sget-object v4, Lhzb;->o:Ljava/lang/String;

    .line 267
    sget-object v1, Lhzb;->q:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 274
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "md5=="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " while expectMd5=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 286
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 277
    :cond_7
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "checkFile file="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ok"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 286
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 288
    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 281
    .end local v1    # "expectMd5":Ljava/lang/String;
    .end local v2    # "expectSize":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "md5":Ljava/lang/String;
    .end local v8    # "size":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 284
    if-eqz v5, :cond_8

    .line 286
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_4
    sget-object v11, Lhzb;->a:Ljava/lang/String;

    const-string/jumbo v12, "checkFile=false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v5, :cond_9

    .line 286
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 288
    :cond_9
    :goto_6
    :try_start_b
    throw v11
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 292
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 293
    .local v9, "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v1    # "expectMd5":Ljava/lang/String;
    .restart local v2    # "expectSize":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "md5":Ljava/lang/String;
    .restart local v8    # "size":I
    :catch_4
    move-exception v10

    goto :goto_2

    .line 288
    .end local v1    # "expectMd5":Ljava/lang/String;
    .end local v2    # "expectSize":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "md5":Ljava/lang/String;
    .end local v8    # "size":I
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v12

    goto :goto_6

    .line 284
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 281
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "modelFileName"    # Ljava/lang/String;
    .param p4, "retryTime"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    if-nez p2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v3

    .line 196
    :cond_1
    const-string/jumbo v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "\\"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 202
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lhzb;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 205
    goto :goto_0

    .line 208
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    .line 209
    invoke-static {p1, p2, p3}, Lhzb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_4

    .line 216
    invoke-static {v0}, Lhzb;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 218
    goto :goto_0

    .line 208
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    .line 222
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 2
    .param p1, "smileOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lhzb;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->a(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->a(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->a(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhzb;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lhzb;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzb;->a(Ljava/lang/String;)V

    .line 133
    return-void
.end method
