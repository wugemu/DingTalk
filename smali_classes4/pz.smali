.class public Lpz;
.super Ljava/lang/Object;
.source "SingleThreadBlockQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpz$a;
    }
.end annotation


# static fields
.field static c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lpz$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lpz;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lpz;->b:Ljava/util/concurrent/BlockingQueue;

    .line 31
    iput-object p1, p0, Lpz;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    return-void
.end method

.method private a(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Luv;Ljava/lang/Runnable;Z)V
    .locals 8
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "listener"    # Luv;
    .param p4, "runnable"    # Ljava/lang/Runnable;
    .param p5, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lpz$a;",
            ">;",
            "Ljava/lang/String;",
            "Luv;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lpz$a;>;"
    iget-object v5, p0, Lpz;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "start Running putCommand "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v3, 0xa

    .line 82
    .local v3, "retries":I
    const/4 v1, 0x0

    .local v1, "e":Ljava/lang/Exception;
    move v4, v3

    .line 83
    .end local v3    # "retries":I
    .local v4, "retries":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    if-lez v4, :cond_0

    .line 85
    :try_start_0
    new-instance v0, Lpz$a;

    invoke-direct {v0}, Lpz$a;-><init>()V

    .line 86
    .local v0, "command":Lpz$a;
    iput-object p3, v0, Lpz$a;->b:Luv;

    .line 87
    iput-object p4, v0, Lpz$a;->a:Ljava/lang/Runnable;

    .line 88
    iput-object p2, v0, Lpz$a;->c:Ljava/lang/String;

    .line 89
    iput-boolean p5, v0, Lpz$a;->d:Z

    .line 90
    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 91
    iget-object v5, p0, Lpz;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "end Running putCommand "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 93
    .end local v0    # "command":Lpz$a;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ie":Ljava/lang/InterruptedException;
    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 95
    iget-object v5, p0, Lpz;->a:Ljava/lang/String;

    const-string/jumbo v6, "SystemClock.sleep(200)"

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object v1, v2

    move v4, v3

    .line 97
    .end local v3    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_0

    .line 99
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    :cond_0
    iget-object v5, p0, Lpz;->a:Ljava/lang/String;

    const-string/jumbo v6, "Running putCommand "

    invoke-static {v5, v6, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "listener"    # Luv;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    iget-object v1, p0, Lpz;->b:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lpz;->a(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Luv;Ljava/lang/Runnable;Z)V

    .line 72
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lpz;->a:Ljava/lang/String;

    const-string/jumbo v1, "removeAll tasks"

    invoke-static {v0, v1}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lpz;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 68
    return-void
.end method

.method protected final b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "listener"    # Luv;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v1, p0, Lpz;->b:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lpz;->a(Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;Luv;Ljava/lang/Runnable;Z)V

    .line 76
    return-void
.end method

.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 38
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 39
    :goto_0
    iget-boolean v3, p0, Lpz;->e:Z

    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "commandDescription":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lpz;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpz$a;

    .line 43
    .local v0, "command":Lpz$a;
    if-eqz v0, :cond_0

    .line 44
    const/4 v3, 0x1

    iput-boolean v3, p0, Lpz;->d:Z

    .line 45
    iget-object v1, v0, Lpz$a;->c:Ljava/lang/String;

    .line 46
    iget-object v4, p0, Lpz;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Running "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lpz$a;->d:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Foreground"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " command "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "  seq:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lpz$a;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :try_start_1
    iget-object v3, v0, Lpz$a;->a:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableAccountException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .end local v0    # "command":Lpz$a;
    :cond_0
    :goto_2
    iput-boolean v7, p0, Lpz;->d:Z

    goto :goto_0

    .line 46
    .restart local v0    # "command":Lpz$a;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "Background"

    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableAccountException;
    iget-object v3, p0, Lpz;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "run command exception "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableAccountException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 54
    .end local v0    # "command":Lpz$a;
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableAccountException;
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lpz;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error running command \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    iget-object v3, p0, Lpz;->a:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "run command exception "

    aput-object v5, v4, v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
