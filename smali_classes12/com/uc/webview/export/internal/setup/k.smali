.class public final Lcom/uc/webview/export/internal/setup/k;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/k;",
        "Lcom/uc/webview/export/internal/setup/k;",
        ">;"
    }
.end annotation


# static fields
.field public static a:F

.field private static b:Z


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/setup/k;->b:Z

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/setup/k;->a:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_2

    array-length v0, v3

    if-lez v0, :cond_2

    .line 113
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 116
    if-eqz v5, :cond_1

    .line 118
    new-instance v6, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 119
    array-length v7, v5

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    aget-object v8, v5, v0

    .line 120
    const/4 v9, 0x0

    invoke-static {v8, v1, v9}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 121
    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 122
    iget-object v8, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v9, 0x186a0

    invoke-static {v8, p1, v9}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 123
    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->reset()V

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 134
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/uc/webview/export/internal/setup/k;->b:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/k;->c(Landroid/content/Context;)V

    .line 50
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/setup/k;->b:Z

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-float v1, v2

    .line 65
    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    :try_start_0
    const-string/jumbo v1, "test_dir"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    .line 86
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_bad_%s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_2

    array-length v2, v4

    if-lez v2, :cond_2

    .line 92
    new-instance v5, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 93
    array-length v6, v4

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v4, v2

    .line 94
    const/4 v8, 0x0

    invoke-static {v7, v1, v8}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 95
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 96
    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v8, 0x186a0

    invoke-static {v7, v3, v8}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    :goto_1
    return v0

    .line 100
    :cond_0
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->reset()V

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "core_ucmobile"

    .line 238
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, "httpcache_bad"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/k;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "httpcache_bad"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/k;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "core_ucmobile"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "Local Storage_bad"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/k;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/UCDownloads/video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, ".apolloCache_bad"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/k;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_2

    array-length v0, v3

    if-lez v0, :cond_2

    .line 260
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 261
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 266
    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/16 v0, 0x2713

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 55
    const v1, 0xa028

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    sput-boolean v3, Lcom/uc/webview/export/internal/setup/k;->b:Z

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    sput v0, Lcom/uc/webview/export/internal/setup/k;->a:F

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    sput-boolean v2, Lcom/uc/webview/export/internal/setup/k;->b:Z

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const v4, 0x186a0

    .line 35
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/k;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    .line 36
    const/16 v0, 0x2713

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 38
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 39
    const-string/jumbo v3, "0"

    :try_start_0
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/k;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v2, "core_ucmobile"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string/jumbo v2, "cache"

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v2, v6

    :try_start_1
    new-instance v6, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "httpcache"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/httpcache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/httpcache_bad_%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v8, 0x186a0

    invoke-static {v7, v4, v8}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "httpcache_bad"

    invoke-direct {p0, v5, v7}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v7, 0x186a0

    invoke-static {v5, v4, v7}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/httpcache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;)Z

    :cond_2
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v7, 0x186a0

    invoke-static {v5, v4, v7}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "httpcache_bad"

    invoke-direct {p0, v5, v0}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v5, 0x186a0

    invoke-static {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "Local Storage"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;)Z

    :cond_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v5, 0x186a0

    invoke-static {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "Local Storage_bad"

    invoke-direct {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v5, 0x186a0

    invoke-static {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/UCDownloads/video/.apolloCache"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;)Z

    :cond_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    const v5, 0x186a0

    invoke-static {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->a(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/UCDownloads/video"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".apolloCache_bad"

    invoke-direct {p0, v0, v5}, Lcom/uc/webview/export/internal/setup/k;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    const-wide/16 v8, 0x400

    div-long v0, v4, v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    long-to-float v0, v0

    :try_start_2
    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    const-string/jumbo v5, "sdk_7z_clear_httpcache"

    new-instance v6, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v7, "cnt"

    const-string/jumbo v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v6

    const-string/jumbo v7, "cost"

    invoke-virtual {v6, v7, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v6, "free_disk_space_before"

    invoke-virtual {v1, v6, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v2, "free_disk_space"

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/k;->callbackStat(Landroid/util/Pair;)V

    const-string/jumbo v1, "CheckSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "After clean disk space: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 42
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/k;->c(Landroid/content/Context;)V

    .line 43
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    .line 39
    :goto_1
    :try_start_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/util/Pair;

    const-string/jumbo v5, "sdk_7z_clear_httpcache"

    new-instance v6, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v7, "cnt"

    const-string/jumbo v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v6

    const-string/jumbo v7, "cost"

    invoke-virtual {v6, v7, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v6, "free_disk_space_before"

    invoke-virtual {v3, v6, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v3, "free_disk_space"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/k;->callbackStat(Landroid/util/Pair;)V

    const-string/jumbo v1, "CheckSpace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "After clean disk space: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move v2, v1

    :goto_2
    :try_start_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    const-string/jumbo v6, "sdk_7z_clear_httpcache"

    new-instance v7, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v7}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v8, "cnt"

    const-string/jumbo v9, "1"

    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string/jumbo v8, "cost"

    invoke-virtual {v7, v8, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v7, "free_disk_space_before"

    invoke-virtual {v3, v7, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v3, "free_disk_space"

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/uc/webview/export/internal/setup/k;->callbackStat(Landroid/util/Pair;)V

    const-string/jumbo v2, "CheckSpace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "After clean disk space: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v14, v1

    move v1, v0

    move-object v0, v14

    goto :goto_2

    :catch_3
    move-exception v0

    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :catch_4
    move-exception v1

    move v1, v2

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method
