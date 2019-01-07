.class public final Ljav;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljav;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v9

    .line 25
    :cond_1
    const/4 v5, 0x0

    .line 26
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 28
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 29
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 31
    const v10, 0x19000

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 33
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v4, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    .local v7, "length":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    .line 34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 35
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 42
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "length":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 43
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .local v3, "ex":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-eqz v5, :cond_2

    .line 49
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 54
    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    .line 56
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v2

    .line 58
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "length":I
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :cond_3
    :try_start_5
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 40
    .local v0, "b":[B
    invoke-static {v0}, Ljav;->a([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    .line 49
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 54
    :goto_4
    if-eqz v4, :cond_0

    .line 56
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 57
    :catch_2
    move-exception v2

    .line 58
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 51
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 50
    .end local v0    # "b":[B
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    .line 51
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 47
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v5, :cond_4

    .line 49
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 54
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 56
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 59
    :cond_5
    :goto_7
    throw v9

    .line 50
    :catch_5
    move-exception v2

    .line 51
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 57
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 58
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 47
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 42
    .end local v8    # "md":Ljava/security/MessageDigest;
    :catch_7
    move-exception v3

    goto :goto_2
.end method

.method private static final a([B)Ljava/lang/String;
    .locals 8
    .param p0, "tmp"    # [B

    .prologue
    .line 91
    const/16 v6, 0x20

    new-array v5, v6, [C

    .line 93
    .local v5, "str":[C
    const/4 v2, 0x0

    .line 94
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_0

    .line 96
    aget-byte v0, p0, v1

    .line 97
    .local v0, "byte0":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    sget-object v6, Ljav;->a:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v3

    .line 99
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    sget-object v6, Ljav;->a:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v2

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "byte0":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 102
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    :goto_0
    return-object v3

    .line 68
    :cond_0
    :try_start_0
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 69
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 70
    .local v0, "inputByteArray":[B
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 72
    .local v2, "resultByteArray":[B
    invoke-static {v2}, Ljav;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 74
    .end local v0    # "inputByteArray":[B
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "resultByteArray":[B
    :catch_0
    move-exception v4

    goto :goto_0
.end method
