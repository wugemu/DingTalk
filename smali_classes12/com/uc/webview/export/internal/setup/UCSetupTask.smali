.class public abstract Lcom/uc/webview/export/internal/setup/UCSetupTask;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/UCSetupTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCSetupTask",
        "<TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCSetupTask",
        "<TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;>",
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EVENT_REPAIR:Ljava/lang/String; = "repair"

.field protected static final LEGACY_EVENT_INIT:Ljava/lang/String; = "init"

.field protected static final LEGACY_EVENT_LOAD:Ljava/lang/String; = "load"

.field protected static final LEGACY_EVENT_SETUP:Ljava/lang/String; = "setup"

.field protected static final LEGACY_EVENT_SWITCH:Ljava/lang/String; = "switch"

.field private static b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field private static d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private static e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private static f:I

.field private static g:Z

.field protected static final sTotalSetupTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field private c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

.field private h:Ljava/lang/String;

.field private i:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Ljava/lang/String;

    .line 131
    sget-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCSetupTask;ZZ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    const-string/jumbo v0, "UCSetupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPringLogBaseOnConfig overrideConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "log_conf"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 164
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-nez v0, :cond_2

    .line 168
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "[all]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "[all]"

    aput-object v2, v0, v1

    .line 171
    :cond_2
    if-eqz p1, :cond_3

    .line 172
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    .line 174
    :cond_3
    array-length v1, v0

    if-ne v1, v6, :cond_0

    .line 175
    const/16 v1, 0x2740

    new-array v2, v3, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCSetupTask;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->j:Z

    return v0
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 110
    :goto_0
    if-nez v0, :cond_1

    .line 111
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    :goto_1
    return-object v0

    .line 109
    :cond_0
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 113
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDefault()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object v0
.end method

.method public static declared-synchronized getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4

    .prologue
    .line 77
    const-class v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/uc/webview/export/internal/setup/cf;

    sget v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/cf;-><init>(Ljava/lang/Integer;)V

    const-string/jumbo v2, "start"

    new-instance v3, Lcom/uc/webview/export/internal/setup/ce;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/ce;-><init>()V

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/cf;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    const-string/jumbo v2, "die"

    new-instance v3, Lcom/uc/webview/export/internal/setup/cd;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/cd;-><init>()V

    .line 87
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 95
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-object v0
.end method

.method public static isSetupThread()Z
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    const/16 v1, 0x2720

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static resumeAll()V
    .locals 3

    .prologue
    .line 121
    sget-object v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    monitor-enter v2

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 123
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 125
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static setRootTaskPriority(I)V
    .locals 0

    .prologue
    .line 465
    sput p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->f:I

    .line 466
    return-void
.end method


# virtual methods
.method protected final getCrashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-object v0
.end method

.method public final getRepairInfo()Lcom/uc/webview/export/internal/setup/UCMRepairInfo;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    return-object v0
.end method

