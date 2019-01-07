.class public Lcom/uc/webview/export/internal/setup/ae;
.super Lcom/uc/webview/export/utility/SetupTask;
.source "ProGuard"


# static fields
.field private static b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/uc/webview/export/internal/setup/s;

.field private c:Lcom/uc/webview/export/internal/setup/s;

.field private d:Lcom/uc/webview/export/internal/setup/s;

.field private e:Landroid/content/Context;

.field private f:Lcom/uc/webview/export/cyclone/UCElapseTime;

.field private g:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field private h:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private i:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/ae;->k:Z

    .line 60
    new-instance v0, Lcom/uc/webview/export/internal/setup/af;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/af;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->m:Landroid/webkit/ValueCallback;

    .line 333
    new-instance v0, Lcom/uc/webview/export/internal/setup/ak;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ak;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->n:Landroid/webkit/ValueCallback;

    .line 376
    new-instance v0, Lcom/uc/webview/export/internal/setup/al;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/al;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->o:Landroid/webkit/ValueCallback;

    .line 454
    new-instance v0, Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ap;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->p:Landroid/webkit/ValueCallback;

    .line 704
    new-instance v0, Lcom/uc/webview/export/internal/setup/ai;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ai;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->q:Landroid/webkit/ValueCallback;

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae;->g:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/UCSetupTask;)Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae;->h:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/s;)Lcom/uc/webview/export/internal/setup/s;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae;->d:Lcom/uc/webview/export/internal/setup/s;

    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/s;)Lcom/uc/webview/export/internal/setup/s;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    const/16 v0, 0x2711

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 675
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "setup"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->j:Landroid/webkit/ValueCallback;

    .line 676
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "load"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->j:Landroid/webkit/ValueCallback;

    .line 677
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "init"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->j:Landroid/webkit/ValueCallback;

    .line 678
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "switch"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->j:Landroid/webkit/ValueCallback;

    .line 679
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "stat"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->i:Landroid/webkit/ValueCallback;

    .line 680
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "success"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->m:Landroid/webkit/ValueCallback;

    .line 681
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "exception"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->n:Landroid/webkit/ValueCallback;

    .line 682
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 683
    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 687
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    const-string/jumbo v1, "dexFilePath"

    .line 688
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "soFilePath"

    .line 689
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "resFilePath"

    .line 690
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipFile"

    .line 691
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmLibDir"

    .line 692
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmKrlDir"

    .line 693
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmCfgFile"

    .line 694
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "start"

    .line 695
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/internal/setup/s;->getSetupCrashImproverInst(Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->d:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "die"

    .line 696
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/internal/setup/s;->getSetupCrashImproverInst(Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->e:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "crash_none"

    .line 697
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "crash_seen"

    .line 698
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "crash_repeat"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->o:Landroid/webkit/ValueCallback;

    .line 699
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 700
    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/ae;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/ae;->setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    iget v0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->loadType:I

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->o:I

    const-string/jumbo v0, "SdkSetupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initLoadUcm coreType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/uc/webview/export/internal/SDKFactory;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isShareCore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/ae;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/ae;->callbackFinishStat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->g:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method private b()Lcom/uc/webview/export/internal/setup/s;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 577
    const-string/jumbo v0, "csc_nsct"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    const-string/jumbo v1, "ShareCoreSdcardSetupTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    const-string/jumbo v1, "scst_flag"

    const/4 v2, 0x1

    .line 580
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    sget-object v1, Lcom/uc/webview/export/internal/setup/bf;->a:Ljava/lang/String;

    new-instance v2, Lcom/uc/webview/export/internal/setup/ah;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/ah;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    .line 581
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    .line 593
    return-object v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/ae;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v4, -0x3fffff81    # -2.0000303f

    .line 37
    const-string/jumbo v0, "csc_cddtp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    new-instance v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    const-string/jumbo v1, "ucmZipFile"

    invoke-virtual {v0, v1, p1}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "VERIFY_POLICY"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string/jumbo v2, "sc_vrfplc"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sc_vrfaha"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    :goto_0
    const/16 v1, 0x2711

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "VERIFY_POLICY"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "scst_flag"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "success"

    new-instance v3, Lcom/uc/webview/export/internal/setup/ag;

    invoke-direct {v3, p0}, Lcom/uc/webview/export/internal/setup/ag;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "exception"

    new-instance v3, Lcom/uc/webview/export/internal/setup/at;

    invoke-direct {v3, p0}, Lcom/uc/webview/export/internal/setup/at;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "switch"

    new-instance v3, Lcom/uc/webview/export/internal/setup/as;

    invoke-direct {v3, p0}, Lcom/uc/webview/export/internal/setup/as;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-object v0

    :cond_0
    const-string/jumbo v3, "sc_vrfahs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->h:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/cyclone/UCElapseTime;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->f:Lcom/uc/webview/export/cyclone/UCElapseTime;

    return-object v0
.end method

.method private d()Lcom/uc/webview/export/internal/setup/s;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 605
    const-string/jumbo v0, "csc_ndft"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "dexFilePath"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 610
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    new-instance v1, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    const-string/jumbo v3, "dexFilePath"

    .line 612
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "soFilePath"

    const-string/jumbo v3, "soFilePath"

    .line 613
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "resFilePath"

    const-string/jumbo v3, "resFilePath"

    .line 614
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    move-object v1, v0

    .line 647
    :goto_0
    const-string/jumbo v0, "ucmUpdUrl"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 648
    const-string/jumbo v0, "ucmUpdUrl"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/uc/webview/export/internal/setup/ae;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 652
    const/16 v0, 0x2712

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/ae;->e:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 653
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_7

    .line 654
    const-string/jumbo v2, "csc_nupt"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 655
    if-eqz v1, :cond_0

    .line 656
    sget-object v2, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 659
    new-instance v0, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    const-string/jumbo v3, "chkDecFinish"

    const/4 v4, 0x1

    .line 660
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmKrlDir"

    .line 661
    invoke-virtual {v0, v3, v2}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_1
    return-object v0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmZipFile"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 617
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    new-instance v1, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    const-string/jumbo v3, "ucmZipFile"

    .line 619
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    move-object v1, v0

    goto/16 :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmLibDir"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 623
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "forbid_repair"

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 624
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 625
    :cond_3
    sget-object v1, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    new-instance v3, Lcom/uc/webview/export/internal/setup/ad;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/ad;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RepairSetupTask_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v3

    const-string/jumbo v4, "ucmLibDir"

    .line 626
    invoke-virtual {v3, v4, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v3

    .line 625
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_4
    new-instance v1, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    const-string/jumbo v3, "ucmLibDir"

    .line 629
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    move-object v1, v0

    .line 630
    goto/16 :goto_0

    .line 631
    :cond_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmKrlDir"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 633
    new-instance v1, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    const-string/jumbo v3, "ucmKrlDir"

    .line 634
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    move-object v1, v0

    goto/16 :goto_0

    .line 636
    :cond_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmCfgFile"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 638
    new-instance v1, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    const-string/jumbo v3, "ucmCfgFile"

    .line 639
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    move-object v1, v0

    goto/16 :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 666
    const-string/jumbo v2, "SdkSetupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UCMPackageInfo.getUpdateRoot exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v0, v1

    .line 670
    goto/16 :goto_1

    :cond_8
    move-object v1, v2

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/ae;)V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2739

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->shellClassLoader:Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    const-string/jumbo v0, "loadPolicy"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "load_share_core_host"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/ae;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/s;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    return-object v0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/s;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    return-object v0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/ae;)V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->d:Lcom/uc/webview/export/internal/setup/s;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "csc_ddspv"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->d:Lcom/uc/webview/export/internal/setup/s;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->d:Lcom/uc/webview/export/internal/setup/s;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/ae;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    const-string/jumbo v0, "csc_ctnp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    new-instance v0, Lcom/uc/webview/export/internal/setup/bg;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bg;-><init>()V

    const/16 v3, 0x2711

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/bg;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/bg;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/bg;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/bg;

    const-string/jumbo v3, "o_st_dhcs"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v4

    iget v4, v4, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/bg;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/bg;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bg;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/bg;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/bg;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic k(Lcom/uc/webview/export/internal/setup/ae;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->n:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic l(Lcom/uc/webview/export/internal/setup/ae;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->m:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic m(Lcom/uc/webview/export/internal/setup/ae;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/ae;->k:Z

    return v0
.end method

.method static synthetic n(Lcom/uc/webview/export/internal/setup/ae;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->q:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic o(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/s;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/ae;->b()Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 407
    new-instance v0, Lcom/uc/webview/export/internal/setup/cj;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/cj;-><init>()V

    const/16 v1, 0x2711

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 408
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/cj;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 409
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipDir"

    .line 410
    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipFile"

    .line 411
    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "sdk_setup"

    .line 412
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "chkMultiCore"

    .line 413
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "stat"

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->i:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->i:Landroid/webkit/ValueCallback;

    .line 414
    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "switch"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->q:Landroid/webkit/ValueCallback;

    .line 415
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "downloadException"

    new-instance v2, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/ao;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "downloadFileDelete"

    new-instance v2, Lcom/uc/webview/export/internal/setup/an;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/internal/setup/an;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "updateProgress"

    new-instance v2, Lcom/uc/webview/export/internal/setup/am;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/am;-><init>(Lcom/uc/webview/export/internal/setup/ae;)V

    .line 433
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->a:Lcom/uc/webview/export/internal/setup/s;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    .line 443
    if-eqz p2, :cond_0

    .line 444
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "dlChecker"

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmUpdUrl"

    invoke-virtual {v0, v1, p1}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 448
    :cond_1
    const-string/jumbo v0, "sc_ldpl"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    const-string/jumbo v1, "sc_lshco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "shareCoreEvt"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->p:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 452
    :cond_2
    return-void

    .line 413
    :cond_3
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 761
    new-instance v0, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->f:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 764
    const-string/jumbo v0, "ucmZipDir"

    .line 765
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v2, "sdk_setup"

    .line 766
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 768
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ae;->setupGlobalOnce()V

    .line 770
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->e:Landroid/content/Context;

    .line 772
    const/16 v0, 0x271b

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/ae;->k:Z

    .line 778
    const/16 v0, 0x2717

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "stat"

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/uc/webview/export/internal/setup/ae;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 779
    const-string/jumbo v2, "stat"

    new-instance v3, Lcom/uc/webview/export/internal/setup/aj;

    invoke-direct {v3, p0, v0}, Lcom/uc/webview/export/internal/setup/aj;-><init>(Lcom/uc/webview/export/internal/setup/ae;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, v2, v3}, Lcom/uc/webview/export/internal/setup/ae;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 816
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "sdk_stp"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->callbackStat(Landroid/util/Pair;)V

    .line 820
    :try_start_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/y;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/y;-><init>()V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    check-cast v0, Lcom/uc/webview/export/internal/setup/y;

    const/16 v2, 0x2711

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 821
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/y;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/y;

    const-string/jumbo v2, "stat"

    new-instance v3, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v3, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 822
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/y;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/y;

    .line 823
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/y;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 825
    :goto_0
    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v2, Lcom/uc/webview/export/cyclone/UCDex;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCDex;-><init>()V

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    const/16 v2, 0x2711

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 831
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    const-wide/16 v2, 0x1388

    .line 832
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 834
    :goto_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->j:Landroid/webkit/ValueCallback;

    .line 838
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->i:Landroid/webkit/ValueCallback;

    .line 840
    new-instance v0, Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bo;-><init>()V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    .line 842
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "SYSTEM_WEBVIEW"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 843
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 844
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 879
    :goto_2
    return-void

    .line 847
    :cond_0
    sget-object v2, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/ae;->k:Z

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "soFilePath"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 851
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "resFilePath"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 852
    new-instance v2, Lcom/uc/webview/export/internal/setup/bq;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bq;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ThickSetupTask_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v2

    const-string/jumbo v3, "soFilePath"

    .line 853
    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "resFilePath"

    .line 854
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    .line 855
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 856
    const-string/jumbo v0, "Thick SDK"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/ae;->d()Lcom/uc/webview/export/internal/setup/s;

    move-result-object v2

    .line 861
    const-string/jumbo v0, "sc_ldpl"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string/jumbo v3, "sc_lshco"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 863
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/ae;->b()Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    .line 865
    const-string/jumbo v0, "csc_ftt"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    new-instance v0, Lcom/uc/webview/export/internal/setup/bd;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bd;-><init>()V

    const-string/jumbo v3, "ShareCoreFaultToleranceTask"

    invoke-direct {p0, v0, v3}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    .line 868
    :goto_3
    if-eqz v2, :cond_3

    .line 869
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 871
    sget-object v3, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_2
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_2

    .line 875
    :cond_3
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ae;->c:Lcom/uc/webview/export/internal/setup/s;

    if-eqz v2, :cond_4

    .line 876
    new-instance v0, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/s;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_2

    .line 877
    :cond_4
    if-eqz v1, :cond_5

    .line 878
    sget-object v2, Lcom/uc/webview/export/internal/setup/ae;->b:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_2

    .line 881
    :cond_5
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc9

    const-string/jumbo v2, "At least 1 of OPTION_DEX_FILE_PATH|OPTION_UCM_LIB_DIR|OPTION_UCM_KRL_DIR|OPTION_UCM_CFG_FILE|OPTION_UCM_UPD_URL and CD_KEY_SHARE_CORE_CLIENT_LOAD_POLICY should be given."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method
