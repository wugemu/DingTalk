.class Lcom/laiwang/protocol/android/bm$1$1;
.super Ljava/lang/Object;
.source "RouterManager.java"

# interfaces
.implements Lcom/laiwang/protocol/lang/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/lang/Callback",
        "<",
        "Lcom/laiwang/protocol/android/bi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bm$1;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bm$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/bm$1;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/bi;)V
    .locals 6
    .param p1, "domains"    # Lcom/laiwang/protocol/android/bi;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    iget-object v1, v1, Lcom/laiwang/protocol/android/bm$1;->c:Lcom/laiwang/protocol/android/bm;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bm;->b(Lcom/laiwang/protocol/android/bm;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    iget-wide v2, v2, Lcom/laiwang/protocol/android/bm$1;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 233
    iget-object v1, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    iget-object v1, v1, Lcom/laiwang/protocol/android/bm$1;->c:Lcom/laiwang/protocol/android/bm;

    invoke-static {v1, p1}, Lcom/laiwang/protocol/android/bm;->a(Lcom/laiwang/protocol/android/bm;Lcom/laiwang/protocol/android/bi;)V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    iget-object v1, v1, Lcom/laiwang/protocol/android/bm$1;->c:Lcom/laiwang/protocol/android/bm;

    iget-object v2, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    iget-boolean v2, v2, Lcom/laiwang/protocol/android/bm$1;->b:Z

    iget-object v3, p0, Lcom/laiwang/protocol/android/bm$1$1;->a:Lcom/laiwang/protocol/android/bm$1;

    iget-wide v4, v3, Lcom/laiwang/protocol/android/bm$1;->a:J

    invoke-static {v1, v2, v4, v5}, Lcom/laiwang/protocol/android/bm;->a(Lcom/laiwang/protocol/android/bm;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[RouterManager] askAladdin by http error"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic apply(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lcom/laiwang/protocol/android/bi;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bm$1$1;->a(Lcom/laiwang/protocol/android/bi;)V

    return-void
.end method
