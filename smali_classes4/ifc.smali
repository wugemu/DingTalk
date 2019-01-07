.class public Lifc;
.super Ljava/lang/Object;
.source "AVSoloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lifc$b;,
        Lifc$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static e:Lifc;


# instance fields
.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Lifc$b;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lifc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lifc;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lifc;->b:Z

    .line 51
    iput-object v1, p0, Lifc;->c:Landroid/content/Context;

    .line 52
    iput-object v1, p0, Lifc;->f:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lifc;->g:[Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lifc;->d:Lifc$b;

    .line 60
    return-void
.end method

.method public static a()Lifc;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lifc;->e:Lifc;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lifc;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lifc;->e:Lifc;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lifc;

    invoke-direct {v0}, Lifc;-><init>()V

    sput-object v0, Lifc;->e:Lifc;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lifc;->e:Lifc;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 127
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lifc;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_getFieldReflectively err: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v2, "Unknown"

    goto :goto_0
.end method

.method static synthetic a(Lifc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lifc;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lifc;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "SoLibraryName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 165
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lifc;->f:Ljava/lang/String;

    const-string/jumbo v10, "files"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v6, "privateFilesPath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v5, "libFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 170
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 173
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 265
    :cond_1
    :goto_0
    return-object v8

    .line 179
    :cond_2
    new-instance v9, Landroid/os/Build;

    invoke-direct {v9}, Landroid/os/Build;-><init>()V

    const-string/jumbo v10, "CPU_ABI"

    invoke-static {v9, v10}, Lifc;->a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "Unknown"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 181
    :cond_3
    const-string/jumbo v0, "armeabi"

    .line 185
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string/jumbo v9, "mips"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 188
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "mips"

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v9, p0, Lifc;->c:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "so/mips/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lifc;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .line 201
    .local v7, "sodata":[B
    :goto_1
    if-nez v7, :cond_8

    .line 202
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "assert hasn\'t so."

    invoke-static {v9, v10}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v7    # "sodata":[B
    :cond_5
    const-string/jumbo v9, "x86"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 191
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "x86"

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v9, p0, Lifc;->c:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "so/x86/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lifc;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .restart local v7    # "sodata":[B
    goto :goto_1

    .line 193
    .end local v7    # "sodata":[B
    :cond_6
    const-string/jumbo v9, "armeabi-v7a"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 194
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "armeabi-v7a"

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v9, p0, Lifc;->c:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "so/armeabi-v7a/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lifc;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .restart local v7    # "sodata":[B
    goto :goto_1

    .line 197
    .end local v7    # "sodata":[B
    :cond_7
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "armeabi"

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v9, p0, Lifc;->c:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "so/armeabi/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lifc;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .restart local v7    # "sodata":[B
    goto :goto_1

    .line 207
    :cond_8
    invoke-direct {p0, p1, v7}, Lifc;->a(Ljava/lang/String;[B)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 209
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v9}, Lifc;->a(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 211
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "ValidateAdler32 mLibFile success."

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 214
    :cond_9
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ValidateAdler32 exist "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " .We will re copy one."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_a
    :goto_2
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "ValidateAdler32 sodata bytes first load"

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 225
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 227
    :cond_b
    const/4 v3, 0x0

    .line 230
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "write sodata bytes first load"

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_2
    array-length v10, v7

    invoke-virtual {v4, v7, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 250
    :goto_3
    :try_start_4
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v9}, Lifc;->a(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 251
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ValidateAdler32 mLibFile success."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v8

    goto/16 :goto_0

    .line 216
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 243
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "close file err."

    invoke-static {v9, v10}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 254
    :cond_c
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 256
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Delete mLibFile because ValidateAdler32 libFile fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 259
    :catch_2
    move-exception v1

    .line 260
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    :goto_4
    if-eqz v3, :cond_d

    .line 241
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 250
    :cond_d
    :goto_5
    :try_start_7
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v9}, Lifc;->a(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 251
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ValidateAdler32 mLibFile success."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v8

    goto/16 :goto_0

    .line 243
    :catch_4
    move-exception v9

    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "close file err."

    invoke-static {v9, v10}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 254
    :cond_e
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 256
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Delete mLibFile because ValidateAdler32 libFile fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 259
    :catch_5
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v9

    :goto_6
    if-eqz v3, :cond_f

    .line 241
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 250
    :cond_f
    :goto_7
    :try_start_a
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v9}, Lifc;->a(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 251
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ValidateAdler32 mLibFile success."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v8

    goto/16 :goto_0

    .line 243
    :catch_7
    move-exception v9

    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "close file err."

    invoke-static {v9, v10}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 254
    :cond_10
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 256
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Delete mLibFile because ValidateAdler32 libFile fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 259
    :catch_8
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v3, :cond_11

    .line 241
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 250
    :cond_11
    :goto_9
    :try_start_d
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v9}, Lifc;->a(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 251
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ValidateAdler32 mLibFile success."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v8

    goto/16 :goto_0

    .line 243
    :catch_9
    move-exception v9

    sget-object v9, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v10, "close file err."

    invoke-static {v9, v10}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 254
    :cond_12
    :try_start_e
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 256
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Delete mLibFile because ValidateAdler32 libFile fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_a

    .line 261
    :cond_13
    :goto_a
    throw v8

    .line 259
    :catch_a
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_a

    .line 239
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method static synthetic a(Lifc;Z)Z
    .locals 1
    .param p0, "x0"    # Lifc;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lifc;->b:Z

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/io/FileInputStream;)Z
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fis"    # Ljava/io/FileInputStream;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 99
    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 100
    .local v0, "data":[B
    invoke-virtual {p2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 101
    invoke-direct {p0, p1, v0}, Lifc;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 113
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :goto_0
    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, " _validateAdler32 finally end"

    invoke-static {v3, v4}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "data":[B
    :goto_1
    return v2

    .line 115
    .restart local v0    # "data":[B
    :catch_0
    move-exception v3

    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, "close file err."

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v0    # "data":[B
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    :goto_2
    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, " _validateAdler32 finally end"

    invoke-static {v3, v4}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :catch_1
    move-exception v3

    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, "close file err."

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :catch_2
    move-exception v3

    :try_start_3
    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, "_validateAdler32 err"

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 117
    :goto_3
    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, " _validateAdler32 finally end"

    invoke-static {v3, v4}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :catch_3
    move-exception v3

    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, "close file err."

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :catch_4
    move-exception v1

    .line 108
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 117
    :goto_4
    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, " _validateAdler32 finally end"

    invoke-static {v3, v4}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :catch_5
    move-exception v3

    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, "close file err."

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 111
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    .line 113
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 117
    :goto_5
    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, " _validateAdler32 finally end"

    invoke-static {v3, v4}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 115
    :catch_6
    move-exception v3

    sget-object v3, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v4, "close file err."

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private a(Ljava/lang/String;[B)Z
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 79
    if-eqz p2, :cond_1

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 81
    .local v0, "adler32":Ljava/util/zip/Adler32;
    invoke-virtual {v0, p2}, Ljava/util/zip/Adler32;->update([B)V

    .line 82
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    .line 84
    .local v4, "value":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1283
    iget-object v8, p0, Lifc;->c:Landroid/content/Context;

    const-string/jumbo v9, "pre_so_checksum"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1284
    const-string/jumbo v9, ""

    invoke-interface {v8, p1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1285
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "compare so checksum:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    .line 85
    .local v2, "isSochecksum":Z
    :goto_0
    if-nez v2, :cond_0

    .line 86
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1293
    iget-object v8, p0, Lifc;->c:Landroid/content/Context;

    const-string/jumbo v9, "pre_so_checksum"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1294
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1295
    invoke-interface {v8, p1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1296
    sget-object v9, Lifc;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "sync local so checksum:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "adler32":Ljava/util/zip/Adler32;
    .end local v2    # "isSochecksum":Z
    .end local v4    # "value":J
    :cond_0
    :goto_1
    return v2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lifc;->a:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "Valid adler32 exp:"

    aput-object v9, v8, v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 93
    goto :goto_1

    .restart local v0    # "adler32":Ljava/util/zip/Adler32;
    .restart local v4    # "value":J
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 136
    const/4 v3, 0x0

    .line 138
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_1

    .line 141
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 142
    .local v0, "data":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v3, :cond_0

    .line 154
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .end local v0    # "data":[B
    :cond_0
    :goto_0
    return-object v0

    .line 156
    .restart local v0    # "data":[B
    :catch_0
    move-exception v4

    sget-object v4, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v5, "close file err."

    invoke-static {v4, v5}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "data":[B
    :cond_1
    if-eqz v3, :cond_2

    .line 154
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    move-object v0, v4

    .line 161
    goto :goto_0

    .line 156
    :catch_1
    move-exception v5

    sget-object v5, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v6, "close file err."

    invoke-static {v5, v6}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :catch_2
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lifc;->a:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "getAssetsFileData fileName:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", exp: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz v3, :cond_3

    .line 154
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    move-object v0, v4

    .line 157
    goto :goto_0

    .line 156
    :catch_3
    move-exception v5

    sget-object v5, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v6, "close file err."

    invoke-static {v5, v6}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 149
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    if-eqz v3, :cond_4

    .line 154
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_3
    move-object v0, v4

    .line 157
    goto :goto_0

    .line 156
    :catch_5
    move-exception v5

    sget-object v5, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v6, "close file err."

    invoke-static {v5, v6}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 152
    .end local v2    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_5

    .line 154
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 157
    :cond_5
    :goto_4
    throw v4

    .line 156
    :catch_6
    move-exception v5

    sget-object v5, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v6, "close file err."

    invoke-static {v5, v6}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic a(Lifc;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lifc;

    .prologue
    .line 30
    iget-object v0, p0, Lifc;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lifc;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lifc;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lifc;->g:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lifc;)Lifc$b;
    .locals 1
    .param p0, "x0"    # Lifc;

    .prologue
    .line 30
    iget-object v0, p0, Lifc;->d:Lifc$b;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lifc;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lifc;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lifc;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lifc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lifc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lifc;

    .prologue
    .line 30
    iget-object v0, p0, Lifc;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lifc;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lifc;

    .prologue
    .line 30
    iget-object v0, p0, Lifc;->c:Landroid/content/Context;

    return-object v0
.end method
