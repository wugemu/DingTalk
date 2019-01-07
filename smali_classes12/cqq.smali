.class public final Lcqq;
.super Ljava/lang/Object;
.source "VideoFileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .local v2, "duration":J
    const/4 v8, 0x0

    .line 114
    .local v8, "width":I
    const/4 v5, 0x0

    .line 115
    .local v5, "height":I
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 117
    .local v7, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v7, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 118
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v10, 0x9

    .line 119
    invoke-virtual {v7, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    .line 118
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 121
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 130
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    new-instance v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    invoke-direct {v6, v2, v3, v8, v5}, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;-><init>(JII)V

    .line 132
    .local v6, "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->size:J

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->fileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    return-object v6

    .line 127
    .end local v6    # "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "index":I
    if-eq v0, v5, :cond_0

    .line 56
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 59
    .end local v0    # "index":I
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string/jumbo p0, "encode_temp_video.mp4"

    .line 1031
    :cond_1
    const-string/jumbo v3, "video"

    .line 1035
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1036
    invoke-static {v2}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 1037
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1038
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1040
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1043
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    .local v1, "individualDir":Ljava/io/File;
    :cond_3
    :goto_0
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 65
    .restart local v0    # "index":I
    if-eq v0, v5, :cond_4

    .line 66
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ".mp4"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "index":I
    .end local v1    # "individualDir":Ljava/io/File;
    :cond_5
    move-object v1, v2

    .line 1047
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "compress"    # Z

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-eqz p1, :cond_3

    const-wide/32 v2, 0x1400000

    .line 95
    .local v2, "limit":J
    :goto_1
    if-eqz p1, :cond_2

    .line 96
    const/4 v4, 0x0

    invoke-static {v4, p0}, Lcqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "limit":J
    :cond_3
    const-wide/32 v2, 0xc800000

    goto :goto_1
.end method
