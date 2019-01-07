.class public final Lcmz;
.super Ljava/lang/Object;
.source "FilePreferences.java"


# static fields
.field private static final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcmz;->a:Ljava/util/LinkedList;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcmz;->b:Ljava/util/HashMap;

    .line 31
    const/4 v0, 0x0

    sput v0, Lcmz;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v2, Lcmz;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Lcmz;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 177
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    const-class v1, Lcmz;

    monitor-enter v1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v0}, Lcmz;->a(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit v1

    return-void

    .line 233
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 16
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 184
    const-class v9, Lcmz;

    monitor-enter v9

    :try_start_0
    const-string/jumbo v10, "filepref"

    const-string/jumbo v11, "filepref"

    const/4 v8, 0x6

    new-array v12, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v13, "start set data uid:"

    aput-object v13, v12, v8

    const/4 v8, 0x1

    aput-object p0, v12, v8

    const/4 v8, 0x2

    const-string/jumbo v13, " key:"

    aput-object v13, v12, v8

    const/4 v8, 0x3

    aput-object p1, v12, v8

    const/4 v8, 0x4

    const-string/jumbo v13, " size:"

    aput-object v13, v12, v8

    const/4 v13, 0x5

    if-nez p2, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    :cond_0
    :goto_1
    monitor-exit v9

    return-void

    .line 184
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    array-length v8, v0

    goto :goto_0

    .line 188
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 189
    const-string/jumbo p0, "0"

    .line 191
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 192
    .local v6, "main":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "file_pref"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v4, "filePrefDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 194
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 196
    :cond_4
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v7, "userDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 198
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_5
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v3, "file":Ljava/io/File;
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    array-length v8, v0

    if-nez v8, :cond_8

    .line 202
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 228
    :cond_7
    const-string/jumbo v8, "filepref"

    const-string/jumbo v10, "filepref"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "write file success uid:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " key:"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p1, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static/range {p0 .. p2}, Lcmz;->b(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 184
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filePrefDir":Ljava/io/File;
    .end local v6    # "main":Ljava/io/File;
    .end local v7    # "userDir":Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 206
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filePrefDir":Ljava/io/File;
    .restart local v6    # "main":Ljava/io/File;
    .restart local v7    # "userDir":Ljava/io/File;
    :cond_8
    :try_start_2
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ".tmp"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .local v5, "fileTemp":Ljava/io/File;
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v8, v5}, Lcna;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    move-object/from16 v0, p2

    array-length v8, v0

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-nez v8, :cond_a

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 216
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    :cond_9
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "filepref"

    const-string/jumbo v10, "filepref"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "write file exception uid:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " key:"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p1, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, " message:"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    const-string/jumbo v8, "filepref"

    const-string/jumbo v10, "filepref"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "write file fail uid:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " key:"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p1, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, " file size:"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private static a(Ljava/io/File;I)[B
    .locals 13
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "retry"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 131
    const-string/jumbo v7, "filepref"

    const-string/jumbo v8, "filepref"

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "start read file size:"

    aput-object v10, v9, v11

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "input":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 136
    .local v0, "b":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    const/16 v7, 0x1400

    :try_start_1
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 139
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 140
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 143
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 144
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const-string/jumbo v7, "filepref"

    const-string/jumbo v8, "filepref"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "read file exception message:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-lez p1, :cond_2

    .line 147
    const-string/jumbo v7, "filepref"

    const-string/jumbo v8, "filepref"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "read file retry left:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    add-int/lit8 v7, p1, -0x1

    invoke-static {p0, v7}, Lcmz;->a(Ljava/io/File;I)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 158
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_0

    .line 166
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 172
    :cond_0
    :goto_3
    return-object v7

    .line 142
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v7

    .line 158
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 166
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_5
    move-object v2, v3

    .line 169
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 161
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 161
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    if-eqz v2, :cond_3

    .line 166
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 172
    :cond_3
    :goto_7
    const/4 v7, 0x0

    goto :goto_3

    .line 161
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 151
    .local v6, "t":Ljava/lang/Throwable;
    :goto_8
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    const-string/jumbo v7, "filepref"

    const-string/jumbo v8, "filepref"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "read file exception message:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-lez p1, :cond_4

    .line 154
    const-string/jumbo v7, "filepref"

    const-string/jumbo v8, "filepref"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "read file retry left:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    add-int/lit8 v7, p1, -0x1

    invoke-static {p0, v7}, Lcmz;->a(Ljava/io/File;I)[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v7

    .line 158
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 164
    :goto_9
    if-eqz v2, :cond_0

    .line 166
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_3

    .line 167
    :catch_8
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    :try_start_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 164
    :goto_a
    if-eqz v2, :cond_3

    .line 166
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_7

    .line 167
    :catch_a
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_b
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 160
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 164
    :goto_c
    if-eqz v2, :cond_5

    .line 166
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 169
    :cond_5
    :goto_d
    throw v7

    .line 161
    :catch_c
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 167
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_b

    .line 150
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_e
    move-exception v6

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 143
    :catch_f
    move-exception v1

    goto/16 :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    const-string/jumbo p0, "0"

    .line 40
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "finalKey":Ljava/lang/String;
    sget-object v2, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    sget-object v2, Lcmz;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 43
    sget-object v2, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 44
    .local v1, "old":[B
    sget-object v2, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    if-eqz v1, :cond_3

    .line 46
    sget v2, Lcmz;->c:I

    array-length v3, v1

    sub-int/2addr v2, v3

    sput v2, Lcmz;->c:I

    .line 49
    .end local v1    # "old":[B
    :cond_3
    sget-object v2, Lcmz;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    if-eqz p2, :cond_4

    .line 52
    sget v2, Lcmz;->c:I

    array-length v3, p2

    add-int/2addr v2, v3

    sput v2, Lcmz;->c:I

    .line 1074
    :cond_4
    :goto_0
    sget v2, Lcmz;->c:I

    const/high16 v3, 0x100000

    if-le v2, v3, :cond_0

    sget-object v2, Lcmz;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1075
    sget-object v2, Lcmz;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1076
    sget-object v3, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1077
    sget-object v4, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    if-eqz v3, :cond_4

    .line 1079
    sget v2, Lcmz;->c:I

    array-length v3, v3

    sub-int/2addr v2, v3

    sput v2, Lcmz;->c:I

    goto :goto_0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 13
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 96
    const-class v8, Lcmz;

    monitor-enter v8

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    :goto_0
    monitor-exit v8

    return-object v0

    .line 99
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const-string/jumbo p0, "0"

    .line 1085
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    .line 103
    :goto_1
    if-eqz v6, :cond_5

    .line 2058
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2061
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2062
    const-string/jumbo v6, "0"

    .line 2064
    :goto_2
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    const-string/jumbo v10, "/"

    aput-object v10, v9, v6

    const/4 v6, 0x2

    aput-object p1, v9, v6

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2065
    sget-object v9, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2066
    sget-object v9, Lcmz;->a:Ljava/util/LinkedList;

    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2067
    sget-object v9, Lcmz;->a:Ljava/util/LinkedList;

    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2068
    sget-object v9, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    .line 105
    .local v0, "bytes":[B
    :cond_2
    const-string/jumbo v6, "filepref"

    const-string/jumbo v9, "filepref"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "get cache uid:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p0, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " key:"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p1, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, " size:"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v9, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 96
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 1088
    :cond_3
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1089
    const-string/jumbo v6, "0"

    .line 1091
    :goto_4
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    const-string/jumbo v10, "/"

    aput-object v10, v9, v6

    const/4 v6, 0x2

    aput-object p1, v9, v6

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1092
    sget-object v9, Lcmz;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_1

    .line 105
    .restart local v0    # "bytes":[B
    :cond_4
    array-length v7, v0

    goto :goto_3

    .line 109
    .end local v0    # "bytes":[B
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 110
    .local v3, "main":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "file_pref"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v2, "filePrefDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v5, "userDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 120
    const/4 v6, 0x0

    invoke-static {p0, p1, v6}, Lcmz;->b(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 121
    const-string/jumbo v6, "filepref"

    const-string/jumbo v7, "filepref"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "get file not exists uid:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " key:"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p1, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, " size:"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_8
    const/4 v6, 0x2

    invoke-static {v1, v6}, Lcmz;->a(Ljava/io/File;I)[B

    move-result-object v4

    .line 125
    .local v4, "result":[B
    invoke-static {p0, p1, v4}, Lcmz;->b(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 126
    const-string/jumbo v9, "filepref"

    const-string/jumbo v10, "filepref"

    const/4 v6, 0x7

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v12, "get file data uid:"

    aput-object v12, v11, v6

    const/4 v6, 0x1

    aput-object p0, v11, v6

    const/4 v6, 0x2

    const-string/jumbo v12, " key:"

    aput-object v12, v11, v6

    const/4 v6, 0x3

    aput-object p1, v11, v6

    const/4 v6, 0x4

    const-string/jumbo v12, " size:"

    aput-object v12, v11, v6

    const/4 v6, 0x5

    const-string/jumbo v12, " size:"

    aput-object v12, v11, v6

    const/4 v12, 0x6

    if-nez v4, :cond_9

    move v6, v7

    :goto_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 127
    goto/16 :goto_0

    .line 126
    :cond_9
    array-length v6, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePrefDir":Ljava/io/File;
    .end local v3    # "main":Ljava/io/File;
    .end local v4    # "result":[B
    .end local v5    # "userDir":Ljava/io/File;
    :cond_a
    move-object v6, p0

    goto/16 :goto_2

    :cond_b
    move-object v6, p0

    goto/16 :goto_4
.end method
