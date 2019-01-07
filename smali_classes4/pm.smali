.class public final Lpm;
.super Ljava/lang/Object;
.source "CALMThreadRunner.java"

# interfaces
.implements Laij;


# static fields
.field private static a:Lpm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lpm;->a:Lpm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Lcom/alibaba/doraemon/Priority;
    .locals 2
    .param p0, "threadPriority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .prologue
    .line 23
    sget-object v0, Lpm$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    sget-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    goto :goto_0

    .line 29
    :pswitch_2
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()Lpm;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lpm;->a:Lpm;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lpm;

    invoke-direct {v0}, Lpm;-><init>()V

    sput-object v0, Lpm;->a:Lpm;

    .line 41
    :cond_0
    sget-object v0, Lpm;->a:Lpm;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "priority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-static {p5}, Lpm;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Lcom/alibaba/doraemon/Priority;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 56
    return-void
.end method

.method public final a(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V
    .locals 6
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "priority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    const-string/jumbo v1, "AlimeThread"

    const/4 v3, 0x0

    invoke-static {p4}, Lpm;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Lcom/alibaba/doraemon/Priority;

    move-result-object v5

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->runTask(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/doraemon/Priority;)V

    .line 51
    return-void
.end method

.method public final a(Ljava/util/concurrent/Callable;Z)V
    .locals 1
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->getInstance()Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->cancelTask(Ljava/util/concurrent/Callable;Z)V

    .line 66
    return-void
.end method
