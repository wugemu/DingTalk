.class Lcom/laiwang/protocol/android/ac$b;
.super Landroid/content/BroadcastReceiver;
.source "LwsKeepAlive.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/ac;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ac;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/laiwang/protocol/android/ac$b;->a:Lcom/laiwang/protocol/android/ac;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ac$b;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac$b;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/ac$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 299
    const-string/jumbo v0, "[heartbeat] alarm/handle received from %s & ping"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$b;->a:Lcom/laiwang/protocol/android/ac;

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/android/ac;->a(Z)V

    .line 301
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$b;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v0}, Lcom/laiwang/protocol/android/ac;->e(Lcom/laiwang/protocol/android/ac;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$b;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v0}, Lcom/laiwang/protocol/android/ac;->f(Lcom/laiwang/protocol/android/ac;)Lcom/laiwang/protocol/android/bu;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/ac$b$1;

    const-string/jumbo v2, "lws-keep-alive"

    invoke-direct {v1, p0, v2}, Lcom/laiwang/protocol/android/ac$b$1;-><init>(Lcom/laiwang/protocol/android/ac$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 290
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$b;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v0}, Lcom/laiwang/protocol/android/ac;->g(Lcom/laiwang/protocol/android/ac;)V

    .line 295
    const-string/jumbo v0, "handle"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/ac$b;->a(Ljava/lang/String;)V

    .line 296
    return-void
.end method
