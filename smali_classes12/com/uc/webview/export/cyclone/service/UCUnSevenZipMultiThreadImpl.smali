.class public Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UCUnSevenZipMultiThreadImplConstant"

.field private static mSoIsLoaded:Z

.field private static mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    sput-boolean v4, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoaded:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    .line 27
    :try_start_0
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;

    new-instance v1, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Lcom/uc/webview/export/cyclone/service/UCServiceInterface;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string/jumbo v1, "w"

    const-string/jumbo v2, "UCUnSevenZipMultiThreadImplConstant"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v2, "UCUnSevenZipMultiThreadImplConstant register exception:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native dec7z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static declared-synchronized loadSo(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 71
    const-class v9, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;

    monitor-enter v9

    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    monitor-exit v9

    return-void

    .line 74
    :cond_0
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 78
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "libdec7zmt"

    const-string/jumbo v3, ".so"

    const-wide/32 v4, 0x1844f1f

    const-string/jumbo v6, "8f14ec3419b92cb84a97c021b573b73c"

    .line 81
    invoke-static {}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImplConstant;->genCodes()[[B

    move-result-object v7

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    move-object v0, p0

    .line 78
    invoke-static/range {v0 .. v8}, Lcom/uc/webview/export/cyclone/UCCyclone;->genFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[[B[Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/cyclone/UCLibrary;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoaded:Z

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    sput-object v1, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public deccompress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->loadSo(Landroid/content/Context;)V

    .line 39
    const-string/jumbo v0, ""

    invoke-static {p2, p3, v0}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->dec7z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 41
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UCUnSevenZipMultiThreadImpl.dec ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 46
    :cond_0
    return v1

    .line 41
    :cond_1
    const-string/jumbo v0, "d"

    const-string/jumbo v2, "UCUnSevenZipMultiThreadImplConstant"

    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    goto :goto_0
.end method

.method public deccompress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->loadSo(Landroid/content/Context;)V

    .line 53
    invoke-static {p2, p3, p4}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZipMultiThreadImpl;->dec7z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 55
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UCUnSevenZipMultiThreadImpl.dec ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 60
    :cond_0
    return v1

    .line 55
    :cond_1
    const-string/jumbo v0, "d"

    const-string/jumbo v2, "UCUnSevenZipMultiThreadImplConstant"

    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceVersion()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
