.class public Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;
.super Ljava/lang/Object;
.source "AntiAttackHandlerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/antiattack/AntiAttackHandler;


# static fields
.field private static final MTOPSDK_ANTI_ATTACK_ACTION:Ljava/lang/String; = "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

.field private static final MTOPSDK_ANTI_ATTACK_RESULT_ACTION:Ljava/lang/String; = "mtopsdk.extra.antiattack.result.notify.action"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.AntiAttackHandlerImpl"

.field private static final WAIT_RESULT_TIME_OUT:I = 0xafc8


# instance fields
.field private final antiAttackReceiver:Landroid/content/BroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->intentFilter:Landroid/content/IntentFilter;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;-><init>(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;-><init>(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 64
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    move-object v5, p1

    .line 67
    .local v5, "loc":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lkkn;->d()Z

    move-result v4

    .line 69
    .local v4, "isBackground":Z
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[handle]execute new 419 Strategy,"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "location="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v6, ", isBackground="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v6, "mtopsdk.AntiAttackHandlerImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v4, :cond_2

    .line 97
    .end local v4    # "isBackground":Z
    .end local v5    # "loc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 79
    .restart local v4    # "isBackground":Z
    .restart local v5    # "loc":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    iget-object v6, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v8, 0xafc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v6

    invoke-virtual {v6}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v3, "in":Landroid/content/Intent;
    const-string/jumbo v6, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v6, "Location"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object v6, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "in":Landroid/content/Intent;
    .end local v4    # "isBackground":Z
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "mtopsdk.AntiAttackHandlerImpl"

    const-string/jumbo v7, "[handle] execute new 419 Strategy error."

    invoke-static {v6, v7, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
