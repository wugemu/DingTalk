.class public Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
.super Ljava/lang/Object;
.source "MicroModuleContext.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

.field private e:Landroid/app/Activity;

.field private f:Landroid/content/Context;

.field private g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->c:Landroid/os/Handler;

    .line 606
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->j:Ljava/lang/ref/WeakReference;

    .line 87
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    .line 1096
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->i:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    .line 90
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getRpcService()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 253
    if-nez v1, :cond_0

    .line 254
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string/jumbo v1, "entry class must be set."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    return-object v1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;)Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->b:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->b:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->b:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->b:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs addDescription([Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;)V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->addDescription([Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;)V

    .line 514
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "alert"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "alert error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachContext(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    .line 154
    return-void
.end method

.method public canTaskContinue(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 591
    if-nez p1, :cond_0

    .line 599
    :goto_0
    return v0

    .line 594
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskStatus()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u4efb\u52a1\u5df2\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u4efb\u52a1\u6b63\u5e38"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearModuleMapByToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->clearModuleMapByToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "dismissProgressDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->dismissProgressDialog()V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "dismissProgressDialog error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "VI exit() called"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "Y"

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->getTopRunningModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "[NEW WAY!] There\'re modules need to be finished."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->notifyAndFinishAllModule()V

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 120
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->clearAllTasks()V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->getTopRunningModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "There\'re modules need to be finished."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->finishAllModules()V

    goto :goto_0
.end method

.method public findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v0

    return-object v0
.end method

.method public finishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;-><init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public finishTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$3;-><init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u6838\u8eab\u5f15\u64ceContext\u4e3a\u7a7a\uff0c\u8fdb\u5165\u81f4\u547d\u6062\u590d\u903b\u8f91"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.alipay.util.ContextUtils"

    const-string/jumbo v1, "getContext"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "Context\u4e3a\u7a7a\uff0c\u81f4\u547d\u6062\u590d\u5931\u8d25\uff01\uff01\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u81f4\u547d\u6062\u590d\u5931\u8d25\uff01\uff01\uff01 "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    .line 175
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u81f4\u547d\u6062\u590d\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getEnvType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcService()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->i:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->i:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->gwUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->setGW(Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->i:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTopRunningModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->getTopRunningModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$5;-><init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method public notifyModuleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$4;-><init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method

.method public onDestroyModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->d:Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->onDestroyModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    .line 484
    :cond_0
    return-void
.end method

.method public setEnvType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->h:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setStartActivityContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 608
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->j:Ljava/lang/ref/WeakReference;

    .line 609
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "showProgressDialog error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    if-eqz v0, :cond_0

    .line 538
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "showProgressDialog error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivity(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivity intent failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string/jumbo v0, "task_verifyid"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v0, "task_token"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v0, "task_modulename"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 275
    const/high16 v0, 0x10000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 277
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->injectorHandled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "StartActivityInjector HANDLED!!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivity by VI itself!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivityByContext(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivity(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivity className failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string/jumbo v0, "task_verifyid"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v0, "task_token"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string/jumbo v0, "task_modulename"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 205
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 207
    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->injectorHandled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "StartActivityInjector HANDLED!!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v2, "startActivity by VI itself!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivityByContext(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityByContext(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivity by mContext"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->injectorHandled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "StartActivityInjector HANDLED!!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivity by VI itself!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const/4 v0, 0x1

    .line 1617
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1618
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v0

    .line 1620
    :cond_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getValidStartActivityContext] popMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->j:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1622
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1623
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 1624
    check-cast v1, Landroid/app/Activity;

    .line 1625
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1626
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v2, "[getValidStartActivityContext] Activity \u53ef\u7528"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 313
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "getRunningActivity is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->f:Landroid/content/Context;

    .line 316
    :cond_3
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 317
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1633
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 320
    :cond_5
    check-cast v0, Landroid/app/Activity;

    .line 321
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 322
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method public startActivityForResult(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Landroid/content/Intent;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 361
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivityForResult intent failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string/jumbo v0, "task_verifyid"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string/jumbo v0, "task_token"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string/jumbo v0, "task_modulename"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 368
    const/high16 v0, 0x10000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "startActivityForResult className failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 232
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const-string/jumbo v0, "task_verifyid"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v0, "task_token"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v0, "task_modulename"

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 237
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v9, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;-><init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    if-eqz v0, :cond_0

    .line 577
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "toast"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->g:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->toast(Ljava/lang/String;I)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->a:Ljava/lang/String;

    const-string/jumbo v1, "toast error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    .line 493
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->e:Landroid/app/Activity;

    .line 494
    return-object v0
.end method
