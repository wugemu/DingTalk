.class Lcom/laiwang/protocol/android/m$d;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/m;

.field private b:Lcom/laiwang/protocol/android/Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/m;
    .param p2, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p3, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    .line 397
    const-string/jumbo v0, "lwp-device-reg"

    int-to-long v2, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 398
    iput-object p3, p0, Lcom/laiwang/protocol/android/m$d;->b:Lcom/laiwang/protocol/android/Reply;

    .line 399
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m$d;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/laiwang/protocol/android/m$d;->b:Lcom/laiwang/protocol/android/Reply;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m;->e(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 404
    const-string/jumbo v3, "[LwpConn] conn dev-reg authing"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m;->s(Lcom/laiwang/protocol/android/m;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m;->s(Lcom/laiwang/protocol/android/m;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 410
    :cond_1
    const-string/jumbo v3, "[LwpConn] conn dev-reg authed"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_2
    const-string/jumbo v3, "[connection] dev push init"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v3, "/reg/init"

    invoke-static {v3}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v2

    .line 416
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    sget-object v3, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 417
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3, v2}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)V

    .line 418
    invoke-static {}, Lcom/laiwang/protocol/android/m;->l()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    .local v1, "localToken":Ljava/lang/String;
    const-string/jumbo v3, "dtoken"

    invoke-virtual {v2, v3, v1}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 420
    new-instance v0, Lcom/laiwang/protocol/android/m$d$1;

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/m$d$1;-><init>(Lcom/laiwang/protocol/android/m$d;Ljava/lang/String;)V

    .line 475
    .local v0, "_callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    invoke-virtual {v2, v0}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V

    .line 476
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3, v2}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)Lcom/laiwang/protocol/core/Request;

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/laiwang/protocol/core/Request;->setPendTime(J)V

    .line 479
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v3

    iget-object v3, v3, Lcom/laiwang/protocol/android/j;->d:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/j$a;->a()V

    .line 480
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 481
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m;->d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0
.end method
