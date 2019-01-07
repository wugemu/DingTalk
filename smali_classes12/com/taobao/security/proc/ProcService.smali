.class public Lcom/taobao/security/proc/ProcService;
.super Lcom/taobao/security/proc/SEService;
.source "ProcService.java"


# static fields
.field private static final BOUNDARY_NOCB_SDK_VERSION:I = 0x13

.field private static final BOUNDARY_SDK_VERSION:I = 0x11

.field private static final SE_Action:Ljava/lang/String; = "com.taobao.proc.se.double"

.field private static final SE_Perm:Ljava/lang/String; = "com.taobao.sec.proc.ali"

.field private static volatile STARTKIND:I

.field private static comp:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/taobao/security/proc/ProcEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static contextSv:Landroid/content/Context;

.field static dynmicRegRecv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static flagStart:Z

.field private static lock:Ljava/lang/Object;

.field private static receiver:Lcom/taobao/security/proc/ProcReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/taobao/security/proc/ProcReceiver;

    invoke-direct {v0}, Lcom/taobao/security/proc/ProcReceiver;-><init>()V

    sput-object v0, Lcom/taobao/security/proc/ProcService;->receiver:Lcom/taobao/security/proc/ProcReceiver;

    .line 23
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/taobao/security/proc/ProcService;->comp:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 25
    sput-boolean v2, Lcom/taobao/security/proc/ProcService;->flagStart:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/security/proc/ProcService;->lock:Ljava/lang/Object;

    .line 38
    const/16 v0, 0x100

    sput v0, Lcom/taobao/security/proc/ProcService;->STARTKIND:I

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taobao/security/proc/ProcService;->dynmicRegRecv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/taobao/security/proc/SEService;-><init>()V

    return-void
.end method

.method static final SendBroadCast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p0, :cond_0

    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 128
    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static final SendSecBroadCast(Ljava/lang/String;)V
    .locals 3
    .param p0, "pack"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.taobao.proc.se.double"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    const-string/jumbo v2, "com.taobao.sec.proc.ali"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static final getComponent()Lcom/taobao/security/proc/ProcEntry;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/taobao/security/proc/ProcService;->comp:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/security/proc/ProcEntry;

    return-object v0
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.taobao.proc.se.double"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/taobao/security/proc/ProcService;->receiver:Lcom/taobao/security/proc/ProcReceiver;

    const-string/jumbo v2, "com.taobao.sec.proc.ali"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method private static registerStartEntry(Lcom/taobao/security/proc/SEService;Ljava/lang/String;)V
    .locals 5
    .param p0, "servce"    # Lcom/taobao/security/proc/SEService;
    .param p1, "packname"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    sget-object v0, Lcom/taobao/security/proc/ProcService;->comp:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Lcom/taobao/security/proc/ProcEntry;

    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getStartKind()I

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/security/proc/SEService;->getStartAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/taobao/security/proc/ProcEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method

.method private static final startAbove42Service(Landroid/content/Context;Lcom/taobao/security/proc/SEService;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "servce"    # Lcom/taobao/security/proc/SEService;
    .param p2, "dym"    # Z

    .prologue
    const/4 v2, 0x0

    .line 133
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 134
    .local v0, "arch":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "mips"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .local v1, "version":I
    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    const/16 v3, 0x13

    if-ge v1, v3, :cond_0

    .line 141
    sget v2, Lcom/taobao/security/proc/ProcService;->STARTKIND:I

    invoke-virtual {p1}, Lcom/taobao/security/proc/SEService;->getStartKind()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/security/proc/ProcService;->registerStartEntry(Lcom/taobao/security/proc/SEService;Ljava/lang/String;)V

    .line 144
    invoke-static {p0, p2}, Lcom/taobao/security/proc/ProcService;->startSeService(Landroid/content/Context;Z)V

    .line 146
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static final startComp(Ljava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "cockroach"

    const-string/jumbo v2, "cockroach-PPreotect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "pack"

    sget-object v2, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget-object v1, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 121
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static startSeService(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sym"    # Z

    .prologue
    .line 67
    sget-object v2, Lcom/taobao/security/proc/ProcService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    sget-boolean v1, Lcom/taobao/security/proc/ProcService;->flagStart:Z

    if-nez v1, :cond_1

    .line 69
    sget-object v1, Lcom/taobao/security/proc/ProcService;->dynmicRegRecv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/taobao/security/proc/ProcService;->registerReceiver(Landroid/content/Context;)V

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/security/proc/ProcService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/security/proc/ProcService;->flagStart:Z

    .line 67
    .end local v0    # "service":Landroid/content/Intent;
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final startServiceAction(Landroid/content/Context;Lcom/taobao/security/proc/SEService;ZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "servce"    # Lcom/taobao/security/proc/SEService;
    .param p2, "suport42"    # Z
    .param p3, "dynamic"    # Z

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "delay":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1}, Lcom/taobao/security/proc/SEService;->getStartAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-static {p0, p1, p3}, Lcom/taobao/security/proc/ProcService;->startAbove42Service(Landroid/content/Context;Lcom/taobao/security/proc/SEService;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static final startServiceDamon(Landroid/content/Context;Lcom/taobao/security/proc/SEService;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "servce"    # Lcom/taobao/security/proc/SEService;
    .param p2, "suport42"    # Z
    .param p3, "dynamic"    # Z

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, "delay":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    if-eqz p2, :cond_0

    .line 156
    invoke-static {p0, p1, p3}, Lcom/taobao/security/proc/ProcService;->startAbove42Service(Landroid/content/Context;Lcom/taobao/security/proc/SEService;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static final unregisterReceiver()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    sget-object v1, Lcom/taobao/security/proc/ProcService;->receiver:Lcom/taobao/security/proc/ProcReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public final getFirstStartTime()C
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final getStartAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string/jumbo v0, "sbox.sb"

    return-object v0
.end method

.method public final getStartCount()B
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getStartKind()I
    .locals 1

    .prologue
    .line 181
    sget v0, Lcom/taobao/security/proc/ProcService;->STARTKIND:I

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/taobao/security/proc/ProcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/security/proc/ProcService;->contextSv:Landroid/content/Context;

    .line 51
    invoke-super {p0}, Lcom/taobao/security/proc/SEService;->onCreate()V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/security/proc/ProcService;->loadSo()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ProcService:STARTKIND="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/taobao/security/proc/ProcService;->STARTKIND:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/taobao/security/proc/ProcService;->initSeServer()V

    .line 55
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/security/proc/SEService;->onStartCommand(Landroid/content/Intent;II)I

    .line 59
    const/4 v0, 0x2

    return v0
.end method
