.class final Ligm$a;
.super Ljava/lang/Object;
.source "DefaultWebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ligm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lign;

.field final synthetic b:Ligm;

.field private c:Ligm;


# direct methods
.method constructor <init>(Ligm;Ligm;Lign;)V
    .locals 0
    .param p1, "this$0"    # Ligm;
    .param p2, "defaultWebSocketClient"    # Ligm;
    .param p3, "webSocketCallback"    # Lign;

    .prologue
    .line 418
    iput-object p1, p0, Ligm$a;->b:Ligm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Ligm$a;->c:Ligm;

    .line 420
    iput-object p3, p0, Ligm$a;->a:Lign;

    .line 421
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 425
    const-string/jumbo v1, "SCConnectionTimerRunnable"

    const-string/jumbo v2, "connect\u00a0response\u00a0time\u00a0out"

    invoke-static {v1, v2}, Lihq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_0
    iget-object v1, p0, Ligm$a;->b:Ligm;

    const-string/jumbo v2, "Connection\u00a0time\u00a0out"

    invoke-virtual {v1, v2}, Ligm;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    :try_start_1
    iget-object v1, p0, Ligm$a;->c:Ligm;

    invoke-virtual {v1}, Ligm;->g()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    :goto_1
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SCConnectionTimerRunnable"

    const-string/jumbo v2, "onSocketError error"

    invoke-static {v1, v2, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SCConnectionTimerRunnable"

    const-string/jumbo v2, "close socket error"

    invoke-static {v1, v2, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
