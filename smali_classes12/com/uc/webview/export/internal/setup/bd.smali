.class public Lcom/uc/webview/export/internal/setup/bd;
.super Lcom/uc/webview/export/internal/setup/bs;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/uc/webview/export/internal/setup/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x1

    .line 20
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bd;->b:J

    const-wide/16 v0, 0x2

    .line 21
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bd;->d:J

    const-wide/16 v0, 0x4

    .line 22
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bd;->e:J

    const-wide/16 v0, 0x8

    sput-wide v0, Lcom/uc/webview/export/internal/setup/bd;->f:J

    .line 23
    sget-wide v0, Lcom/uc/webview/export/internal/setup/bd;->e:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/setup/bd;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 26
    sget-object v0, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    const-string/jumbo v1, "==run."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bd;->d:J

    .line 28
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "csc_ftsrc"

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bd;->callbackStat(Landroid/util/Pair;)V

    .line 31
    :try_start_0
    const-string/jumbo v0, "sc_bakkrldir"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bd;->e:J

    .line 33
    sget-object v0, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".run bak krl dir: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "sc_bakkrldir"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "csc_ftsrk"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bd;->callbackStat(Landroid/util/Pair;)V

    .line 35
    const-string/jumbo v0, "dexFilePath"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bd;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "soFilePath"

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "resFilePath"

    const/4 v4, 0x0

    .line 37
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmLibDir"

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmKrlDir"

    const-string/jumbo v4, "sc_bakkrldir"

    .line 39
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmCfgFile"

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 41
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/bs;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 70
    :goto_0
    sget-object v2, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".run stat: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 42
    :cond_0
    :try_start_1
    const-string/jumbo v0, "sc_bakzipfp"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bd;->f:J

    .line 44
    sget-object v0, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".run bak core file: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "sc_bakzipfp"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "csc_ftsrz"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bd;->callbackStat(Landroid/util/Pair;)V

    .line 46
    new-instance v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    const/16 v1, 0x2711

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 47
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/m;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const/16 v1, 0x2712

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/bd;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v6, v4, v5

    .line 48
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bd;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "dexFilePath"

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "soFilePath"

    const/4 v4, 0x0

    .line 51
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "resFilePath"

    const/4 v4, 0x0

    .line 52
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmCfgFile"

    const/4 v4, 0x0

    .line 53
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmKrlDir"

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipFile"

    const-string/jumbo v4, "sc_bakzipfp"

    .line 55
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/bd;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bd;->resetCrashFlag()V

    .line 61
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-wide v0, v2

    .line 62
    goto/16 :goto_0

    .line 63
    :cond_1
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bd;->g:J

    .line 64
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "csc_ftsre"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bd;->callbackStat(Landroid/util/Pair;)V

    .line 65
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbd9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not config (%s or %s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sc_bakkrldir"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "sc_bakzipfp"

    aput-object v7, v5, v6

    .line 66
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/uc/webview/export/internal/setup/bd;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".run stat: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
