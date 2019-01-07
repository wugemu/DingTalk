.class Lcom/laiwang/protocol/android/IdleService$IdleHandler;
.super Landroid/os/Handler;
.source "IdleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/IdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/IdleService;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/IdleService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/IdleService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->this$0:Lcom/laiwang/protocol/android/IdleService;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 131
    :cond_0
    return-void

    .line 107
    :pswitch_0
    const-string/jumbo v2, "[idle-serv] handle onIdleStart"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->this$0:Lcom/laiwang/protocol/android/IdleService;

    invoke-static {v2}, Lcom/laiwang/protocol/android/IdleService;->access$200(Lcom/laiwang/protocol/android/IdleService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/IdleObserver;

    .line 110
    .local v1, "observer":Lcom/laiwang/protocol/android/IdleObserver;
    :try_start_0
    invoke-interface {v1}, Lcom/laiwang/protocol/android/IdleObserver;->onIdleStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[idle-serv] observer onIdleStart err"

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "observer":Lcom/laiwang/protocol/android/IdleObserver;
    :pswitch_1
    const-string/jumbo v2, "[idle-serv] handle onIdleStop"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->this$0:Lcom/laiwang/protocol/android/IdleService;

    invoke-static {v2}, Lcom/laiwang/protocol/android/IdleService;->access$200(Lcom/laiwang/protocol/android/IdleService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/IdleObserver;

    .line 121
    .restart local v1    # "observer":Lcom/laiwang/protocol/android/IdleObserver;
    :try_start_1
    invoke-interface {v1}, Lcom/laiwang/protocol/android/IdleObserver;->onIdleStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[idle-serv] observer onIdleStop err"

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
