.class public Lgpb;
.super Ljava/lang/Object;
.source "SpaceTasksManager.java"


# static fields
.field private static volatile f:Lgpb;


# instance fields
.field a:Lgoz;

.field b:Lgoz;

.field c:Lgoz;

.field d:Lgoz;

.field e:Lgoz;


# direct methods
.method private constructor <init>()V
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Lgpb$1;

    invoke-direct {v1, p0}, Lgpb$1;-><init>(Lgpb;)V

    .line 69
    .local v1, "downloadTaskUUIDGen":Lgpf$b;
    const/4 v3, 0x0

    .line 71
    .local v3, "isEnableSingleTaskDownload":Z
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v7

    const-string/jumbo v8, "f_cspace_single_task_download_enable"

    invoke-virtual {v7, v8}, Lchx;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 79
    :goto_0
    if-eqz v3, :cond_0

    move v0, v5

    .line 80
    .local v0, "downloadMaxCount":I
    :goto_1
    const-string/jumbo v7, "CSpace"

    const-string/jumbo v8, "SpaceTasksManager"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "SpaceTasksManager: isEnableSingleTaskDownload: "

    aput-object v10, v9, v11

    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string/jumbo v10, ", downloadMaxCount: "

    aput-object v10, v9, v6

    const/4 v6, 0x3

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 80
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v6, Lgoz;

    const-string/jumbo v7, "download-audio"

    invoke-direct {v6, v0, v1, v11, v7}, Lgoz;-><init>(ILgpf$b;ILjava/lang/String;)V

    iput-object v6, p0, Lgpb;->a:Lgoz;

    .line 85
    new-instance v6, Lgoz;

    const-string/jumbo v7, "download-small"

    invoke-direct {v6, v0, v1, v11, v7}, Lgoz;-><init>(ILgpf$b;ILjava/lang/String;)V

    iput-object v6, p0, Lgpb;->b:Lgoz;

    .line 86
    new-instance v6, Lgoz;

    const-string/jumbo v7, "download-huge"

    invoke-direct {v6, v5, v1, v11, v7}, Lgoz;-><init>(ILgpf$b;ILjava/lang/String;)V

    iput-object v6, p0, Lgpb;->c:Lgoz;

    .line 88
    new-instance v4, Lgpb$2;

    invoke-direct {v4, p0}, Lgpb$2;-><init>(Lgpb;)V

    .line 102
    .local v4, "uploadTaskUUIDGen":Lgpf$b;
    new-instance v6, Lgoz;

    const-string/jumbo v7, "upload-inner"

    invoke-direct {v6, v5, v4, v5, v7}, Lgoz;-><init>(ILgpf$b;ILjava/lang/String;)V

    iput-object v6, p0, Lgpb;->d:Lgoz;

    .line 103
    new-instance v6, Lgoz;

    const-string/jumbo v7, "upload-outer"

    invoke-direct {v6, v5, v4, v5, v7}, Lgoz;-><init>(ILgpf$b;ILjava/lang/String;)V

    iput-object v6, p0, Lgpb;->e:Lgoz;

    .line 104
    return-void

    .line 73
    .end local v0    # "downloadMaxCount":I
    .end local v4    # "uploadTaskUUIDGen":Lgpf$b;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const-string/jumbo v7, "CSpace"

    const-string/jumbo v8, "SpaceTasksManager"

    new-array v9, v6, [Ljava/lang/String;

    const-string/jumbo v10, "SpaceTasksManager: fail to get value of isEnableSingleTaskDownload, not in main process ? "

    aput-object v10, v9, v11

    .line 76
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 75
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, v6

    .line 79
    goto/16 :goto_1
.end method

.method public static declared-synchronized a()Lgpb;
    .locals 3

    .prologue
    .line 43
    const-class v1, Lgpb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgpb;->f:Lgpb;

    if-nez v0, :cond_1

    .line 44
    const-class v2, Lgpb;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    sget-object v0, Lgpb;->f:Lgpb;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lgpb;

    invoke-direct {v0}, Lgpb;-><init>()V

    sput-object v0, Lgpb;->f:Lgpb;

    .line 48
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    :try_start_2
    sget-object v0, Lgpb;->f:Lgpb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
