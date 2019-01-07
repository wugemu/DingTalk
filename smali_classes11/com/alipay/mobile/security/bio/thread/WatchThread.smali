.class public abstract Lcom/alipay/mobile/security/bio/thread/WatchThread;
.super Ljava/lang/Thread;
.source "WatchThread.java"


# static fields
.field public static final tg:Ljava/lang/ThreadGroup;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string/jumbo v1, "watch-thread"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/thread/WatchThread;->tg:Ljava/lang/ThreadGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 29
    sget-object v0, Lcom/alipay/mobile/security/bio/thread/WatchThread;->tg:Ljava/lang/ThreadGroup;

    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchThread;->a:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/thread/WatchThread;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/bio/thread/WatchThread;->setDaemon(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/thread/WatchThread;->a:Z

    .line 39
    return-void
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchThread;->a:Z

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/thread/WatchThread;->task()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 52
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public abstract task()V
.end method
