.class final Lalh$b;
.super Landroid/content/BroadcastReceiver;
.source "UTNetWorkStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lalh;


# direct methods
.method private constructor <init>(Lalh;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lalh$b;->a:Lalh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lalh;B)V
    .locals 0
    .param p1, "x0"    # Lalh;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lalh$b;-><init>(Lalh;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lalh$b;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lalh$b;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lalh$b;->a:Lalh;

    invoke-static {v1}, Lalh;->b(Lalh;)Lalh$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lalh$b;->a:Lalh;

    invoke-static {v0}, Lalh;->b(Lalh;)Lalh$a;

    move-result-object v0

    .line 1120
    iput-object p1, v0, Lalh$a;->a:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lalh$b;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lalh$b;->a:Lalh;

    invoke-static {v1}, Lalh;->b(Lalh;)Lalh$a;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