.method protected getSetupCrashImproverInst(Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCSetupTask$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSetupTask;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    return-object v0
.end method

.method protected resetCrashFlag()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a()V

    .line 70
    :cond_0
    return-void
.end method

.method protected setDefault(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V
    .locals 0

    .prologue
    .line 473
    sput-object p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 474
    return-void
.end method

.method protected final setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    .line 442
    return-void
.end method

.method protected final setRepairInfo(Lcom/uc/webview/export/internal/setup/UCMRepairInfo;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    .line 451
    return-void
.end method

.method protected final setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .prologue
    .line 99
    sput-object p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    .line 100
    return-void
.end method

.method protected setupGlobalOnce()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v10, 0x2750

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 266
    const-string/jumbo v0, "UCSetupTask"

    const-string/jumbo v1, "setupGlobalOnce"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-boolean v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    sput-boolean v6, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    .line 272
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 273
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 275
    const-string/jumbo v0, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    const-string/jumbo v2, "process_private_data_dir_suffix"

    .line 277
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "0"

    .line 276
    :cond_2
    invoke-static {v2, v0}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    :try_start_0
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v2, "initializeCDPreferences"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 292
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    if-nez v0, :cond_21

    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "uclogconfig.apk"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_21

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.UCMobile"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/g$a;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lcom/uc/webview/export/cyclone/UCLoader;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "com.uc.webview.uclogconfig.UCSDKLogConfig"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getEnabledDate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_21

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_21

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :goto_2
    const-string/jumbo v0, "d"

    const-string/jumbo v2, "UCSetupTask"

    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v2

    .line 296
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "log_conf"

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 297
    if-eqz v2, :cond_4

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupGlobalOnce: log_conf="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Throwable;

    .line 298
    invoke-virtual {v2, v0, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 301
    :cond_4
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    const-string/jumbo v0, "UCSetupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "new_url setupNewUrl\u3000OPTION_UCM_UPD_URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "ucmUpdUrl"

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "ucmUpdUrl"

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "ucmUpdUrl"

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_2
    const-string/jumbo v3, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v4, "setupBusinessTemplateForUrl"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v3, v4, v5, v8}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 306
    :cond_5
    :goto_3
    :try_start_3
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "setupSetupTask"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v5, v8

    invoke-static {v0, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 316
    :goto_4
    :try_start_4
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "setupVMSizeSavingSample"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-class v8, Lcom/uc/webview/export/cyclone/UCLogger;

    aput-object v8, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v5, v8

    const/4 v8, 0x1

    aput-object v2, v5, v8

    invoke-static {v0, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 326
    :goto_5
    :try_start_5
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "setupVMSizeSavingBlackList"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-class v8, Lcom/uc/webview/export/cyclone/UCLogger;

    aput-object v8, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v5, v8

    const/4 v8, 0x1

    aput-object v2, v5, v8

    invoke-static {v0, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 337
    :goto_6
    :try_start_6
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "setCDParamLegacy"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 344
    :cond_6
    :goto_7
    const/16 v0, 0x272c

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "WEBVIEW_POLICY"

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 347
    if-eqz v2, :cond_7

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupGlobalOnce: WEBVIEW_POLICY="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 349
    :cond_7
    if-eqz v0, :cond_8

    .line 350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->k:I

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "sdk_setup"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 354
    if-eqz v2, :cond_9

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupGlobalOnce: sdk_setup="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 356
    :cond_9
    if-eqz v0, :cond_a

    .line 357
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->n:Z

    .line 360
    :cond_a
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "MULTI_CORE_TYPE"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 361
    if-eqz v2, :cond_b

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupGlobalOnce: MULTI_CORE_TYPE="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 363
    :cond_b
    if-eqz v0, :cond_c

    .line 364
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    .line 367
    :cond_c
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "AC"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 368
    if-eqz v2, :cond_d

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupGlobalOnce: AC="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 370
    :cond_d
    if-eqz v0, :cond_e

    .line 371
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v6

    :goto_8
    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->i:I

    .line 374
    :cond_e
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "VIDEO_AC"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 375
    if-eqz v2, :cond_f

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupGlobalOnce: VIDEO_AC="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 377
    :cond_f
    if-eqz v0, :cond_10

    .line 378
    const/16 v3, 0x273b

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v6

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_10
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "grant_all_builds"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 382
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.ucsdk.cts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_11
    move v0, v6

    .line 383
    :goto_a
    if-eqz v2, :cond_12

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: grant_all_builds="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 385
    :cond_12
    if-eqz v0, :cond_13

    .line 386
    sput-boolean v6, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    .line 389
    :cond_13
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "conn_to"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 390
    if-eqz v2, :cond_14

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: conn_to="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 392
    :cond_14
    if-eqz v0, :cond_15

    .line 393
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/uc/webview/export/internal/utility/j;->a:I

    .line 396
    :cond_15
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "read_to"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 397
    if-eqz v2, :cond_16

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: read_to="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 399
    :cond_16
    if-eqz v0, :cond_17

    .line 400
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/uc/webview/export/internal/utility/j;->b:I

    .line 403
    :cond_17
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "exact_old"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 404
    if-eqz v2, :cond_18

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: exact_old="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 406
    :cond_18
    if-eqz v0, :cond_19

    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Z

    .line 410
    :cond_19
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "exact_mod"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 411
    if-eqz v2, :cond_1a

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: exact_mod="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 413
    :cond_1a
    if-eqz v0, :cond_1b

    .line 414
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/utility/j;->c:Z

    .line 417
    :cond_1b
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "wait_fallback_sys"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 418
    if-eqz v2, :cond_1c

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: wait_fallback_sys="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 420
    :cond_1c
    if-eqz v0, :cond_1d

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->j:J

    .line 424
    :cond_1d
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucPlayerRoot"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    if-eqz v2, :cond_1e

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: ucPlayerRoot="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 427
    :cond_1e
    if-eqz v0, :cond_1f

    .line 428
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    .line 431
    :cond_1f
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucPlayer"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    if-eqz v2, :cond_20

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupGlobalOnce: ucPlayer="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 434
    :cond_20
    if-eqz v0, :cond_0

    .line 435
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->t:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 292
    :cond_21
    iput-boolean v7, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->j:Z

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_7
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v2, "createBusinessTemplate"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "print_log"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v8, "true"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const/4 v8, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x3

    new-instance v8, Lcom/uc/webview/export/internal/setup/cg;

    invoke-direct {v8, p0}, Lcom/uc/webview/export/internal/setup/cg;-><init>(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V

    aput-object v8, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "addKeyListener"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-class v8, Landroid/webkit/ValueCallback;

    aput-object v8, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "print_log"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v0, v5, v8

    invoke-static {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "setupBusinessMathod"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_22
    :goto_b
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->j:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    if-nez v0, :cond_23

    invoke-direct {p0, v7, v6}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(ZZ)V

    :cond_23
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    sput-boolean v0, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    goto/16 :goto_2

    :cond_24
    move v0, v7

    .line 371
    goto/16 :goto_8

    :cond_25
    move v0, v7

    .line 378
    goto/16 :goto_9

    :cond_26
    move v0, v7

    .line 382
    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method public bridge synthetic start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    monitor-enter p0

    const/16 v0, 0x2715

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "setup_priority"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    const-string/jumbo v1, "d"

    const-string/jumbo v2, "UCSetupTask"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start: setup_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setRootTaskPriority(I)V

    .line 152
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    .line 153
    const/16 v0, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 154
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 155
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
