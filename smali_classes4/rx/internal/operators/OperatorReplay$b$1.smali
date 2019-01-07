.class final Lrx/internal/operators/OperatorReplay$b$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorReplay$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorReplay$b;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorReplay$b;

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b$1;, "Lrx/internal/operators/OperatorReplay$b$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 375
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b$1;, "Lrx/internal/operators/OperatorReplay$b$1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$b;->e:Z

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$b;->e:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    iget-object v2, v0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 1161
    const/4 v0, 0x0

    iput v0, v2, Llil;->c:I

    .line 1162
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v2, Llil;->e:[Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    iget-wide v2, v0, Lrx/internal/operators/OperatorReplay$b;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lrx/internal/operators/OperatorReplay$b;->h:J

    .line 380
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b$1;->a:Lrx/internal/operators/OperatorReplay$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lrx/internal/operators/OperatorReplay$b;->e:Z

    .line 382
    :cond_0
    monitor-exit v1

    .line 389
    :cond_1
    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
