.class final Lgtg$1;
.super Ljava/lang/Object;
.source "HttpOverLWPClient.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgtg;->a(Lgti;)Lgtj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lgtj;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>([Lgtj;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lgtg$1;->a:[Lgtj;

    iput-object p2, p0, Lgtg$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic on(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    .line 1036
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Execute LWP Response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1038
    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v1, :cond_0

    .line 1039
    iget-object v0, p0, Lgtg$1;->a:[Lgtj;

    const/4 v1, 0x0

    invoke-static {p1}, Lgto;->a(Lcom/laiwang/protocol/core/Response;)Lgtj;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1041
    :cond_0
    iget-object v1, p0, Lgtg$1;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1042
    :try_start_0
    iget-object v0, p0, Lgtg$1;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1043
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
