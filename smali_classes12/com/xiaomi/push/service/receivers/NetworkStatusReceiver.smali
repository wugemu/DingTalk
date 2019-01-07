.class public Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static f:Z


# instance fields
.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:I

    sput v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->c:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:I

    sget v3, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:I

    sget v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->c:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->g:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.push.network_status_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->d()V

    :cond_1
    invoke-static {p1}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "syncing"

    invoke-static {p1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljxf;->h(Landroid/content/Context;)V

    :cond_2
    const-string/jumbo v0, "syncing"

    invoke-static {p1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->b:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljxf;->i(Landroid/content/Context;)V

    :cond_3
    const-string/jumbo v0, "syncing"

    invoke-static {p1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->c:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljxf;->j(Landroid/content/Context;)V

    :cond_4
    const-string/jumbo v0, "syncing"

    invoke-static {p1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->d:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Ljxf;->k(Landroid/content/Context;)V

    :cond_5
    const-string/jumbo v0, "syncing"

    invoke-static {p1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->e:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljxf;->l(Landroid/content/Context;)V

    :cond_6
    invoke-static {}, Ljxe;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljxe;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljxe;->a(Landroid/content/Context;)V

    invoke-static {p1}, Ljxe;->c(Landroid/content/Context;)V

    :cond_7
    invoke-static {p1}, Ljxd;->a(Landroid/content/Context;)V

    .line 0
    :cond_8
    return-void

    .line 1000
    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->f:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lkco;

    invoke-direct {v1, p0, p1}, Lkco;-><init>(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
