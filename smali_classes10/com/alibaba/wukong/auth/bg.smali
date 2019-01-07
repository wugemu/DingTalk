.class public Lcom/alibaba/wukong/auth/bg;
.super Lcom/alibaba/wukong/auth/bi;
.source "UploaderFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/auth/bg$a;
    }
.end annotation


# instance fields
.field private final bB:Lcom/alibaba/wukong/auth/bg$a;

.field private final mKey:Ljava/lang/String;

.field private mUploader:Lcom/laiwang/protocol/upload/Uploader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/alibaba/wukong/auth/bg$a;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p3, "channel"    # Lcom/alibaba/wukong/auth/bg$a;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/alibaba/wukong/auth/bi;-><init>(Lcom/laiwang/protocol/upload/UploaderExtra;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bg;->mUploader:Lcom/laiwang/protocol/upload/Uploader;

    .line 35
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bg;->mKey:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/alibaba/wukong/auth/bg;->bB:Lcom/alibaba/wukong/auth/bg$a;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bg;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bg;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/bg;ZJI)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bg;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/wukong/auth/bg;->a(ZJI)V

    return-void
.end method

.method private a(ZJI)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "duration"    # J
    .param p4, "code"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 157
    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v6}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    :try_start_0
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;-><init>()V

    .line 162
    .local v0, "model":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    sget-wide v6, Lcom/alibaba/wukong/auth/AuthExtension;->sMainOrgId:J

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->orgId:J

    .line 163
    invoke-static {}, Lhzr;->c()Lhzr;

    invoke-static {}, Lhzr;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "1"

    :goto_1
    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 164
    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v6}, Lcom/laiwang/protocol/upload/UploaderExtra;->getMediaIdVer()I

    move-result v6

    sget-object v7, Lcom/alibaba/wukong/auth/bi$a;->bO:Lcom/alibaba/wukong/auth/bi$a;

    invoke-virtual {v7}, Lcom/alibaba/wukong/auth/bi$a;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 165
    const-string/jumbo v6, "cspace"

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 169
    :goto_2
    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v6}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 170
    iget-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_3

    .line 171
    :cond_2
    const-string/jumbo v6, "unknown"

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 173
    :cond_3
    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v6}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v6

    sget-object v7, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v7}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v7

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v6}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v6

    sget-object v7, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->CDN_ONLY:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v7}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 174
    :cond_4
    const-string/jumbo v6, "lwp_noauth"

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 178
    :goto_3
    iput-wide p2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->cost:J

    .line 179
    if-eqz p1, :cond_a

    .line 180
    const-string/jumbo v6, "Y"

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 181
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v7}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 182
    .local v2, "size":J
    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->totalSize:J

    .line 183
    iget-object v6, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v6}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpIdx()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v7}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpFrag()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v6, v6

    sub-long v6, v2, v6

    iput-wide v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->transferSize:J

    .line 184
    cmp-long v6, p2, v4

    if-gtz v6, :cond_8

    :goto_4
    long-to-double v4, v4

    iput-wide v4, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->rate:D

    .line 185
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v4}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpIdx()I

    move-result v4

    if-ltz v4, :cond_9

    const-string/jumbo v4, "Y"

    :goto_5
    iput-object v4, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->resume:Ljava/lang/String;

    .line 190
    .end local v2    # "size":J
    :goto_6
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 191
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v1, :cond_0

    .line 192
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "model":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v1    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 163
    .restart local v0    # "model":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    :cond_5
    const-string/jumbo v6, "0"

    goto/16 :goto_1

    .line 167
    :cond_6
    const-string/jumbo v6, "general"

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    goto/16 :goto_2

    .line 176
    :cond_7
    const-string/jumbo v6, "lwp_auth"

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    goto :goto_3

    .line 184
    .restart local v2    # "size":J
    :cond_8
    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->transferSize:J

    div-long/2addr v4, p2

    goto :goto_4

    .line 185
    :cond_9
    const-string/jumbo v4, "N"

    goto :goto_5

    .line 187
    .end local v2    # "size":J
    :cond_a
    const-string/jumbo v4, "N"

    iput-object v4, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 188
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->statusCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6
.end method

.method static synthetic b(Lcom/alibaba/wukong/auth/bg;)Lcom/alibaba/wukong/auth/bg$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bg;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bg;->bB:Lcom/alibaba/wukong/auth/bg$a;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 45
    .local v0, "startTime":J
    new-instance v2, Lcom/alibaba/wukong/auth/bg$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/wukong/auth/bg$1;-><init>(Lcom/alibaba/wukong/auth/bg;J)V

    .line 140
    .local v2, "uploadListener":Lcom/laiwang/protocol/upload/OnUploadListener;
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bg;->bK:Lifu;

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bg;->bK:Lifu;

    .line 1055
    iput-object v2, v3, Lifu;->b:Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/upload/UploaderExtra;->setStreaming(Z)V

    .line 144
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-static {v3, v2}, Lcom/laiwang/protocol/upload/Uploader;->uploadFile(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/wukong/auth/bg;->mUploader:Lcom/laiwang/protocol/upload/Uploader;

    .line 145
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bg;->bK:Lifu;

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bg;->bK:Lifu;

    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg;->mUploader:Lcom/laiwang/protocol/upload/Uploader;

    .line 2051
    iput-object v4, v3, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    .line 148
    :cond_1
    return-void
.end method
