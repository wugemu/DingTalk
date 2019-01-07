.class public Ldpv;
.super Ljava/lang/Object;
.source "EncryptImageUploader.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ldpv;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ldpv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ldpv;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-static {p1}, Ldpv;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v7

    .line 112
    :cond_1
    const/4 v0, 0x0

    .line 114
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {v2, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_2

    move-object v6, v7

    .line 119
    .local v6, "tempPath":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-static {v6, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 123
    .local v5, "ret":Z
    if-eqz v5, :cond_5

    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .local v4, "file":Ljava/io/File;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object v7, v4

    .line 134
    goto :goto_0

    .line 1178
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ret":Z
    .end local v6    # "tempPath":Ljava/lang/String;
    :cond_2
    :try_start_5
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1179
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1180
    const-string/jumbo v9, ""

    .line 1181
    const-string/jumbo v8, ""

    .line 1182
    if-ltz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v10, v12, :cond_3

    .line 1183
    add-int/lit8 v9, v10, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1184
    const-string/jumbo v9, "."

    invoke-virtual {v10, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 1185
    if-ltz v12, :cond_4

    .line 1186
    const/4 v8, 0x0

    invoke-virtual {v10, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1187
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1192
    :cond_3
    :goto_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 1193
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v11, "_"

    invoke-virtual {v9, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1194
    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v9, v10

    .line 1189
    goto :goto_4

    .restart local v6    # "tempPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 130
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 132
    :catch_1
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "ret":Z
    :cond_5
    move-object v4, v7

    .line 123
    goto/16 :goto_2

    .line 132
    .restart local v4    # "file":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 133
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 125
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ret":Z
    .end local v6    # "tempPath":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Throwable;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 132
    :catch_4
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 129
    :goto_6
    if-eqz v0, :cond_6

    .line 130
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 134
    :cond_6
    :goto_7
    throw v7

    .line 132
    :catch_5
    move-exception v3

    .line 133
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 128
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 125
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/high16 v9, 0x44340000    # 720.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    :try_start_0
    new-instance v2, Lgzt$a;

    invoke-direct {v2}, Lgzt$a;-><init>()V

    .line 146
    .local v2, "options":Lgzt$a;
    const/4 v7, 0x1

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 147
    invoke-static {p0, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 148
    iget v7, v2, Lgzt$a;->outWidth:I

    if-eq v7, v8, :cond_4

    iget v7, v2, Lgzt$a;->outHeight:I

    if-eq v7, v8, :cond_4

    .line 149
    const/16 v7, 0x2d0

    iget v8, v2, Lgzt$a;->outWidth:I

    if-lt v7, v8, :cond_2

    move v4, v5

    .line 150
    .local v4, "xRate":F
    :goto_1
    const/16 v7, 0x2d0

    iget v8, v2, Lgzt$a;->outHeight:I

    if-lt v7, v8, :cond_3

    .line 151
    .local v5, "yRate":F
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 152
    .local v3, "rate":F
    iget v7, v2, Lgzt$a;->outWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Lgzt$a;->b:I

    .line 153
    iget v7, v2, Lgzt$a;->outHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Lgzt$a;->c:I

    .line 154
    const/4 v7, 0x0

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p0, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 157
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "options":Lgzt$a;
    .end local v3    # "rate":F
    .end local v4    # "xRate":F
    .end local v5    # "yRate":F
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v6

    .line 165
    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "options":Lgzt$a;
    :cond_2
    :try_start_1
    iget v7, v2, Lgzt$a;->outWidth:I

    int-to-float v7, v7

    div-float v4, v9, v7

    goto :goto_1

    .line 150
    .restart local v4    # "xRate":F
    :cond_3
    iget v7, v2, Lgzt$a;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v7, v7

    div-float v5, v9, v7

    goto :goto_2

    .end local v4    # "xRate":F
    :cond_4
    move-object v0, v6

    .line 161
    goto :goto_0
.end method


# virtual methods
.method public upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 2
    .param p1, "params"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    .local p2, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 30
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    new-instance v1, Ldpv$1;

    invoke-direct {v1, p0, p1, p2}, Ldpv$1;-><init>(Ldpv;Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 105
    :cond_0
    return-void
.end method
