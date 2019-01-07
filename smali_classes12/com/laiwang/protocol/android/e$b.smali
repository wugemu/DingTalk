.class Lcom/laiwang/protocol/android/e$b;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionKeepAlive.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/e;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/laiwang/protocol/android/e$b;->a:Lcom/laiwang/protocol/android/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/e$b;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e$b;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/e$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$b;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    if-ne v0, v1, :cond_0

    .line 255
    const-string/jumbo v0, "[build_connect] alarm/handle received from %s & connect"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$b;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->d()V

    .line 258
    :cond_0
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
    .line 238
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$b;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->d(Lcom/laiwang/protocol/android/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$b;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->b(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/bu;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/e$b$1;

    const-string/jumbo v2, "build-connect"

    invoke-direct {v1, p0, v2}, Lcom/laiwang/protocol/android/e$b$1;-><init>(Lcom/laiwang/protocol/android/e$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 245
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$b;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->e(Lcom/laiwang/protocol/android/e;)V

    .line 250
    const-string/jumbo v0, "handle"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/e$b;->a(Ljava/lang/String;)V

    .line 251
    return-void
.end method
